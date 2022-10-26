#pragma once

#include "riot/tools/visibility_control.h"

#include <string>
#include <memory>
#include <spdlog/spdlog.h>

class HUI_EXPORT FrameWorkEnvInfo
{
    friend class RIOTFrameworkContext;
public:
    enum class InitializeErrorCode
    {
        kSuccess,
        kLoggerInitFailed,
        kUserHomePathNotFound,
        kCreateRootDirectoryFailed,
        kInstallConfigFileFailed,
        kAlreadyInitialized,
    };

    FrameWorkEnvInfo(const FrameWorkEnvInfo&)             = delete;
    FrameWorkEnvInfo(FrameWorkEnvInfo&&)                  = delete;
    FrameWorkEnvInfo& operator=(const FrameWorkEnvInfo&)  = delete;
    FrameWorkEnvInfo& operator=(FrameWorkEnvInfo&&)       = delete;

    ~FrameWorkEnvInfo();

    /**
     * @brief   get global logger
     * 
     * @return  std::shared_ptr<spdlog::logger> 
     */
    std::shared_ptr<spdlog::logger> global_logger();

    /**
     * @brief get global root path
     * 
     * @return const std::string& 
     */
    const std::string& global_root_path();

    /**
     * @brief get global log path
     * 
     * @return const std::string& 
     */
    const std::string& global_log_path();

    /**
     * @brief get global config path
     * 
     * @return std::string& 
     */
    const std::string& global_config_path();


    /**
     * @brief get global config file path
     * 
     * @return const std::string& 
     */
    const std::string& global_config_file_path();

        /**
     * @brief get global config path
     * 
     * @return std::string& 
     */
    const std::string& global_media_path();

private:
    /**
     * @brief   create application runtime directory
     *          install/read application config file
     * 
     * @return  InitializeErrorCode 
     */
    InitializeErrorCode initialize();

    FrameWorkEnvInfo();

    class Impl;
    std::unique_ptr<Impl> _impl;
};
