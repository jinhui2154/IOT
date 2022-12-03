add_executable(
    riot_launcher
    FrameworkEntry.cpp
    logo.cpp
    main.cpp
)

target_link_libraries(
    riot_launcher
    PUBLIC
    riot
)

target_link_libraries(
    riot_launcher
    PRIVATE
    Boost::program_options
)


target_link_libraries(
    riot_launcher
    PRIVATE
    dl
    Boost::json
    Boost::filesystem
)

#install(
#    TARGETS 
#    riot_launcher
#)

