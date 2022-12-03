#include<iostream>

#include "FrameworkEntry.hpp"

int main(int argc, char* argv[])
{
    int i = 0;
    
    FrameworkEntry framework_entry(argc, argv);

    framework_entry.show_logo();

    return framework_entry.start_loop();  
    
};
