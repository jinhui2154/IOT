#pragma once
#include <string>
#include <memory>
#include <stdexcept>
#include "riot/modules/TModuleBase.hpp"
#include "riot/tools/StaticReflection.hpp"
#include <tinyxml2.h>

#include <iostream>

class RIOTFrameworkContext;
using FrameworkCtxPtr = std::shared_ptr<RIOTFrameworkContext>;

template<class ModuleType, class ConfigTypeInfo>
struct ModuleXMLCreator
{
    using module_type = ModuleType;

    static std::shared_ptr<ModuleBase> create(FrameworkCtxPtr context, tinyxml2::XMLElement* element)
    {
        typename ConfigTypeInfo::type config;

        ConfigTypeInfo::forEachFields(
            [&](auto&& field)
            {
                using field_type = std::decay_t<decltype(field)>;
                auto  field_name = field_type::name.data();
                auto  first_element = element->FirstChildElement(field_name);
                if(first_element == nullptr)
                {
                    throw std::runtime_error(std::string("Can not find element:") + field_name);
                }

                field_type::get(config) = std::string(first_element->GetText());
            }
        );

        return std::make_shared<module_type>(config, std::move(context));
    }
};

using CreatorFunctionType = std::shared_ptr<ModuleBase> (*)(FrameworkCtxPtr context, tinyxml2::XMLElement* element);

class ModuleFactory
{
public:
    template<class T>
    static void registCreator(const std::string& type_name)
    {
        ModuleFactory::_regist_creator(T::module_type::static_identity(), type_name, &T::create);
    }

    static std::shared_ptr<ModuleBase> create(size_t base_class_id, FrameworkCtxPtr context, tinyxml2::XMLElement* element);

private:
    static void _regist_creator(size_t base_class_id, const std::string& type_name, CreatorFunctionType func);
};

template<class T>
class ModuleCreatorRegistHelper
{
public:
    ModuleCreatorRegistHelper(const std::string& name)
    {
        ModuleFactory::registCreator<T>(name);
    }
};

#define RegistModuleCreator(type, name) ModuleCreatorRegistHelper<type> name##_create_helper(#name);
