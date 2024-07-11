<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.15">
<package-comment/>
<businessobject displayString="CBA_CollectMaturityDate" type="org.quartz.impl.JobDetailImpl">
<org.quartz.impl.JobDetailImpl id="0">
<group id="1">Events</group>
<jobClass>com.j2fe.scheduling.jobs.ExecuteEventJob</jobClass>
<jobDataMap id="2"/>
<name id="3">CBA_CollectMaturityDate</name>
</org.quartz.impl.JobDetailImpl>
</businessobject>
<businessobject displayString="CBA_CollectMaturityDate1" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 12 17 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:PricePointEventDefinitionId</key>
<value id="5" type="java.lang.String">SNAP====SY</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:Processing Date Deriving Factor</key>
<value id="7" type="java.lang.String">0</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:RTDirectory</key>
<value id="9" type="java.lang.String">/reports</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:RTFilePattern</key>
<value id="11" type="java.lang.String">CBA_Reuters_Intra_Maturitydate.csv.gz</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:ReProcessProcessedFiles</key>
<value id="13" type="java.lang.String">false</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:ReuterBusinessFeed</key>
<value id="15" type="java.lang.String">ReutersDSS_INTRADAY_CBA_MaturityDate</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:ReutersDSSReportTemplateName</key>
<value id="17" type="java.lang.String">CBA_ReutersDSS_UnderlyingMaturity</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:ReutersFileSystem</key>
<value id="19" type="java.lang.String">SFTP</value>
</entry>
<entry>
<key id="20" type="java.lang.String">Event:pIssueGroupName</key>
<value id="21" type="java.lang.String">SYD_MAT_DSS_1215_INTRDAY</value>
</entry>
<entry>
<key id="22" type="java.lang.String">Event:pListInstrName</key>
<value id="23" type="java.lang.String">CBA_Maturity_InstrList</value>
</entry>
<entry>
<key id="24" type="java.lang.String">Event:pScheduleName</key>
<value id="25" type="java.lang.String">CBA_ReutersDSS_IntraDay_UnderlyingMaturity</value>
</entry>
<entry>
<key id="26" type="java.lang.String">EventName</key>
<value id="27" type="java.lang.String">evt_CBA_CollectMaturityDate</value>
</entry>
</jobDataMap>
<jobGroup id="28">Events</jobGroup>
<jobName id="29">CBA_CollectMaturityDate</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="30">CBA_CollectMaturityDate1</name>
<nextFireTime id="31">2018-05-14T17:12:00.000+1000</nextFireTime>
<previousFireTime id="32">2018-05-11T17:12:00.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="33">2018-05-11T10:19:44.000+1000</startTime>
<timeZone id="34">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
</goldensource-package>
