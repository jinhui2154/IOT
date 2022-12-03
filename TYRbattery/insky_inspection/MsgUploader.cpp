#include "MsgUploader.hpp"
#include "InskyInspectionServer.hpp"

#include "riot/core/RIOTFrameworkContext.hpp"
#include "riot/modules/topic_based/TopicClient.hpp"
#include "riot/modules/topic_based/TopicSender.hpp"
#include "riot/tools/filesystem.hpp"

#include <spdlog/async.h>
#include <spdlog/sinks/stdout_color_sinks.h>
#include <spdlog/sinks/rotating_file_sink.h>

#include <condition_variable>
#include <mutex>
#include <queue>
#include <thread>
#include <iostream>

class MsgUploader::Impl
{
    friend class MsgUploader;
public:

    explicit Impl(InskyInspectionServer* main_server)
    {
        _main_server = main_server;

        auto fw_ctx = _main_server->globalCtx();

   /*      auto topic_client = fw_ctx->modules_manager()->getModule<TopicClient>(); */

        _low_layer_sender = topic_client->advertiseLowLayer();

        InitLogger();
    }

    ~Impl()
    {
        {
            std::unique_lock<std::mutex> ulck(_queue_wait_mutex);
            _thread_quit = true;
            _queue_wait_cv.notify_all();
        }

        if (_bg_thread.joinable())
            _bg_thread.join();
    }

    void InitLogger()
    {
        auto ctx        = _main_server->globalCtx();

        fs::path _log_path = ctx->environment_info()->global_log_path();

        spdlog::flush_every(std::chrono::seconds(5));

        auto _file_sink     = std::make_shared<spdlog::sinks::rotating_file_sink_mt>(
            (_log_path / "message_logger.log").string(),
            50 * 1024 * 1024, /*50MB*/
            10                /* 10个文件 也就是允许500MB */
        );
        std::vector<spdlog::sink_ptr> sinks{_file_sink};
        _message_logger = std::make_shared<spdlog::async_logger>("_message_logger", sinks.begin(), sinks.end(), spdlog::thread_pool());
        _message_logger->set_level(spdlog::level::trace);

        spdlog::register_logger(_message_logger);
    }

  /*   void send_thread()
    {
        while (!_thread_quit)
        {
            std::unique_lock<std::mutex> ulck(_queue_wait_mutex);
            while (_queue.empty() && !_thread_quit)
            {
                _queue_wait_cv.wait(ulck);
            }

            if (_thread_quit)
                break;

            while (!_queue.empty())
            {
                const auto& _msg = _queue.top();
                
                if(_msg.message.empty())
                {
                    continue;
                }
                
                ulck.unlock();

                // handle message
                _low_layer_sender->sendMessage(
                    _msg.topic,
                    // must use std::move
                    // becuase the pop operator deconstruct the message
                    std::move(_msg.message)
                );

                ulck.lock();

                _queue.pop();
            }
        }
    } */
/* 
    bool sendMsg(MsgBlock&& msg_block)
    {
        {
            std::scoped_lock lck(_queue_wait_mutex);
            _queue.emplace(std::move(msg_block));
        }
        _queue_wait_cv.notify_one();
        
        return true;
    } */

    void enable()
    {
       /*  std::thread(
            std::bind(&Impl::send_thread, this)
        ).swap(_bg_thread); */
    }

private:

    std::shared_ptr<spdlog::logger> _message_logger;
   /*  std::priority_queue<MsgBlock>   _queue; */
    bool                            _thread_quit{false};
    std::mutex                      _queue_wait_mutex;
    std::condition_variable         _queue_wait_cv;
    std::thread                     _bg_thread;
    TopicSenderImpl::SPtr           _low_layer_sender;
    InskyInspectionServer*          _main_server;
};

/* MsgUploader::MsgUploader(InskyInspectionServer* main_server)
:msg_serializer(main_server)
{
    _impl = std::make_unique<Impl>(main_server);
} */

MsgUploader::~MsgUploader() = default;

/* bool MsgUploader::sendMsg(MsgBlock&& msg_block)
{
    _impl->_message_logger->info(msg_block.message);
    return _impl->sendMsg(std::move(msg_block));
} */

void MsgUploader::enable()
{
    _impl->enable();
}

/* void MsgUploader::setContext(const MsgSerializer::SerializeContext& ctx)
{
    msg_serializer.setContxt(ctx);
}

void MsgUploader::setContext(MsgSerializer::SerializeContext&& ctx)
{
    msg_serializer.setContxt(std::move(ctx));
} */
