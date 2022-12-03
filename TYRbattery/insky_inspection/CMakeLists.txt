cmake_minimum_required(VERSION 3.9)
project(insky-inpection)

set(CMAKE_POSITION_INDEPENDENT_CODE ON)
set(CMAKE_CXX_STANDARD 17)

include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}
)

add_library(
    insky_inspection
    MODULE
    InskyInspectionServer.cpp
    InspectionSubServer.cpp
    #MsgSerializer.cpp
    #MsgUploader.cpp
    #MsgBlock.cpp

    # subservers
    # sensors data upload server
    sensors_data_send_server/SensorsDataSendServer.cpp
    #sensors_data_send_server/SensorsDataSerialize.cpp

    # mission server
    #mission_server/CmdReceiver.cpp
    #mission_server/ConfigLoader.cpp
    #mission_server/MissionDataSerialize.cpp
    #mission_server/MissionInstance.cpp
    #mission_server/MissionManager.cpp
    #mission_server/MissionServer.cpp
    #mission_server/MsgDeserializer.cpp
)

target_link_libraries(
    insky_inspection
    PUBLIC
    Boost::json
    riot::riot
    ${TINYXML2_LIB}
)

target_include_directories(
    insky_inspection
    PRIVATE
    ${TINYXML2_INCLUDE}
    ${PROJECT_HEADER_PATH}
)

target_compile_options(
    insky_inspection
    PRIVATE
    -save-temps
)

set_target_properties(insky_inspection PROPERTIES PREFIX        "")
set_target_properties(insky_inspection PROPERTIES OUTPUT_NAME   ${PLUGIN_NAME})
set_target_properties(insky_inspection PROPERTIES SUFFIX        "")

install(
    TARGETS     insky_inspection
    DESTINATION ${PLUGIN_INSTALL_PATH}
)
