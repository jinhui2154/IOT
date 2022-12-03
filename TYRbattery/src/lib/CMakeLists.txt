find_package(PahoMqttCpp    REQUIRED)

set(DEFAULT_CONFIG_TEMPLATE_FILE    config_default.xml.cpp.in)
set(DEFAULT_CONFIG_FILE_NAME        config_default.xml.cpp)
set(CONFIGURE_GENERATE_PATH         ${CMAKE_BINARY_DIR}/generate)
set(CONFIGURE_FILE_PATH             ${CONFIGURE_GENERATE_PATH}/${DEFAULT_CONFIG_FILE_NAME})


# config embedded config file
configure_file(${DEFAULT_CONFIG_TEMPLATE_FILE} ${CONFIGURE_FILE_PATH})  



add_library(
    riot
    SHARED

    FrameworkEnvironmentInfo.cpp
    ModuleManager.cpp
    ModuleFactory.cpp
    RIOTFrameworkContext.cpp

    modules/topic_based/mqtt/MQTTClient.cpp
    modules/topic_based/mqtt/MQTTClientCreator.cpp
    modules/topic_based/mqtt/MQTTHandler.cpp
    modules/topic_based/mqtt/MQTTUploader.cpp
    modules/topic_based/TopicClient.cpp
    modules/topic_based/TopicReceiver.cpp   
)

add_library(
    riot::riot
    ALIAS
    riot
)


target_link_libraries(
    riot
    PUBLIC
    spdlog::spdlog
#   rsdk::core
#   rsdk::dji_uav
#   rsdk::mavbased_vehicle
    PahoMqttCpp::paho-mqttpp3
#     ${AVCODEC_LIBRARY}
#     ${AVFORMAT_LIBRARY}
#     ${AVUTIL_LIBRARY}
#     ${AVDEVICE_LIBRARY}
#     ${SWSCALE_LIBRARY}
#     ${ALI_OSS_SDK_LIBRARY}
#    curl
)

target_link_libraries(
    riot
    PRIVATE
    ${TINYXML2_LIB}
  #  ${LIBUSB_LIBRARIES}
    Boost::filesystem
    Threads::Threads
)

target_include_directories(
    riot
    PUBLIC
    $<BUILD_INTERFACE:${PROJECT_HEADER_PATH}>
    $<INSTALL_INTERFACE:${CMAKE_INSTALL_PREFIX}/include>
)


target_include_directories(
    riot
    PRIVATE
    ${CONFIGURE_GENERATE_PATH}
)