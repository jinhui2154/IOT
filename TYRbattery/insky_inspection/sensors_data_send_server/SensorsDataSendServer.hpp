#pragma once
#include "InspectionSubServer.hpp"

#include <boost/dll/alias.hpp>

class HUI_EXPORT SensorsDataSendServer : public InspectionSubServer
{
public:

    /**
     * @brief Construct a new Sensors Data Send Server object
     * 
     */
    SensorsDataSendServer();

    /**
     * @brief Destroy the Sensors Data Send Server object
     * 
     */
    ~SensorsDataSendServer();
        
    /**
     * @brief init 
     * 
     */
    bool init(InskyInspectionServer* ctx) override;

    /**
     * @brief 作为插件卸载时，会调用的函数
     * 
     * @return true     deinit success
     * @return false    deinit failed
     */
    bool deinit() override;

    /**
     * @brief 运行服务时，调用的函数
     * 
     * @return true     enable success
     * @return false    enable failed
     */
    bool enable() override;

    /**
     * @brief 禁用服务时调用的函数
     * 
     * @return true 
     * @return false 
     */
    bool disable() override;

private:
    class Impl;
    std::unique_ptr<Impl> _impl;
};

