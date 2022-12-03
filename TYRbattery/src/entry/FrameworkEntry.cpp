#include "FrameworkEntry.hpp"
#include <thread>
#include <iostream>

#include "riot/core/FrameworkEnvironmentInfo.hpp"
#include "riot/core/RIOTFrameworkContext.hpp"
#include "riot/plugin/attachable_service.hpp"
#include <boost/dll/import.hpp>
#include <boost/program_options.hpp>


namespace bpo = boost::program_options;

class FrameworkEntry::Impl
{
public:
  Impl(int argc, char* argv[])
        : argc(argc), argv(argv)
    {
       context  = std::shared_ptr<RIOTFrameworkContext>(new RIOTFrameworkContext());
    }


  int parse_options()
  {
      bpo::options_description opts{"framework start options"};
      opts.add_options()  
      ("plugin", bpo::value<std::string>(), "plugin file path")
      ("help", "show options details");

      try{
          std::cout << "parsing options..." << std::endl;
          bpo::store(bpo::parse_command_line(argc, argv, opts), vm);
      }
      catch(...){
          std::cerr << "unknown option!" << std::endl;
          return -1;
      }
     
      if(vm.count("help")){
          std::cout << opts << std::endl;
          return 1;
      }
  
        return 0;
  }  

  int init_modules()
  {        
      auto init_rst = context->init();
    
      if(init_rst.has_value())
      {
        std::cerr << "Application context initialization failed:" << *init_rst << std::endl;
        return -1;
      }
          

      logger = context->environment_info()->global_logger();
      logger->info("Frame work enviroment initialize success");

      return 0;
  }

  int init_plugin()
  {
      std::string plugin_path;
      if(vm.count("plugin"))
      {
          plugin_path = vm["plugin"].as<std::string>();
          logger->info("Specific config file: {}", plugin_path);
      }else{
          plugin_path = context->plugin_path();
      }
        
      if(plugin_path.empty())
      {
          logger->error("Path of plugin is empty");
          return -1;
      }

      library = boost::dll::shared_library(
          plugin_path,
          boost::dll::load_mode::append_decorations
      );

      std::function<AttachableService* ()> plugin_factory =
            library.get_alias<AttachableService* ()>("_create_plugin");
 
      service_instance = plugin_factory();

      if(!service_instance->init( context ))
      { 
            logger->error("instance create init failed");
            return -1;
      }

      return 0;
  }

  int run_plugin()
  {
      if(!service_instance->enable())
      {
        logger->error("instance create enable failed");
        return -1;
      }
      return 0;
  }


  int start_loop()
  {
      using ProcessType = int (Impl::*)();
      ProcessType processes[] = {
            &Impl::parse_options,
            &Impl::init_modules,
            &Impl::init_plugin,
            &Impl::run_plugin
      };

      int rst;
      for(auto& process : processes )
      {
          rst = (this->*process)();
          if(rst != 0) return -1;
      }

      // TODO : change to event loop
      for(;;)
      {
        std::this_thread::sleep_for(std::chrono::seconds(2));
      }

      return 0;
  }



private:
    int                                     argc;
    char**                                  argv;

    bpo::variables_map                      vm;


    std::shared_ptr<RIOTFrameworkContext>   context;
    std::shared_ptr<spdlog::logger>         logger;
    boost::dll::shared_library              library;
    AttachableService*                      service_instance{nullptr};

};

 FrameworkEntry::FrameworkEntry(int argc, char* argv[])
{
    _impl = std::make_unique<Impl>(argc, argv);
}

FrameworkEntry::~FrameworkEntry() = default; 


int FrameworkEntry::start_loop()
{
    return _impl->start_loop();
}



