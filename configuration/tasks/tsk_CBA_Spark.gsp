<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.15">
<package-comment/>
<businessobject displayString="CBA" type="org.quartz.impl.JobDetailImpl">
<org.quartz.impl.JobDetailImpl id="0">
<group id="1">Events</group>
<jobClass>com.j2fe.scheduling.jobs.ExecuteEventJob</jobClass>
<jobDataMap id="2"/>
<name id="3">CBA</name>
</org.quartz.impl.JobDetailImpl>
</businessobject>
<businessobject displayString="tsk_CBA_Spark" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 5 1 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:pSparkMasterURL</key>
<value id="5" type="java.lang.String">spark://</value>
</entry>
<entry>
<key id="6" type="java.lang.String">EventName</key>
<value id="7" type="java.lang.String">evt_CBA_Spark</value>
</entry>
</jobDataMap>
<jobGroup id="8">Events</jobGroup>
<jobName id="9">CBA</jobName>
<misfireInstruction>1</misfireInstruction>
<name id="10">tsk_CBA_Spark</name>
<nextFireTime id="11">2018-04-25T01:05:00.000+1000</nextFireTime>
<previousFireTime id="12">2018-04-24T14:49:12.491+1000</previousFireTime>
<priority>5</priority>
<startTime id="13">2018-04-20T00:31:07.000+1000</startTime>
<timeZone id="14">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
</goldensource-package>
