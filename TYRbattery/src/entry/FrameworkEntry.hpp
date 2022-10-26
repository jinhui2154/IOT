#pragma once
#include <memory>

class FrameworkEntry
{
public:
    FrameworkEntry(int argc, char* argv[]);
    
    ~FrameworkEntry();

    void show_logo();

    int  start_loop();

private:
    class Impl;
    std::unique_ptr<Impl> _impl;
};