#pragma once
#include "TopicReceiver.hpp"
#include "TopicSender.hpp"
#include "riot/modules/TModuleBase.hpp"
#include "riot/tools/visibility_control.h"
#include <mutex>

class HUI_EXPORT TopicClient : public TModuleBase<TopicClient>
{
public:
    RegistStaticIdentity("TopicClient")

    explicit TopicClient(std::shared_ptr<RIOTFrameworkContext> ctx);

    virtual ~TopicClient();

    /**
     * @brief 
     * 
     * @tparam T 
     * @tparam Func 
     * @tparam U 
     * @param topic 
     * @param func 
     * @return TopicReceiver 
     */
    template<class T, class Func, class DeserializeFunc>
    typename TopicReceiver<T>::SPtr subscribe(
        const std::string& topic, 
        Func&& func, DeserializeFunc&& deserial_func = deserialize<T, json_tag>)
    {
        return std::make_shared<TopicReceiver<T>>(
            topic, 
            std::forward<Func>(func), 
            receiver(), 
            std::forward<DeserializeFunc>(deserial_func));
    }

    /**
     * @brief  create a publisher which will send message to topic
     * 
     * @param  topic
     * @return TopicSender 
     */
    template<class T, class SerializeFunc>
    typename TopicSender<T>::SPtr advertise(
        const std::string& topic, SerializeFunc&& serialize_func = serialize<T, json_tag>)
    {
        return std::make_shared<TopicSender<T>>(topic, sender(), std::forward<SerializeFunc>(serialize_func));
    }

    /**
     * @brief  create a publsiher at low layer
     * 
     * @return TopicSenderImpl::SPtr 
     */
    TopicSenderImpl::SPtr advertiseLowLayer();

    /**
     * @brief create a subscriber at low layer
     * 
     * @return TopicReceiver::SPtr 
     */
    TopicReceiverImpl::SPtr subscribeLowLayer();

    /**
     * @brief 
     * 
     */
    void subscribeSendListener(MessageListener::SPtr);

    /**
     * @brief Set the Upper Bound object
     * 
     * @param value 
     */
    void setUpperBound(uint16_t value);

    /**
     * @brief Set the Lower Bound object
     * 
     * @param value 
     */
    void setLowerBound(uint16_t value);


    void setClientId(const std::string& id);
    

    const std::string& clientId();

protected:

    virtual TopicReceiverImpl::SPtr receiver() = 0;

    virtual TopicSenderImpl::SPtr sender() = 0;

    uint16_t upper_bound();

    uint16_t lower_bound();

    void notifyOnTouchingUB();

    void notifyOnTouchingLB();

    using SendListenersList = std::vector<MessageListener::SPtr>;

private:
    class ClientImpl;
    std::unique_ptr<ClientImpl> _impl;
};
