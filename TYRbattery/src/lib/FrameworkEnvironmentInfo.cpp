#include "riot/core/FrameworkEnvironmentInfo.hpp"
#include "riot/tools/filesystem.hpp"
#include <fstream>
#include <spdlog/async.h>
#include <spdlog/sinks/stdout_color_sinks.h>
#include <spdlog/sinks/rotating_file_sink.h>

#include <boost/format.hpp>

#include "config_default.xml.cpp"

#include <iostream>

enum class DirectoriesEnum
{
    kApplicationRootPath,
    kMediaDownloadPath,
    kLogFilePath,
    kConfigPath,
    kCount
};

static constexpr size_t dir_num = static_cast<size_t>(DirectoriesEnum::kCount);

template<DirectoriesEnum I>
size_t DirEnum2Num()
{
    static constexpr size_t num = static_cast<size_t>(I);
    static_assert(static_cast<size_t>(num) < dir_num, "error input");
    return num;
}

class FrameWorkEnvInfo::Impl
{
public:
    using DirectoriesArray = std::array<std::string, static_cast<size_t>(DirectoriesEnum::kCount)>;

    const char*                      user_home_path{nullptr};
    std::string                      exe_launch_date{""};
    std::string                      config_file_path;
    std::shared_ptr<spdlog::logger>  logger{nullptr};
    DirectoriesArray                 directories{};
    bool                             initialized{false};

    /**
     * @brief find user home path
     * 
     * @return true 
     * @return false 
     */
    bool FindUserHomePath()
    {
        static const char* try_home_env[]{"HOME", "USERPROFILE", "HOMEDRIVE", "HOMEPATH"};
        for(const char* env_str : try_home_env)
        {
            user_home_path = std::getenv(env_str);
            if(user_home_path) return true;
        }
        return false;
    }

    /**
     * @brief Create a Run Time Directory
     * 
     * @return true 
     * @return false 
     */
    bool CreateRunTimeDirectory()
    {
        fs::path user_home = user_home_path;
        fs::path app_root  = user_home / ".riot_fw";

        directories = {
            (app_root).string(),
            (app_root/ exe_launch_date / "media").string(),
            (app_root/ exe_launch_date / "log").string(),
            (app_root/ "config").string()
        };

        for(const auto& directory : directories)
        {
            if(fs::exists(directory))
                continue;

            if(!fs::create_directories(directory))
                return false;
        }

        return true;
    }

    /**
     * @brief  install application config file
     * 
     * @return true 
     * @return false 
     */
    bool InstallApplicationConfigFile()
    {
        fs::path config_root_path = directories[DirEnum2Num<DirectoriesEnum::kConfigPath>()];
        config_file_path = (config_root_path / default_config_name).string();
    
        if(fs::exists(config_file_path))
        {
            return true;
        }

        std::ofstream ofstream(config_file_path ,std::ios::binary | std::ios::out);

        ofstream << default_config;

        if(ofstream.bad())
        {
            ofstream.close();
            return false;
        }
        ofstream.close();
        return true;
    }

    /**
     * @brief initialize spdlog 
     * 
     */
    void InitLogger()
    {
        fs::path _log_path = directories[DirEnum2Num<DirectoriesEnum::kLogFilePath>()];

        spdlog::flush_every(std::chrono::seconds(5));
        spdlog::init_thread_pool(50, 2);

        // basic logger
        auto _console_sink  = std::make_shared<spdlog::sinks::stdout_color_sink_mt>();
        auto _file_sink     = std::make_shared<spdlog::sinks::rotating_file_sink_mt>(
            (_log_path / "framework.log").string(),
            50 * 1024 * 1024, /*50MB*/
            10                /* 10个文件 也就是允许500MB */
        );
        std::vector<spdlog::sink_ptr> sinks{_console_sink, _file_sink};
        logger = std::make_shared<spdlog::async_logger>("logger", sinks.begin(), sinks.end(), spdlog::thread_pool());
        logger->set_level(spdlog::level::trace);

        spdlog::register_logger(logger);
    }

    /**
     * @brief  initialize enter function
     * 
     * @return InitializeErrorCode 
     */
    InitializeErrorCode initialize()
    {

        auto _start_time        = std::chrono::system_clock::to_time_t(std::chrono::system_clock::now());
        auto _time              = std::put_time(std::localtime(&_start_time), "%Y-%m-%d-%H-%M-%S");
        exe_launch_date         = (boost::format("%s") % _time).str();

        

        if(initialized)                     return InitializeErrorCode::kAlreadyInitialized;
        if(!FindUserHomePath())             return InitializeErrorCode::kUserHomePathNotFound;
        if(!CreateRunTimeDirectory())       return InitializeErrorCode::kCreateRootDirectoryFailed;
        if(!InstallApplicationConfigFile()) return InitializeErrorCode::kInstallConfigFileFailed;

        InitLogger();

        initialized = true;
        return InitializeErrorCode::kSuccess;
    }
};

/* interface */
FrameWorkEnvInfo::FrameWorkEnvInfo()
{
    _impl = std::make_unique<Impl>();
}

FrameWorkEnvInfo::~FrameWorkEnvInfo() = default;

FrameWorkEnvInfo::InitializeErrorCode FrameWorkEnvInfo::initialize()
{
      return _impl->initialize();
}

std::shared_ptr<spdlog::logger> FrameWorkEnvInfo::global_logger()
{
    return _impl->logger;
}

const std::string& FrameWorkEnvInfo::global_root_path()
{
    return _impl->directories[DirEnum2Num<DirectoriesEnum::kApplicationRootPath>()];
}

const std::string& FrameWorkEnvInfo::global_log_path()
{
    return _impl->directories[DirEnum2Num<DirectoriesEnum::kLogFilePath>()];
}

const std::string& FrameWorkEnvInfo::global_config_path()
{
    return _impl->directories[DirEnum2Num<DirectoriesEnum::kConfigPath>()];
}

const std::string& FrameWorkEnvInfo::global_config_file_path()
{
    return _impl->config_file_path;
}

const std::string& FrameWorkEnvInfo::global_media_path()
{
    return _impl->directories[DirEnum2Num<DirectoriesEnum::kMediaDownloadPath>()];
}

