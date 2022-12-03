#pragma once
/* #include "MsgBlock.hpp"
#include "MsgSerializer.hpp" */
#include "riot/tools/timestamp.hpp"

class InskyInspectionServer;

class MsgUploader
{
public:
    explicit MsgUploader(InskyInspectionServer* main_server);

    virtual ~MsgUploader();

  /*   template<class T, SerialMethod SM = SerialMethod::COMMON>
    bool sendMsg(const std::string& topic, const T& msg, TopicPriority priority, int64_t timestamp = milli_timestamp())
    {
        std::string out;

        msg_serializer.serialize<T, SM>(msg, out, timestamp);
    
        return sendMsg( MsgBlock{topic, std::move(out), priority, timestamp} );
    }
 */
    void enable();

  /*   void setContext(const MsgSerializer::SerializeContext& ctx);

    void setContext(MsgSerializer::SerializeContext&& ctx); */

private:

    /* bool sendMsg(MsgBlock&& msg_block); */

   /*  MsgSerializer msg_serializer; */

    class Impl;
    std::unique_ptr<Impl> _impl;
};

