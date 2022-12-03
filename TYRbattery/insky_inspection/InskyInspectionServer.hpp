#pragma once
#include <string>

#include "riot/plugin/attachable_service.hpp"
#include "riot/modules/topic_based/TopicSender.hpp"
#include "MsgUploader.hpp"

namespace tinyxml2
{
    class XMLElement;
};

class HUI_EXPORT InskyInspectionServer : public AttachableService
{
public:
    InskyInspectionServer();

    virtual ~InskyInspectionServer();

    bool                            init(std::shared_ptr<RIOTFrameworkContext> fw_ctx) override;

    bool                            deinit() override;

    bool                            enable() override;

    bool                            disable() override;

    ServerState                     state() override;

    const char*                     name() override;

    std::shared_ptr<RIOTFrameworkContext>    globalCtx();

    const std::string&              robotId();

/*     std::shared_ptr<MsgUploader>    msgUploader(); */

    tinyxml2::XMLElement*           config_element();

private:
    class Impl;
    std::unique_ptr<Impl> _impl;
};

