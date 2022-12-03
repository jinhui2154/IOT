#include "private/module/ModuleFactory.hpp"
#include <unordered_map>

using CreatorMap = 
    std::unordered_map<
        size_t,
        std::unordered_map<
            std::string,
            CreatorFunctionType
        >
    >;

static CreatorMap& get_map()
{
    static CreatorMap map_instance{};
    return map_instance;
}

void ModuleFactory::_regist_creator(size_t base_class_id, const std::string& module_name, CreatorFunctionType func)
{
    auto& map_instance = get_map();
    if(!map_instance.count(base_class_id))
    {
        map_instance[base_class_id] = std::unordered_map<std::string, CreatorFunctionType>();
    }

    auto& inner_map = map_instance[base_class_id];
    inner_map[module_name] = func;
}

std::shared_ptr<ModuleBase> ModuleFactory::create(size_t base_class_id, FrameworkCtxPtr context, tinyxml2::XMLElement* element)
{
    auto type_name = element->Attribute("type");
    if(!type_name)
    {
        return nullptr;
    }

    auto& map_instance = get_map();
    if(!map_instance.count(base_class_id))
    {
        return nullptr;
    }

    auto& inner_map = map_instance[base_class_id];

    if(!inner_map.count(type_name))
    {
        return nullptr;
    }

    return inner_map[type_name](std::move(context), element);
}