#include "InskyInspectionServer.hpp"

#include "riot/core/RIOTFrameworkContext.hpp"
/* #include "riot/modules/system/RobotSystemModule.hpp" */
#include "riot/tools/filesystem.hpp"

// internal config file
#include "config/inspection_config.xml.cpp"
#include <tinyxml2.h>
#include <spdlog/spdlog.h>
#include <fstream>

// subserver
#include "InspectionSubServer.hpp"

#include <iostream>

class InskyInspectionServer::Impl
{
    friend class InskyInspectionServer;
public:

    Impl(InskyInspectionServer* _owner):owner(_owner){}

    bool installDefaultConfigFile()
    {
        std::ofstream ofstream(config_file_path ,std::ios::binary | std::ios::out);

        ofstream << config_default;

        if(ofstream.bad())
        {
            logger->error("Config file create failed!");
            ofstream.close();
            return false;
        }

        ofstream.close();
        return true;
    }

    bool init(std::shared_ptr<RIOTFrameworkContext> _fw_ctx)
    {
        fw_ctx                   = std::move(_fw_ctx);

        logger                   = fw_ctx->environment_info()->global_logger();

       /*  auto robot_system_module = fw_ctx->modules_manager()->getModule<RobotSystemModule>(); */

        // load robot unique id
      /*   robot_id                 = robot_system_module->system()->uniqueCode(); */

        auto global_config_path  = fs::path(fw_ctx->environment_info()->global_config_path());

        // get complete config file path
        config_file_path         = (global_config_path / config_default_name).string();

        // initialize message uploader
     /*    msg_uploader            = std::make_shared<MsgUploader>(owner); */

        // if config file is not exist then create it in global config paht
        if(! fs::exists(config_file_path) )
        {   // not exist config file, create config file
            if(!installDefaultConfigFile())
            {
                // install default config file error
                logger->error("install sender config file error");
                state = ServerState::ERROR;
                return false;
            }
        }

        logger->info("loading config file...");
        auto load_rst = xml_doc.LoadFile(config_file_path.c_str());
        if(load_rst != tinyxml2::XMLError::XML_SUCCESS )
        {
            logger->error("Can not parse config file {}", config_file_path);
            return false;
        }

        xml_root_element = xml_doc.FirstChildElement("insky_inspection");
        if(!xml_root_element)
        {
            logger->error("Can not find element: insky_inspection");
            return false;
        }

        // start create subserver
        auto subserver_factory_list = SubServerRegister::registedSubServer();

        for(const auto& subserver_factory : subserver_factory_list)
        {
            auto& subserver_name = subserver_factory.first;

            logger->info("start creating subserver: {}", subserver_name);

            auto subserver = subserver_factory.second();

            // init subserver 
            if(!subserver->init(owner))
            {
                logger->error("subserver {} initialize failed!", subserver_name);
                return false;
            }

            logger->info("subserver {} initialize success!", subserver_name);

            subserver_list.push_back( std::move(subserver) );
        }

        return true;
    }

    bool enable()
    {
        msg_uploader->enable();

        for(auto& subserver : subserver_list)
        {
            if(! subserver->enable() )
            {
                return false;
            }
        }
        return true;
    }
    
private:

    using SubserverVec = std::vector<std::unique_ptr<InspectionSubServer>>;

    InskyInspectionServer*              owner;
    tinyxml2::XMLDocument               xml_doc;
    tinyxml2::XMLElement*               xml_root_element;
    SubserverVec                        subserver_list;
    std::string                         config_file_path;
    ServerState                         state;
    std::shared_ptr<spdlog::logger>     logger;
    std::string                         robot_id;
    std::shared_ptr<RIOTFrameworkContext>        fw_ctx;
    std::shared_ptr<MsgUploader>        msg_uploader;
};

std::shared_ptr<RIOTFrameworkContext> InskyInspectionServer::globalCtx()
{
    return _impl->fw_ctx;
}

const std::string& InskyInspectionServer::robotId()
{
    return _impl->robot_id;
}

InskyInspectionServer::InskyInspectionServer()
{
    _impl = std::make_unique<Impl>(this);
}

InskyInspectionServer::~InskyInspectionServer() = default;

bool InskyInspectionServer::init(std::shared_ptr<RIOTFrameworkContext> fw_ctx)
{
    auto ret = _impl->init(std::move(fw_ctx));
    _impl->logger->flush();
    return ret;
}

bool InskyInspectionServer::deinit()
{
    // deinit is not allow
    return false;
};

bool InskyInspectionServer::enable()
{
    return _impl->enable();
};

bool InskyInspectionServer::disable()
{
    return false;
};

ServerState InskyInspectionServer::state()
{
    return _impl->state;
};

const char* InskyInspectionServer::name()
{
    static const char* _name = "Insky Inspection Server";
    return _name;
};

/* std::shared_ptr<MsgUploader> InskyInspectionServer::msgUploader()
{
    return _impl->msg_uploader;
} */

tinyxml2::XMLElement* InskyInspectionServer::config_element()
{
    return _impl->xml_root_element;
}

DefinePlugin(InskyInspectionServer)