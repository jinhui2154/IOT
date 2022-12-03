 #pragma once



#include "riot/tools/StaticReflection.hpp"
#include "riot/modules/topic_based/TopicClient.hpp"
#include "riot/modules/topic_based/TopicSender.hpp"

/*
#include "UploadConfig.hpp"
#include "rsdk/proxy/collector/Attitude.hpp"
#include "rsdk/proxy/collector/Avoid.hpp"
#include "rsdk/proxy/collector/Battery.hpp"
#include "rsdk/proxy/collector/FlyingRbtSt.hpp"
#include "rsdk/proxy/collector/GNSSReceiver.hpp"
#include "rsdk/proxy/collector/GNSSUncertainInfo.hpp"

#include <array>
#include <variant>
#include <type_traits>

*/
/* template<class T> using CollectorSPtr = std::shared_ptr<T>;

template<class T, typename MsgType>
struct MessageNode
{
    CollectorSPtr<T>            collector; */
/*     SenderParameters            parameter; */

/*     using collector_type    = T;
    using message_type      = MsgType;
}; */

/* struct EnabeNodes
{ */
 /*    MessageNode<rsdk::collector::AttitudeProxy,         sensor_msg::Attitude>       attitude;
    MessageNode<rsdk::collector::AvoidanceProxy,        sensor_msg::Avoidance>      avoidance;
    MessageNode<rsdk::collector::BatteryProxy,          sensor_msg::BatteryInfo>    battery;
    MessageNode<rsdk::collector::FlyingRobotStatusProxy,sensor_msg::FlightEnum>     flying_robot_state;
    MessageNode<rsdk::collector::GNSSReceiverProxy,     sensor_msg::Coordinate>     gnss_receiver;
    MessageNode<rsdk::collector::GNSSUncertainInfoProxy,sensor_msg::GNSSUncertain>  gnss_uncertain; */

/*     MessageNode<sensor_msg::Attitude>       attitude;
    MessageNode<sensor_msg::Avoidance>      avoidance;
    MessageNode<sensor_msg::BatteryInfo>    battery;
    MessageNode<sensor_msg::FlightEnum>     flying_robot_state;
    MessageNode<sensor_msg::Coordinate>     gnss_receiver;
    MessageNode<sensor_msg::GNSSUncertain>  gnss_uncertain;

}; */


/* using SenderConfigInfo = 
StaticTypeInfo<
    EnabeNodes,
    MAKE_FIELD(&EnabeNodes::attitude,             "attitude"),
    MAKE_FIELD(&EnabeNodes::avoidance,            "avoidance"),
    MAKE_FIELD(&EnabeNodes::battery,              "battery"),
    MAKE_FIELD(&EnabeNodes::flying_robot_state,   "flying_robot_state"),
    MAKE_FIELD(&EnabeNodes::gnss_receiver,        "gnss_receiver"),
    MAKE_FIELD(&EnabeNodes::gnss_uncertain,       "gnss_uncertain")
>; */
 