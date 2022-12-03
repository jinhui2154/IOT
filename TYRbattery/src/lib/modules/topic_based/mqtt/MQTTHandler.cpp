#include "MQTTHandler.hpp"
#include "spdlog/spdlog.h"

#include "MQTTClient.hpp"

#include <vector>
#include <mutex>
#include <unordered_map>

class MQTTHandler::Impl
{
public:
    Impl(MQTTClient *client, MQTTHandler* owner)
        : client(client), owner(owner)
    {
        _logger          = spdlog::get("logger");

        auto qos = client->config().qos;

        if(qos == "0")
        {
            _qos = mqtt::GRANTED_QOS_0;
        }
        else if(qos == "1")
        {
            _qos = mqtt::GRANTED_QOS_1;
        }
        else if(qos == "2")
        {
            _qos = mqtt::GRANTED_QOS_2;
        }
    }

    void message_arrived(mqtt::const_message_ptr msg)
    {
        owner->invokeSubscribers(msg->get_topic(), msg->get_payload());
    }

    bool start()
    {
        conn_opts = mqtt::connect_options_builder()
            .max_inflight(50)
            .automatic_reconnect(true)
            .clean_session(true)
            .user_name(client->config().user_name)
            .password(client->config().password)
            .finalize(); 

        conn_opts.set_automatic_reconnect(1, 60);

        client->impl_client()->set_callback(*owner);

        try{
            _logger->info(
                "mqtt client link to server:{} with id: {}", 
                client->config().broker_ip,
                client->clientId()
            );

            client->impl_client()->connect(conn_opts, nullptr, *owner)->wait();

            _logger->info("mqtt client link success");
            return true;
        }
        catch(const std::exception& e){
            _logger->error("mqtt client link error {}" ,e.what());
            return false;
        }
        return true;
    }

    void connected(const std::string & cause)
    {
        const auto& mqtt_client = client->impl_client();

        for(auto &topic : owner->subscribedTopics())
        {
            mqtt_client->subscribe(topic, _qos, nullptr, *owner);

            _logger->info("mqtt client subscribe to topic {}", topic);
        }
    }

    void reconnect()
    {
        std::this_thread::sleep_for(std::chrono::milliseconds(3000));
        _logger->info("mqtt client reconnecting...");
        try
        {
            client->impl_client()->connect(conn_opts, nullptr, *owner);
        }
        catch (const mqtt::exception &exc)
        {
            _logger->error("mqtt client connection error: {}", exc.what());
        }
    }

    void connection_lost(const std::string &cause)
    {
        _logger->error("mqtt client cause of {}, connection lost!", cause);
        reconnect();
    }

    void on_success(const mqtt::token &tok)
    {
        auto type = tok.get_type();
        switch(type)
        {
            case mqtt::token::Type::CONNECT :
                _logger->info("mqtt client connect success");
                break;
            case mqtt::token::Type::DISCONNECT :
                _logger->info("mqtt client disconnect success");
                break;
            case mqtt::token::Type::SUBSCRIBE :
                _logger->info("mqtt client subscribe success");
                break;
            case mqtt::token::Type::UNSUBSCRIBE :
                _logger->info("mqtt client unsubscribe success");
                break;
            default:
                break;
        }
    }

    void on_failure(const mqtt::token &tok)
    {
        auto type = tok.get_type();
        switch(type)
        {
            case mqtt::token::Type::CONNECT :
                _logger->error("mqtt client connect failed!");
                reconnect();
                break;
            case mqtt::token::Type::DISCONNECT :
                _logger->error("mqtt client disconnect failed!");
                break;
            case mqtt::token::Type::SUBSCRIBE :
                _logger->error("mqtt client subscribe failed!");
                break;
            case mqtt::token::Type::UNSUBSCRIBE :
                _logger->error("mqtt client unsubscribe failed!");
                break;
            default:
                break;
        }
    }

    using RouterType = std::unordered_map<std::string, std::function<void (const std::string&)>>;

    std::shared_ptr<spdlog::logger> _logger;
    mqtt::connect_options           conn_opts;
    mqtt::ReasonCode                _qos{mqtt::GRANTED_QOS_1};
    MQTTClient*                     client;
    MQTTHandler*                    owner;
};

MQTTHandler::MQTTHandler(MQTTClient *client)
{
    _impl = std::make_unique<Impl>(client, this);
}

bool MQTTHandler::subscribe(const std::string& topic, const MQTTHandler::CallBackType& cb)
{
    _impl->client->impl_client()->subscribe(topic, _impl->_qos);
    return this->TopicReceiverImpl::subscribe(topic, cb);
}

void MQTTHandler::unsubscribe(const std::string& topic)
{
    _impl->client->impl_client()->unsubscribe(topic);
    this->TopicReceiverImpl::unsubscribe(topic);
}

MQTTHandler::~MQTTHandler() = default;

void MQTTHandler::connected(const std::string & cause)
{
    _impl->connected(cause);
}

void MQTTHandler::connection_lost(const std::string &cause)
{
    _impl->connection_lost(cause);
}

void MQTTHandler::message_arrived(mqtt::const_message_ptr msg)
{
    _impl->message_arrived(msg);
}

void MQTTHandler::on_failure(const mqtt::token &asyncActionToken)
{
    _impl->on_failure(asyncActionToken);
}

void MQTTHandler::on_success(const mqtt::token &asyncActionToken)
{
    _impl->on_success(asyncActionToken);
}

bool MQTTHandler::start()
{
    return _impl->start();
}
