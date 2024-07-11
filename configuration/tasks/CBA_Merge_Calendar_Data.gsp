<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.15">
<package-comment/>
<businessobject displayString="CBA_Merge_Calendar_Data" type="org.quartz.impl.JobDetailImpl">
<org.quartz.impl.JobDetailImpl id="0">
<group id="1">Events</group>
<jobClass>com.j2fe.scheduling.jobs.ExecuteEventJob</jobClass>
<jobDataMap id="2"/>
<name id="3">CBA_Merge_Calendar_Data</name>
</org.quartz.impl.JobDetailImpl>
</businessobject>
<businessobject displayString="MergeCalendarData" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 30 23 31 12 ?</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:MergeCurrentYear</key>
<value id="5" type="java.lang.String">false</value>
</entry>
<entry>
<key id="6" type="java.lang.String">EventName</key>
<value id="7" type="java.lang.String">CBAMergeCalendarData</value>
</entry>
</jobDataMap>
<jobGroup id="8">Events</jobGroup>
<jobName id="9">CBA_Merge_Calendar_Data</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="10">MergeCalendarData</name>
<nextFireTime id="11">2018-12-31T23:30:00.000+1100</nextFireTime>
<priority>5</priority>
<startTime id="12">2018-04-18T19:39:30.000+1000</startTime>
<timeZone id="13">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
</goldensource-package>
