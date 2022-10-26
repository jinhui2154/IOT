#pragma once
#include "TopicCommon.hpp"
#include <functional>
#include <memory>
#include "riot/tools/visibility_control.h"

class HUI_EXPORT TopicReceiverImpl
{
    template<class T> friend class TopicReceiver;
public:
    using CallBackType = std::function<void (const std::string&)>;

private:
    class Impl;
    std::unique_ptr<Impl> _impl;

public:
    virtual bool subscribe(
        const std::string&  topic,
        const CallBackType& cb
    );

    virtual void unsubscribe(const std::string& topic);

    void invokeSubscribers(const std::string& topic, const std::string& message);

    std::vector<std::string> subscribedTopics();

    TopicReceiverImpl();

    virtual ~TopicReceiverImpl();

    using SPtr = std::shared_ptr<TopicReceiverImpl>;
    using UPtr = std::unique_ptr<TopicReceiverImpl>;
};

template<class T>
class TopicReceiver
{
    friend class TopicClient;
public:
    template<class Func, class DeserializeFunc>
    TopicReceiver(
        const std::string& topic,
        Func&& callback,
        TopicReceiverImpl::SPtr impl,
        DeserializeFunc&& deserial_func)
    : _topic(topic), _impl(std::move(impl))
    {
        _impl->subscribe(
            _topic,
            [this, func{std::forward<Func>(callback)}, 
                   _deserial_func(std::forward<DeserializeFunc>(deserial_func))
            ](const std::string& msg)
            {
                _deserial_func(msg, _buffer);
                func(_buffer);
            }
        );
    }

    virtual ~TopicReceiver()
    {
        _impl->unsubscribe(_topic);
    }

    const std::string& topic()
    {
        return _topic;
    }

    using SPtr = std::shared_ptr<TopicReceiver>;
    using UPtr = std::unique_ptr<TopicReceiver>;

private:
    T                           _buffer;
    std::string                 _topic;
    TopicReceiverImpl::SPtr     _impl;
};

