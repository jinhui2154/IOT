#pragma once

#include "riot/modules/TModuleBase.hpp"
#include <type_traits>

class HUI_EXPORT ModuleManager
{
    friend class RIOTFrameworkContext;
public:
    ~ModuleManager();

    ModuleManager(const ModuleManager&)             = delete;
    ModuleManager(ModuleManager&&)                  = delete;
    ModuleManager& operator=(const ModuleManager&)  = delete;
    ModuleManager& operator=(ModuleManager&&)       = delete;

    template<class T>
    std::enable_if_t< std::is_base_of_v<TModuleBase<T>, T>, std::shared_ptr<T>> 
    getModule()
    {
        auto _module = _get_module(T::static_identity());

        return _module != nullptr ? std::static_pointer_cast<T>(_module) : nullptr;
    }

    template<class T>
    std::enable_if_t<std::is_base_of_v<TModuleBase<T>, T>, bool>
    registModuleT(std::shared_ptr<T> module_ptr)
    {
        if(!module_ptr) return false;
        return _regist_module(T::static_identity(), std::move(module_ptr));
    }

    bool registModule(std::shared_ptr<ModuleBase> module_ptr)
    {
        if(!module_ptr) return false;
        auto identity = module_ptr->identity();
        return _regist_module(identity, std::move(module_ptr));
    }

private:
    ModuleManager();

    std::shared_ptr<ModuleBase> _get_module(size_t module_name_hash);

    bool _regist_module(size_t module_name_hash, std::shared_ptr<ModuleBase> module_ptr);

    class Impl;
    std::unique_ptr<Impl> _impl;
};
