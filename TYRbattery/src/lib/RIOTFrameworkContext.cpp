#include "riot/core/RIOTFrameworkContext.hpp"
//#include "riot/modules/system/RobotSystemModule.hpp"
#include "riot/modules/object_save_service/OSSClient.hpp"
#include "riot/modules/topic_based/TopicClient.hpp"
#include "riot/tools/filesystem.hpp"
#include "private/module/ModuleFactory.hpp"
#include <variant>
#include <tinyxml2.h>

#include <iostream>

class RIOTFrameworkContext::Impl
{
public:
    Impl(RIOTFrameworkContext* owner)
    : _owner(owner){}

    std::optional<std::string> parseConfig()
    {
        auto app_root_elem = _xml_doc.FirstChildElement("application");
        if(!app_root_elem)
        {
            return "Can not find element \"{application}\" in config file";
        }

        auto plugin_elem = app_root_elem->FirstChildElement("plugin");
        if(!plugin_elem)
        {
            return "Can not find plugin element";
        }

        auto main_function_plugin_path = plugin_elem->Attribute("path");
        if(!main_function_plugin_path)
        {
            return "Can not find plugin attribute \"path\" in config file";
        }

        _plugin_path = main_function_plugin_path;

        return std::nullopt;
    }

    std::optional<std::string> createModules()
    {
        using ModuleInfo = std::pair<const char*, size_t>;
        const ModuleInfo module_info[]{
            /* {"vehicle_system",      RobotSystemModule::static_identity()}, */
            {"topic_client",        TopicClient::static_identity()}
            /* {"object_save_server",  OSSClient::static_identity()} */
        };

        auto app_root_elem = _xml_doc.FirstChildElement("application");

        for(auto info : module_info)
        {
            auto module_element = app_root_elem->FirstChildElement(info.first);
            if(!module_element)
            {
                return std::string("can not find element:") + info.first;
            }
            

            try{
                auto module_ptr = ModuleFactory::create(info.second, _owner->shared_from_this(), module_element);
                if(module_ptr == nullptr)
                {
                    return std::string("can not create module:") + info.first;
                }

                if(!module_ptr->enable())
                {
                    return std::string("can not enable module:") + info.first;
                }

                _modules_manager->registModule(module_ptr);  
            }catch(std::runtime_error& e)
            {
                return std::string("error occurred when create:") + info.first + std::string(e.what());
            }
        } 

        return std::nullopt;
    }

    std::optional<std::string> init()
    {
        /**
         * get home directory
         * get application start time
         * init logger
        */
            
        auto initialize_code = _environment_info->initialize();

        if(FrameWorkEnvInfo::InitializeErrorCode::kSuccess != initialize_code)
        {
            return std::string("Frame work enviroment initialize error, code:") + 
                std::to_string(static_cast<size_t>(initialize_code));
        }
    
        auto& config_file_path = _environment_info->global_config_file_path();
        if(_xml_doc.LoadFile( config_file_path.c_str() ) != tinyxml2::XMLError::XML_SUCCESS)
        {
            return "Can not parse framework config file!";
        }

        /**
         * parse xml config
        */
        auto parse_config_rst = parseConfig();
        if(parse_config_rst.has_value()) return parse_config_rst;

        auto module_create_rst = createModules();
        if(module_create_rst.has_value()) return module_create_rst;
       

        return std::nullopt;
    } 

    const std::string& plugin_path()
    {
        return _plugin_path;
    } 

    RIOTFrameworkContext*   _owner;
    std::string             _plugin_path{""};
    tinyxml2::XMLDocument   _xml_doc;
    EnvironmentInfoPtr      _environment_info;
    ModulesManagerPtr       _modules_manager;
};


RIOTFrameworkContext::RIOTFrameworkContext()
{
    _impl = std::make_unique<Impl>(this);
    _impl->_environment_info = std::unique_ptr<FrameWorkEnvInfo>(new FrameWorkEnvInfo());
    _impl->_modules_manager  = std::unique_ptr<ModuleManager>(new ModuleManager()); 
}

const std::string& RIOTFrameworkContext::plugin_path()
{
    return _impl->plugin_path();
} 

RIOTFrameworkContext::~RIOTFrameworkContext() = default;

std::optional<std::string> RIOTFrameworkContext::init()
{
    return _impl->init();
}


std::unique_ptr<FrameWorkEnvInfo>& RIOTFrameworkContext::environment_info()
{
    return _impl->_environment_info;
}

   
std::unique_ptr<ModuleManager>&    RIOTFrameworkContext::modules_manager()
{
    return _impl->_modules_manager;
}