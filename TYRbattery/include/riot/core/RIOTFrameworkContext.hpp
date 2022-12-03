#pragma once
#include "FrameworkEnvironmentInfo.hpp"
#include "ModuleManager.hpp"
#include <memory>
#include <optional>

/**
 * @brief This is Initialized by the framework entry, and pass to the plugin.
 */
class HUI_EXPORT RIOTFrameworkContext 
    // TODO enable_shared_from_this should be hiddened!
    : public std::enable_shared_from_this<RIOTFrameworkContext> 
{
    friend class FrameworkEntry;
public:
    using EnvironmentInfoPtr = std::unique_ptr<FrameWorkEnvInfo>;
    using ModulesManagerPtr  = std::unique_ptr<ModuleManager>;

    ~RIOTFrameworkContext();

    std::optional<std::string>  init();

    EnvironmentInfoPtr&         environment_info();
    
    ModulesManagerPtr&          modules_manager();

    const std::string&          plugin_path(); 

private:
    RIOTFrameworkContext();

    class Impl;
    std::unique_ptr<Impl> _impl;
};
