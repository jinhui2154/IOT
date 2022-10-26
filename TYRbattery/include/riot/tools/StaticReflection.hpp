#pragma once
/**
 * @file StaticReflection.hpp
 * @author chenhui.yu (chenhui.yu@inskylab.com)
 * @brief 
 * @version 0.1
 * @date 2022-02-07
 * 
 * @copyright Copyright (c) 2022
 */

#include "MPString.hpp"

#include <type_traits>
#include <string_view>
#include <tuple>

// TODO 特化一个成员函数版本， 分离 invoke
template<class T, T MEMPTR, class Name>
class Field
{
private:
    template<class MemType, class ClassType>
    constexpr static auto _get_mem_type(MemType ClassType::*&&) -> MemType*;

    template<class MemType, class ClassType>
    constexpr static auto _get_class_type(MemType ClassType::*&&) -> ClassType*;

    constexpr static T _mem_point = MEMPTR;

public:
    using class_type    = std::remove_pointer_t<decltype(_get_class_type(std::declval<T>()))>;
    using member_type   = std::remove_pointer_t<decltype(_get_mem_type(std::declval<T>()))>;
    using ct_name       = Name;

    constexpr static inline member_type& get(class_type& instance)
    {
        return instance.*_mem_point;
    }

    template<typename... Args>
    constexpr static inline auto invoke(class_type* instance, Args&&... args)
    {
        return (instance->*_mem_point)(std::forward<Args>(args)...);
    }

    constexpr static std::string_view name{Name::data, Name::N - 1};
};

#define FIELD_NAME(name)                        MAKE_MPSTRING(name)
#define MAKE_FIELD(element_ptr, element_name)   Field< decltype(element_ptr), element_ptr, FIELD_NAME(element_name)>

template<typename ...>
struct _find_index;

template<typename U, typename... R>
struct _find_index<U, U, R...> 
    : std::integral_constant<size_t, 0>{};

template<typename U, typename F, typename... R>
struct _find_index<U, F, R...> 
    : std::integral_constant<size_t, 1 + _find_index<U, R...>::value>{};

template<class T, class... Fields>
class StaticTypeInfo
{
public:
    using type = T;
    constexpr static size_t fields_num = sizeof...(Fields);

private:
    using tuple_type = std::tuple<Fields...>;

    constexpr static tuple_type fields_list{};

    template<class Func, size_t I = 0>
    constexpr static inline std::enable_if_t< I < fields_num > _for_each_fields(Func&& func)
    {
        func( std::get<I>(fields_list) );
        _for_each_fields<Func, I + 1 >(std::forward<Func>(func));
    }

    template<class Func, size_t I>
    constexpr static inline std::enable_if_t< I == fields_num > _for_each_fields(Func&& func){}

public:

    template<class Func>
    constexpr static void forEachFields(Func&& func)
    {
        _for_each_fields(std::forward<Func>(func));
    }

    template<typename FIELD> using field_index = _find_index<FIELD, Fields...>;

    template<size_t FieldIndex>
    constexpr static inline auto& field()
    {
        return std::get<FieldIndex>(fields_list);
    }
};
