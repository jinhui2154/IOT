#pragma once
#include "riot/tools/visibility_control.h"
#include <memory>

struct RIOTFrameworkContext;

class HUI_EXPORT Attachable
{
public:
    /**
     * @brief being invoked when this plugin is firstly loaded.
     * 
     * @return true 
     * @return false 
     */
    virtual bool init(std::shared_ptr<RIOTFrameworkContext> fw_ctx) = 0;

    /**
     * @brief being invoked when this plugin is uninstalled.
     * 
     * @return true 
     * @return false 
     */
    virtual bool deinit() = 0;

    /**
     * @brief the name of this plugin
     * 
     * @return const char* 
     */
    virtual const char* name() = 0;
};
