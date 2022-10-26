#include "FrameworkEntry.hpp"

#include "riot/core/FrameworkEnvironmentInfo.hpp"
#include "riot/core/RIOTFrameworkContext.hpp"
#include "riot/plugin/attachable_service.hpp"



class FrameworkEntry::Impl
{
public:
  Impl(int argc, char* argv[])
        : argc(argc), argv(argv)
    {
      // context  = std::shared_ptr<RIOTFrameworkContext>(new RIOTFrameworkContext());
    }




private:
    int                                     argc;
    char**                                  argv;


    std::shared_ptr<RIOTFrameworkContext>   context;


};










FrameworkEntry::FrameworkEntry(int argc, char* argv[])
{
    _impl = std::make_unique<Impl>(argc, argv);
}

FrameworkEntry::~FrameworkEntry() = default;




