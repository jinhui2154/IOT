cmake_minimum_required(VERSION 3.9)
project(robot_iot_framework)

set(CMAKE_POSITION_INDEPENDENT_CODE ON)
set(CMAKE_CXX_STANDARD 17)


set(CMAKE_TOOL_DIRECTORY ${CMAKE_SOURCE_DIR}/cmake)


option(
    BUILD_FOR_SIM_ENV
    "Build special version for simulation enviroment"
    OFF
)


find_package(spdlog             CONFIG          REQUIRED)
find_package(Boost      1.75.0                  REQUIRED COMPONENTS json filesystem program_options)
find_package(OpenSSL                            REQUIRED)
# find tinyxml2
find_library(TINYXML2_LIB   tinyxml2            REQUIRED)
find_path(TINYXML2_INCLUDE  tinyxml2.h          REQUIRED)

# set default plugin install directory
set(PLUGIN_NAME         "inspection.plugin")
set(PLUGIN_INSTALL_PATH ${CMAKE_INSTALL_PREFIX}/riot/plugin)
set(PLUGIN_FILE_PATH    ${PLUGIN_INSTALL_PATH}/${PLUGIN_NAME})

# project header
set(PROJECT_HEADER_PATH ${PROJECT_SOURCE_DIR}/include)



# build framework entry, riot library and riot interface
add_subdirectory(src)

# build plugin
# TODO splite the business to other project
add_subdirectory(insky_inspection)

# ---------------------------------------------------------------------------------------
# Install
# ---------------------------------------------------------------------------------------
include(CMakePackageConfigHelpers)


set(PROJECT_NAMESPACE   riot)
set(PROJECT_VERSION     0.0.0)
set(config_targets_file "riot-config-targets.cmake")

# /home/liusuo/IOT/TYRbattery
# /home/liusuo/IOT/TYRbattery/build
# /usr/local

configure_package_config_file(
	${CMAKE_CURRENT_SOURCE_DIR}/cmake/riot-config.cmake.in
	${CMAKE_CURRENT_BINARY_DIR}/riot-config.cmake
	INSTALL_DESTINATION ${CMAKE_INSTALL_PREFIX}/share/riot
)

write_basic_package_version_file(
  ${CMAKE_CURRENT_BINARY_DIR}/riot-config-version.cmake
  VERSION       ${PROJECT_VERSION}
  COMPATIBILITY SameMajorVersion
)

install(
	FILES ${CMAKE_CURRENT_BINARY_DIR}/riot-config.cmake
    ${CMAKE_CURRENT_BINARY_DIR}/riot-config-version.cmake
    DESTINATION ${CMAKE_INSTALL_PREFIX}/share/riot
)

