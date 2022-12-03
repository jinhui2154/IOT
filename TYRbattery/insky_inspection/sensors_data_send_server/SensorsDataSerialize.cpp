/* #include "MsgSerializer.hpp"

#include <rsdk/message/sensor_msg/msg_attitude.h>
#include <rsdk/message/sensor_msg/msg_avoidance.h>
#include <rsdk/message/sensor_msg/msg_battery.h>
#include <rsdk/message/sensor_msg/flying_rob_status.h>
#include <rsdk/message/sensor_msg/msg_coordinate.h>
#include <rsdk/message/sensor_msg/msg_gnss_uncertain.h>

template<>
void MsgSerializer::_serialize< sensor_msg::Attitude>(const sensor_msg::Attitude& msg, boost::json::object& _obj)
{
    _obj["type"] = "attitude";
    _obj["parameters"] = 
    {
        {{"name", "orientationX"},{"value", msg.q0}},
        {{"name", "orientationY"},{"value", msg.q2}},
        {{"name", "orientationZ"},{"value", msg.q3}},
        {{"name", "orientationQ"},{"value", msg.q0}}
    };
}

template<>
void MsgSerializer::_serialize< sensor_msg::Avoidance>(const sensor_msg::Avoidance& msg, boost::json::object& _obj)
{
    _obj["type"] = "avoidance";
    _obj["parameters"] = {
        {{"name","up"},{"value",msg.up.lenght}},
        {{"name","upEnable"},{"value",msg.up.is_used}},
        {{"name","down"},{"value",msg.down.lenght}},
        {{"name","downEnable"},{"value",msg.down.is_used}},
        {{"name","left"},{"value",msg.left.lenght}},
        {{"name","leftEnable"},{"value",msg.left.is_used}},
        {{"name","right"},{"value",msg.right.lenght}},
        {{"name","rightEnable"},{"value",msg.right.is_used}},
        {{"name","front"},{"value",msg.front.lenght}},
        {{"name","frontEnable"},{"value",msg.front.is_used}},
        {{"name","back"},{"value",msg.back.lenght}},
        {{"name","backEnable"},{"value",msg.back.is_used}}
    };
}

template<>
void MsgSerializer::_serialize< sensor_msg::BatteryInfo>(const sensor_msg::BatteryInfo& msg, boost::json::object& _obj)
{
    _obj["type"] = "batteryInfo";
    boost::json::array cells;
    for(const auto& each_cell_voltage : msg.each_cell)
    {
        cells.push_back( each_cell_voltage );
    }
    _obj["parameters"] = {
        {{"name", "wholeVoltage"}, {"value",msg.whole_voltage}},
        {{"name", "eachCells"} , {"value", std::move(cells)}}
    };
}

template<>
void MsgSerializer::_serialize< sensor_msg::FlightEnum>(const sensor_msg::FlightEnum& msg, boost::json::object& _obj)
{
    static const char* str_stop         = "STOP";
    static const char* str_unknown      = "UNKNOWN";
    static const char* str_in_air       = "IN_AIR";
    static const char* str_on_ground    = "ON_GROUND";
    _obj["type"] = "flightStatus";

    const char* status{str_unknown};
    switch (msg)
    {
    case sensor_msg::FlightEnum::STOPED:
        status = str_stop;
        break;
    case sensor_msg::FlightEnum::UNKNOWN:
        status = str_unknown;
        break;
    case sensor_msg::FlightEnum::IN_AIR:
        status = str_in_air;
        break;
    case sensor_msg::FlightEnum::ON_GROUND:
        status = str_on_ground;
        break;
    default:
        status = str_unknown;
    }
    
    _obj["parameters"] = {
        {{"name", "flightStatus"},{"value",status}}
    };
}

template<>
void MsgSerializer::_serialize< sensor_msg::Coordinate>(const sensor_msg::Coordinate& msg, boost::json::object& _obj)
{
    _obj["type"] = "globalPosition";
    _obj["parameters"] = {
        {{"name","longitude"}, {"value",msg.longitude}},
        {{"name","latitude"}, {"value",msg.latitude}},
        {{"name","altitude"}, {"value",msg.altitude}},
        {{"name","status"}, {"value",0}},
        {{"name","service"}, {"value",0}},
    };
}

template<>
void MsgSerializer::_serialize< sensor_msg::GNSSUncertain>(const sensor_msg::GNSSUncertain& msg, boost::json::object& _obj)
{
    _obj["type"] = "gpsFixInfo";
    _obj["parameters"] = {
        {{"name","gpsFixType"}, {"value", msg.fix_type}},
        {{"name","satelliteNumber"}, {"value", msg.sat_num}},
        {{"name","eph"}, {"value", msg.hdop}},
        {{"name","epv"}, {"value", msg.vdop}}
    };
}
 */