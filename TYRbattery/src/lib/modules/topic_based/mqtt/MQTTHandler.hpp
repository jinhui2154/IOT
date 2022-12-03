#pragma once
#include "mqtt/async_client.h"
#include "riot/modules/topic_based/TopicReceiver.hpp"
#include <memory>

class MQTTClient;

class HUI_EXPORT MQTTHandler:  public virtual mqtt::callback,
                    public virtual mqtt::iaction_listener,
                    public TopicReceiverImpl
{
public:
    /**
     * @brief Construct a new MQTTHandler object
     * 
     * @param app 
     */
    MQTTHandler(MQTTClient* client);

    /**
     * @brief Destroy the MQTTHandler object
     * 
     */
    ~MQTTHandler() override;

    
    bool subscribe(const std::string& topic, const CallBackType& cb) override;
    

    void unsubscribe(const std::string& topic) override;


    bool start();

    /**
     * @brief 
     * 
     */
    void reconnect();

    /**
     * @brief callback when connected to the broker
     * 
     */
    void connected(const std::string & cause) override;

    /**
     * @brief callback when connection lost
     * 
     * @param cause 
     */
    void connection_lost(const std::string &cause) override;

    /**
     * @brief callback when message arrived
     * 
     * @param msg 
     */
	void message_arrived(mqtt::const_message_ptr msg) override;

    void on_failure(const mqtt::token& asyncActionToken) override;

    void on_success(const mqtt::token& asyncActionToken) override;

private:
    class Impl;
    std::unique_ptr<Impl> _impl;
};