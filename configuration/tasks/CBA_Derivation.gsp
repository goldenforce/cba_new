<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.16">
<package-comment/>
<businessobject displayString="CBA_Derivation" type="org.quartz.impl.JobDetailImpl">
<org.quartz.impl.JobDetailImpl id="0">
<group id="1">Events</group>
<jobClass>com.j2fe.scheduling.jobs.ExecuteEventJob</jobClass>
<jobDataMap id="2"/>
<name id="3">CBA_Derivation</name>
</org.quartz.impl.JobDetailImpl>
</businessobject>
<businessobject displayString="LN_Derive_1700" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 0 2 ? * 3-7</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:IssueGroupId</key>
<value id="5" type="java.lang.String">LN_Derive_1700</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:PricePointEventDefinitionId</key>
<value id="7" type="java.lang.String">SNAP====LN</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Processing Date Deriving Factor</key>
<value id="9" type="java.lang.String">-1</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:Wait_time</key>
<value id="11" type="java.lang.String">600</value>
</entry>
<entry>
<key id="12" type="java.lang.String">EventName</key>
<value id="13" type="java.lang.String">evt_CBA_Derivation</value>
</entry>
</jobDataMap>
<jobGroup id="14">Events</jobGroup>
<jobName id="15">CBA_Derivation</jobName>
<misfireInstruction>1</misfireInstruction>
<name id="16">LN_Derive_1700</name>
<nextFireTime id="17">2018-05-16T02:00:00.000+1000</nextFireTime>
<priority>5</priority>
<startTime id="18">2018-05-15T12:01:42.000+1000</startTime>
<timeZone id="19">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="NY_Derive_1530" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 30 05 ? * 3-7</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:IssueGroupId</key>
<value id="5" type="java.lang.String">NY_Derive_1530</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:PricePointEventDefinitionId</key>
<value id="7" type="java.lang.String">SNAP====NY</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Processing Date Deriving Factor</key>
<value id="9" type="java.lang.String">0</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:Wait_time</key>
<value id="11" type="java.lang.String">600</value>
</entry>
<entry>
<key id="12" type="java.lang.String">EventName</key>
<value id="13" type="java.lang.String">evt_CBA_Derivation</value>
</entry>
</jobDataMap>
<jobGroup id="14">Events</jobGroup>
<jobName id="15">CBA_Derivation</jobName>
<misfireInstruction>1</misfireInstruction>
<name id="16">NY_Derive_1530</name>
<nextFireTime id="17">2018-05-16T05:30:00.000+1000</nextFireTime>
<priority>5</priority>
<startTime id="18">2018-05-15T12:01:30.000+1000</startTime>
<timeZone id="19">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="NY_Derive_1745" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 45 07 ? * 3-7</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:IssueGroupId</key>
<value id="5" type="java.lang.String">NY_Derive_1745</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:PricePointEventDefinitionId</key>
<value id="7" type="java.lang.String">SNAP====NY</value>
</entry>
<entry>
<key id="8" type="java.lang.String">EventName</key>
<value id="9" type="java.lang.String">evt_CBA_Derivation</value>
</entry>
</jobDataMap>
<jobGroup id="10">Events</jobGroup>
<jobName id="11">CBA_Derivation</jobName>
<misfireInstruction>1</misfireInstruction>
<name id="12">NY_Derive_1745</name>
<nextFireTime id="13">2018-05-15T07:45:00.000+1000</nextFireTime>
<priority>5</priority>
<startTime id="14">2018-05-14T14:25:07.000+1000</startTime>
<timeZone id="15">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_Derive_1715" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 15 17 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:IssueGroupId</key>
<value id="5" type="java.lang.String">SYD_Derive_1715</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:PricePointEventDefinitionId</key>
<value id="7" type="java.lang.String">SNAP====SY</value>
</entry>
<entry>
<key id="8" type="java.lang.String">EventName</key>
<value id="9" type="java.lang.String">evt_CBA_Derivation</value>
</entry>
</jobDataMap>
<jobGroup id="10">Events</jobGroup>
<jobName id="11">CBA_Derivation</jobName>
<misfireInstruction>1</misfireInstruction>
<name id="12">SYD_Derive_1715</name>
<nextFireTime id="13">2018-05-14T17:15:00.000+1000</nextFireTime>
<priority>5</priority>
<startTime id="14">2018-05-14T13:22:39.000+1000</startTime>
<timeZone id="15">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_Derive_1830" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 30 18 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:IssueGroupId</key>
<value id="5" type="java.lang.String">SYD_Derive_1830</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:PricePointEventDefinitionId</key>
<value id="7" type="java.lang.String">SNAP====SY</value>
</entry>
<entry>
<key id="8" type="java.lang.String">EventName</key>
<value id="9" type="java.lang.String">evt_CBA_Derivation</value>
</entry>
</jobDataMap>
<jobGroup id="10">Events</jobGroup>
<jobName id="11">CBA_Derivation</jobName>
<misfireInstruction>1</misfireInstruction>
<name id="12">SYD_Derive_1830</name>
<nextFireTime id="13">2018-05-14T18:30:00.000+1000</nextFireTime>
<priority>5</priority>
<startTime id="14">2018-05-14T14:19:56.000+1000</startTime>
<timeZone id="15">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
</goldensource-package>
