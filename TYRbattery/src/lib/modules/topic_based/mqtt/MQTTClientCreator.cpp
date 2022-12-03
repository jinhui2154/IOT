#include "MQTTClient.hpp"
#include "private/module/ModuleFactory.hpp"

using MQTTClientConfigInfo = 
StaticTypeInfo<
    MQTTClient::MQTTClientConfig,
    MAKE_FIELD(&MQTTClient::MQTTClientConfig::user_name ,   "user_name"),
    MAKE_FIELD(&MQTTClient::MQTTClientConfig::password ,    "password"),
    MAKE_FIELD(&MQTTClient::MQTTClientConfig::broker_ip,    "broker_ip"),
    MAKE_FIELD(&MQTTClient::MQTTClientConfig::port ,        "port"),
    MAKE_FIELD(&MQTTClient::MQTTClientConfig::qos ,         "qos")
>;

using CreatorType = ModuleXMLCreator<MQTTClient, MQTTClientConfigInfo>;

RegistModuleCreator(CreatorType, mqtt)
