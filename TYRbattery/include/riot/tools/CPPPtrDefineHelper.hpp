#pragma once
#include <memory>

template<class T>
class PtrHelper
{
public:
    using SPtr = std::shared_ptr<T>;
    using UPtr = std::unique_ptr<T>;
};