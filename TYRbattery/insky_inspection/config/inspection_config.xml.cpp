static const char* config_default = 
R"======(
<!DOCTYPE xml>
<insky_inspection>
    <collector>

        <publisher> 
            <attitude           topic="/attitude"           priority="low"    />
            <avoidance          topic="/avoid"              priority="highest"/>
            <battery            topic="/battery"            priority="middle" />
            <flying_robot_state topic="/state"              priority="middle" />
            <gnss_receiver      topic="/coordinate"         priority="high"   />
            <gnss_uncertain     topic="/gpsUncertainty"     priority="middle" />
        </publisher>

    </collector>

    <mission>

        <publisher>
            <reached            topic="/reached"            priority="middle" />
            <finished           topic="/finished"           priority="highest" />
            <action_event       topic="/action_event"       priority="high" />
            <random_event       topic="/random_event"       priority="high" />
        </publisher>

        <client>
            <start              topic="/start/mission"      response="/response"    priority="highest"/>
            <append             topic="/set/mission"        response="/response"    priority="highest"/>
            <pause              topic="/pause/mission"      response="/response"    priority="highest"/>
            <resume             topic="/resume/mission"     response="/response"    priority="highest"/>
            <clear              topic="/clear/mission"      response="/response"    priority="highest"/>
            <return2home        topic="/return"             response="/response"    priority="highest"/>
        </client>

        <item_limit number="1000"/>

    </mission>

    <video_stream>
    </video_stream>
</insky_inspection>
)======";

static const char* config_default_name = "insky_inspection_config.xml";
