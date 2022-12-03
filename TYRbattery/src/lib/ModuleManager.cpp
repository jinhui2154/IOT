#include "riot/core/ModuleManager.hpp"
#include <spdlog/spdlog.h>
#include <array>

#include <unordered_map>
#include <shared_mutex>

class ModuleManager::Impl
{
public:
    using ModuleMapType = std::unordered_map<size_t, std::shared_ptr<ModuleBase>>;

    ModuleMapType                   module_map;
    std::shared_mutex               map_mutex;
};

ModuleManager::ModuleManager()
{
    _impl = std::make_unique<Impl>();
}

ModuleManager::~ModuleManager() = default;

std::shared_ptr<ModuleBase> ModuleManager::_get_module(size_t module_name_hash)
{
    std::scoped_lock lck(_impl->map_mutex);
    return _impl->module_map.count(module_name_hash) ? _impl->module_map[module_name_hash] : nullptr;
}

bool ModuleManager::_regist_module(size_t module_name_hash, std::shared_ptr<ModuleBase> module)
{
    std::shared_lock lck(_impl->map_mutex);
    if(_impl->module_map.count(module_name_hash)) return false;
    _impl->module_map[module_name_hash] = std::move(module);
    return true;
}
