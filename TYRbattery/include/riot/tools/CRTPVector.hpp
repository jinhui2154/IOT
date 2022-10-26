#pragma once
#include <variant>
#include <vector>

template<template<typename...> class CRTPBase, class... Args>
class CRTPVector : public std::vector<std::variant<Args...>>
{
public:
    using std::vector<std::variant<Args...>>::vector;

    template<class _Callback>
    inline void for_each(_Callback&& callback)
    {
        for(auto& item : *this)
        {
            std::visit( std::forward<_Callback>(callback), item );
        }
    }

private:
    template<size_t I, typename typeC, typename... typeL>
    static constexpr typename std::enable_if< I < sizeof...(Args) - 1, bool>::type 
    _type_check()
    {
        if constexpr ( std::is_base_of<CRTPBase<typeC>, typeC>::value )
        {
            return _type_check< I + 1, typeL...>();
        }
        return false;
    }

    template<size_t I, typename typeC>
    static constexpr typename std::enable_if< I == sizeof...(Args) -1 , bool>::type 
    _type_check()
    {
        return std::is_base_of<CRTPBase<typeC>, typeC>::value;
    }

    static_assert( _type_check<0, Args...>(), "[CRTPVector]: Not all type T devired from Base<T>" );
};
