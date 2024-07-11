<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.15">
<package-comment/>
<businessobject displayString="CBA_ScheduleBloomberg" type="org.quartz.impl.JobDetailImpl">
<org.quartz.impl.JobDetailImpl id="0">
<group id="1">Events</group>
<jobClass>com.j2fe.scheduling.jobs.ExecuteEventJob</jobClass>
<jobDataMap id="2"/>
<name id="3">CBA_ScheduleBloomberg</name>
</org.quartz.impl.JobDetailImpl>
</businessobject>
<businessobject displayString="AS_FX_BBG_2030" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 10 21 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:CancelOnly</key>
<value id="5" type="java.lang.String">false</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:GroupName</key>
<value id="7" type="java.lang.String">AS_FX_BBG_2030</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:RequestFrequency</key>
<value id="9" type="java.lang.String">Daily</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ResponseFileName</key>
<value id="11" type="java.lang.String">AS_FX_BBG_2030.out.gz</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:ScheduleTime</key>
<value id="13" type="java.lang.String">2030</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:VendorRequestDataType</key>
<value id="15" type="java.lang.String">CBA_BB_CurrencyDT</value>
</entry>
<entry>
<key id="16" type="java.lang.String">EventName</key>
<value id="17" type="java.lang.String">evt_CBA_BBCreateCancelSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="18">Events</jobGroup>
<jobName id="19">CBA_ScheduleBloomberg</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="20">AS_FX_BBG_2030</name>
<nextFireTime id="21">2018-04-24T21:10:00.000+1000</nextFireTime>
<previousFireTime id="22">2018-04-23T21:10:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="23">2018-04-20T22:18:39.000+1000</startTime>
<timeZone id="24">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="AS_FX_BBG_2100" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 40 21 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:CancelOnly</key>
<value id="5" type="java.lang.String">false</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:GroupName</key>
<value id="7" type="java.lang.String">AS_FX_BBG_2100</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:RequestFrequency</key>
<value id="9" type="java.lang.String">Daily</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ResponseFileName</key>
<value id="11" type="java.lang.String">AS_FX_BBG_2100.out.gz</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:ScheduleTime</key>
<value id="13" type="java.lang.String">2100</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:VendorRequestDataType</key>
<value id="15" type="java.lang.String">CBA_BB_CurrencyDT</value>
</entry>
<entry>
<key id="16" type="java.lang.String">EventName</key>
<value id="17" type="java.lang.String">evt_CBA_BBCreateCancelSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="18">Events</jobGroup>
<jobName id="19">CBA_ScheduleBloomberg</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="20">AS_FX_BBG_2100</name>
<nextFireTime id="21">2018-04-24T21:40:00.000+1000</nextFireTime>
<previousFireTime id="22">2018-04-23T21:40:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="23">2018-04-20T22:18:36.000+1000</startTime>
<timeZone id="24">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="AS_IR_BBG_2030" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 08 21 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:CancelOnly</key>
<value id="5" type="java.lang.String">false</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:GroupName</key>
<value id="7" type="java.lang.String">AS_IR_BBG_2030</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:RequestFrequency</key>
<value id="9" type="java.lang.String">Daily</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ResponseFileName</key>
<value id="11" type="java.lang.String">AS_IR_BBG_2030.out.gz</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:ScheduleTime</key>
<value id="13" type="java.lang.String">2030</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:VendorRequestDataType</key>
<value id="15" type="java.lang.String">CBA_BB_CurrencyDT</value>
</entry>
<entry>
<key id="16" type="java.lang.String">EventName</key>
<value id="17" type="java.lang.String">evt_CBA_BBCreateCancelSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="18">Events</jobGroup>
<jobName id="19">CBA_ScheduleBloomberg</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="20">AS_IR_BBG_2030</name>
<nextFireTime id="21">2018-04-24T21:08:00.000+1000</nextFireTime>
<previousFireTime id="22">2018-04-23T21:08:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="23">2018-04-20T22:20:20.000+1000</startTime>
<timeZone id="24">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="AS_IR_BBG_2100" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 38 21 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:CancelOnly</key>
<value id="5" type="java.lang.String">false</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:GroupName</key>
<value id="7" type="java.lang.String">AS_IR_BBG_2100</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:RequestFrequency</key>
<value id="9" type="java.lang.String">Daily</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ResponseFileName</key>
<value id="11" type="java.lang.String">AS_IR_BBG_2100.out.gz</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:ScheduleTime</key>
<value id="13" type="java.lang.String">2100</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:VendorRequestDataType</key>
<value id="15" type="java.lang.String">CBA_BB_CurrencyDT</value>
</entry>
<entry>
<key id="16" type="java.lang.String">EventName</key>
<value id="17" type="java.lang.String">evt_CBA_BBCreateCancelSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="18">Events</jobGroup>
<jobName id="19">CBA_ScheduleBloomberg</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="20">AS_IR_BBG_2100</name>
<nextFireTime id="21">2018-04-24T21:38:00.000+1000</nextFireTime>
<previousFireTime id="22">2018-04-23T21:38:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="23">2018-04-20T22:20:34.000+1000</startTime>
<timeZone id="24">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="LN_FX_BBG_1630" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 10 01 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:CancelOnly</key>
<value id="5" type="java.lang.String">false</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:GroupName</key>
<value id="7" type="java.lang.String">LN_FX_BBG_1630</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:RequestFrequency</key>
<value id="9" type="java.lang.String">Daily</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ResponseFileName</key>
<value id="11" type="java.lang.String">LN_FX_BBG_1630.out.gz</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:ScheduleTime</key>
<value id="13" type="java.lang.String">0030</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:VendorRequestDataType</key>
<value id="15" type="java.lang.String">CBA_BB_CurrencyDT</value>
</entry>
<entry>
<key id="16" type="java.lang.String">EventName</key>
<value id="17" type="java.lang.String">evt_CBA_BBCreateCancelSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="18">Events</jobGroup>
<jobName id="19">CBA_ScheduleBloomberg</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="20">LN_FX_BBG_1630</name>
<nextFireTime id="21">2018-04-30T01:10:00.000+1000</nextFireTime>
<previousFireTime id="22">2018-04-27T01:10:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="23">2018-04-20T22:21:51.000+1000</startTime>
<timeZone id="24">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="LN_FX_BBG_1740" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 20 02 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:CancelOnly</key>
<value id="5" type="java.lang.String">false</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:GroupName</key>
<value id="7" type="java.lang.String">LN_FX_BBG_1740</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:RequestFrequency</key>
<value id="9" type="java.lang.String">Daily</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ResponseFileName</key>
<value id="11" type="java.lang.String">LN_FX_BBG_1740.out.gz</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:ScheduleTime</key>
<value id="13" type="java.lang.String">0140</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:VendorRequestDataType</key>
<value id="15" type="java.lang.String">CBA_BB_CurrencyDT</value>
</entry>
<entry>
<key id="16" type="java.lang.String">EventName</key>
<value id="17" type="java.lang.String">evt_CBA_BBCreateCancelSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="18">Events</jobGroup>
<jobName id="19">CBA_ScheduleBloomberg</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="20">LN_FX_BBG_1740</name>
<nextFireTime id="21">2018-04-30T02:20:00.000+1000</nextFireTime>
<previousFireTime id="22">2018-04-27T02:20:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="23">2018-04-20T22:22:53.000+1000</startTime>
<timeZone id="24">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="LN_IR_BBG_1630" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 08 01 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:CancelOnly</key>
<value id="5" type="java.lang.String">false</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:GroupName</key>
<value id="7" type="java.lang.String">LN_IR_BBG_1630</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:RequestFrequency</key>
<value id="9" type="java.lang.String">Daily</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ResponseFileName</key>
<value id="11" type="java.lang.String">LN_IR_BBG_1630.out.gz</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:ScheduleTime</key>
<value id="13" type="java.lang.String">0030</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:VendorRequestDataType</key>
<value id="15" type="java.lang.String">CBA_BB_CurrencyDT</value>
</entry>
<entry>
<key id="16" type="java.lang.String">EventName</key>
<value id="17" type="java.lang.String">evt_CBA_BBCreateCancelSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="18">Events</jobGroup>
<jobName id="19">CBA_ScheduleBloomberg</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="20">LN_IR_BBG_1630</name>
<nextFireTime id="21">2018-04-30T01:08:00.000+1000</nextFireTime>
<previousFireTime id="22">2018-04-27T01:08:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="23">2018-04-20T22:22:14.000+1000</startTime>
<timeZone id="24">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="LN_IR_BBG_1640" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 20 01 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:CancelOnly</key>
<value id="5" type="java.lang.String">false</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:GroupName</key>
<value id="7" type="java.lang.String">LN_IR_BBG_1640</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:RequestFrequency</key>
<value id="9" type="java.lang.String">Daily</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ResponseFileName</key>
<value id="11" type="java.lang.String">LN_IR_BBG_1640.out.gz</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:ScheduleTime</key>
<value id="13" type="java.lang.String">0040</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:VendorRequestDataType</key>
<value id="15" type="java.lang.String">CBA_BB_CurrencyDT</value>
</entry>
<entry>
<key id="16" type="java.lang.String">EventName</key>
<value id="17" type="java.lang.String">evt_CBA_BBCreateCancelSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="18">Events</jobGroup>
<jobName id="19">CBA_ScheduleBloomberg</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="20">LN_IR_BBG_1640</name>
<nextFireTime id="21">2018-04-30T01:20:00.000+1000</nextFireTime>
<previousFireTime id="22">2018-04-27T01:20:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="23">2018-04-20T22:22:40.000+1000</startTime>
<timeZone id="24">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="NY_FX_BBG_1500" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 40 04 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:CancelOnly</key>
<value id="5" type="java.lang.String">false</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:GroupName</key>
<value id="7" type="java.lang.String">NY_FX_BBG_1500</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:RequestFrequency</key>
<value id="9" type="java.lang.String">Daily</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ResponseFileName</key>
<value id="11" type="java.lang.String">NY_FX_BBG_1500.out.gz</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:ScheduleTime</key>
<value id="13" type="java.lang.String">0400</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:VendorRequestDataType</key>
<value id="15" type="java.lang.String">CBA_BB_CurrencyDT</value>
</entry>
<entry>
<key id="16" type="java.lang.String">EventName</key>
<value id="17" type="java.lang.String">evt_CBA_BBCreateCancelSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="18">Events</jobGroup>
<jobName id="19">CBA_ScheduleBloomberg</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="20">NY_FX_BBG_1500</name>
<nextFireTime id="21">2018-04-30T04:40:00.000+1000</nextFireTime>
<previousFireTime id="22">2018-04-27T04:40:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="23">2018-04-20T22:23:57.000+1000</startTime>
<timeZone id="24">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="NY_IR_BBG_1500" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 38 04 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:CancelOnly</key>
<value id="5" type="java.lang.String">false</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:GroupName</key>
<value id="7" type="java.lang.String">NY_IR_BBG_1500</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:RequestFrequency</key>
<value id="9" type="java.lang.String">Daily</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ResponseFileName</key>
<value id="11" type="java.lang.String">NY_IR_BBG_1500.out.gz</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:ScheduleTime</key>
<value id="13" type="java.lang.String">0400</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:VendorRequestDataType</key>
<value id="15" type="java.lang.String">CBA_BB_CurrencyDT</value>
</entry>
<entry>
<key id="16" type="java.lang.String">EventName</key>
<value id="17" type="java.lang.String">evt_CBA_BBCreateCancelSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="18">Events</jobGroup>
<jobName id="19">CBA_ScheduleBloomberg</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="20">NY_IR_BBG_1500</name>
<nextFireTime id="21">2018-04-30T04:38:00.000+1000</nextFireTime>
<previousFireTime id="22">2018-04-27T04:38:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="23">2018-04-20T22:24:12.000+1000</startTime>
<timeZone id="24">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="NY_IR_BBG_1700" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 40 06 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:CancelOnly</key>
<value id="5" type="java.lang.String">false</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:GroupName</key>
<value id="7" type="java.lang.String">NY_IR_BBG_1700</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:RequestFrequency</key>
<value id="9" type="java.lang.String">Daily</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ResponseFileName</key>
<value id="11" type="java.lang.String">NY_IR_BBG_1700.out.gz</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:ScheduleTime</key>
<value id="13" type="java.lang.String">0600</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:VendorRequestDataType</key>
<value id="15" type="java.lang.String">CBA_BB_CurrencyDT</value>
</entry>
<entry>
<key id="16" type="java.lang.String">EventName</key>
<value id="17" type="java.lang.String">evt_CBA_BBCreateCancelSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="18">Events</jobGroup>
<jobName id="19">CBA_ScheduleBloomberg</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="20">NY_IR_BBG_1700</name>
<nextFireTime id="21">2018-04-30T06:40:00.000+1000</nextFireTime>
<previousFireTime id="22">2018-04-27T06:40:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="23">2018-04-20T22:24:35.000+1000</startTime>
<timeZone id="24">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="NY_IR_BBG_1730" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 10 07 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:CancelOnly</key>
<value id="5" type="java.lang.String">false</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:GroupName</key>
<value id="7" type="java.lang.String">NY_IR_BBG_1730</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:RequestFrequency</key>
<value id="9" type="java.lang.String">Daily</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ResponseFileName</key>
<value id="11" type="java.lang.String">NY_IR_BBG_1730.out.gz</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:ScheduleTime</key>
<value id="13" type="java.lang.String">0630</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:VendorRequestDataType</key>
<value id="15" type="java.lang.String">CBA_BB_CurrencyDT</value>
</entry>
<entry>
<key id="16" type="java.lang.String">EventName</key>
<value id="17" type="java.lang.String">evt_CBA_BBCreateCancelSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="18">Events</jobGroup>
<jobName id="19">CBA_ScheduleBloomberg</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="20">NY_IR_BBG_1730</name>
<nextFireTime id="21">2018-04-30T07:10:00.000+1000</nextFireTime>
<previousFireTime id="22">2018-04-27T07:10:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="23">2018-04-20T22:25:00.000+1000</startTime>
<timeZone id="24">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_FX_BBG_1100" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 40 10 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:CancelOnly</key>
<value id="5" type="java.lang.String">false</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:GroupName</key>
<value id="7" type="java.lang.String">SYD_FX_BBG_1100</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:RequestFrequency</key>
<value id="9" type="java.lang.String">Daily</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ResponseFileName</key>
<value id="11" type="java.lang.String">SYD_FX_BBG_1100.out.gz</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:ScheduleTime</key>
<value id="13" type="java.lang.String">1000</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:VendorRequestDataType</key>
<value id="15" type="java.lang.String">CBA_BB_CurrencyDT</value>
</entry>
<entry>
<key id="16" type="java.lang.String">EventName</key>
<value id="17" type="java.lang.String">evt_CBA_BBCreateCancelSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="18">Events</jobGroup>
<jobName id="19">CBA_ScheduleBloomberg</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="20">SYD_FX_BBG_1100</name>
<nextFireTime id="21">2018-04-25T10:40:00.000+1000</nextFireTime>
<previousFireTime id="22">2018-04-23T10:40:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="23">2018-04-19T12:35:56.000+1000</startTime>
<timeZone id="24">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_FX_BBG_1645" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 25 16 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:CancelOnly</key>
<value id="5" type="java.lang.String">false</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:GroupName</key>
<value id="7" type="java.lang.String">SYD_FX_BBG_1645</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:RequestFrequency</key>
<value id="9" type="java.lang.String">Daily</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ResponseFileName</key>
<value id="11" type="java.lang.String">SYD_FX_BBG_1645.out.gz</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:ScheduleTime</key>
<value id="13" type="java.lang.String">1545</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:VendorRequestDataType</key>
<value id="15" type="java.lang.String">CBA_BB_CurrencyDT</value>
</entry>
<entry>
<key id="16" type="java.lang.String">EventName</key>
<value id="17" type="java.lang.String">evt_CBA_BBCreateCancelSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="18">Events</jobGroup>
<jobName id="19">CBA_ScheduleBloomberg</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="20">SYD_FX_BBG_1645</name>
<nextFireTime id="21">2018-04-25T16:25:00.000+1000</nextFireTime>
<previousFireTime id="22">2018-04-23T16:25:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="23">2018-04-17T16:09:31.000+1000</startTime>
<timeZone id="24">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_FX_BBG_1815" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 55 17 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:CancelOnly</key>
<value id="5" type="java.lang.String">false</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:GroupName</key>
<value id="7" type="java.lang.String">SYD_FX_BBG_1815</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:RequestFrequency</key>
<value id="9" type="java.lang.String">Daily</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ResponseFileName</key>
<value id="11" type="java.lang.String">SYD_FX_BBG_1815.out.gz</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:ScheduleTime</key>
<value id="13" type="java.lang.String">1715</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:VendorRequestDataType</key>
<value id="15" type="java.lang.String">CBA_BB_CurrencyDT</value>
</entry>
<entry>
<key id="16" type="java.lang.String">EventName</key>
<value id="17" type="java.lang.String">evt_CBA_BBCreateCancelSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="18">Events</jobGroup>
<jobName id="19">CBA_ScheduleBloomberg</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="20">SYD_FX_BBG_1815</name>
<nextFireTime id="21">2018-04-25T17:55:00.000+1000</nextFireTime>
<previousFireTime id="22">2018-04-24T17:55:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="23">2018-04-17T16:09:53.000+1000</startTime>
<timeZone id="24">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_IR_BBG_1000" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 40 09 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:CancelOnly</key>
<value id="5" type="java.lang.String">false</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:GroupName</key>
<value id="7" type="java.lang.String">SYD_IR_BBG_1000</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:RequestFrequency</key>
<value id="9" type="java.lang.String">Daily</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ResponseFileName</key>
<value id="11" type="java.lang.String">SYD_IR_BBG_1000.out.gz</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:ScheduleTime</key>
<value id="13" type="java.lang.String">0900</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:VendorRequestDataType</key>
<value id="15" type="java.lang.String">CBA_BB_CurrencyDT</value>
</entry>
<entry>
<key id="16" type="java.lang.String">EventName</key>
<value id="17" type="java.lang.String">evt_CBA_BBCreateCancelSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="18">Events</jobGroup>
<jobName id="19">CBA_ScheduleBloomberg</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="20">SYD_IR_BBG_1000</name>
<nextFireTime id="21">2018-04-25T09:40:00.000+1000</nextFireTime>
<previousFireTime id="22">2018-04-23T09:40:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="23">2018-04-17T16:10:12.000+1000</startTime>
<timeZone id="24">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_IR_BBG_1018" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 58 09 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:CancelOnly</key>
<value id="5" type="java.lang.String">false</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:GroupName</key>
<value id="7" type="java.lang.String">SYD_IR_BBG_1018</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:RequestFrequency</key>
<value id="9" type="java.lang.String">Daily</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ResponseFileName</key>
<value id="11" type="java.lang.String">SYD_IR_BBG_1018.out.gz</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:ScheduleTime</key>
<value id="13" type="java.lang.String">0918</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:VendorRequestDataType</key>
<value id="15" type="java.lang.String">CBA_BB_CurrencyDT</value>
</entry>
<entry>
<key id="16" type="java.lang.String">EventName</key>
<value id="17" type="java.lang.String">evt_CBA_BBCreateCancelSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="18">Events</jobGroup>
<jobName id="19">CBA_ScheduleBloomberg</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="20">SYD_IR_BBG_1018</name>
<nextFireTime id="21">2018-04-25T09:58:00.000+1000</nextFireTime>
<previousFireTime id="22">2018-04-23T09:58:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="23">2018-04-17T16:10:40.000+1000</startTime>
<timeZone id="24">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_IR_BBG_1100" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 36 10 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:CancelOnly</key>
<value id="5" type="java.lang.String">false</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:GroupName</key>
<value id="7" type="java.lang.String">SYD_IR_BBG_1100</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:RequestFrequency</key>
<value id="9" type="java.lang.String">Daily</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ResponseFileName</key>
<value id="11" type="java.lang.String">SYD_IR_BBG_1100.out.gz</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:ScheduleTime</key>
<value id="13" type="java.lang.String">1000</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:VendorRequestDataType</key>
<value id="15" type="java.lang.String">CBA_BB_CurrencyDT</value>
</entry>
<entry>
<key id="16" type="java.lang.String">EventName</key>
<value id="17" type="java.lang.String">evt_CBA_BBCreateCancelSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="18">Events</jobGroup>
<jobName id="19">CBA_ScheduleBloomberg</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="20">SYD_IR_BBG_1100</name>
<nextFireTime id="21">2018-04-25T10:36:00.000+1000</nextFireTime>
<previousFireTime id="22">2018-04-23T10:36:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="23">2018-04-19T12:22:51.000+1000</startTime>
<timeZone id="24">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_IR_BBG_1600" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 40 15 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:CancelOnly</key>
<value id="5" type="java.lang.String">false</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:GroupName</key>
<value id="7" type="java.lang.String">SYD_IR_BBG_1600</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:RequestFrequency</key>
<value id="9" type="java.lang.String">Daily</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ResponseFileName</key>
<value id="11" type="java.lang.String">SYD_IR_BBG_1600.out.gz</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:ScheduleTime</key>
<value id="13" type="java.lang.String">1500</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:VendorRequestDataType</key>
<value id="15" type="java.lang.String">CBA_BB_CurrencyDT</value>
</entry>
<entry>
<key id="16" type="java.lang.String">EventName</key>
<value id="17" type="java.lang.String">evt_CBA_BBCreateCancelSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="18">Events</jobGroup>
<jobName id="19">CBA_ScheduleBloomberg</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="20">SYD_IR_BBG_1600</name>
<nextFireTime id="21">2018-04-25T15:40:00.000+1000</nextFireTime>
<previousFireTime id="22">2018-04-24T15:40:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="23">2018-04-17T16:11:20.000+1000</startTime>
<timeZone id="24">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_IR_BBG_1645" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 19 16 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:CancelOnly</key>
<value id="5" type="java.lang.String">false</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:GroupName</key>
<value id="7" type="java.lang.String">SYD_IR_BBG_1645</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:RequestFrequency</key>
<value id="9" type="java.lang.String">Daily</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ResponseFileName</key>
<value id="11" type="java.lang.String">SYD_IR_BBG_1645.out.gz</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:ScheduleTime</key>
<value id="13" type="java.lang.String">1545</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:VendorRequestDataType</key>
<value id="15" type="java.lang.String">CBA_BB_CurrencyDT</value>
</entry>
<entry>
<key id="16" type="java.lang.String">EventName</key>
<value id="17" type="java.lang.String">evt_CBA_BBCreateCancelSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="18">Events</jobGroup>
<jobName id="19">CBA_ScheduleBloomberg</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="20">SYD_IR_BBG_1645</name>
<nextFireTime id="21">2018-04-25T16:19:00.000+1000</nextFireTime>
<previousFireTime id="22">2018-04-23T16:19:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="23">2018-04-17T16:11:43.000+1000</startTime>
<timeZone id="24">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_IR_BBG_1815" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 49 17 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:CancelOnly</key>
<value id="5" type="java.lang.String">false</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:GroupName</key>
<value id="7" type="java.lang.String">SYD_IR_BBG_1815</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:RequestFrequency</key>
<value id="9" type="java.lang.String">Daily</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ResponseFileName</key>
<value id="11" type="java.lang.String">SYD_IR_BBG_1815.out.gz</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:ScheduleTime</key>
<value id="13" type="java.lang.String">1715</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:VendorRequestDataType</key>
<value id="15" type="java.lang.String">CBA_BB_CurrencyDT</value>
</entry>
<entry>
<key id="16" type="java.lang.String">EventName</key>
<value id="17" type="java.lang.String">evt_CBA_BBCreateCancelSchedule</value>
</entry>
</jobDataMap>
<jobGroup id="18">Events</jobGroup>
<jobName id="19">CBA_ScheduleBloomberg</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="20">SYD_IR_BBG_1815</name>
<nextFireTime id="21">2018-04-25T17:49:00.000+1000</nextFireTime>
<previousFireTime id="22">2018-04-24T17:49:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="23">2018-04-17T16:12:05.000+1000</startTime>
<timeZone id="24">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
</goldensource-package>
