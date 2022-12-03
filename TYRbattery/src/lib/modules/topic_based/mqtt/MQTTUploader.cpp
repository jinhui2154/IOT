#include "MQTTUploader.hpp"
#include "mqtt/async_client.h"
#include "MQTTClient.hpp"

#include <spdlog/spdlog.h>
#include <condition_variable>
#include <functional>
#include <mutex>
#include <thread>
#include <queue>
#include <array>

class MQTTUploader::Impl : public virtual mqtt::iaction_listener
{
public:
    explicit Impl(MQTTClient *client)
    {
        _client         = client;
        _logger         = spdlog::get("logger");

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

	void on_failure(const mqtt::token& asyncActionToken) override
    {

    }
    
	void on_success(const mqtt::token& asyncActionToken) override
    {
        
    }
    
    bool sendMessage(const std::string& topic, std::string && msg)
    {
        try{
            if(msg.empty()) return false;

            auto message_ptr = mqtt::message::create(topic, std::move(msg), _qos, true);

            auto token = _client->impl_client()->publish(std::move(message_ptr), nullptr, *this);

            token->wait();
        }catch(mqtt::exception & rc)
        {
            rc.get_reason_code();
            return false;
        }catch(std::exception& e)
        {
            _logger->error("Send message error, detail: {}", e.what());
            return false;
        }

        return true;
    }

    bool sendMessage(const std::string& topic, const std::string& msg)
    {
        try{
            if(msg.empty()) return false;

            auto message_ptr = mqtt::message::create(topic, msg, _qos, true);
            
            auto token = _client->impl_client()->publish(std::move(message_ptr), nullptr, *this);

            token->wait();
        }catch(mqtt::exception & rc)
        {
            rc.get_reason_code();
            return false;
        }

        return true;
    }

    MQTTClient*                             _client;
    std::shared_ptr<spdlog::logger>         _logger;
    std::condition_variable                 _send_cv;
    std::mutex                              _send_mutex;
    mqtt::ReasonCode                        _qos{mqtt::GRANTED_QOS_1};
    uint16_t                                _upper_bound{30};
    uint16_t                                _lower_bound{15};
};

MQTTUploader::MQTTUploader(MQTTClient *client)
{
    _impl = std::make_unique<Impl>(client);
}

MQTTUploader::~MQTTUploader() = default;

bool MQTTUploader::sendMessage(const std::string& topic, std::string && msg)
{
    return _impl->sendMessage(topic, std::move(msg));
}

bool MQTTUploader::sendMessage(const std::string& topic, const std::string& msg)
{
    return _impl->sendMessage(topic, msg);
}
