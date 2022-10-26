#pragma
#include <iostream>
#include <utility>
#include <functional>

using namespace std;

template <typename T>
class Singleton
{
protected:
    Singleton() = default;
    Singleton(const Singleton &) = delete;
    Singleton &operator=(const Singleton &) = delete;
    virtual ~Singleton() = default;

public:
    template <typename... Args>
    static T &getInstance(Args... args) // Singleton
    {
        //we pack our arguments in a T&() function...
        //the bind is there to avoid some gcc bug
        static auto onceFunction = std::bind(createInstanceInternal<Args...>, args...);
        //and we apply it once...
        return apply(onceFunction);
    }

private:
    //This method has one instance per T
    //so the static reference should be initialized only once
    //so the function passed in is called only the first time
    static T &apply(const std::function<T &()> &function)
    {
        static T &instanceRef = function();
        return instanceRef;
    }

    //Internal creation function. We have to make sure it is called only once...
    template <typename... Args>
    static T &createInstanceInternal(Args... args)
    {
        static T instance{std::forward<Args>(args)...};
        return instance;
    }
};
