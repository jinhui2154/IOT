include_directories(${CMAKE_CURRENT_SOURCE_DIR})

add_subdirectory(lib)
add_subdirectory(entry)

# install public header
install(
    DIRECTORY   ${PROJECT_HEADER_PATH}/riot
    DESTINATION include
)