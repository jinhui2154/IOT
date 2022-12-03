#include "InspectionSubServer.hpp"

#include <unordered_map>

using SubserverMap = std::unordered_map<std::string, SubServerRegister::SubServerFactoryMethod>;

static SubserverMap& static_subserver_map()
{
    static SubserverMap map{};
    return map;
}

void SubServerRegister::regist(
    const std::string& subserver_name, 
    const SubServerRegister::SubServerFactoryMethod& func)
{
    auto& map = static_subserver_map();

    if(!map.count(subserver_name))
    {
        map[subserver_name] = func;
    }
}

std::vector<SubServerRegister::SubServerPair> 
SubServerRegister::registedSubServer()
{
    std::vector<SubServerRegister::SubServerPair> ret_vec;
    for(const auto& _map_elem : static_subserver_map())
    {
        ret_vec.push_back(_map_elem);
    }
    return ret_vec;
}
