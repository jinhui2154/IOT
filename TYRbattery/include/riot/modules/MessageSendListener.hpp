#pragma once
#include "riot/tools/CPPPtrDefineHelper.hpp"

class MessageListener : public PtrHelper<MessageListener>
{
public:
    virtual void onBiggerThen() = 0;

    virtual void onLowerThen() = 0;

    virtual void onSendSuccess(const std::string&) = 0;
};

