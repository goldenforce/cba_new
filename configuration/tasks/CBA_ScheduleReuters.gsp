<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.15">
<package-comment/>
<businessobject displayString="CBA_ScheduleReuters" type="org.quartz.impl.JobDetailImpl">
<org.quartz.impl.JobDetailImpl id="0">
<group id="1">Events</group>
<jobClass>com.j2fe.scheduling.jobs.ExecuteEventJob</jobClass>
<jobDataMap id="2"/>
<name id="3">CBA_ScheduleReuters</name>
</org.quartz.impl.JobDetailImpl>
</businessobject>
<businessobject displayString="AS_FX_RT_DSS_2030_EOD" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">55 10 21 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:Hours</key>
<value id="5" type="java.lang.String">12</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:Issue Group Name</key>
<value id="7" type="java.lang.String">AS_FX_RT_DSS_2030_EOD</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Minutes</key>
<value id="9" type="java.lang.String">30</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ReutersDSSReportTemplateName</key>
<value id="11" type="java.lang.String">CBA_ReutersDSS_EOD_Pricing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:filePattern</key>
<value id="13" type="java.lang.String">AS_FX_RT_DSS_2030_EOD_%D.csv</value>
</entry>
<entry>
<key id="14" type="java.lang.String">EventName</key>
<value id="15" type="java.lang.String">evt_CBA_ReutersUploadSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="16">Events</jobGroup>
<jobName id="17">CBA_ScheduleReuters</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="18">AS_FX_RT_DSS_2030_EOD</name>
<nextFireTime id="19">2018-04-25T21:10:55.000+1000</nextFireTime>
<previousFireTime id="20">2018-04-24T21:10:55.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="21">2018-04-20T22:39:53.000+1000</startTime>
<timeZone id="22">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="AS_FX_RT_DSS_2030_INTRDAY" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">50 09 21 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:Hours</key>
<value id="5" type="java.lang.String">12</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:Issue Group Name</key>
<value id="7" type="java.lang.String">AS_FX_RT_DSS_2030_INTRDAY</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Minutes</key>
<value id="9" type="java.lang.String">30</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ReutersDSSReportTemplateName</key>
<value id="11" type="java.lang.String">CBA_ReutersDSS_Intraday_Pricing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:filePattern</key>
<value id="13" type="java.lang.String">AS_FX_RT_DSS_2030_INTRDAY_%D.csv</value>
</entry>
<entry>
<key id="14" type="java.lang.String">EventName</key>
<value id="15" type="java.lang.String">evt_CBA_ReutersUploadSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="16">Events</jobGroup>
<jobName id="17">CBA_ScheduleReuters</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="18">AS_FX_RT_DSS_2030_INTRDAY</name>
<nextFireTime id="19">2018-04-25T21:09:50.000+1000</nextFireTime>
<previousFireTime id="20">2018-04-24T21:09:50.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="21">2018-04-20T22:30:06.000+1000</startTime>
<timeZone id="22">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="AS_FX_RT_DSS_2100_EOD" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">55 39 21 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:Hours</key>
<value id="5" type="java.lang.String">13</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:Issue Group Name</key>
<value id="7" type="java.lang.String">AS_FX_RT_DSS_2100_EOD</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Minutes</key>
<value id="9" type="java.lang.String">00</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ReutersDSSReportTemplateName</key>
<value id="11" type="java.lang.String">CBA_ReutersDSS_EOD_Pricing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:filePattern</key>
<value id="13" type="java.lang.String">AS_FX_RT_DSS_2100_EOD_%D.csv</value>
</entry>
<entry>
<key id="14" type="java.lang.String">EventName</key>
<value id="15" type="java.lang.String">evt_CBA_ReutersUploadSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="16">Events</jobGroup>
<jobName id="17">CBA_ScheduleReuters</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="18">AS_FX_RT_DSS_2100_EOD</name>
<nextFireTime id="19">2018-04-25T21:39:55.000+1000</nextFireTime>
<previousFireTime id="20">2018-04-24T21:39:55.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="21">2018-04-20T22:41:02.000+1000</startTime>
<timeZone id="22">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="AS_IR_RT_DSS_2030_EOD" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">45 09 21 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:Hours</key>
<value id="5" type="java.lang.String">12</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:Issue Group Name</key>
<value id="7" type="java.lang.String">AS_IR_RT_DSS_2030_EOD</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Minutes</key>
<value id="9" type="java.lang.String">30</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ReutersDSSReportTemplateName</key>
<value id="11" type="java.lang.String">CBA_ReutersDSS_EOD_Pricing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:filePattern</key>
<value id="13" type="java.lang.String">AS_IR_RT_DSS_2030_EOD_%D.csv</value>
</entry>
<entry>
<key id="14" type="java.lang.String">EventName</key>
<value id="15" type="java.lang.String">evt_CBA_ReutersUploadSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="16">Events</jobGroup>
<jobName id="17">CBA_ScheduleReuters</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="18">AS_IR_RT_DSS_2030_EOD</name>
<nextFireTime id="19">2018-04-25T21:09:45.000+1000</nextFireTime>
<previousFireTime id="20">2018-04-24T21:09:45.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="21">2018-04-20T22:40:18.000+1000</startTime>
<timeZone id="22">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="AS_IR_RT_DSS_2030_INTRDAY" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">40 09 21 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:Hours</key>
<value id="5" type="java.lang.String">12</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:Issue Group Name</key>
<value id="7" type="java.lang.String">AS_IR_RT_DSS_2030_INTRDAY</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Minutes</key>
<value id="9" type="java.lang.String">30</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ReutersDSSReportTemplateName</key>
<value id="11" type="java.lang.String">CBA_ReutersDSS_Intraday_Pricing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:filePattern</key>
<value id="13" type="java.lang.String">AS_IR_RT_DSS_2030_INTRDAY_%D.csv</value>
</entry>
<entry>
<key id="14" type="java.lang.String">EventName</key>
<value id="15" type="java.lang.String">evt_CBA_ReutersUploadSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="16">Events</jobGroup>
<jobName id="17">CBA_ScheduleReuters</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="18">AS_IR_RT_DSS_2030_INTRDAY</name>
<nextFireTime id="19">2018-04-25T21:09:40.000+1000</nextFireTime>
<previousFireTime id="20">2018-04-24T21:09:40.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="21">2018-04-20T22:40:34.000+1000</startTime>
<timeZone id="22">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="AS_IR_RT_DSS_2100_EOD" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">50 39 21 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:Hours</key>
<value id="5" type="java.lang.String">13</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:Issue Group Name</key>
<value id="7" type="java.lang.String">AS_IR_RT_DSS_2100_EOD</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Minutes</key>
<value id="9" type="java.lang.String">00</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ReutersDSSReportTemplateName</key>
<value id="11" type="java.lang.String">CBA_ReutersDSS_EOD_Pricing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:filePattern</key>
<value id="13" type="java.lang.String">AS_IR_RT_DSS_2100_EOD_%D.csv</value>
</entry>
<entry>
<key id="14" type="java.lang.String">EventName</key>
<value id="15" type="java.lang.String">evt_CBA_ReutersUploadSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="16">Events</jobGroup>
<jobName id="17">CBA_ScheduleReuters</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="18">AS_IR_RT_DSS_2100_EOD</name>
<nextFireTime id="19">2018-04-25T21:39:50.000+1000</nextFireTime>
<previousFireTime id="20">2018-04-24T21:39:50.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="21">2018-04-20T22:41:15.000+1000</startTime>
<timeZone id="22">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="AS_IR_RT_DSS_2100_INTRDAY" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">45 39 21 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:Hours</key>
<value id="5" type="java.lang.String">13</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:Issue Group Name</key>
<value id="7" type="java.lang.String">AS_IR_RT_DSS_2100_INTRDAY</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Minutes</key>
<value id="9" type="java.lang.String">00</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ReutersDSSReportTemplateName</key>
<value id="11" type="java.lang.String">CBA_ReutersDSS_Intraday_Pricing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:filePattern</key>
<value id="13" type="java.lang.String">AS_IR_RT_DSS_2100_INTRDAY_%D.csv</value>
</entry>
<entry>
<key id="14" type="java.lang.String">EventName</key>
<value id="15" type="java.lang.String">evt_CBA_ReutersUploadSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="16">Events</jobGroup>
<jobName id="17">CBA_ScheduleReuters</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="18">AS_IR_RT_DSS_2100_INTRDAY</name>
<nextFireTime id="19">2018-04-25T21:39:45.000+1000</nextFireTime>
<previousFireTime id="20">2018-04-24T21:39:45.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="21">2018-04-20T22:41:31.000+1000</startTime>
<timeZone id="22">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="LN_FX_RT_DSS_1630_INTRDAY" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">55 09 01 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:Hours</key>
<value id="5" type="java.lang.String">16</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:Issue Group Name</key>
<value id="7" type="java.lang.String">LN_FX_RT_DSS_1630_INTRDAY</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Minutes</key>
<value id="9" type="java.lang.String">30</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ReutersDSSReportTemplateName</key>
<value id="11" type="java.lang.String">CBA_ReutersDSS_Intraday_Pricing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:filePattern</key>
<value id="13" type="java.lang.String">LN_FX_RT_DSS_1630_INTRDAY_%D.csv</value>
</entry>
<entry>
<key id="14" type="java.lang.String">EventName</key>
<value id="15" type="java.lang.String">evt_CBA_ReutersUploadSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="16">Events</jobGroup>
<jobName id="17">CBA_ScheduleReuters</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="18">LN_FX_RT_DSS_1630_INTRDAY</name>
<nextFireTime id="19">2018-04-30T01:09:55.000+1000</nextFireTime>
<previousFireTime id="20">2018-04-27T01:09:55.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="21">2018-04-20T22:28:47.000+1000</startTime>
<timeZone id="22">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="LN_IR_RT_DSS_1630_INTRDAY" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">50 09 01 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:Hours</key>
<value id="5" type="java.lang.String">16</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:Issue Group Name</key>
<value id="7" type="java.lang.String">LN_IR_RT_DSS_1630_INTRDAY</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Minutes</key>
<value id="9" type="java.lang.String">30</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ReutersDSSReportTemplateName</key>
<value id="11" type="java.lang.String">CBA_ReutersDSS_Intraday_Pricing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:filePattern</key>
<value id="13" type="java.lang.String">LN_IR_RT_DSS_1630_INTRDAY_%D.csv</value>
</entry>
<entry>
<key id="14" type="java.lang.String">EventName</key>
<value id="15" type="java.lang.String">evt_CBA_ReutersUploadSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="16">Events</jobGroup>
<jobName id="17">CBA_ScheduleReuters</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="18">LN_IR_RT_DSS_1630_INTRDAY</name>
<nextFireTime id="19">2018-04-30T01:09:50.000+1000</nextFireTime>
<previousFireTime id="20">2018-04-27T01:09:50.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="21">2018-04-20T22:29:04.000+1000</startTime>
<timeZone id="22">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="NY_FX_RT_DSS_1500_INTRDAY" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">55 39 04 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:Hours</key>
<value id="5" type="java.lang.String">20</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:Issue Group Name</key>
<value id="7" type="java.lang.String">NY_FX_RT_DSS_1500_INTRDAY</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Minutes</key>
<value id="9" type="java.lang.String">00</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ReutersDSSReportTemplateName</key>
<value id="11" type="java.lang.String">CBA_ReutersDSS_Intraday_Pricing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:filePattern</key>
<value id="13" type="java.lang.String">NY_FX_RT_DSS_1500_INTRDAY_%D.csv</value>
</entry>
<entry>
<key id="14" type="java.lang.String">EventName</key>
<value id="15" type="java.lang.String">evt_CBA_ReutersUploadSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="16">Events</jobGroup>
<jobName id="17">CBA_ScheduleReuters</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="18">NY_FX_RT_DSS_1500_INTRDAY</name>
<nextFireTime id="19">2018-04-30T04:39:55.000+1000</nextFireTime>
<previousFireTime id="20">2018-04-27T04:39:55.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="21">2018-04-20T22:26:45.000+1000</startTime>
<timeZone id="22">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="NY_IR_RT_DSS_1500_INTRDAY" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">50 39 04 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:Hours</key>
<value id="5" type="java.lang.String">20</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:Issue Group Name</key>
<value id="7" type="java.lang.String">NY_IR_RT_DSS_1500_INTRDAY</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Minutes</key>
<value id="9" type="java.lang.String">00</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ReutersDSSReportTemplateName</key>
<value id="11" type="java.lang.String">CBA_ReutersDSS_Intraday_Pricing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:filePattern</key>
<value id="13" type="java.lang.String">NY_IR_RT_DSS_1500_INTRDAY_%D.csv</value>
</entry>
<entry>
<key id="14" type="java.lang.String">EventName</key>
<value id="15" type="java.lang.String">evt_CBA_ReutersUploadSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="16">Events</jobGroup>
<jobName id="17">CBA_ScheduleReuters</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="18">NY_IR_RT_DSS_1500_INTRDAY</name>
<nextFireTime id="19">2018-04-30T04:39:50.000+1000</nextFireTime>
<previousFireTime id="20">2018-04-27T04:39:50.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="21">2018-04-20T22:27:01.000+1000</startTime>
<timeZone id="22">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="NY_IR_RT_DSS_1730_INTRDAY" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">55 09 07 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:Hours</key>
<value id="5" type="java.lang.String">22</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:Issue Group Name</key>
<value id="7" type="java.lang.String">NY_IR_RT_DSS_1730_INTRDAY</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Minutes</key>
<value id="9" type="java.lang.String">30</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ReutersDSSReportTemplateName</key>
<value id="11" type="java.lang.String">CBA_ReutersDSS_Intraday_Pricing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:filePattern</key>
<value id="13" type="java.lang.String">NY_IR_RT_DSS_1730_INTRDAY_%D.csv</value>
</entry>
<entry>
<key id="14" type="java.lang.String">EventName</key>
<value id="15" type="java.lang.String">evt_CBA_ReutersUploadSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="16">Events</jobGroup>
<jobName id="17">CBA_ScheduleReuters</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="18">NY_IR_RT_DSS_1730_INTRDAY</name>
<nextFireTime id="19">2018-04-30T07:09:55.000+1000</nextFireTime>
<previousFireTime id="20">2018-04-27T07:09:55.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="21">2018-04-20T22:27:34.000+1000</startTime>
<timeZone id="22">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_FX_RT_DSS_1645_INTRDAY" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 23 16 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:Hours</key>
<value id="5" type="java.lang.String">07</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:Issue Group Name</key>
<value id="7" type="java.lang.String">SYD_FX_RT_DSS_1645_INTRDAY</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Minutes</key>
<value id="9" type="java.lang.String">45</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ReutersDSSReportTemplateName</key>
<value id="11" type="java.lang.String">CBA_ReutersDSS_Intraday_Pricing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:filePattern</key>
<value id="13" type="java.lang.String">SYD_FX_RT_DSS_1645_INTRDAY_%D.csv</value>
</entry>
<entry>
<key id="14" type="java.lang.String">EventName</key>
<value id="15" type="java.lang.String">evt_CBA_ReutersUploadSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="16">Events</jobGroup>
<jobName id="17">CBA_ScheduleReuters</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="18">SYD_FX_RT_DSS_1645_INTRDAY</name>
<nextFireTime id="19">2018-04-25T16:23:00.000+1000</nextFireTime>
<previousFireTime id="20">2018-04-24T16:23:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="21">2018-04-17T16:15:32.000+1000</startTime>
<timeZone id="22">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_FX_RT_DSS_1815_EOD" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 53 17 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:Hours</key>
<value id="5" type="java.lang.String">09</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:Issue Group Name</key>
<value id="7" type="java.lang.String">SYD_FX_RT_DSS_1815_EOD</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Minutes</key>
<value id="9" type="java.lang.String">15</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ReutersDSSReportTemplateName</key>
<value id="11" type="java.lang.String">CBA_ReutersDSS_EOD_Pricing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:filePattern</key>
<value id="13" type="java.lang.String">SYD_FX_RT_DSS_1815_EOD_%D.csv</value>
</entry>
<entry>
<key id="14" type="java.lang.String">EventName</key>
<value id="15" type="java.lang.String">evt_CBA_ReutersUploadSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="16">Events</jobGroup>
<jobName id="17">CBA_ScheduleReuters</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="18">SYD_FX_RT_DSS_1815_EOD</name>
<nextFireTime id="19">2018-04-25T17:53:00.000+1000</nextFireTime>
<previousFireTime id="20">2018-04-24T17:53:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="21">2018-04-17T16:15:49.000+1000</startTime>
<timeZone id="22">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_IR_RT_DSS_1000_INTRDAY" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 38 09 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:Hours</key>
<value id="5" type="java.lang.String">01</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:Issue Group Name</key>
<value id="7" type="java.lang.String">SYD_IR_RT_DSS_1000_INTRDAY</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Minutes</key>
<value id="9" type="java.lang.String">00</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ReutersDSSReportTemplateName</key>
<value id="11" type="java.lang.String">CBA_ReutersDSS_Intraday_Pricing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:filePattern</key>
<value id="13" type="java.lang.String">SYD_IR_RT_DSS_1000_INTRDAY_%D.csv</value>
</entry>
<entry>
<key id="14" type="java.lang.String">EventName</key>
<value id="15" type="java.lang.String">evt_CBA_ReutersUploadSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="16">Events</jobGroup>
<jobName id="17">CBA_ScheduleReuters</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="18">SYD_IR_RT_DSS_1000_INTRDAY</name>
<nextFireTime id="19">2018-04-25T09:38:00.000+1000</nextFireTime>
<previousFireTime id="20">2018-04-23T09:38:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="21">2018-04-17T16:16:05.000+1000</startTime>
<timeZone id="22">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_IR_RT_DSS_1018_INTRDAY" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 56 09 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:Hours</key>
<value id="5" type="java.lang.String">01</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:Issue Group Name</key>
<value id="7" type="java.lang.String">SYD_IR_RT_DSS_1018_INTRDAY</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Minutes</key>
<value id="9" type="java.lang.String">18</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ReutersDSSReportTemplateName</key>
<value id="11" type="java.lang.String">CBA_ReutersDSS_Intraday_Pricing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:filePattern</key>
<value id="13" type="java.lang.String">SYD_IR_RT_DSS_1018_INTRDAY_%D.csv</value>
</entry>
<entry>
<key id="14" type="java.lang.String">EventName</key>
<value id="15" type="java.lang.String">evt_CBA_ReutersUploadSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="16">Events</jobGroup>
<jobName id="17">CBA_ScheduleReuters</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="18">SYD_IR_RT_DSS_1018_INTRDAY</name>
<nextFireTime id="19">2018-04-25T09:56:00.000+1000</nextFireTime>
<previousFireTime id="20">2018-04-23T09:56:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="21">2018-04-17T16:16:19.000+1000</startTime>
<timeZone id="22">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_IR_RT_DSS_1100_EOD" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 34 10 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:Hours</key>
<value id="5" type="java.lang.String">02</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:Issue Group Name</key>
<value id="7" type="java.lang.String">SYD_IR_RT_DSS_1100_EOD</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Minutes</key>
<value id="9" type="java.lang.String">00</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ReutersDSSReportTemplateName</key>
<value id="11" type="java.lang.String">CBA_ReutersDSS_EOD_Pricing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:filePattern</key>
<value id="13" type="java.lang.String">SYD_IR_RT_DSS_1100_EOD_%D.csv</value>
</entry>
<entry>
<key id="14" type="java.lang.String">EventName</key>
<value id="15" type="java.lang.String">evt_CBA_ReutersUploadSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="16">Events</jobGroup>
<jobName id="17">CBA_ScheduleReuters</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="18">SYD_IR_RT_DSS_1100_EOD</name>
<nextFireTime id="19">2018-04-25T10:34:00.000+1000</nextFireTime>
<previousFireTime id="20">2018-04-23T10:34:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="21">2018-04-17T16:16:30.000+1000</startTime>
<timeZone id="22">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_IR_RT_DSS_1100_INTRDAY" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 32 10 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:Hours</key>
<value id="5" type="java.lang.String">02</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:Issue Group Name</key>
<value id="7" type="java.lang.String">SYD_IR_RT_DSS_1100_INTRDAY</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Minutes</key>
<value id="9" type="java.lang.String">00</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ReutersDSSReportTemplateName</key>
<value id="11" type="java.lang.String">CBA_ReutersDSS_Intraday_Pricing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:filePattern</key>
<value id="13" type="java.lang.String">SYD_IR_RT_DSS_1100_INTRDAY_%D.csv</value>
</entry>
<entry>
<key id="14" type="java.lang.String">EventName</key>
<value id="15" type="java.lang.String">evt_CBA_ReutersUploadSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="16">Events</jobGroup>
<jobName id="17">CBA_ScheduleReuters</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="18">SYD_IR_RT_DSS_1100_INTRDAY</name>
<nextFireTime id="19">2018-04-25T10:32:00.000+1000</nextFireTime>
<previousFireTime id="20">2018-04-23T10:32:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="21">2018-04-17T16:16:45.000+1000</startTime>
<timeZone id="22">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_IR_RT_DSS_1645_INTRDAY" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 17 16 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:Hours</key>
<value id="5" type="java.lang.String">07</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:Issue Group Name</key>
<value id="7" type="java.lang.String">SYD_IR_RT_DSS_1645_INTRDAY</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Minutes</key>
<value id="9" type="java.lang.String">45</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ReutersDSSReportTemplateName</key>
<value id="11" type="java.lang.String">CBA_ReutersDSS_Intraday_Pricing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:filePattern</key>
<value id="13" type="java.lang.String">SYD_IR_RT_DSS_1645_INTRDAY_%D.csv</value>
</entry>
<entry>
<key id="14" type="java.lang.String">EventName</key>
<value id="15" type="java.lang.String">evt_CBA_ReutersUploadSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="16">Events</jobGroup>
<jobName id="17">CBA_ScheduleReuters</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="18">SYD_IR_RT_DSS_1645_INTRDAY</name>
<nextFireTime id="19">2018-04-25T16:17:00.000+1000</nextFireTime>
<previousFireTime id="20">2018-04-23T16:17:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="21">2018-04-17T16:16:57.000+1000</startTime>
<timeZone id="22">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_IR_RT_DSS_1815_EOD" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 47 17 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:Hours</key>
<value id="5" type="java.lang.String">09</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:Issue Group Name</key>
<value id="7" type="java.lang.String">SYD_IR_RT_DSS_1815_EOD</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Minutes</key>
<value id="9" type="java.lang.String">15</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ReutersDSSReportTemplateName</key>
<value id="11" type="java.lang.String">CBA_ReutersDSS_EOD_Pricing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:filePattern</key>
<value id="13" type="java.lang.String">SYD_IR_RT_DSS_1815_EOD_%D.csv</value>
</entry>
<entry>
<key id="14" type="java.lang.String">EventName</key>
<value id="15" type="java.lang.String">evt_CBA_ReutersUploadSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="16">Events</jobGroup>
<jobName id="17">CBA_ScheduleReuters</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="18">SYD_IR_RT_DSS_1815_EOD</name>
<nextFireTime id="19">2018-04-25T17:47:00.000+1000</nextFireTime>
<previousFireTime id="20">2018-04-24T17:47:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="21">2018-04-17T16:17:10.000+1000</startTime>
<timeZone id="22">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_IR_RT_DSS_1815_INTRDAY" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 45 17 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:Hours</key>
<value id="5" type="java.lang.String">09</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:Issue Group Name</key>
<value id="7" type="java.lang.String">SYD_IR_RT_DSS_1815_INTRDAY</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Minutes</key>
<value id="9" type="java.lang.String">15</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ReutersDSSReportTemplateName</key>
<value id="11" type="java.lang.String">CBA_ReutersDSS_Intraday_Pricing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:filePattern</key>
<value id="13" type="java.lang.String">SYD_IR_RT_DSS_1815_INTRDAY_%D.csv</value>
</entry>
<entry>
<key id="14" type="java.lang.String">EventName</key>
<value id="15" type="java.lang.String">evt_CBA_ReutersUploadSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="16">Events</jobGroup>
<jobName id="17">CBA_ScheduleReuters</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="18">SYD_IR_RT_DSS_1815_INTRDAY</name>
<nextFireTime id="19">2018-04-25T17:45:00.000+1000</nextFireTime>
<previousFireTime id="20">2018-04-24T17:45:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="21">2018-04-17T16:17:21.000+1000</startTime>
<timeZone id="22">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
</goldensource-package>
