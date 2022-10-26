#pragma once
#include "riot/modules/MessageSendListener.hpp"
#include "riot/tools/timestamp.hpp"
#include "riot/tools/visibility_control.h"

#include "TopicCommon.hpp"

#include <functional>

class HUI_EXPORT TopicSenderImpl
{
public:
    virtual bool sendMessage(const std::string& topic, const std::string& msg) = 0;

    virtual bool sendMessage(const std::string& topic, std::string&& msg) = 0;

    virtual ~TopicSenderImpl() = default;

    using SPtr = std::shared_ptr<TopicSenderImpl>;
    using UPtr = std::unique_ptr<TopicSenderImpl>;
};

template<class T>
class HUI_EXPORT TopicSender
{
    friend class TopicClient;

public:
    using message_type = T;

    template<class SerializeFunc>
    TopicSender(std::string topic, TopicSenderImpl::SPtr impl, SerializeFunc&& serialize_func)
        : _topic(topic), _impl(std::move(impl)), _serial_func(std::forward<SerializeFunc>(serialize_func)){}

    bool send(const T& msg)
    {
        std::string _buffer;

        _serial_func(msg, _buffer);

        return _impl->sendMessage(_topic, std::move(_buffer));
    }

    using SPtr = std::shared_ptr<TopicSender>;
    using UPtr = std::unique_ptr<TopicSender>;

private:

    std::function<void (const T&, std::string&)>    _serial_func;
    std::string                                     _topic;
    TopicSenderImpl::SPtr                           _impl;
};

