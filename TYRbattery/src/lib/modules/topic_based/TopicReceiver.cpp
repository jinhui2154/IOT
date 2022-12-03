#include "riot/modules/topic_based/TopicReceiver.hpp"

#include <unordered_map>
#include <mutex>
#include <shared_mutex>

class TopicReceiverImpl::Impl
{
public:
    using MapType = std::unordered_map<std::string, CallBackType>;

    MapType             subscribers_map;
    std::shared_mutex   map_mutex;
};

TopicReceiverImpl::TopicReceiverImpl()
{
    _impl = std::make_unique<Impl>();
}

TopicReceiverImpl::~TopicReceiverImpl() = default;

bool TopicReceiverImpl::subscribe(
    const std::string& topic, 
    const std::function<void (const std::string&)>& func
)
{
    std::scoped_lock lck(_impl->map_mutex);

    // if already exists
    if(_impl->subscribers_map.count(topic))
    {
        return false;
    }

    _impl->subscribers_map[topic] = func;
    return true;
}

void TopicReceiverImpl::unsubscribe(const std::string& topic)
{
    std::scoped_lock lck(_impl->map_mutex);

    if(_impl->subscribers_map.count(topic))
    {
        _impl->subscribers_map.erase(topic);
    }
}

void TopicReceiverImpl::invokeSubscribers(const std::string& topic, const std::string& message)
{
    std::shared_lock lck(_impl->map_mutex);

    _impl->subscribers_map[topic](message);
}

std::vector<std::string> TopicReceiverImpl::subscribedTopics()
{
    std::vector<std::string> ret_list;
    std::shared_lock lck(_impl->map_mutex);

    for(const auto& sub : _impl->subscribers_map)
    {
        ret_list.push_back(sub.first);
    }

    return ret_list;
}
