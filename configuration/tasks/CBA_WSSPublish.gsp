<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.15">
<package-comment/>
<businessobject displayString="CBA_WSSPublish" type="org.quartz.impl.JobDetailImpl">
<org.quartz.impl.JobDetailImpl id="0">
<group id="1">Events</group>
<jobClass>com.j2fe.scheduling.jobs.ExecuteEventJob</jobClass>
<jobDataMap id="2"/>
<name id="3">CBA_WSSPublish</name>
</org.quartz.impl.JobDetailImpl>
</businessobject>
<businessobject displayString="WSS_LN_FX" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 0 0 1 1 ?</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:ExtractionQueryName</key>
<value id="5" type="java.lang.String">WSSFXv0.1</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:FileType</key>
<value id="7" type="java.lang.String">WSS</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:PublishToDirectory</key>
<value id="9" type="java.lang.String">/share/gs/OutputFiles/wss</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:PublishToFileNamePattern</key>
<value id="11" type="java.lang.String">WSS_LN_FX_&lt;Sysdate[yyyyMMddHHmmss]&gt;</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:QueryParameter1</key>
<value id="13" type="java.lang.String">WSS=ISGR05</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:QueryParameter2</key>
<value id="15" type="java.lang.String">04/MAY/18</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:QueryParameter3</key>
<value id="17" type="java.lang.String">SNAP====LN</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:serverCommand</key>
<value id="19" type="java.lang.String">test</value>
</entry>
<entry>
<key id="20" type="java.lang.String">EventName</key>
<value id="21" type="java.lang.String">evt_CBA_WSSPublish</value>
</entry>
</jobDataMap>
<jobGroup id="22">Events</jobGroup>
<jobName id="23">CBA_WSSPublish</jobName>
<misfireInstruction>1</misfireInstruction>
<name id="24">WSS_LN_FX</name>
<nextFireTime id="25">2019-01-01T00:00:00.000+1100</nextFireTime>
<priority>5</priority>
<startTime id="26">2018-05-13T19:31:08.000+1000</startTime>
<timeZone id="27">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="WSS_LN_MM" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 0 0 1 1 ?</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:ExtractionQueryName</key>
<value id="5" type="java.lang.String">WSSMMYv0.1</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:FileType</key>
<value id="7" type="java.lang.String">WSS</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:PublishToDirectory</key>
<value id="9" type="java.lang.String">/share/gs/OutputFiles/wss</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:PublishToFileNamePattern</key>
<value id="11" type="java.lang.String">WSS_LN_MM_&lt;Sysdate[yyyyMMddHHmmss]&gt;</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:QueryParameter1</key>
<value id="13" type="java.lang.String">WSS=ISGR06</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:QueryParameter2</key>
<value id="15" type="java.lang.String">04/MAY/18</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:QueryParameter3</key>
<value id="17" type="java.lang.String">SNAP====LN</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:serverCommand</key>
<value id="19" type="java.lang.String">test</value>
</entry>
<entry>
<key id="20" type="java.lang.String">EventName</key>
<value id="21" type="java.lang.String">evt_CBA_WSSPublish</value>
</entry>
</jobDataMap>
<jobGroup id="22">Events</jobGroup>
<jobName id="23">CBA_WSSPublish</jobName>
<misfireInstruction>1</misfireInstruction>
<name id="24">WSS_LN_MM</name>
<nextFireTime id="25">2019-01-01T00:00:00.000+1100</nextFireTime>
<priority>5</priority>
<startTime id="26">2018-05-13T19:34:38.000+1000</startTime>
<timeZone id="27">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="WSS_LVRREF" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 0 0 1 1 ?</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:ExtractionQueryName</key>
<value id="5" type="java.lang.String">WSSMMYv0.1</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:FileType</key>
<value id="7" type="java.lang.String">WSS</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:PublishToDirectory</key>
<value id="9" type="java.lang.String">/share/gs/OutputFiles/wss</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:PublishToFileNamePattern</key>
<value id="11" type="java.lang.String">WSS_LVRREF_&lt;Sysdate[yyyyMMddHHmmss]&gt;</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:QueryParameter1</key>
<value id="13" type="java.lang.String">WSS=ISGR07</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:QueryParameter2</key>
<value id="15" type="java.lang.String">04/MAY/2018</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:QueryParameter3</key>
<value id="17" type="java.lang.String">SNAP====SY</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:serverCommand</key>
<value id="19" type="java.lang.String">test</value>
</entry>
<entry>
<key id="20" type="java.lang.String">EventName</key>
<value id="21" type="java.lang.String">evt_CBA_WSSPublish</value>
</entry>
</jobDataMap>
<jobGroup id="22">Events</jobGroup>
<jobName id="23">CBA_WSSPublish</jobName>
<misfireInstruction>1</misfireInstruction>
<name id="24">WSS_LVRREF</name>
<nextFireTime id="25">2019-01-01T00:00:00.000+1100</nextFireTime>
<priority>5</priority>
<startTime id="26">2018-05-13T19:36:46.000+1000</startTime>
<timeZone id="27">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="WSS_NY_FX" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 0 0 1 1 ?</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:ExtractionQueryName</key>
<value id="5" type="java.lang.String">WSSFXv0.1</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:FileType</key>
<value id="7" type="java.lang.String">WSS</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:PublishToDirectory</key>
<value id="9" type="java.lang.String">/share/gs/OutputFiles/wss</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:PublishToFileNamePattern</key>
<value id="11" type="java.lang.String">WSS_NY_FX&lt;Sysdate[yyyyMMddHHmmss]&gt;</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:QueryParameter1</key>
<value id="13" type="java.lang.String">WSS=ISGR03</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:QueryParameter2</key>
<value id="15" type="java.lang.String">04/MAY/18</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:QueryParameter3</key>
<value id="17" type="java.lang.String">SNAP====NY</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:serverCommand</key>
<value id="19" type="java.lang.String">test</value>
</entry>
<entry>
<key id="20" type="java.lang.String">EventName</key>
<value id="21" type="java.lang.String">evt_CBA_WSSPublish</value>
</entry>
</jobDataMap>
<jobGroup id="22">Events</jobGroup>
<jobName id="23">CBA_WSSPublish</jobName>
<misfireInstruction>1</misfireInstruction>
<name id="24">WSS_NY_FX</name>
<nextFireTime id="25">2019-01-01T00:00:00.000+1100</nextFireTime>
<priority>5</priority>
<startTime id="26">2018-05-13T19:28:49.000+1000</startTime>
<timeZone id="27">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="WSS_NY_MM" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 0 0 1 1 ?</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:ExtractionQueryName</key>
<value id="5" type="java.lang.String">WSSMMYv0.1</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:FileType</key>
<value id="7" type="java.lang.String">WSS</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:PublishToDirectory</key>
<value id="9" type="java.lang.String">/share/gs/OutputFiles/wss</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:PublishToFileNamePattern</key>
<value id="11" type="java.lang.String">WSS_NY_MM_&lt;Sysdate[yyyyMMddHHmmss]&gt;</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:QueryParameter1</key>
<value id="13" type="java.lang.String">WSS=ISGR04</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:QueryParameter2</key>
<value id="15" type="java.lang.String">04/MAY/18</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:QueryParameter3</key>
<value id="17" type="java.lang.String">SNAP====NY</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:serverCommand</key>
<value id="19" type="java.lang.String">test</value>
</entry>
<entry>
<key id="20" type="java.lang.String">EventName</key>
<value id="21" type="java.lang.String">evt_CBA_WSSPublish</value>
</entry>
</jobDataMap>
<jobGroup id="22">Events</jobGroup>
<jobName id="23">CBA_WSSPublish</jobName>
<misfireInstruction>1</misfireInstruction>
<name id="24">WSS_NY_MM</name>
<nextFireTime id="25">2019-01-01T00:00:00.000+1100</nextFireTime>
<priority>5</priority>
<startTime id="26">2018-05-13T19:28:49.000+1000</startTime>
<timeZone id="27">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="WSS_SALREF" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 0 0 1 1 ?</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:ExtractionQueryName</key>
<value id="5" type="java.lang.String">WSSMMYv0.1</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:FileType</key>
<value id="7" type="java.lang.String">WSS</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:PublishToDirectory</key>
<value id="9" type="java.lang.String">/share/gs/OutputFiles/wss</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:PublishToFileNamePattern</key>
<value id="11" type="java.lang.String">WSS_SALREF_&lt;Sysdate[yyyyMMddHHmmss]&gt;</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:QueryParameter1</key>
<value id="13" type="java.lang.String">WSS=ISGR07</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:QueryParameter2</key>
<value id="15" type="java.lang.String">04/MAY/2018</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:QueryParameter3</key>
<value id="17" type="java.lang.String">SNAP====SY</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:serverCommand</key>
<value id="19" type="java.lang.String">test</value>
</entry>
<entry>
<key id="20" type="java.lang.String">EventName</key>
<value id="21" type="java.lang.String">evt_CBA_WSSPublish</value>
</entry>
</jobDataMap>
<jobGroup id="22">Events</jobGroup>
<jobName id="23">CBA_WSSPublish</jobName>
<misfireInstruction>1</misfireInstruction>
<name id="24">WSS_SALREF</name>
<nextFireTime id="25">2019-01-01T00:00:00.000+1100</nextFireTime>
<priority>5</priority>
<startTime id="26">2018-05-13T19:36:47.000+1000</startTime>
<timeZone id="27">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="WSS_SYD_FX" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 0 0 1 1 ?</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:ExtractionQueryName</key>
<value id="5" type="java.lang.String">WSSFXv0.1</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:FileType</key>
<value id="7" type="java.lang.String">WSS</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:PublishToDirectory</key>
<value id="9" type="java.lang.String">/share/gs/OutputFiles/wss</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:PublishToFileNamePattern</key>
<value id="11" type="java.lang.String">WSS_Syd_FX_&lt;Sysdate[yyyyMMddHHmmss]&gt;</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:QueryParameter1</key>
<value id="13" type="java.lang.String">WSS=ISGR01</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:QueryParameter2</key>
<value id="15" type="java.lang.String">04/MAY/18</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:QueryParameter3</key>
<value id="17" type="java.lang.String">SNAP====SY</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:serverCommand</key>
<value id="19" type="java.lang.String">test</value>
</entry>
<entry>
<key id="20" type="java.lang.String">EventName</key>
<value id="21" type="java.lang.String">evt_CBA_WSSPublish</value>
</entry>
</jobDataMap>
<jobGroup id="22">Events</jobGroup>
<jobName id="23">CBA_WSSPublish</jobName>
<misfireInstruction>1</misfireInstruction>
<name id="24">WSS_SYD_FX</name>
<nextFireTime id="25">2019-01-01T00:00:00.000+1100</nextFireTime>
<priority>5</priority>
<startTime id="26">2018-05-14T18:30:00.000+1000</startTime>
<timeZone id="27">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="WSS_SYD_MM_F" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 0 0 1 1 ?</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:ExtractionQueryName</key>
<value id="5" type="java.lang.String">WSSMMFv0.1</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:FileType</key>
<value id="7" type="java.lang.String">WSS</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:PublishToDirectory</key>
<value id="9" type="java.lang.String">/share/gs/OutputFiles/wss</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:PublishToFileNamePattern</key>
<value id="11" type="java.lang.String">WSS_Syd_MM_F_&lt;Sysdate[yyyyMMddHHmmss]&gt;</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:QueryParameter1</key>
<value id="13" type="java.lang.String">WSS=ISGR02</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:QueryParameter2</key>
<value id="15" type="java.lang.String">04/MAY/18</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:QueryParameter3</key>
<value id="17" type="java.lang.String">SNAP====SY</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:serverCommand</key>
<value id="19" type="java.lang.String">test</value>
</entry>
<entry>
<key id="20" type="java.lang.String">EventName</key>
<value id="21" type="java.lang.String">evt_CBA_WSSPublish</value>
</entry>
</jobDataMap>
<jobGroup id="22">Events</jobGroup>
<jobName id="23">CBA_WSSPublish</jobName>
<misfireInstruction>1</misfireInstruction>
<name id="24">WSS_SYD_MM_F</name>
<nextFireTime id="25">2019-01-01T00:00:00.000+1100</nextFireTime>
<priority>5</priority>
<startTime id="26">2018-05-13T19:28:48.000+1000</startTime>
<timeZone id="27">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="WSS_SYD_MM_Y" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 0 0 1 1 ?</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:ExtractionQueryName</key>
<value id="5" type="java.lang.String">WSSMMYv0.1</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:FileType</key>
<value id="7" type="java.lang.String">WSS</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:PublishToDirectory</key>
<value id="9" type="java.lang.String">/share/gs/OutputFiles/wss</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:PublishToFileNamePattern</key>
<value id="11" type="java.lang.String">WSS_Syd_MM_Y_&lt;Sysdate[yyyyMMddHHmmss]&gt;</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:QueryParameter1</key>
<value id="13" type="java.lang.String">WSS=ISGR02</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:QueryParameter2</key>
<value id="15" type="java.lang.String">04/MAY/18</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:QueryParameter3</key>
<value id="17" type="java.lang.String">SNAP====SY</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:serverCommand</key>
<value id="19" type="java.lang.String">test</value>
</entry>
<entry>
<key id="20" type="java.lang.String">EventName</key>
<value id="21" type="java.lang.String">evt_CBA_WSSPublish</value>
</entry>
</jobDataMap>
<jobGroup id="22">Events</jobGroup>
<jobName id="23">CBA_WSSPublish</jobName>
<misfireInstruction>1</misfireInstruction>
<name id="24">WSS_SYD_MM_Y</name>
<nextFireTime id="25">2019-01-01T00:00:00.000+1100</nextFireTime>
<priority>5</priority>
<startTime id="26">2018-05-13T19:28:47.000+1000</startTime>
<timeZone id="27">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
</goldensource-package>
