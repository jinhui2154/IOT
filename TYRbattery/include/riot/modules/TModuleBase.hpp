#pragma once
#include "ModuleBase.hpp"
#include "riot/tools/CPPPtrDefineHelper.hpp"
#include "riot/tools/MPString.hpp"
#include "riot/tools/CTHash.hpp"

template<class T> 
class TModuleBase : public ModuleCommon, public PtrHelper<T>
{
public:
    TModuleBase(std::shared_ptr<RIOTFrameworkContext> ctx)
        :ModuleCommon(std::move(ctx)){}

    size_t identity() override
    {
        return T::static_identity();
    }

    const char* name() override
    {
        return T::static_name();
    }
};

#define RegistStaticIdentity(name)\
constexpr static const char* static_name()\
{\
    return MAKE_MPSTRING(name)::data;\
}\
constexpr static size_t static_identity()\
{\
    return ctcrc32(name);\
}
