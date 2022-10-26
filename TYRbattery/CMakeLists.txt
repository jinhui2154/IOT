cmake_minimum_required(VERSION 3.14)
project(robot_iot_framework)


set(CMAKE_CXX_STANDARD 17)


# project header
set(PROJECT_HEADER_PATH ${PROJECT_SOURCE_DIR}/include)

# build framework entry, riot library and riot interface
add_subdirectory(src)





#./hello_cmake
#add_executable(hello_cmake main.cpp)