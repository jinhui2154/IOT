#pragma once
#include "attachable.hpp"
#include <memory>
#include <boost/dll/alias.hpp> // for BOOST_DLL_ALIAS

#ifdef ERROR    // wingdi marco pollution
#   undef ERROR
#endif

enum class ServerState
{
    RUNNING,
    STOP,
    ERROR
};

class HUI_EXPORT AttachableService : public Attachable
{
public:
    /**
     * @brief being invoking when plugin start runing.
     * 
     * @return true 
     * @return false 
     */
    virtual bool enable() = 0;

    /**
     * @brief being invoking when plugin is disabled.
     * 
     * @return true 
     * @return false 
     */
    virtual bool disable() = 0;

    /**
     * @brief the current state of this plugin
     * 
     * @return ServerState 
     */
    virtual ServerState state() = 0;
};

template <class T>
static T* create_plugin()
{
    static_assert(
        std::is_base_of_v<AttachableService, T>,
        "type error!"
    );

    return new T{};
}

#define DefinePlugin(plugin_name) BOOST_DLL_ALIAS(create_plugin<plugin_name>, _create_plugin)
