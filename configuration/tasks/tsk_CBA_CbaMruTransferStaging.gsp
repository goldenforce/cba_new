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
<businessobject displayString="tsk_CBA_CbaMruTransferStaging" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 15,45 * ? * 2-7</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">EventName</key>
<value id="5" type="java.lang.String">evt_CBA_CbaMruTransferStaging</value>
</entry>
</jobDataMap>
<jobGroup id="6">Events</jobGroup>
<jobName id="7">CBA</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="8">tsk_CBA_CbaMruTransferStaging</name>
<nextFireTime id="9">2018-05-14T00:15:00.000+1000</nextFireTime>
<previousFireTime id="10">2018-05-12T23:45:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="11">2018-05-08T01:30:49.000+1000</startTime>
<timeZone id="12">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
</goldensource-package>
