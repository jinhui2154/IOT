#pragma once
#include <thread>
#include <queue>
#include <functional>
#include <mutex>
#include <condition_variable>

/**
 * @brief 异步数据处理器，目前可以使用两个队列类型，std::queue 以及 std::priority_queue
 * 
 * @tparam T            CRTP子类类型
 * @tparam MsgType      数据类型
 * @tparam QueueType    队列类型，默认使用std::queue
 * @author chenhui.yu   
 */
template <class T, typename MsgType, class QueueType = std::queue<MsgType>>
class AsyncDataHandler
{
public:
    /**
     * @brief Destroy the Async Data Handler object
     * 
     */
    virtual ~AsyncDataHandler()
    {
        {
            std::unique_lock<std::mutex> ulck(_operator_wait_mutex);
            _thread_quit = true;
            _operator_wait_cv.notify_all();
        }

        if (_bg_thread.joinable())
        {
            _bg_thread.join();
        }
    }

    /**
     * @brief copy message to queue
     * 
     * @param msg 
     */
    void sendMsg(const MsgType& msg)
    {
        {
            std::lock_guard<std::mutex> lck(_operator_wait_mutex);
            _queue.push(msg);
        }
        _operator_wait_cv.notify_all();
    }

    /**
     * @brief move message to queue
     * 
     * @param msg 
     */
    void sendMsg(MsgType&& msg)
    {
        {
            std::lock_guard<std::mutex> lck(_operator_wait_mutex);
            _queue.emplace(std::move(msg));
        }
        _operator_wait_cv.notify_all();
    }

    /**
     * @brief 
     * 
     * @param msg 
     */
    void handle(const MsgType& msg)
    {
        static_cast<T&>(*this).handle(msg);
    }

    /**
     * @brief start thread
     * 
     */
    void start()
    {
        std::thread( 
            std::bind( &AsyncDataHandler::_thread_method, this ) 
        ).swap(_bg_thread);
    }

private:

    template<class Q>
    inline typename std::enable_if< 
        std::is_same<Q, std::queue<MsgType>>::value, const MsgType& 
    >::type firstElem()
    {
        return _queue.front();
    }
    
    template<class Q>
    inline typename std::enable_if< 
        std::is_same<Q, std::priority_queue<MsgType>>::value, const MsgType& 
    >::type firstElem()
    {
        return _queue.top();
    }

    void _thread_method()
    {
        while (true)
        {
            std::unique_lock<std::mutex> ulck(_operator_wait_mutex);

            while (_queue.empty() && !_thread_quit)
            {
                _operator_wait_cv.wait(ulck);
            }

            if (_thread_quit)
                break;

            while (!_queue.empty())
            {
                const auto &mqtt_msg = firstElem<QueueType>();       

                ulck.unlock();

                handle( mqtt_msg );

                ulck.lock();

                _queue.pop();
            }
        }
    }

    bool                        _thread_quit{false};
    std::mutex                  _operator_wait_mutex;
    std::condition_variable     _operator_wait_cv;
    std::thread                 _bg_thread;
    QueueType                   _queue;
};
