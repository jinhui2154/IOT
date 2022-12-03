#include "SensorsDataSendServer.hpp"
#include <memory>
#include <spdlog/logger.h>

#include <spdlog/async.h>
#include <spdlog/sinks/rotating_file_sink.h>
#include <spdlog/async_logger.h>
#include <tinyxml2.h>

#include <fstream>
#include <tuple>
#include <iostream>

#include "riot/tools/filesystem.hpp"
#include "riot/tools/timestamp.hpp"
#include "riot/core/RIOTFrameworkContext.hpp"
/* #include "riot/modules/system/RobotSystemModule.hpp" */

#include "TopicConfig.hpp"
/* #include "../MsgSerializer.hpp" */

class SensorsDataSendServer::Impl
{
public:
    /* EnabeNodes                      nodes; */
    std::shared_ptr<spdlog::logger> logger;
    std::shared_ptr<spdlog::logger> global_logger;
    fs::path                        config_file_path;
    InskyInspectionServer*          main_server;

    bool init(InskyInspectionServer* _main_server)
    {
        main_server     = _main_server;
        auto ctx        = main_server->globalCtx();
        global_logger   = ctx->environment_info()->global_logger();

        // load config parameters
        if(!load_config())
        {
            global_logger->error("can not load config parameters");
            return false;
        }
        
        // create and collector
   /*      auto robot_system       = ctx->modules_manager()->getModule<RobotSystemModule>()->system();
        SenderConfigInfo::forEachFields(
            [this, &robot_system](auto& field)
            {
                using node_type         = std::remove_reference_t<decltype(field.get(this->nodes))>;
                using collector_type    = typename node_type::collector_type;

                // get collector
                auto& collector         = field.get(this->nodes).collector;

                collector               = std::make_shared<collector_type>(robot_system);

                if(!collector->isLoaded())
                {
                    global_logger->warn("collector {}, is not enable", field.name);
                }
            }
        ); */

        return true;
    }

    bool findTopicConfig(
        tinyxml2::XMLElement* field_mapped_element, 
        const char*  field_name, 
        const char** o_attribute, 
        const char** o_priority)
    {
        if(!field_mapped_element)
        {
            global_logger->error("can not find nessesary element {}", field_name);
            return false;
        }

        *o_attribute = field_mapped_element->Attribute("topic");
        if(!*o_attribute)
        {
            global_logger->error("can not find attrbute: topic, in field {}", field_name);
            return false;
        }

        *o_priority  = field_mapped_element->Attribute("priority");
        if(!*o_priority)
        {
            global_logger->error("can not find attrbute: priority, in field {}", field_name);
            return false;
        }
        return true;
    }
    
    bool load_config()
    {
        auto xml_root_element = main_server->config_element();

        auto collector_element = xml_root_element->FirstChildElement("collector");
        if(!collector_element)
        {
            global_logger->error("can not find element: collector");
            return false;
        }

        auto publisher_element = collector_element->FirstChildElement("publisher");
        if(!publisher_element)
        {
            global_logger->error("can not find element: publisher");
            return false;
        }

        bool is_config_error{false};

/*         SenderConfigInfo::forEachFields(
            [this, publisher_element, &is_config_error](auto& field)
            {
                const char* field_name = field.name.data();

                tinyxml2::XMLElement* field_mapped_element = publisher_element->FirstChildElement(field_name);
                const char* topic_attr;
                const char* priority;

                if(!findTopicConfig(field_mapped_element, field_name, &topic_attr, &priority))
                {
                    is_config_error = true;
                    return;
                }

                TopicPriority priority_enum;
                if(!priority2enum(priority, priority_enum))
                {
                    global_logger->error("unknow priority type {}", priority);
                    is_config_error = true;
                    return;
                }

                field.get(this->nodes).parameter.topic    = topic_attr;
                field.get(this->nodes).parameter.priority = priority_enum;
            }
        ); */

        return !is_config_error;
    }

    bool enable()
    {
        // subscribe message
  /*   SenderConfigInfo::forEachFields(
            [this](auto& field)
            {
                using node_type         = std::remove_reference_t<decltype(field.get(this->nodes))>;
                using message_type      = typename node_type::message_type;

                auto& collector         = field.get(this->nodes).collector;

                if(!collector->isLoaded()) 
                {   // collector is not enable
                    return;
                }

                auto raw_topic          = field.get(this->nodes).parameter.topic;
                auto topic              = "/" + main_server->robotId() + raw_topic;
                auto priority           = field.get(this->nodes).parameter.priority;

                global_logger->info(
                    "preparing publish collector {} message to {}", 
                    field.name, 
                    topic
                );

                auto subscribe_func     = 
                    [this, topic, priority](const message_type& msg)
                    {
                        this->main_server->msgUploader()->sendMsg<message_type>(
                            topic, msg, priority, milli_timestamp()
                        );
                    };

                field.get(this->nodes).collector->subscribe(subscribe_func);

                field.get(this->nodes).collector->start();
            }
        ); */

        return true;
    }
};

SensorsDataSendServer::SensorsDataSendServer()
{
    _impl = std::make_unique<Impl>();
}

SensorsDataSendServer::~SensorsDataSendServer() = default;

bool SensorsDataSendServer::init(InskyInspectionServer* ctx)
{
    return _impl->init(ctx);
}

bool SensorsDataSendServer::deinit()
{
    return false;
}

bool SensorsDataSendServer::enable()
{
    return _impl->enable();
}

bool SensorsDataSendServer::disable()
{
    return true;
}

RegistSubServer(SensorsDataSendServer)
