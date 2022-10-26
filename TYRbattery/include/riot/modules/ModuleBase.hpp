#pragma once
#include <stddef.h>
#include "riot/tools/visibility_control.h"
#include <memory>

class RIOTFrameworkContext;

class HUI_EXPORT ModuleBase
{
public:
    virtual bool        enable() = 0;

    virtual bool        disable() = 0;

    virtual size_t      identity() = 0;

    virtual const char* name() = 0;
};

class HUI_EXPORT ModuleCommon : public ModuleBase
{
public:
    explicit ModuleCommon(std::shared_ptr<RIOTFrameworkContext> _ctx)
        :_riot_frame_ctx(std::move(_ctx)){}

protected:
    std::shared_ptr<RIOTFrameworkContext> riot_frame_ctx()
    {return this->_riot_frame_ctx;}

private:
    std::shared_ptr<RIOTFrameworkContext> _riot_frame_ctx;
};
