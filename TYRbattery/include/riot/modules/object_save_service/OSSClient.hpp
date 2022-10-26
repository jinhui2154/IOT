#pragma once
#include <string>
#include <memory>
#include <functional>
#include <any>
#include "riot/modules/TModuleBase.hpp"
#include "riot/modules/MessageSendListener.hpp"
#include "riot/core/RIOTFrameworkContext.hpp"
#include "riot/tools/visibility_control.h"

struct FileUploadInfo
{
    std::string local_path;
    std::string remote_path;
    std::string bucket_name;
};

class HUI_EXPORT OSSClient : public TModuleBase<OSSClient>
{
public:
    RegistStaticIdentity("OSSClient")

    enum class UploadRstType
    {
        SUCCESS,
        FAILED
    };

    explicit OSSClient(std::shared_ptr<RIOTFrameworkContext> ctx): TModuleBase(std::move(ctx)){};

    using UploadRstCallback = std::function<void (UploadRstType, const FileUploadInfo&)>;

    virtual void uploadFileAsync(const FileUploadInfo&, const UploadRstCallback& cb = nullptr) = 0;
};
