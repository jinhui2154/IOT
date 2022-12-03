#pragma once
#include <string>
#include "riot/modules/topic_based/TopicSender.hpp"

class MQTTClient;

class HUI_EXPORT MQTTUploader : public TopicSenderImpl
{
public:
    /**
     * @brief Construct a new MQTTUploader object
     * 
     * @param application 
     */
    explicit MQTTUploader(MQTTClient* client);

    /**
     * @brief Destroy the MQTTUploader object
     * 
     */
    ~MQTTUploader();

    /**
     * @brief block send message to broker (move)
     * 
     * @param topic 
     * @param msg 
     * @return true 
     * @return false 
     */
    bool sendMessage(const std::string& topic, std::string && msg) override;

    /**
     * @brief block send message to broker (copy)
     * 
     * @param topic 
     * @param msg 
     * @return true 
     * @return false 
     */
    bool sendMessage(const std::string& topic, const std::string& msg) override;

private:
    class Impl;
    std::unique_ptr<Impl> _impl;
};
