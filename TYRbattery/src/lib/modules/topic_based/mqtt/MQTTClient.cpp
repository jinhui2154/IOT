#include "MQTTClient.hpp"
#include "mqtt/async_client.h"
#include "MQTTUploader.hpp"
#include "MQTTHandler.hpp"


#include "riot/core/RIOTFrameworkContext.hpp"


class MQTTClient::MQTTClientImpl
{
public:
    MQTTClientImpl(const MQTTClientConfig& opt, MQTTClient* owner)
    : _config(opt), _owner(owner)
    {
        _logger   = _owner->riot_frame_ctx()->environment_info()->global_logger();
    }

    bool start()
    {
        if(_config.broker_ip.empty())
        {
            _logger->error("mqtt client broker ip is empty!");
            return false;
        }

        std::string broker_uri = "tcp://"+ _config.broker_ip + ":" + _config.port;


       /*  auto robot_system_module = _owner->riot_frame_ctx()->modules_manager()->getModule<RobotSystemModule>();
        if(!robot_system_module)
        {
            _logger->error("Robot system must be enable before topic client!");
            return false;
        } */
        //_owner->setClientId( robot_system_module->system()->uniqueCode() );
         _owner->setClientId( "85695456525633" );
 
        if(_owner->clientId().empty())
        {
            _logger->error("mqtt client client id is empty!");
            return false;
        }

        _impl_client = std::make_unique<mqtt::async_client>(
            broker_uri, _owner->clientId() , 1024
        );

        _receiver = std::make_shared<MQTTHandler>(_owner);
        _sender   = std::make_shared<MQTTUploader>(_owner);

        return _receiver->start();

        

    }

    MQTTClientConfig                        _config;
    MQTTClient*                             _owner;
    std::shared_ptr<MQTTHandler>            _receiver;
    std::shared_ptr<MQTTUploader>           _sender;
    std::shared_ptr<spdlog::logger>         _logger;
    std::unique_ptr<mqtt::async_client>     _impl_client;
};

MQTTClient::MQTTClient(const MQTTClientConfig& opt, std::shared_ptr<RIOTFrameworkContext> ctx) 
: TopicClient(ctx)
{
    _impl = std::make_unique<MQTTClientImpl>(opt, this);
}

MQTTClient::~MQTTClient() = default;

MQTTClient::MQTTClientConfig& MQTTClient::config()
{
    return _impl->_config;
}

TopicReceiverImpl::SPtr MQTTClient::receiver()
{
    return _impl->_receiver;
}

TopicSenderImpl::SPtr MQTTClient::sender()
{
    return _impl->_sender;
}

std::unique_ptr<mqtt::async_client>& MQTTClient::impl_client()
{
    return _impl->_impl_client;
}

bool MQTTClient::enable()
{
    return _impl->start();
}

bool MQTTClient::disable()
{
    return false;
}
