#pragma once
#include "riot/modules/TModuleBase.hpp"
#include "riot/tools/visibility_control.h"

#include "rsdk/system/RobotSystem.hpp"
#include "detector/SupportSystemTypes.hpp"

/**
 * @brief   simple wrapper for robot system
 */
class HUI_EXPORT RobotSystemModule : public TModuleBase<RobotSystemModule>
{
public:
    struct RobotSystemModuleConfig
    {
        rsdk::SystemConfig link_methods;
        SystemTypes        force_system_type{SystemTypes::NO_SYSTEM};
    };

    RegistStaticIdentity("RobotSystemModule")

    RobotSystemModule(const RobotSystemModuleConfig&, std::shared_ptr<RIOTFrameworkContext> ctx);

    ~RobotSystemModule();

    std::shared_ptr<rsdk::RobotSystem> system();

    bool enable() override;

    bool disable() override;
private:
    class Impl;
    std::unique_ptr<Impl> _impl;
};
