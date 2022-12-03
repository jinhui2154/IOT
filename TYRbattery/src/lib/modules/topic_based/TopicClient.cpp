#include "riot/modules/topic_based/TopicClient.hpp"

#include <vector>
#include <mutex>
#include <shared_mutex>

class TopicClient::ClientImpl
{
public:
    uint16_t                        upper_bound;
    uint16_t                        lower_bound;
    std::shared_mutex               send_listener_list_mutex;
    TopicClient::SendListenersList  send_listener_list;
    std::string                     client_id{""};
};

TopicClient::TopicClient(std::shared_ptr<RIOTFrameworkContext> ctx) : TModuleBase(std::move(ctx))
{
    _impl = std::make_unique<ClientImpl>();
}

TopicClient::~TopicClient() = default;

void TopicClient::subscribeSendListener(MessageListener::SPtr ptr)
{
    std::scoped_lock lck(_impl->send_listener_list_mutex);

    _impl->send_listener_list.push_back(std::move(ptr));
}

TopicSenderImpl::SPtr TopicClient::advertiseLowLayer()
{
    return sender();
}

TopicReceiverImpl::SPtr TopicClient::subscribeLowLayer()
{
    return receiver();
}

void TopicClient::setUpperBound(uint16_t value)
{
    _impl->upper_bound = value;
}

void TopicClient::setLowerBound(uint16_t value)
{
    _impl->lower_bound = value;
}

void TopicClient::notifyOnTouchingUB()
{
    std::shared_lock lck(_impl->send_listener_list_mutex);
    for(auto& listener : _impl->send_listener_list)
    {
        listener->onBiggerThen();
    }
}

void TopicClient::notifyOnTouchingLB()
{
    std::shared_lock lck(_impl->send_listener_list_mutex);
    for(auto& listener : _impl->send_listener_list)
    {
        listener->onLowerThen();
    }
}

uint16_t TopicClient::upper_bound()
{
    return _impl->upper_bound;
}

uint16_t TopicClient::lower_bound()
{
    return _impl->lower_bound;
}

void TopicClient::setClientId(const std::string& id)
{
    _impl->client_id = id;
}

const std::string& TopicClient::clientId()
{
    return _impl->client_id;
}
