#pragma once

#include "InskyInspectionServer.hpp"
#include <string>
#include <functional>

class InspectionSubServer
{
public:
    /**
     * @brief initialize
     * 
     */
    virtual bool init(InskyInspectionServer*) = 0;

    /**
     * @brief 作为插件卸载时，会调用的函数
     * 
     * @return true     deinit success
     * @return false    deinit failed
     */
    virtual bool deinit() = 0;

    /**
     * @brief 运行服务时，调用的函数
     * 
     * @return true     enable success
     * @return false    enable failed
     */
    virtual bool enable() = 0;

    /**
     * @brief 禁用服务时调用的函数
     * 
     * @return true 
     * @return false 
     */
    virtual bool disable() = 0;
};

class SubServerRegister
{
public:
    using SubServerFactoryMethod = std::function<std::unique_ptr<InspectionSubServer> ()>;

    using SubServerPair = std::pair<std::string, SubServerFactoryMethod>;

    static void regist(const std::string& subserver_name, const SubServerFactoryMethod&);

    static std::vector<SubServerPair> registedSubServer();
};

template<class T>
class SubServerRegistHelper
{
public:
    explicit SubServerRegistHelper(const char* name)
    {
        static_assert( 
            std::is_base_of_v<InspectionSubServer, T>, 
            "T is not dervied from InspectionSubServer"
        );

        SubServerRegister::regist(
            name,
            []() -> std::unique_ptr<InspectionSubServer>
            {
                return std::make_unique<T>();
            }
        );
    }
};

#define RegistSubServer(server_type) SubServerRegistHelper<server_type> server_type ## _regist_helper {#server_type};
