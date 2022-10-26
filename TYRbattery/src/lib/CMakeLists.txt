add_library(
    riot
    SHARED

    RIOTFrameworkContext.cpp
   
)

target_include_directories(
    riot
    PUBLIC
    $<INSTALL_INTERFACE:${CMAKE_INSTALL_PREFIX}/include>
)
