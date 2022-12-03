#pragma once
#include "riot/modules/topic_based/TopicClient.hpp"

namespace mqtt
{
    class async_client;
}

class HUI_EXPORT MQTTClient : public TopicClient
{
    friend class MQTTHandler;
    friend class MQTTUploader;

public:

    struct MQTTClientConfig
    {
        std::string user_name;
        std::string password;
        std::string broker_ip;
        std::string port;
        std::string qos;
    };

    explicit MQTTClient(const MQTTClientConfig&, std::shared_ptr<RIOTFrameworkContext>);

    ~MQTTClient();

    MQTTClientConfig&                       config();

    TopicReceiverImpl::SPtr                 receiver() override;

    TopicSenderImpl::SPtr                   sender() override;

    std::unique_ptr<mqtt::async_client>&    impl_client();

    bool enable() override;

    bool disable() override;

private:
    class MQTTClientImpl;
    std::unique_ptr<MQTTClientImpl> _impl;
};
