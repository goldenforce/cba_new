<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.16">
<package-comment/>
<businessobject displayString="CBA_Collection" type="org.quartz.impl.JobDetailImpl">
<org.quartz.impl.JobDetailImpl id="0">
<group id="1">Events</group>
<jobClass>com.j2fe.scheduling.jobs.ExecuteEventJob</jobClass>
<jobDataMap id="2"/>
<name id="3">CBA_Collection</name>
</org.quartz.impl.JobDetailImpl>
</businessobject>
<businessobject displayString="AS_FX_2030" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">55 29 20 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:BBDownloadDirectory</key>
<value id="5" type="java.lang.String">/</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:BBResponseFileName</key>
<value id="7" type="java.lang.String">AS_FX_BBG_2030.out.gz</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Bulk Size</key>
<value id="9" type="java.lang.String">100</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:Calculate MID price Options</key>
<value id="11" type="java.lang.String">CalcMIDIfMissing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:Calendar</key>
<value id="13" type="java.lang.String">PRPTUAL</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:CleanValidationInstructionCache</key>
<value id="15" type="java.lang.String">true</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:Consider Calendar Results</key>
<value id="17" type="java.lang.String">false</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:Consider Negative Prices</key>
<value id="19" type="java.lang.String">false</value>
</entry>
<entry>
<key id="20" type="java.lang.String">Event:CreateGPRCOnHoliday</key>
<value id="21" type="java.lang.String">false</value>
</entry>
<entry>
<key id="22" type="java.lang.String">Event:CreatePriceStatusForGoldenPrice</key>
<value id="23" type="java.lang.String">true</value>
</entry>
<entry>
<key id="24" type="java.lang.String">Event:Derive Golden Price</key>
<value id="25" type="java.lang.String">false</value>
</entry>
<entry>
<key id="26" type="java.lang.String">Event:DiagnosticMode</key>
<value id="27" type="java.lang.String">false</value>
</entry>
<entry>
<key id="28" type="java.lang.String">Event:Do Price Derivation First</key>
<value id="29" type="java.lang.String">false</value>
</entry>
<entry>
<key id="30" type="java.lang.String">Event:Donot Consider Issue Maturity</key>
<value id="31" type="java.lang.String">false</value>
</entry>
<entry>
<key id="32" type="java.lang.String">Event:Downstream System Identifier</key>
<value id="33" type="java.lang.String">Default</value>
</entry>
<entry>
<key id="34" type="java.lang.String">Event:Extra Configuration Information</key>
<value id="35" type="java.lang.String">Price Validation Consolidated</value>
</entry>
<entry>
<key id="36" type="java.lang.String">Event:FXRT Look Back Period</key>
<value id="37" type="java.lang.String">5</value>
</entry>
<entry>
<key id="38" type="java.lang.String">Event:GoldenToleranceToDo</key>
<value id="39" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="40" type="java.lang.String">Event:Ignore Issue MAT_EXP_TMS</key>
<value id="41" type="java.lang.String">false</value>
</entry>
<entry>
<key id="42" type="java.lang.String">Event:IgnorePriceValidityForComparison</key>
<value id="43" type="java.lang.String">true</value>
</entry>
<entry>
<key id="44" type="java.lang.String">Event:IsExternalLibrary</key>
<value id="45" type="java.lang.String">false</value>
</entry>
<entry>
<key id="46" type="java.lang.String">Event:IsWaterfallModel</key>
<value id="47" type="java.lang.String">false</value>
</entry>
<entry>
<key id="48" type="java.lang.String">Event:LoadFromLocalBB</key>
<value id="49" type="java.lang.String">false</value>
</entry>
<entry>
<key id="50" type="java.lang.String">Event:LoadFromLocalElektron</key>
<value id="51" type="java.lang.String">false</value>
</entry>
<entry>
<key id="52" type="java.lang.String">Event:LoadFromLocalRT</key>
<value id="53" type="java.lang.String">false</value>
</entry>
<entry>
<key id="54" type="java.lang.String">Event:MessageTypeBB</key>
<value id="55" type="java.lang.String">CBA_Bloomberg_Currency</value>
</entry>
<entry>
<key id="56" type="java.lang.String">Event:Observation Period</key>
<value id="57" type="java.lang.String">1</value>
</entry>
<entry>
<key id="58" type="java.lang.String">Event:Overwrite Suspect Status</key>
<value id="59" type="java.lang.String">false</value>
</entry>
<entry>
<key id="60" type="java.lang.String">Event:PRVI Hierarchy Enable Switch</key>
<value id="61" type="java.lang.String">false</value>
</entry>
<entry>
<key id="62" type="java.lang.String">Event:Price Day Frequency</key>
<value id="63" type="java.lang.String">daily</value>
</entry>
<entry>
<key id="64" type="java.lang.String">Event:PricePointEventDefinitionId</key>
<value id="65" type="java.lang.String">SNAP====AS</value>
</entry>
<entry>
<key id="66" type="java.lang.String">Event:Prior GPRC Observation Count</key>
<value id="67" type="java.lang.String">3</value>
</entry>
<entry>
<key id="68" type="java.lang.String">Event:Processing Date Deriving Factor</key>
<value id="69" type="java.lang.String">0</value>
</entry>
<entry>
<key id="70" type="java.lang.String">Event:Processing Mode</key>
<value id="71" type="java.lang.String">DoGoldenPriceCheckLast</value>
</entry>
<entry>
<key id="72" type="java.lang.String">Event:Qualifying type for Golden Price Check</key>
<value id="73" type="java.lang.String">VALIDANDUNVERIFED</value>
</entry>
<entry>
<key id="74" type="java.lang.String">Event:RTDirectory</key>
<value id="75" type="java.lang.String">/reports</value>
</entry>
<entry>
<key id="76" type="java.lang.String">Event:RTFilePattern</key>
<value id="77" type="java.lang.String">AS_FX_RT_DSS_2030*.csv.gz</value>
</entry>
<entry>
<key id="78" type="java.lang.String">Event:ReProcessProcessedFiles</key>
<value id="79" type="java.lang.String">false</value>
</entry>
<entry>
<key id="80" type="java.lang.String">Event:ReUse Job Id</key>
<value id="81" type="java.lang.String">false</value>
</entry>
<entry>
<key id="82" type="java.lang.String">Event:RelType OneToMany</key>
<value id="83" type="java.lang.String">ONETOMNY</value>
</entry>
<entry>
<key id="84" type="java.lang.String">Event:RelType Sequence</key>
<value id="85" type="java.lang.String">SEQUENCE</value>
</entry>
<entry>
<key id="86" type="java.lang.String">Event:ReutersFileSystem</key>
<value id="87" type="java.lang.String">SFTP</value>
</entry>
<entry>
<key id="88" type="java.lang.String">Event:Run Rescrub</key>
<value id="89" type="java.lang.String">false</value>
</entry>
<entry>
<key id="90" type="java.lang.String">Event:RunSameDayProcessing</key>
<value id="91" type="java.lang.String">true</value>
</entry>
<entry>
<key id="92" type="java.lang.String">Event:Threads In Parallel</key>
<value id="93" type="java.lang.String">5</value>
</entry>
<entry>
<key id="94" type="java.lang.String">Event:ThresholdValue</key>
<value id="95" type="java.lang.String">20</value>
</entry>
<entry>
<key id="96" type="java.lang.String">Event:ToleranceToDo</key>
<value id="97" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="98" type="java.lang.String">Event:WriteValidStatusRecords</key>
<value id="99" type="java.lang.String">true</value>
</entry>
<entry>
<key id="100" type="java.lang.String">Event:pDoElecktronFlag</key>
<value id="101" type="java.lang.String">true</value>
</entry>
<entry>
<key id="102" type="java.lang.String">Event:pIssueGroupName</key>
<value id="103" type="java.lang.String">AS_FX_2030</value>
</entry>
<entry>
<key id="104" type="java.lang.String">Event:pPublishFlag</key>
<value id="105" type="java.lang.String">true</value>
</entry>
<entry>
<key id="106" type="java.lang.String">Event:pSnapName</key>
<value id="107" type="java.lang.String">AS</value>
</entry>
<entry>
<key id="108" type="java.lang.String">EventName</key>
<value id="109" type="java.lang.String">evt_CBA_4Eye_Consolidated</value>
</entry>
</jobDataMap>
<jobGroup id="110">Events</jobGroup>
<jobName id="111">CBA_Collection</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="112">AS_FX_2030</name>
<nextFireTime id="113">2018-05-14T20:29:55.000+1000</nextFireTime>
<priority>5</priority>
<startTime id="114">2018-05-13T20:38:47.000+1000</startTime>
<timeZone id="115">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="AS_FX_2100" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">55 59 20 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:BBDownloadDirectory</key>
<value id="5" type="java.lang.String">/</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:BBResponseFileName</key>
<value id="7" type="java.lang.String">AS_FX_BBG_2100.out.gz</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Bulk Size</key>
<value id="9" type="java.lang.String">100</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:Calculate MID price Options</key>
<value id="11" type="java.lang.String">CalcMIDIfMissing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:Calendar</key>
<value id="13" type="java.lang.String">PRPTUAL</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:CleanValidationInstructionCache</key>
<value id="15" type="java.lang.String">true</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:Consider Calendar Results</key>
<value id="17" type="java.lang.String">false</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:Consider Negative Prices</key>
<value id="19" type="java.lang.String">false</value>
</entry>
<entry>
<key id="20" type="java.lang.String">Event:CreateGPRCOnHoliday</key>
<value id="21" type="java.lang.String">false</value>
</entry>
<entry>
<key id="22" type="java.lang.String">Event:CreatePriceStatusForGoldenPrice</key>
<value id="23" type="java.lang.String">true</value>
</entry>
<entry>
<key id="24" type="java.lang.String">Event:Derive Golden Price</key>
<value id="25" type="java.lang.String">false</value>
</entry>
<entry>
<key id="26" type="java.lang.String">Event:DiagnosticMode</key>
<value id="27" type="java.lang.String">false</value>
</entry>
<entry>
<key id="28" type="java.lang.String">Event:Do Price Derivation First</key>
<value id="29" type="java.lang.String">false</value>
</entry>
<entry>
<key id="30" type="java.lang.String">Event:Donot Consider Issue Maturity</key>
<value id="31" type="java.lang.String">false</value>
</entry>
<entry>
<key id="32" type="java.lang.String">Event:Downstream System Identifier</key>
<value id="33" type="java.lang.String">Default</value>
</entry>
<entry>
<key id="34" type="java.lang.String">Event:Extra Configuration Information</key>
<value id="35" type="java.lang.String">Price Validation Consolidated</value>
</entry>
<entry>
<key id="36" type="java.lang.String">Event:FXRT Look Back Period</key>
<value id="37" type="java.lang.String">5</value>
</entry>
<entry>
<key id="38" type="java.lang.String">Event:GoldenToleranceToDo</key>
<value id="39" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="40" type="java.lang.String">Event:Ignore Issue MAT_EXP_TMS</key>
<value id="41" type="java.lang.String">false</value>
</entry>
<entry>
<key id="42" type="java.lang.String">Event:IgnorePriceValidityForComparison</key>
<value id="43" type="java.lang.String">true</value>
</entry>
<entry>
<key id="44" type="java.lang.String">Event:IsExternalLibrary</key>
<value id="45" type="java.lang.String">false</value>
</entry>
<entry>
<key id="46" type="java.lang.String">Event:IsWaterfallModel</key>
<value id="47" type="java.lang.String">false</value>
</entry>
<entry>
<key id="48" type="java.lang.String">Event:LoadFromLocalBB</key>
<value id="49" type="java.lang.String">false</value>
</entry>
<entry>
<key id="50" type="java.lang.String">Event:LoadFromLocalElektron</key>
<value id="51" type="java.lang.String">false</value>
</entry>
<entry>
<key id="52" type="java.lang.String">Event:LoadFromLocalRT</key>
<value id="53" type="java.lang.String">false</value>
</entry>
<entry>
<key id="54" type="java.lang.String">Event:MessageTypeBB</key>
<value id="55" type="java.lang.String">CBA_Bloomberg_Currency</value>
</entry>
<entry>
<key id="56" type="java.lang.String">Event:Observation Period</key>
<value id="57" type="java.lang.String">1</value>
</entry>
<entry>
<key id="58" type="java.lang.String">Event:Overwrite Suspect Status</key>
<value id="59" type="java.lang.String">false</value>
</entry>
<entry>
<key id="60" type="java.lang.String">Event:PRVI Hierarchy Enable Switch</key>
<value id="61" type="java.lang.String">false</value>
</entry>
<entry>
<key id="62" type="java.lang.String">Event:Price Day Frequency</key>
<value id="63" type="java.lang.String">daily</value>
</entry>
<entry>
<key id="64" type="java.lang.String">Event:PricePointEventDefinitionId</key>
<value id="65" type="java.lang.String">SNAP====AS</value>
</entry>
<entry>
<key id="66" type="java.lang.String">Event:Prior GPRC Observation Count</key>
<value id="67" type="java.lang.String">3</value>
</entry>
<entry>
<key id="68" type="java.lang.String">Event:Processing Date Deriving Factor</key>
<value id="69" type="java.lang.String">0</value>
</entry>
<entry>
<key id="70" type="java.lang.String">Event:Processing Mode</key>
<value id="71" type="java.lang.String">DoGoldenPriceCheckLast</value>
</entry>
<entry>
<key id="72" type="java.lang.String">Event:Qualifying type for Golden Price Check</key>
<value id="73" type="java.lang.String">VALIDANDUNVERIFED</value>
</entry>
<entry>
<key id="74" type="java.lang.String">Event:RTDirectory</key>
<value id="75" type="java.lang.String">/reports</value>
</entry>
<entry>
<key id="76" type="java.lang.String">Event:RTFilePattern</key>
<value id="77" type="java.lang.String">AS_FX_RT_DSS_2100_EOD*.csv.gz</value>
</entry>
<entry>
<key id="78" type="java.lang.String">Event:ReProcessProcessedFiles</key>
<value id="79" type="java.lang.String">false</value>
</entry>
<entry>
<key id="80" type="java.lang.String">Event:ReUse Job Id</key>
<value id="81" type="java.lang.String">false</value>
</entry>
<entry>
<key id="82" type="java.lang.String">Event:RelType OneToMany</key>
<value id="83" type="java.lang.String">ONETOMNY</value>
</entry>
<entry>
<key id="84" type="java.lang.String">Event:RelType Sequence</key>
<value id="85" type="java.lang.String">SEQUENCE</value>
</entry>
<entry>
<key id="86" type="java.lang.String">Event:ReutersFileSystem</key>
<value id="87" type="java.lang.String">SFTP</value>
</entry>
<entry>
<key id="88" type="java.lang.String">Event:Run Rescrub</key>
<value id="89" type="java.lang.String">false</value>
</entry>
<entry>
<key id="90" type="java.lang.String">Event:RunSameDayProcessing</key>
<value id="91" type="java.lang.String">true</value>
</entry>
<entry>
<key id="92" type="java.lang.String">Event:Threads In Parallel</key>
<value id="93" type="java.lang.String">5</value>
</entry>
<entry>
<key id="94" type="java.lang.String">Event:ThresholdValue</key>
<value id="95" type="java.lang.String">20</value>
</entry>
<entry>
<key id="96" type="java.lang.String">Event:ToleranceToDo</key>
<value id="97" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="98" type="java.lang.String">Event:WriteValidStatusRecords</key>
<value id="99" type="java.lang.String">true</value>
</entry>
<entry>
<key id="100" type="java.lang.String">Event:pDoElecktronFlag</key>
<value id="101" type="java.lang.String">true</value>
</entry>
<entry>
<key id="102" type="java.lang.String">Event:pIssueGroupName</key>
<value id="103" type="java.lang.String">AS_FX_2100</value>
</entry>
<entry>
<key id="104" type="java.lang.String">Event:pPublishFlag</key>
<value id="105" type="java.lang.String">true</value>
</entry>
<entry>
<key id="106" type="java.lang.String">Event:pSnapName</key>
<value id="107" type="java.lang.String">AS</value>
</entry>
<entry>
<key id="108" type="java.lang.String">EventName</key>
<value id="109" type="java.lang.String">evt_CBA_4Eye_Consolidated</value>
</entry>
</jobDataMap>
<jobGroup id="110">Events</jobGroup>
<jobName id="111">CBA_Collection</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="112">AS_FX_2100</name>
<nextFireTime id="113">2018-05-14T20:59:55.000+1000</nextFireTime>
<previousFireTime id="114">2018-04-17T14:59:50.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="115">2018-05-13T20:39:02.000+1000</startTime>
<timeZone id="116">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="AS_IR_2030" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">50 29 20 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:BBDownloadDirectory</key>
<value id="5" type="java.lang.String">/</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:BBResponseFileName</key>
<value id="7" type="java.lang.String">AS_IR_BBG_2030.out.gz</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Bulk Size</key>
<value id="9" type="java.lang.String">100</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:Calculate MID price Options</key>
<value id="11" type="java.lang.String">CalcMIDIfMissing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:Calendar</key>
<value id="13" type="java.lang.String">PRPTUAL</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:CleanValidationInstructionCache</key>
<value id="15" type="java.lang.String">true</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:Consider Calendar Results</key>
<value id="17" type="java.lang.String">false</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:Consider Negative Prices</key>
<value id="19" type="java.lang.String">false</value>
</entry>
<entry>
<key id="20" type="java.lang.String">Event:CreateGPRCOnHoliday</key>
<value id="21" type="java.lang.String">false</value>
</entry>
<entry>
<key id="22" type="java.lang.String">Event:CreatePriceStatusForGoldenPrice</key>
<value id="23" type="java.lang.String">true</value>
</entry>
<entry>
<key id="24" type="java.lang.String">Event:Derive Golden Price</key>
<value id="25" type="java.lang.String">false</value>
</entry>
<entry>
<key id="26" type="java.lang.String">Event:DiagnosticMode</key>
<value id="27" type="java.lang.String">false</value>
</entry>
<entry>
<key id="28" type="java.lang.String">Event:Do Price Derivation First</key>
<value id="29" type="java.lang.String">false</value>
</entry>
<entry>
<key id="30" type="java.lang.String">Event:Donot Consider Issue Maturity</key>
<value id="31" type="java.lang.String">false</value>
</entry>
<entry>
<key id="32" type="java.lang.String">Event:Downstream System Identifier</key>
<value id="33" type="java.lang.String">Default</value>
</entry>
<entry>
<key id="34" type="java.lang.String">Event:Extra Configuration Information</key>
<value id="35" type="java.lang.String">Price Validation Consolidated</value>
</entry>
<entry>
<key id="36" type="java.lang.String">Event:FXRT Look Back Period</key>
<value id="37" type="java.lang.String">5</value>
</entry>
<entry>
<key id="38" type="java.lang.String">Event:GoldenToleranceToDo</key>
<value id="39" type="java.lang.String">STOLToDay</value>
</entry>
<entry>
<key id="40" type="java.lang.String">Event:Ignore Issue MAT_EXP_TMS</key>
<value id="41" type="java.lang.String">false</value>
</entry>
<entry>
<key id="42" type="java.lang.String">Event:IgnorePriceValidityForComparison</key>
<value id="43" type="java.lang.String">false</value>
</entry>
<entry>
<key id="44" type="java.lang.String">Event:IsExternalLibrary</key>
<value id="45" type="java.lang.String">false</value>
</entry>
<entry>
<key id="46" type="java.lang.String">Event:IsWaterfallModel</key>
<value id="47" type="java.lang.String">false</value>
</entry>
<entry>
<key id="48" type="java.lang.String">Event:LoadFromLocalBB</key>
<value id="49" type="java.lang.String">false</value>
</entry>
<entry>
<key id="50" type="java.lang.String">Event:LoadFromLocalElektron</key>
<value id="51" type="java.lang.String">false</value>
</entry>
<entry>
<key id="52" type="java.lang.String">Event:LoadFromLocalRT</key>
<value id="53" type="java.lang.String">false</value>
</entry>
<entry>
<key id="54" type="java.lang.String">Event:MessageTypeBB</key>
<value id="55" type="java.lang.String">CBA_Bloomberg_Currency</value>
</entry>
<entry>
<key id="56" type="java.lang.String">Event:Observation Period</key>
<value id="57" type="java.lang.String">1</value>
</entry>
<entry>
<key id="58" type="java.lang.String">Event:Overwrite Suspect Status</key>
<value id="59" type="java.lang.String">false</value>
</entry>
<entry>
<key id="60" type="java.lang.String">Event:PRVI Hierarchy Enable Switch</key>
<value id="61" type="java.lang.String">false</value>
</entry>
<entry>
<key id="62" type="java.lang.String">Event:Price Day Frequency</key>
<value id="63" type="java.lang.String">daily</value>
</entry>
<entry>
<key id="64" type="java.lang.String">Event:PricePointEventDefinitionId</key>
<value id="65" type="java.lang.String">SNAP====AS</value>
</entry>
<entry>
<key id="66" type="java.lang.String">Event:Prior GPRC Observation Count</key>
<value id="67" type="java.lang.String">3</value>
</entry>
<entry>
<key id="68" type="java.lang.String">Event:Processing Date Deriving Factor</key>
<value id="69" type="java.lang.String">0</value>
</entry>
<entry>
<key id="70" type="java.lang.String">Event:Processing Mode</key>
<value id="71" type="java.lang.String">DoGoldenPriceCheckLast</value>
</entry>
<entry>
<key id="72" type="java.lang.String">Event:Qualifying type for Golden Price Check</key>
<value id="73" type="java.lang.String">VALIDANDUNVERIFED</value>
</entry>
<entry>
<key id="74" type="java.lang.String">Event:RTDirectory</key>
<value id="75" type="java.lang.String">/reports</value>
</entry>
<entry>
<key id="76" type="java.lang.String">Event:RTFilePattern</key>
<value id="77" type="java.lang.String">AS_IR_RT_DSS_2030*.csv.gz</value>
</entry>
<entry>
<key id="78" type="java.lang.String">Event:ReProcessProcessedFiles</key>
<value id="79" type="java.lang.String">false</value>
</entry>
<entry>
<key id="80" type="java.lang.String">Event:ReUse Job Id</key>
<value id="81" type="java.lang.String">false</value>
</entry>
<entry>
<key id="82" type="java.lang.String">Event:RelType OneToMany</key>
<value id="83" type="java.lang.String">ONETOMNY</value>
</entry>
<entry>
<key id="84" type="java.lang.String">Event:RelType Sequence</key>
<value id="85" type="java.lang.String">SEQUENCE</value>
</entry>
<entry>
<key id="86" type="java.lang.String">Event:ReutersFileSystem</key>
<value id="87" type="java.lang.String">SFTP</value>
</entry>
<entry>
<key id="88" type="java.lang.String">Event:Run Rescrub</key>
<value id="89" type="java.lang.String">false</value>
</entry>
<entry>
<key id="90" type="java.lang.String">Event:RunSameDayProcessing</key>
<value id="91" type="java.lang.String">true</value>
</entry>
<entry>
<key id="92" type="java.lang.String">Event:Threads In Parallel</key>
<value id="93" type="java.lang.String">5</value>
</entry>
<entry>
<key id="94" type="java.lang.String">Event:ThresholdValue</key>
<value id="95" type="java.lang.String">20</value>
</entry>
<entry>
<key id="96" type="java.lang.String">Event:ToleranceToDo</key>
<value id="97" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="98" type="java.lang.String">Event:WriteValidStatusRecords</key>
<value id="99" type="java.lang.String">true</value>
</entry>
<entry>
<key id="100" type="java.lang.String">Event:pDoElecktronFlag</key>
<value id="101" type="java.lang.String">true</value>
</entry>
<entry>
<key id="102" type="java.lang.String">Event:pIssueGroupName</key>
<value id="103" type="java.lang.String">AS_IR_2030</value>
</entry>
<entry>
<key id="104" type="java.lang.String">Event:pPublishFlag</key>
<value id="105" type="java.lang.String">true</value>
</entry>
<entry>
<key id="106" type="java.lang.String">Event:pSnapName</key>
<value id="107" type="java.lang.String">AS</value>
</entry>
<entry>
<key id="108" type="java.lang.String">EventName</key>
<value id="109" type="java.lang.String">evt_CBA_4Eye_Consolidated</value>
</entry>
</jobDataMap>
<jobGroup id="110">Events</jobGroup>
<jobName id="111">CBA_Collection</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="112">AS_IR_2030</name>
<nextFireTime id="113">2018-05-14T20:29:50.000+1000</nextFireTime>
<previousFireTime id="114">2018-04-16T10:59:55.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="115">2018-05-13T20:39:17.000+1000</startTime>
<timeZone id="116">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="AS_IR_2100" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">50 59 20 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:BBDownloadDirectory</key>
<value id="5" type="java.lang.String">/</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:BBResponseFileName</key>
<value id="7" type="java.lang.String">AS_IR_BBG_2100.out.gz</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Bulk Size</key>
<value id="9" type="java.lang.String">100</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:Calculate MID price Options</key>
<value id="11" type="java.lang.String">CalcMIDIfMissing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:Calendar</key>
<value id="13" type="java.lang.String">PRPTUAL</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:CleanValidationInstructionCache</key>
<value id="15" type="java.lang.String">true</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:Consider Calendar Results</key>
<value id="17" type="java.lang.String">false</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:Consider Negative Prices</key>
<value id="19" type="java.lang.String">false</value>
</entry>
<entry>
<key id="20" type="java.lang.String">Event:CreateGPRCOnHoliday</key>
<value id="21" type="java.lang.String">false</value>
</entry>
<entry>
<key id="22" type="java.lang.String">Event:CreatePriceStatusForGoldenPrice</key>
<value id="23" type="java.lang.String">true</value>
</entry>
<entry>
<key id="24" type="java.lang.String">Event:Derive Golden Price</key>
<value id="25" type="java.lang.String">false</value>
</entry>
<entry>
<key id="26" type="java.lang.String">Event:DiagnosticMode</key>
<value id="27" type="java.lang.String">false</value>
</entry>
<entry>
<key id="28" type="java.lang.String">Event:Do Price Derivation First</key>
<value id="29" type="java.lang.String">false</value>
</entry>
<entry>
<key id="30" type="java.lang.String">Event:Donot Consider Issue Maturity</key>
<value id="31" type="java.lang.String">false</value>
</entry>
<entry>
<key id="32" type="java.lang.String">Event:Downstream System Identifier</key>
<value id="33" type="java.lang.String">Default</value>
</entry>
<entry>
<key id="34" type="java.lang.String">Event:Extra Configuration Information</key>
<value id="35" type="java.lang.String">Price Validation Consolidated</value>
</entry>
<entry>
<key id="36" type="java.lang.String">Event:FXRT Look Back Period</key>
<value id="37" type="java.lang.String">5</value>
</entry>
<entry>
<key id="38" type="java.lang.String">Event:GoldenToleranceToDo</key>
<value id="39" type="java.lang.String">STOLToDay</value>
</entry>
<entry>
<key id="40" type="java.lang.String">Event:Ignore Issue MAT_EXP_TMS</key>
<value id="41" type="java.lang.String">false</value>
</entry>
<entry>
<key id="42" type="java.lang.String">Event:IgnorePriceValidityForComparison</key>
<value id="43" type="java.lang.String">false</value>
</entry>
<entry>
<key id="44" type="java.lang.String">Event:IsExternalLibrary</key>
<value id="45" type="java.lang.String">false</value>
</entry>
<entry>
<key id="46" type="java.lang.String">Event:IsWaterfallModel</key>
<value id="47" type="java.lang.String">false</value>
</entry>
<entry>
<key id="48" type="java.lang.String">Event:LoadFromLocalBB</key>
<value id="49" type="java.lang.String">false</value>
</entry>
<entry>
<key id="50" type="java.lang.String">Event:LoadFromLocalElektron</key>
<value id="51" type="java.lang.String">false</value>
</entry>
<entry>
<key id="52" type="java.lang.String">Event:LoadFromLocalRT</key>
<value id="53" type="java.lang.String">false</value>
</entry>
<entry>
<key id="54" type="java.lang.String">Event:MessageTypeBB</key>
<value id="55" type="java.lang.String">CBA_Bloomberg_Currency</value>
</entry>
<entry>
<key id="56" type="java.lang.String">Event:Observation Period</key>
<value id="57" type="java.lang.String">1</value>
</entry>
<entry>
<key id="58" type="java.lang.String">Event:Overwrite Suspect Status</key>
<value id="59" type="java.lang.String">false</value>
</entry>
<entry>
<key id="60" type="java.lang.String">Event:PRVI Hierarchy Enable Switch</key>
<value id="61" type="java.lang.String">false</value>
</entry>
<entry>
<key id="62" type="java.lang.String">Event:Price Day Frequency</key>
<value id="63" type="java.lang.String">daily</value>
</entry>
<entry>
<key id="64" type="java.lang.String">Event:PricePointEventDefinitionId</key>
<value id="65" type="java.lang.String">SNAP====AS</value>
</entry>
<entry>
<key id="66" type="java.lang.String">Event:Prior GPRC Observation Count</key>
<value id="67" type="java.lang.String">3</value>
</entry>
<entry>
<key id="68" type="java.lang.String">Event:Processing Date Deriving Factor</key>
<value id="69" type="java.lang.String">0</value>
</entry>
<entry>
<key id="70" type="java.lang.String">Event:Processing Mode</key>
<value id="71" type="java.lang.String">DoGoldenPriceCheckLast</value>
</entry>
<entry>
<key id="72" type="java.lang.String">Event:Qualifying type for Golden Price Check</key>
<value id="73" type="java.lang.String">VALIDANDUNVERIFED</value>
</entry>
<entry>
<key id="74" type="java.lang.String">Event:RTDirectory</key>
<value id="75" type="java.lang.String">/reports</value>
</entry>
<entry>
<key id="76" type="java.lang.String">Event:RTFilePattern</key>
<value id="77" type="java.lang.String">AS_IR_RT_DSS_2100*.csv.gz</value>
</entry>
<entry>
<key id="78" type="java.lang.String">Event:ReProcessProcessedFiles</key>
<value id="79" type="java.lang.String">false</value>
</entry>
<entry>
<key id="80" type="java.lang.String">Event:ReUse Job Id</key>
<value id="81" type="java.lang.String">false</value>
</entry>
<entry>
<key id="82" type="java.lang.String">Event:RelType OneToMany</key>
<value id="83" type="java.lang.String">ONETOMNY</value>
</entry>
<entry>
<key id="84" type="java.lang.String">Event:RelType Sequence</key>
<value id="85" type="java.lang.String">SEQUENCE</value>
</entry>
<entry>
<key id="86" type="java.lang.String">Event:ReutersFileSystem</key>
<value id="87" type="java.lang.String">SFTP</value>
</entry>
<entry>
<key id="88" type="java.lang.String">Event:Run Rescrub</key>
<value id="89" type="java.lang.String">false</value>
</entry>
<entry>
<key id="90" type="java.lang.String">Event:RunSameDayProcessing</key>
<value id="91" type="java.lang.String">true</value>
</entry>
<entry>
<key id="92" type="java.lang.String">Event:Threads In Parallel</key>
<value id="93" type="java.lang.String">5</value>
</entry>
<entry>
<key id="94" type="java.lang.String">Event:ThresholdValue</key>
<value id="95" type="java.lang.String">20</value>
</entry>
<entry>
<key id="96" type="java.lang.String">Event:ToleranceToDo</key>
<value id="97" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="98" type="java.lang.String">Event:WriteValidStatusRecords</key>
<value id="99" type="java.lang.String">true</value>
</entry>
<entry>
<key id="100" type="java.lang.String">Event:pDoElecktronFlag</key>
<value id="101" type="java.lang.String">true</value>
</entry>
<entry>
<key id="102" type="java.lang.String">Event:pIssueGroupName</key>
<value id="103" type="java.lang.String">AS_IR_2100</value>
</entry>
<entry>
<key id="104" type="java.lang.String">Event:pPublishFlag</key>
<value id="105" type="java.lang.String">true</value>
</entry>
<entry>
<key id="106" type="java.lang.String">Event:pSnapName</key>
<value id="107" type="java.lang.String">AS</value>
</entry>
<entry>
<key id="108" type="java.lang.String">EventName</key>
<value id="109" type="java.lang.String">evt_CBA_4Eye_Consolidated</value>
</entry>
</jobDataMap>
<jobGroup id="110">Events</jobGroup>
<jobName id="111">CBA_Collection</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="112">AS_IR_2100</name>
<nextFireTime id="113">2018-05-14T20:59:50.000+1000</nextFireTime>
<previousFireTime id="114">2018-04-16T10:59:55.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="115">2018-05-13T20:39:33.000+1000</startTime>
<timeZone id="116">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="LN_FX_1630" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">55 29 01 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:BBDownloadDirectory</key>
<value id="5" type="java.lang.String">/</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:BBResponseFileName</key>
<value id="7" type="java.lang.String">LN_FX_BBG_1630.out.gz</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Bulk Size</key>
<value id="9" type="java.lang.String">100</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:Calculate MID price Options</key>
<value id="11" type="java.lang.String">CalcMIDIfMissing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:Calendar</key>
<value id="13" type="java.lang.String">PRPTUAL</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:CleanValidationInstructionCache</key>
<value id="15" type="java.lang.String">true</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:Consider Calendar Results</key>
<value id="17" type="java.lang.String">false</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:Consider Negative Prices</key>
<value id="19" type="java.lang.String">false</value>
</entry>
<entry>
<key id="20" type="java.lang.String">Event:CreateGPRCOnHoliday</key>
<value id="21" type="java.lang.String">false</value>
</entry>
<entry>
<key id="22" type="java.lang.String">Event:CreatePriceStatusForGoldenPrice</key>
<value id="23" type="java.lang.String">true</value>
</entry>
<entry>
<key id="24" type="java.lang.String">Event:Derive Golden Price</key>
<value id="25" type="java.lang.String">false</value>
</entry>
<entry>
<key id="26" type="java.lang.String">Event:DiagnosticMode</key>
<value id="27" type="java.lang.String">false</value>
</entry>
<entry>
<key id="28" type="java.lang.String">Event:Do Price Derivation First</key>
<value id="29" type="java.lang.String">false</value>
</entry>
<entry>
<key id="30" type="java.lang.String">Event:Donot Consider Issue Maturity</key>
<value id="31" type="java.lang.String">false</value>
</entry>
<entry>
<key id="32" type="java.lang.String">Event:Downstream System Identifier</key>
<value id="33" type="java.lang.String">Default</value>
</entry>
<entry>
<key id="34" type="java.lang.String">Event:Extra Configuration Information</key>
<value id="35" type="java.lang.String">Price Validation Consolidated</value>
</entry>
<entry>
<key id="36" type="java.lang.String">Event:FXRT Look Back Period</key>
<value id="37" type="java.lang.String">5</value>
</entry>
<entry>
<key id="38" type="java.lang.String">Event:GoldenToleranceToDo</key>
<value id="39" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="40" type="java.lang.String">Event:Ignore Issue MAT_EXP_TMS</key>
<value id="41" type="java.lang.String">false</value>
</entry>
<entry>
<key id="42" type="java.lang.String">Event:IgnorePriceValidityForComparison</key>
<value id="43" type="java.lang.String">true</value>
</entry>
<entry>
<key id="44" type="java.lang.String">Event:IsExternalLibrary</key>
<value id="45" type="java.lang.String">false</value>
</entry>
<entry>
<key id="46" type="java.lang.String">Event:IsWaterfallModel</key>
<value id="47" type="java.lang.String">false</value>
</entry>
<entry>
<key id="48" type="java.lang.String">Event:Observation Period</key>
<value id="49" type="java.lang.String">1</value>
</entry>
<entry>
<key id="50" type="java.lang.String">Event:Overwrite Suspect Status</key>
<value id="51" type="java.lang.String">false</value>
</entry>
<entry>
<key id="52" type="java.lang.String">Event:PRVI Hierarchy Enable Switch</key>
<value id="53" type="java.lang.String">false</value>
</entry>
<entry>
<key id="54" type="java.lang.String">Event:Price Day Frequency</key>
<value id="55" type="java.lang.String">daily</value>
</entry>
<entry>
<key id="56" type="java.lang.String">Event:PricePointEventDefinitionId</key>
<value id="57" type="java.lang.String">SNAP====LN</value>
</entry>
<entry>
<key id="58" type="java.lang.String">Event:Prior GPRC Observation Count</key>
<value id="59" type="java.lang.String">3</value>
</entry>
<entry>
<key id="60" type="java.lang.String">Event:Processing Date Deriving Factor</key>
<value id="61" type="java.lang.String">-1</value>
</entry>
<entry>
<key id="62" type="java.lang.String">Event:Processing Mode</key>
<value id="63" type="java.lang.String">DoGoldenPriceCheckLast</value>
</entry>
<entry>
<key id="64" type="java.lang.String">Event:Qualifying type for Golden Price Check</key>
<value id="65" type="java.lang.String">VALIDANDUNVERIFED</value>
</entry>
<entry>
<key id="66" type="java.lang.String">Event:RTDirectory</key>
<value id="67" type="java.lang.String">/reports</value>
</entry>
<entry>
<key id="68" type="java.lang.String">Event:RTFilePattern</key>
<value id="69" type="java.lang.String">LN_FX_RT_DSS_1630_INTRDAY*.csv.gz</value>
</entry>
<entry>
<key id="70" type="java.lang.String">Event:ReProcessProcessedFiles</key>
<value id="71" type="java.lang.String">false</value>
</entry>
<entry>
<key id="72" type="java.lang.String">Event:ReUse Job Id</key>
<value id="73" type="java.lang.String">false</value>
</entry>
<entry>
<key id="74" type="java.lang.String">Event:RelType OneToMany</key>
<value id="75" type="java.lang.String">ONETOMNY</value>
</entry>
<entry>
<key id="76" type="java.lang.String">Event:RelType Sequence</key>
<value id="77" type="java.lang.String">SEQUENCE</value>
</entry>
<entry>
<key id="78" type="java.lang.String">Event:ReutersFileSystem</key>
<value id="79" type="java.lang.String">SFTP</value>
</entry>
<entry>
<key id="80" type="java.lang.String">Event:Run Rescrub</key>
<value id="81" type="java.lang.String">false</value>
</entry>
<entry>
<key id="82" type="java.lang.String">Event:RunSameDayProcessing</key>
<value id="83" type="java.lang.String">true</value>
</entry>
<entry>
<key id="84" type="java.lang.String">Event:Threads In Parallel</key>
<value id="85" type="java.lang.String">5</value>
</entry>
<entry>
<key id="86" type="java.lang.String">Event:ThresholdValue</key>
<value id="87" type="java.lang.String">20</value>
</entry>
<entry>
<key id="88" type="java.lang.String">Event:ToleranceToDo</key>
<value id="89" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="90" type="java.lang.String">Event:WriteValidStatusRecords</key>
<value id="91" type="java.lang.String">true</value>
</entry>
<entry>
<key id="92" type="java.lang.String">Event:pDoElecktronFlag</key>
<value id="93" type="java.lang.String">true</value>
</entry>
<entry>
<key id="94" type="java.lang.String">Event:pIssueGroupName</key>
<value id="95" type="java.lang.String">LN_FX_1630</value>
</entry>
<entry>
<key id="96" type="java.lang.String">Event:pPublishFlag</key>
<value id="97" type="java.lang.String">true</value>
</entry>
<entry>
<key id="98" type="java.lang.String">Event:pSnapName</key>
<value id="99" type="java.lang.String">LN</value>
</entry>
<entry>
<key id="100" type="java.lang.String">EventName</key>
<value id="101" type="java.lang.String">evt_CBA_4Eye_Consolidated</value>
</entry>
</jobDataMap>
<jobGroup id="102">Events</jobGroup>
<jobName id="103">CBA_Collection</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="104">LN_FX_1630</name>
<nextFireTime id="105">2018-04-24T01:29:55.000+1000</nextFireTime>
<previousFireTime id="106">2018-04-27T01:29:55.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="107">2018-04-23T22:17:02.000+1000</startTime>
<timeZone id="108">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="LN_FX_1740" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">55 39 02 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:BBDownloadDirectory</key>
<value id="5" type="java.lang.String">/</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:BBResponseFileName</key>
<value id="7" type="java.lang.String">LN_FX_BBG_1740.out.gz</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Bulk Size</key>
<value id="9" type="java.lang.String">100</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:Calculate MID price Options</key>
<value id="11" type="java.lang.String">CalcMIDIfMissing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:Calendar</key>
<value id="13" type="java.lang.String">PRPTUAL</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:CleanValidationInstructionCache</key>
<value id="15" type="java.lang.String">true</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:Consider Calendar Results</key>
<value id="17" type="java.lang.String">false</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:Consider Negative Prices</key>
<value id="19" type="java.lang.String">false</value>
</entry>
<entry>
<key id="20" type="java.lang.String">Event:CreateGPRCOnHoliday</key>
<value id="21" type="java.lang.String">false</value>
</entry>
<entry>
<key id="22" type="java.lang.String">Event:CreatePriceStatusForGoldenPrice</key>
<value id="23" type="java.lang.String">true</value>
</entry>
<entry>
<key id="24" type="java.lang.String">Event:Derive Golden Price</key>
<value id="25" type="java.lang.String">false</value>
</entry>
<entry>
<key id="26" type="java.lang.String">Event:DiagnosticMode</key>
<value id="27" type="java.lang.String">false</value>
</entry>
<entry>
<key id="28" type="java.lang.String">Event:Do Price Derivation First</key>
<value id="29" type="java.lang.String">false</value>
</entry>
<entry>
<key id="30" type="java.lang.String">Event:Donot Consider Issue Maturity</key>
<value id="31" type="java.lang.String">false</value>
</entry>
<entry>
<key id="32" type="java.lang.String">Event:Downstream System Identifier</key>
<value id="33" type="java.lang.String">Default</value>
</entry>
<entry>
<key id="34" type="java.lang.String">Event:Extra Configuration Information</key>
<value id="35" type="java.lang.String">Price Validation Consolidated</value>
</entry>
<entry>
<key id="36" type="java.lang.String">Event:FXRT Look Back Period</key>
<value id="37" type="java.lang.String">5</value>
</entry>
<entry>
<key id="38" type="java.lang.String">Event:GoldenToleranceToDo</key>
<value id="39" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="40" type="java.lang.String">Event:Ignore Issue MAT_EXP_TMS</key>
<value id="41" type="java.lang.String">false</value>
</entry>
<entry>
<key id="42" type="java.lang.String">Event:IgnorePriceValidityForComparison</key>
<value id="43" type="java.lang.String">true</value>
</entry>
<entry>
<key id="44" type="java.lang.String">Event:IsExternalLibrary</key>
<value id="45" type="java.lang.String">false</value>
</entry>
<entry>
<key id="46" type="java.lang.String">Event:IsWaterfallModel</key>
<value id="47" type="java.lang.String">false</value>
</entry>
<entry>
<key id="48" type="java.lang.String">Event:LoadFromLocalBB</key>
<value id="49" type="java.lang.String">false</value>
</entry>
<entry>
<key id="50" type="java.lang.String">Event:LoadFromLocalElektron</key>
<value id="51" type="java.lang.String">false</value>
</entry>
<entry>
<key id="52" type="java.lang.String">Event:LoadFromLocalRT</key>
<value id="53" type="java.lang.String">false</value>
</entry>
<entry>
<key id="54" type="java.lang.String">Event:MessageTypeBB</key>
<value id="55" type="java.lang.String">CBA_Bloomberg_Currency</value>
</entry>
<entry>
<key id="56" type="java.lang.String">Event:Observation Period</key>
<value id="57" type="java.lang.String">1</value>
</entry>
<entry>
<key id="58" type="java.lang.String">Event:Overwrite Suspect Status</key>
<value id="59" type="java.lang.String">false</value>
</entry>
<entry>
<key id="60" type="java.lang.String">Event:PRVI Hierarchy Enable Switch</key>
<value id="61" type="java.lang.String">false</value>
</entry>
<entry>
<key id="62" type="java.lang.String">Event:Price Day Frequency</key>
<value id="63" type="java.lang.String">daily</value>
</entry>
<entry>
<key id="64" type="java.lang.String">Event:PricePointEventDefinitionId</key>
<value id="65" type="java.lang.String">SNAP====LN</value>
</entry>
<entry>
<key id="66" type="java.lang.String">Event:Prior GPRC Observation Count</key>
<value id="67" type="java.lang.String">3</value>
</entry>
<entry>
<key id="68" type="java.lang.String">Event:Processing Date Deriving Factor</key>
<value id="69" type="java.lang.String">-1</value>
</entry>
<entry>
<key id="70" type="java.lang.String">Event:Processing Mode</key>
<value id="71" type="java.lang.String">DoGoldenPriceCheckLast</value>
</entry>
<entry>
<key id="72" type="java.lang.String">Event:Qualifying type for Golden Price Check</key>
<value id="73" type="java.lang.String">VALIDANDUNVERIFED</value>
</entry>
<entry>
<key id="74" type="java.lang.String">Event:RTDirectory</key>
<value id="75" type="java.lang.String">/reports</value>
</entry>
<entry>
<key id="76" type="java.lang.String">Event:ReProcessProcessedFiles</key>
<value id="77" type="java.lang.String">false</value>
</entry>
<entry>
<key id="78" type="java.lang.String">Event:ReUse Job Id</key>
<value id="79" type="java.lang.String">false</value>
</entry>
<entry>
<key id="80" type="java.lang.String">Event:RelType OneToMany</key>
<value id="81" type="java.lang.String">ONETOMNY</value>
</entry>
<entry>
<key id="82" type="java.lang.String">Event:RelType Sequence</key>
<value id="83" type="java.lang.String">SEQUENCE</value>
</entry>
<entry>
<key id="84" type="java.lang.String">Event:ReutersFileSystem</key>
<value id="85" type="java.lang.String">SFTP</value>
</entry>
<entry>
<key id="86" type="java.lang.String">Event:Run Rescrub</key>
<value id="87" type="java.lang.String">false</value>
</entry>
<entry>
<key id="88" type="java.lang.String">Event:RunSameDayProcessing</key>
<value id="89" type="java.lang.String">true</value>
</entry>
<entry>
<key id="90" type="java.lang.String">Event:Threads In Parallel</key>
<value id="91" type="java.lang.String">5</value>
</entry>
<entry>
<key id="92" type="java.lang.String">Event:ThresholdValue</key>
<value id="93" type="java.lang.String">20</value>
</entry>
<entry>
<key id="94" type="java.lang.String">Event:ToleranceToDo</key>
<value id="95" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="96" type="java.lang.String">Event:WriteValidStatusRecords</key>
<value id="97" type="java.lang.String">true</value>
</entry>
<entry>
<key id="98" type="java.lang.String">Event:pDoElecktronFlag</key>
<value id="99" type="java.lang.String">true</value>
</entry>
<entry>
<key id="100" type="java.lang.String">Event:pIssueGroupName</key>
<value id="101" type="java.lang.String">LN_FX_1740</value>
</entry>
<entry>
<key id="102" type="java.lang.String">Event:pPublishFlag</key>
<value id="103" type="java.lang.String">true</value>
</entry>
<entry>
<key id="104" type="java.lang.String">Event:pSnapName</key>
<value id="105" type="java.lang.String">LN</value>
</entry>
<entry>
<key id="106" type="java.lang.String">EventName</key>
<value id="107" type="java.lang.String">evt_CBA_4Eye_Consolidated</value>
</entry>
</jobDataMap>
<jobGroup id="108">Events</jobGroup>
<jobName id="109">CBA_Collection</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="110">LN_FX_1740</name>
<nextFireTime id="111">2018-05-14T02:39:55.000+1000</nextFireTime>
<previousFireTime id="112">2018-04-27T02:39:55.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="113">2018-05-13T20:40:20.000+1000</startTime>
<timeZone id="114">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="LN_IR_1630" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">50 29 01 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:BBDownloadDirectory</key>
<value id="5" type="java.lang.String">/</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:BBResponseFileName</key>
<value id="7" type="java.lang.String">LN_IR_BBG_1630.out.gz</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Bulk Size</key>
<value id="9" type="java.lang.String">100</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:Calculate MID price Options</key>
<value id="11" type="java.lang.String">CalcMIDIfMissing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:Calendar</key>
<value id="13" type="java.lang.String">PRPTUAL</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:CleanValidationInstructionCache</key>
<value id="15" type="java.lang.String">true</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:Consider Calendar Results</key>
<value id="17" type="java.lang.String">false</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:Consider Negative Prices</key>
<value id="19" type="java.lang.String">false</value>
</entry>
<entry>
<key id="20" type="java.lang.String">Event:CreateGPRCOnHoliday</key>
<value id="21" type="java.lang.String">false</value>
</entry>
<entry>
<key id="22" type="java.lang.String">Event:CreatePriceStatusForGoldenPrice</key>
<value id="23" type="java.lang.String">true</value>
</entry>
<entry>
<key id="24" type="java.lang.String">Event:Derive Golden Price</key>
<value id="25" type="java.lang.String">false</value>
</entry>
<entry>
<key id="26" type="java.lang.String">Event:DiagnosticMode</key>
<value id="27" type="java.lang.String">false</value>
</entry>
<entry>
<key id="28" type="java.lang.String">Event:Do Price Derivation First</key>
<value id="29" type="java.lang.String">false</value>
</entry>
<entry>
<key id="30" type="java.lang.String">Event:Donot Consider Issue Maturity</key>
<value id="31" type="java.lang.String">false</value>
</entry>
<entry>
<key id="32" type="java.lang.String">Event:Downstream System Identifier</key>
<value id="33" type="java.lang.String">Default</value>
</entry>
<entry>
<key id="34" type="java.lang.String">Event:Extra Configuration Information</key>
<value id="35" type="java.lang.String">Price Validation Consolidated</value>
</entry>
<entry>
<key id="36" type="java.lang.String">Event:FXRT Look Back Period</key>
<value id="37" type="java.lang.String">5</value>
</entry>
<entry>
<key id="38" type="java.lang.String">Event:GoldenToleranceToDo</key>
<value id="39" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="40" type="java.lang.String">Event:Ignore Issue MAT_EXP_TMS</key>
<value id="41" type="java.lang.String">false</value>
</entry>
<entry>
<key id="42" type="java.lang.String">Event:IgnorePriceValidityForComparison</key>
<value id="43" type="java.lang.String">true</value>
</entry>
<entry>
<key id="44" type="java.lang.String">Event:IsExternalLibrary</key>
<value id="45" type="java.lang.String">false</value>
</entry>
<entry>
<key id="46" type="java.lang.String">Event:IsWaterfallModel</key>
<value id="47" type="java.lang.String">false</value>
</entry>
<entry>
<key id="48" type="java.lang.String">Event:LoadFromLocalBB</key>
<value id="49" type="java.lang.String">false</value>
</entry>
<entry>
<key id="50" type="java.lang.String">Event:LoadFromLocalElektron</key>
<value id="51" type="java.lang.String">false</value>
</entry>
<entry>
<key id="52" type="java.lang.String">Event:LoadFromLocalRT</key>
<value id="53" type="java.lang.String">false</value>
</entry>
<entry>
<key id="54" type="java.lang.String">Event:MessageTypeBB</key>
<value id="55" type="java.lang.String">CBA_Bloomberg_Currency</value>
</entry>
<entry>
<key id="56" type="java.lang.String">Event:Observation Period</key>
<value id="57" type="java.lang.String">1</value>
</entry>
<entry>
<key id="58" type="java.lang.String">Event:Overwrite Suspect Status</key>
<value id="59" type="java.lang.String">false</value>
</entry>
<entry>
<key id="60" type="java.lang.String">Event:PRVI Hierarchy Enable Switch</key>
<value id="61" type="java.lang.String">false</value>
</entry>
<entry>
<key id="62" type="java.lang.String">Event:Price Day Frequency</key>
<value id="63" type="java.lang.String">daily</value>
</entry>
<entry>
<key id="64" type="java.lang.String">Event:PricePointEventDefinitionId</key>
<value id="65" type="java.lang.String">SNAP====LN</value>
</entry>
<entry>
<key id="66" type="java.lang.String">Event:Prior GPRC Observation Count</key>
<value id="67" type="java.lang.String">3</value>
</entry>
<entry>
<key id="68" type="java.lang.String">Event:Processing Date Deriving Factor</key>
<value id="69" type="java.lang.String">-1</value>
</entry>
<entry>
<key id="70" type="java.lang.String">Event:Processing Mode</key>
<value id="71" type="java.lang.String">DoGoldenPriceCheckLast</value>
</entry>
<entry>
<key id="72" type="java.lang.String">Event:Qualifying type for Golden Price Check</key>
<value id="73" type="java.lang.String">VALIDANDUNVERIFED</value>
</entry>
<entry>
<key id="74" type="java.lang.String">Event:RTDirectory</key>
<value id="75" type="java.lang.String">/reports</value>
</entry>
<entry>
<key id="76" type="java.lang.String">Event:RTFilePattern</key>
<value id="77" type="java.lang.String">LN_IR_RT_DSS_1630_INTRDAY*.csv.gz</value>
</entry>
<entry>
<key id="78" type="java.lang.String">Event:ReProcessProcessedFiles</key>
<value id="79" type="java.lang.String">false</value>
</entry>
<entry>
<key id="80" type="java.lang.String">Event:ReUse Job Id</key>
<value id="81" type="java.lang.String">false</value>
</entry>
<entry>
<key id="82" type="java.lang.String">Event:RelType OneToMany</key>
<value id="83" type="java.lang.String">ONETOMNY</value>
</entry>
<entry>
<key id="84" type="java.lang.String">Event:RelType Sequence</key>
<value id="85" type="java.lang.String">SEQUENCE</value>
</entry>
<entry>
<key id="86" type="java.lang.String">Event:ReutersFileSystem</key>
<value id="87" type="java.lang.String">SFTP</value>
</entry>
<entry>
<key id="88" type="java.lang.String">Event:Run Rescrub</key>
<value id="89" type="java.lang.String">false</value>
</entry>
<entry>
<key id="90" type="java.lang.String">Event:RunSameDayProcessing</key>
<value id="91" type="java.lang.String">true</value>
</entry>
<entry>
<key id="92" type="java.lang.String">Event:Threads In Parallel</key>
<value id="93" type="java.lang.String">5</value>
</entry>
<entry>
<key id="94" type="java.lang.String">Event:ThresholdValue</key>
<value id="95" type="java.lang.String">20</value>
</entry>
<entry>
<key id="96" type="java.lang.String">Event:ToleranceToDo</key>
<value id="97" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="98" type="java.lang.String">Event:WriteValidStatusRecords</key>
<value id="99" type="java.lang.String">true</value>
</entry>
<entry>
<key id="100" type="java.lang.String">Event:pDoElecktronFlag</key>
<value id="101" type="java.lang.String">true</value>
</entry>
<entry>
<key id="102" type="java.lang.String">Event:pIssueGroupName</key>
<value id="103" type="java.lang.String">LN_IR_1630</value>
</entry>
<entry>
<key id="104" type="java.lang.String">Event:pPublishFlag</key>
<value id="105" type="java.lang.String">true</value>
</entry>
<entry>
<key id="106" type="java.lang.String">Event:pSnapName</key>
<value id="107" type="java.lang.String">LN</value>
</entry>
<entry>
<key id="108" type="java.lang.String">EventName</key>
<value id="109" type="java.lang.String">evt_CBA_4Eye_Consolidated</value>
</entry>
</jobDataMap>
<jobGroup id="110">Events</jobGroup>
<jobName id="111">CBA_Collection</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="112">LN_IR_1630</name>
<nextFireTime id="113">2018-05-14T01:29:50.000+1000</nextFireTime>
<previousFireTime id="114">2018-04-27T01:29:50.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="115">2018-05-13T20:40:33.000+1000</startTime>
<timeZone id="116">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="LN_IR_1640" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">55 39 01 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:BBDownloadDirectory</key>
<value id="5" type="java.lang.String">/</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:BBResponseFileName</key>
<value id="7" type="java.lang.String">LN_IR_BBG_1640.out.gz</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Bulk Size</key>
<value id="9" type="java.lang.String">100</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:Calculate MID price Options</key>
<value id="11" type="java.lang.String">CalcMIDIfMissing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:Calendar</key>
<value id="13" type="java.lang.String">PRPTUAL</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:CleanValidationInstructionCache</key>
<value id="15" type="java.lang.String">true</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:Consider Calendar Results</key>
<value id="17" type="java.lang.String">false</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:Consider Negative Prices</key>
<value id="19" type="java.lang.String">false</value>
</entry>
<entry>
<key id="20" type="java.lang.String">Event:CreateGPRCOnHoliday</key>
<value id="21" type="java.lang.String">false</value>
</entry>
<entry>
<key id="22" type="java.lang.String">Event:CreatePriceStatusForGoldenPrice</key>
<value id="23" type="java.lang.String">true</value>
</entry>
<entry>
<key id="24" type="java.lang.String">Event:Derive Golden Price</key>
<value id="25" type="java.lang.String">false</value>
</entry>
<entry>
<key id="26" type="java.lang.String">Event:DiagnosticMode</key>
<value id="27" type="java.lang.String">false</value>
</entry>
<entry>
<key id="28" type="java.lang.String">Event:Do Price Derivation First</key>
<value id="29" type="java.lang.String">false</value>
</entry>
<entry>
<key id="30" type="java.lang.String">Event:Donot Consider Issue Maturity</key>
<value id="31" type="java.lang.String">false</value>
</entry>
<entry>
<key id="32" type="java.lang.String">Event:Downstream System Identifier</key>
<value id="33" type="java.lang.String">Default</value>
</entry>
<entry>
<key id="34" type="java.lang.String">Event:Extra Configuration Information</key>
<value id="35" type="java.lang.String">Price Validation Consolidated</value>
</entry>
<entry>
<key id="36" type="java.lang.String">Event:FXRT Look Back Period</key>
<value id="37" type="java.lang.String">5</value>
</entry>
<entry>
<key id="38" type="java.lang.String">Event:GoldenToleranceToDo</key>
<value id="39" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="40" type="java.lang.String">Event:Ignore Issue MAT_EXP_TMS</key>
<value id="41" type="java.lang.String">false</value>
</entry>
<entry>
<key id="42" type="java.lang.String">Event:IgnorePriceValidityForComparison</key>
<value id="43" type="java.lang.String">true</value>
</entry>
<entry>
<key id="44" type="java.lang.String">Event:IsExternalLibrary</key>
<value id="45" type="java.lang.String">false</value>
</entry>
<entry>
<key id="46" type="java.lang.String">Event:IsWaterfallModel</key>
<value id="47" type="java.lang.String">false</value>
</entry>
<entry>
<key id="48" type="java.lang.String">Event:LoadFromLocalBB</key>
<value id="49" type="java.lang.String">false</value>
</entry>
<entry>
<key id="50" type="java.lang.String">Event:LoadFromLocalElektron</key>
<value id="51" type="java.lang.String">false</value>
</entry>
<entry>
<key id="52" type="java.lang.String">Event:LoadFromLocalRT</key>
<value id="53" type="java.lang.String">false</value>
</entry>
<entry>
<key id="54" type="java.lang.String">Event:MessageTypeBB</key>
<value id="55" type="java.lang.String">CBA_Bloomberg_Currency</value>
</entry>
<entry>
<key id="56" type="java.lang.String">Event:Observation Period</key>
<value id="57" type="java.lang.String">1</value>
</entry>
<entry>
<key id="58" type="java.lang.String">Event:Overwrite Suspect Status</key>
<value id="59" type="java.lang.String">false</value>
</entry>
<entry>
<key id="60" type="java.lang.String">Event:PRVI Hierarchy Enable Switch</key>
<value id="61" type="java.lang.String">false</value>
</entry>
<entry>
<key id="62" type="java.lang.String">Event:Price Day Frequency</key>
<value id="63" type="java.lang.String">daily</value>
</entry>
<entry>
<key id="64" type="java.lang.String">Event:PricePointEventDefinitionId</key>
<value id="65" type="java.lang.String">SNAP====LN</value>
</entry>
<entry>
<key id="66" type="java.lang.String">Event:Prior GPRC Observation Count</key>
<value id="67" type="java.lang.String">3</value>
</entry>
<entry>
<key id="68" type="java.lang.String">Event:Processing Date Deriving Factor</key>
<value id="69" type="java.lang.String">-1</value>
</entry>
<entry>
<key id="70" type="java.lang.String">Event:Processing Mode</key>
<value id="71" type="java.lang.String">DoGoldenPriceCheckLast</value>
</entry>
<entry>
<key id="72" type="java.lang.String">Event:Qualifying type for Golden Price Check</key>
<value id="73" type="java.lang.String">VALIDANDUNVERIFED</value>
</entry>
<entry>
<key id="74" type="java.lang.String">Event:RTDirectory</key>
<value id="75" type="java.lang.String">/reports</value>
</entry>
<entry>
<key id="76" type="java.lang.String">Event:ReProcessProcessedFiles</key>
<value id="77" type="java.lang.String">false</value>
</entry>
<entry>
<key id="78" type="java.lang.String">Event:ReUse Job Id</key>
<value id="79" type="java.lang.String">false</value>
</entry>
<entry>
<key id="80" type="java.lang.String">Event:RelType OneToMany</key>
<value id="81" type="java.lang.String">ONETOMNY</value>
</entry>
<entry>
<key id="82" type="java.lang.String">Event:RelType Sequence</key>
<value id="83" type="java.lang.String">SEQUENCE</value>
</entry>
<entry>
<key id="84" type="java.lang.String">Event:ReutersFileSystem</key>
<value id="85" type="java.lang.String">SFTP</value>
</entry>
<entry>
<key id="86" type="java.lang.String">Event:Run Rescrub</key>
<value id="87" type="java.lang.String">false</value>
</entry>
<entry>
<key id="88" type="java.lang.String">Event:RunSameDayProcessing</key>
<value id="89" type="java.lang.String">true</value>
</entry>
<entry>
<key id="90" type="java.lang.String">Event:Threads In Parallel</key>
<value id="91" type="java.lang.String">5</value>
</entry>
<entry>
<key id="92" type="java.lang.String">Event:ThresholdValue</key>
<value id="93" type="java.lang.String">20</value>
</entry>
<entry>
<key id="94" type="java.lang.String">Event:ToleranceToDo</key>
<value id="95" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="96" type="java.lang.String">Event:WriteValidStatusRecords</key>
<value id="97" type="java.lang.String">true</value>
</entry>
<entry>
<key id="98" type="java.lang.String">Event:pDoElecktronFlag</key>
<value id="99" type="java.lang.String">false</value>
</entry>
<entry>
<key id="100" type="java.lang.String">Event:pIssueGroupName</key>
<value id="101" type="java.lang.String">LN_IR_1640</value>
</entry>
<entry>
<key id="102" type="java.lang.String">Event:pPublishFlag</key>
<value id="103" type="java.lang.String">true</value>
</entry>
<entry>
<key id="104" type="java.lang.String">Event:pSnapName</key>
<value id="105" type="java.lang.String">LN</value>
</entry>
<entry>
<key id="106" type="java.lang.String">EventName</key>
<value id="107" type="java.lang.String">evt_CBA_4Eye_Consolidated</value>
</entry>
</jobDataMap>
<jobGroup id="108">Events</jobGroup>
<jobName id="109">CBA_Collection</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="110">LN_IR_1640</name>
<nextFireTime id="111">2018-05-14T01:39:55.000+1000</nextFireTime>
<previousFireTime id="112">2018-04-27T01:39:55.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="113">2018-05-13T20:40:46.000+1000</startTime>
<timeZone id="114">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="NY_FX_1500" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">55 59 04 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:BBDownloadDirectory</key>
<value id="5" type="java.lang.String">/</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:BBResponseFileName</key>
<value id="7" type="java.lang.String">NY_FX_BBG_1500.out.gz</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Bulk Size</key>
<value id="9" type="java.lang.String">100</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:Calculate MID price Options</key>
<value id="11" type="java.lang.String">CalcMIDIfMissing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:Calendar</key>
<value id="13" type="java.lang.String">PRPTUAL</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:CleanValidationInstructionCache</key>
<value id="15" type="java.lang.String">true</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:Consider Calendar Results</key>
<value id="17" type="java.lang.String">false</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:Consider Negative Prices</key>
<value id="19" type="java.lang.String">false</value>
</entry>
<entry>
<key id="20" type="java.lang.String">Event:CreateGPRCOnHoliday</key>
<value id="21" type="java.lang.String">false</value>
</entry>
<entry>
<key id="22" type="java.lang.String">Event:CreatePriceStatusForGoldenPrice</key>
<value id="23" type="java.lang.String">true</value>
</entry>
<entry>
<key id="24" type="java.lang.String">Event:Derive Golden Price</key>
<value id="25" type="java.lang.String">false</value>
</entry>
<entry>
<key id="26" type="java.lang.String">Event:DiagnosticMode</key>
<value id="27" type="java.lang.String">false</value>
</entry>
<entry>
<key id="28" type="java.lang.String">Event:Do Price Derivation First</key>
<value id="29" type="java.lang.String">false</value>
</entry>
<entry>
<key id="30" type="java.lang.String">Event:Donot Consider Issue Maturity</key>
<value id="31" type="java.lang.String">false</value>
</entry>
<entry>
<key id="32" type="java.lang.String">Event:Downstream System Identifier</key>
<value id="33" type="java.lang.String">Default</value>
</entry>
<entry>
<key id="34" type="java.lang.String">Event:Extra Configuration Information</key>
<value id="35" type="java.lang.String">Price Validation Consolidated</value>
</entry>
<entry>
<key id="36" type="java.lang.String">Event:FXRT Look Back Period</key>
<value id="37" type="java.lang.String">5</value>
</entry>
<entry>
<key id="38" type="java.lang.String">Event:GoldenToleranceToDo</key>
<value id="39" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="40" type="java.lang.String">Event:Ignore Issue MAT_EXP_TMS</key>
<value id="41" type="java.lang.String">false</value>
</entry>
<entry>
<key id="42" type="java.lang.String">Event:IgnorePriceValidityForComparison</key>
<value id="43" type="java.lang.String">true</value>
</entry>
<entry>
<key id="44" type="java.lang.String">Event:IsExternalLibrary</key>
<value id="45" type="java.lang.String">false</value>
</entry>
<entry>
<key id="46" type="java.lang.String">Event:IsWaterfallModel</key>
<value id="47" type="java.lang.String">false</value>
</entry>
<entry>
<key id="48" type="java.lang.String">Event:LoadFromLocalBB</key>
<value id="49" type="java.lang.String">false</value>
</entry>
<entry>
<key id="50" type="java.lang.String">Event:LoadFromLocalElektron</key>
<value id="51" type="java.lang.String">false</value>
</entry>
<entry>
<key id="52" type="java.lang.String">Event:LoadFromLocalRT</key>
<value id="53" type="java.lang.String">false</value>
</entry>
<entry>
<key id="54" type="java.lang.String">Event:MessageTypeBB</key>
<value id="55" type="java.lang.String">CBA_Bloomberg_Currency</value>
</entry>
<entry>
<key id="56" type="java.lang.String">Event:Observation Period</key>
<value id="57" type="java.lang.String">1</value>
</entry>
<entry>
<key id="58" type="java.lang.String">Event:Overwrite Suspect Status</key>
<value id="59" type="java.lang.String">false</value>
</entry>
<entry>
<key id="60" type="java.lang.String">Event:PRVI Hierarchy Enable Switch</key>
<value id="61" type="java.lang.String">false</value>
</entry>
<entry>
<key id="62" type="java.lang.String">Event:Price Day Frequency</key>
<value id="63" type="java.lang.String">daily</value>
</entry>
<entry>
<key id="64" type="java.lang.String">Event:PricePointEventDefinitionId</key>
<value id="65" type="java.lang.String">SNAP====NY</value>
</entry>
<entry>
<key id="66" type="java.lang.String">Event:Prior GPRC Observation Count</key>
<value id="67" type="java.lang.String">3</value>
</entry>
<entry>
<key id="68" type="java.lang.String">Event:Processing Date Deriving Factor</key>
<value id="69" type="java.lang.String">-1</value>
</entry>
<entry>
<key id="70" type="java.lang.String">Event:Processing Mode</key>
<value id="71" type="java.lang.String">DoGoldenPriceCheckLast</value>
</entry>
<entry>
<key id="72" type="java.lang.String">Event:Qualifying type for Golden Price Check</key>
<value id="73" type="java.lang.String">VALIDANDUNVERIFED</value>
</entry>
<entry>
<key id="74" type="java.lang.String">Event:RTDirectory</key>
<value id="75" type="java.lang.String">/reports</value>
</entry>
<entry>
<key id="76" type="java.lang.String">Event:RTFilePattern</key>
<value id="77" type="java.lang.String">NY_FX_RT_DSS_1500_INTRDAY*.csv.gz</value>
</entry>
<entry>
<key id="78" type="java.lang.String">Event:ReProcessProcessedFiles</key>
<value id="79" type="java.lang.String">false</value>
</entry>
<entry>
<key id="80" type="java.lang.String">Event:ReUse Job Id</key>
<value id="81" type="java.lang.String">false</value>
</entry>
<entry>
<key id="82" type="java.lang.String">Event:RelType OneToMany</key>
<value id="83" type="java.lang.String">ONETOMNY</value>
</entry>
<entry>
<key id="84" type="java.lang.String">Event:RelType Sequence</key>
<value id="85" type="java.lang.String">SEQUENCE</value>
</entry>
<entry>
<key id="86" type="java.lang.String">Event:ReutersFileSystem</key>
<value id="87" type="java.lang.String">SFTP</value>
</entry>
<entry>
<key id="88" type="java.lang.String">Event:Run Rescrub</key>
<value id="89" type="java.lang.String">false</value>
</entry>
<entry>
<key id="90" type="java.lang.String">Event:RunSameDayProcessing</key>
<value id="91" type="java.lang.String">true</value>
</entry>
<entry>
<key id="92" type="java.lang.String">Event:Threads In Parallel</key>
<value id="93" type="java.lang.String">5</value>
</entry>
<entry>
<key id="94" type="java.lang.String">Event:ThresholdValue</key>
<value id="95" type="java.lang.String">20</value>
</entry>
<entry>
<key id="96" type="java.lang.String">Event:ToleranceToDo</key>
<value id="97" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="98" type="java.lang.String">Event:WriteValidStatusRecords</key>
<value id="99" type="java.lang.String">true</value>
</entry>
<entry>
<key id="100" type="java.lang.String">Event:pDoElecktronFlag</key>
<value id="101" type="java.lang.String">true</value>
</entry>
<entry>
<key id="102" type="java.lang.String">Event:pIssueGroupName</key>
<value id="103" type="java.lang.String">NY_FX_1500</value>
</entry>
<entry>
<key id="104" type="java.lang.String">Event:pPublishFlag</key>
<value id="105" type="java.lang.String">true</value>
</entry>
<entry>
<key id="106" type="java.lang.String">Event:pSnapName</key>
<value id="107" type="java.lang.String">NY</value>
</entry>
<entry>
<key id="108" type="java.lang.String">EventName</key>
<value id="109" type="java.lang.String">evt_CBA_4Eye_Consolidated</value>
</entry>
</jobDataMap>
<jobGroup id="110">Events</jobGroup>
<jobName id="111">CBA_Collection</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="112">NY_FX_1500</name>
<nextFireTime id="113">2018-05-14T04:59:55.000+1000</nextFireTime>
<previousFireTime id="114">2018-04-27T04:59:55.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="115">2018-05-13T20:41:03.000+1000</startTime>
<timeZone id="116">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="NY_IR_1500" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">50 59 04 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:BBDownloadDirectory</key>
<value id="5" type="java.lang.String">/</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:BBResponseFileName</key>
<value id="7" type="java.lang.String">NY_IR_BBG_1500.out.gz</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Bulk Size</key>
<value id="9" type="java.lang.String">100</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:Calculate MID price Options</key>
<value id="11" type="java.lang.String">CalcMIDIfMissing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:Calendar</key>
<value id="13" type="java.lang.String">PRPTUAL</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:CleanValidationInstructionCache</key>
<value id="15" type="java.lang.String">true</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:Consider Calendar Results</key>
<value id="17" type="java.lang.String">false</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:Consider Negative Prices</key>
<value id="19" type="java.lang.String">false</value>
</entry>
<entry>
<key id="20" type="java.lang.String">Event:CreateGPRCOnHoliday</key>
<value id="21" type="java.lang.String">false</value>
</entry>
<entry>
<key id="22" type="java.lang.String">Event:CreatePriceStatusForGoldenPrice</key>
<value id="23" type="java.lang.String">true</value>
</entry>
<entry>
<key id="24" type="java.lang.String">Event:Derive Golden Price</key>
<value id="25" type="java.lang.String">false</value>
</entry>
<entry>
<key id="26" type="java.lang.String">Event:DiagnosticMode</key>
<value id="27" type="java.lang.String">false</value>
</entry>
<entry>
<key id="28" type="java.lang.String">Event:Do Price Derivation First</key>
<value id="29" type="java.lang.String">false</value>
</entry>
<entry>
<key id="30" type="java.lang.String">Event:Donot Consider Issue Maturity</key>
<value id="31" type="java.lang.String">false</value>
</entry>
<entry>
<key id="32" type="java.lang.String">Event:Downstream System Identifier</key>
<value id="33" type="java.lang.String">Default</value>
</entry>
<entry>
<key id="34" type="java.lang.String">Event:Extra Configuration Information</key>
<value id="35" type="java.lang.String">Price Validation Consolidated</value>
</entry>
<entry>
<key id="36" type="java.lang.String">Event:FXRT Look Back Period</key>
<value id="37" type="java.lang.String">5</value>
</entry>
<entry>
<key id="38" type="java.lang.String">Event:GoldenToleranceToDo</key>
<value id="39" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="40" type="java.lang.String">Event:Ignore Issue MAT_EXP_TMS</key>
<value id="41" type="java.lang.String">false</value>
</entry>
<entry>
<key id="42" type="java.lang.String">Event:IgnorePriceValidityForComparison</key>
<value id="43" type="java.lang.String">true</value>
</entry>
<entry>
<key id="44" type="java.lang.String">Event:IsExternalLibrary</key>
<value id="45" type="java.lang.String">false</value>
</entry>
<entry>
<key id="46" type="java.lang.String">Event:IsWaterfallModel</key>
<value id="47" type="java.lang.String">false</value>
</entry>
<entry>
<key id="48" type="java.lang.String">Event:LoadFromLocalBB</key>
<value id="49" type="java.lang.String">false</value>
</entry>
<entry>
<key id="50" type="java.lang.String">Event:LoadFromLocalElektron</key>
<value id="51" type="java.lang.String">false</value>
</entry>
<entry>
<key id="52" type="java.lang.String">Event:LoadFromLocalRT</key>
<value id="53" type="java.lang.String">false</value>
</entry>
<entry>
<key id="54" type="java.lang.String">Event:MessageTypeBB</key>
<value id="55" type="java.lang.String">CBA_Bloomberg_Currency</value>
</entry>
<entry>
<key id="56" type="java.lang.String">Event:Observation Period</key>
<value id="57" type="java.lang.String">1</value>
</entry>
<entry>
<key id="58" type="java.lang.String">Event:Overwrite Suspect Status</key>
<value id="59" type="java.lang.String">false</value>
</entry>
<entry>
<key id="60" type="java.lang.String">Event:PRVI Hierarchy Enable Switch</key>
<value id="61" type="java.lang.String">false</value>
</entry>
<entry>
<key id="62" type="java.lang.String">Event:Price Day Frequency</key>
<value id="63" type="java.lang.String">daily</value>
</entry>
<entry>
<key id="64" type="java.lang.String">Event:PricePointEventDefinitionId</key>
<value id="65" type="java.lang.String">SNAP====NY</value>
</entry>
<entry>
<key id="66" type="java.lang.String">Event:Prior GPRC Observation Count</key>
<value id="67" type="java.lang.String">3</value>
</entry>
<entry>
<key id="68" type="java.lang.String">Event:Processing Date Deriving Factor</key>
<value id="69" type="java.lang.String">-1</value>
</entry>
<entry>
<key id="70" type="java.lang.String">Event:Processing Mode</key>
<value id="71" type="java.lang.String">DoGoldenPriceCheckLast</value>
</entry>
<entry>
<key id="72" type="java.lang.String">Event:Qualifying type for Golden Price Check</key>
<value id="73" type="java.lang.String">VALIDANDUNVERIFED</value>
</entry>
<entry>
<key id="74" type="java.lang.String">Event:RTDirectory</key>
<value id="75" type="java.lang.String">/reports</value>
</entry>
<entry>
<key id="76" type="java.lang.String">Event:RTFilePattern</key>
<value id="77" type="java.lang.String">NY_IR_RT_DSS_1500_INTRDAY*.csv.gz</value>
</entry>
<entry>
<key id="78" type="java.lang.String">Event:ReProcessProcessedFiles</key>
<value id="79" type="java.lang.String">false</value>
</entry>
<entry>
<key id="80" type="java.lang.String">Event:ReUse Job Id</key>
<value id="81" type="java.lang.String">false</value>
</entry>
<entry>
<key id="82" type="java.lang.String">Event:RelType OneToMany</key>
<value id="83" type="java.lang.String">ONETOMNY</value>
</entry>
<entry>
<key id="84" type="java.lang.String">Event:RelType Sequence</key>
<value id="85" type="java.lang.String">SEQUENCE</value>
</entry>
<entry>
<key id="86" type="java.lang.String">Event:ReutersFileSystem</key>
<value id="87" type="java.lang.String">SFTP</value>
</entry>
<entry>
<key id="88" type="java.lang.String">Event:Run Rescrub</key>
<value id="89" type="java.lang.String">false</value>
</entry>
<entry>
<key id="90" type="java.lang.String">Event:RunSameDayProcessing</key>
<value id="91" type="java.lang.String">true</value>
</entry>
<entry>
<key id="92" type="java.lang.String">Event:Threads In Parallel</key>
<value id="93" type="java.lang.String">5</value>
</entry>
<entry>
<key id="94" type="java.lang.String">Event:ThresholdValue</key>
<value id="95" type="java.lang.String">20</value>
</entry>
<entry>
<key id="96" type="java.lang.String">Event:ToleranceToDo</key>
<value id="97" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="98" type="java.lang.String">Event:WriteValidStatusRecords</key>
<value id="99" type="java.lang.String">true</value>
</entry>
<entry>
<key id="100" type="java.lang.String">Event:pDoElecktronFlag</key>
<value id="101" type="java.lang.String">true</value>
</entry>
<entry>
<key id="102" type="java.lang.String">Event:pIssueGroupName</key>
<value id="103" type="java.lang.String">NY_IR_1500</value>
</entry>
<entry>
<key id="104" type="java.lang.String">Event:pPublishFlag</key>
<value id="105" type="java.lang.String">true</value>
</entry>
<entry>
<key id="106" type="java.lang.String">Event:pSnapName</key>
<value id="107" type="java.lang.String">NY</value>
</entry>
<entry>
<key id="108" type="java.lang.String">EventName</key>
<value id="109" type="java.lang.String">evt_CBA_4Eye_Consolidated</value>
</entry>
</jobDataMap>
<jobGroup id="110">Events</jobGroup>
<jobName id="111">CBA_Collection</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="112">NY_IR_1500</name>
<nextFireTime id="113">2018-05-14T04:59:50.000+1000</nextFireTime>
<previousFireTime id="114">2018-04-27T04:59:50.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="115">2018-05-13T20:41:16.000+1000</startTime>
<timeZone id="116">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="NY_IR_1700" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">55 59 06 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:BBDownloadDirectory</key>
<value id="5" type="java.lang.String">/</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:BBResponseFileName</key>
<value id="7" type="java.lang.String">NY_IR_BBG_1700.out.gz</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Bulk Size</key>
<value id="9" type="java.lang.String">100</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:Calculate MID price Options</key>
<value id="11" type="java.lang.String">CalcMIDIfMissing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:Calendar</key>
<value id="13" type="java.lang.String">PRPTUAL</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:CleanValidationInstructionCache</key>
<value id="15" type="java.lang.String">true</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:Consider Calendar Results</key>
<value id="17" type="java.lang.String">false</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:Consider Negative Prices</key>
<value id="19" type="java.lang.String">false</value>
</entry>
<entry>
<key id="20" type="java.lang.String">Event:CreateGPRCOnHoliday</key>
<value id="21" type="java.lang.String">false</value>
</entry>
<entry>
<key id="22" type="java.lang.String">Event:CreatePriceStatusForGoldenPrice</key>
<value id="23" type="java.lang.String">true</value>
</entry>
<entry>
<key id="24" type="java.lang.String">Event:Derive Golden Price</key>
<value id="25" type="java.lang.String">false</value>
</entry>
<entry>
<key id="26" type="java.lang.String">Event:DiagnosticMode</key>
<value id="27" type="java.lang.String">false</value>
</entry>
<entry>
<key id="28" type="java.lang.String">Event:Do Price Derivation First</key>
<value id="29" type="java.lang.String">false</value>
</entry>
<entry>
<key id="30" type="java.lang.String">Event:Donot Consider Issue Maturity</key>
<value id="31" type="java.lang.String">false</value>
</entry>
<entry>
<key id="32" type="java.lang.String">Event:Downstream System Identifier</key>
<value id="33" type="java.lang.String">Default</value>
</entry>
<entry>
<key id="34" type="java.lang.String">Event:Extra Configuration Information</key>
<value id="35" type="java.lang.String">Price Validation Consolidated</value>
</entry>
<entry>
<key id="36" type="java.lang.String">Event:FXRT Look Back Period</key>
<value id="37" type="java.lang.String">5</value>
</entry>
<entry>
<key id="38" type="java.lang.String">Event:GoldenToleranceToDo</key>
<value id="39" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="40" type="java.lang.String">Event:Ignore Issue MAT_EXP_TMS</key>
<value id="41" type="java.lang.String">false</value>
</entry>
<entry>
<key id="42" type="java.lang.String">Event:IgnorePriceValidityForComparison</key>
<value id="43" type="java.lang.String">true</value>
</entry>
<entry>
<key id="44" type="java.lang.String">Event:IsExternalLibrary</key>
<value id="45" type="java.lang.String">false</value>
</entry>
<entry>
<key id="46" type="java.lang.String">Event:IsWaterfallModel</key>
<value id="47" type="java.lang.String">false</value>
</entry>
<entry>
<key id="48" type="java.lang.String">Event:LoadFromLocalBB</key>
<value id="49" type="java.lang.String">false</value>
</entry>
<entry>
<key id="50" type="java.lang.String">Event:LoadFromLocalElektron</key>
<value id="51" type="java.lang.String">false</value>
</entry>
<entry>
<key id="52" type="java.lang.String">Event:LoadFromLocalRT</key>
<value id="53" type="java.lang.String">false</value>
</entry>
<entry>
<key id="54" type="java.lang.String">Event:MessageTypeBB</key>
<value id="55" type="java.lang.String">CBA_Bloomberg_Currency</value>
</entry>
<entry>
<key id="56" type="java.lang.String">Event:Observation Period</key>
<value id="57" type="java.lang.String">1</value>
</entry>
<entry>
<key id="58" type="java.lang.String">Event:Overwrite Suspect Status</key>
<value id="59" type="java.lang.String">false</value>
</entry>
<entry>
<key id="60" type="java.lang.String">Event:PRVI Hierarchy Enable Switch</key>
<value id="61" type="java.lang.String">false</value>
</entry>
<entry>
<key id="62" type="java.lang.String">Event:Price Day Frequency</key>
<value id="63" type="java.lang.String">daily</value>
</entry>
<entry>
<key id="64" type="java.lang.String">Event:PricePointEventDefinitionId</key>
<value id="65" type="java.lang.String">SNAP====NY</value>
</entry>
<entry>
<key id="66" type="java.lang.String">Event:Prior GPRC Observation Count</key>
<value id="67" type="java.lang.String">3</value>
</entry>
<entry>
<key id="68" type="java.lang.String">Event:Processing Date Deriving Factor</key>
<value id="69" type="java.lang.String">-1</value>
</entry>
<entry>
<key id="70" type="java.lang.String">Event:Processing Mode</key>
<value id="71" type="java.lang.String">DoGoldenPriceCheckLast</value>
</entry>
<entry>
<key id="72" type="java.lang.String">Event:Qualifying type for Golden Price Check</key>
<value id="73" type="java.lang.String">VALIDANDUNVERIFED</value>
</entry>
<entry>
<key id="74" type="java.lang.String">Event:RTDirectory</key>
<value id="75" type="java.lang.String">/reports</value>
</entry>
<entry>
<key id="76" type="java.lang.String">Event:ReProcessProcessedFiles</key>
<value id="77" type="java.lang.String">false</value>
</entry>
<entry>
<key id="78" type="java.lang.String">Event:ReUse Job Id</key>
<value id="79" type="java.lang.String">false</value>
</entry>
<entry>
<key id="80" type="java.lang.String">Event:RelType OneToMany</key>
<value id="81" type="java.lang.String">ONETOMNY</value>
</entry>
<entry>
<key id="82" type="java.lang.String">Event:RelType Sequence</key>
<value id="83" type="java.lang.String">SEQUENCE</value>
</entry>
<entry>
<key id="84" type="java.lang.String">Event:ReutersFileSystem</key>
<value id="85" type="java.lang.String">SFTP</value>
</entry>
<entry>
<key id="86" type="java.lang.String">Event:Run Rescrub</key>
<value id="87" type="java.lang.String">false</value>
</entry>
<entry>
<key id="88" type="java.lang.String">Event:RunSameDayProcessing</key>
<value id="89" type="java.lang.String">true</value>
</entry>
<entry>
<key id="90" type="java.lang.String">Event:Threads In Parallel</key>
<value id="91" type="java.lang.String">5</value>
</entry>
<entry>
<key id="92" type="java.lang.String">Event:ThresholdValue</key>
<value id="93" type="java.lang.String">20</value>
</entry>
<entry>
<key id="94" type="java.lang.String">Event:ToleranceToDo</key>
<value id="95" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="96" type="java.lang.String">Event:WriteValidStatusRecords</key>
<value id="97" type="java.lang.String">true</value>
</entry>
<entry>
<key id="98" type="java.lang.String">Event:pDoElecktronFlag</key>
<value id="99" type="java.lang.String">true</value>
</entry>
<entry>
<key id="100" type="java.lang.String">Event:pIssueGroupName</key>
<value id="101" type="java.lang.String">NY_IR_1700</value>
</entry>
<entry>
<key id="102" type="java.lang.String">Event:pPublishFlag</key>
<value id="103" type="java.lang.String">true</value>
</entry>
<entry>
<key id="104" type="java.lang.String">Event:pSnapName</key>
<value id="105" type="java.lang.String">NY</value>
</entry>
<entry>
<key id="106" type="java.lang.String">EventName</key>
<value id="107" type="java.lang.String">evt_CBA_4Eye_Consolidated</value>
</entry>
</jobDataMap>
<jobGroup id="108">Events</jobGroup>
<jobName id="109">CBA_Collection</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="110">NY_IR_1700</name>
<nextFireTime id="111">2018-05-14T06:59:55.000+1000</nextFireTime>
<previousFireTime id="112">2018-04-27T06:59:55.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="113">2018-05-13T20:41:33.000+1000</startTime>
<timeZone id="114">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="NY_IR_1730" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">55 29 07 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:BBDownloadDirectory</key>
<value id="5" type="java.lang.String">/</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:BBResponseFileName</key>
<value id="7" type="java.lang.String">NY_IR_BBG_1730.out.gz</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Bulk Size</key>
<value id="9" type="java.lang.String">100</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:Calculate MID price Options</key>
<value id="11" type="java.lang.String">CalcMIDIfMissing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:Calendar</key>
<value id="13" type="java.lang.String">PRPTUAL</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:CleanValidationInstructionCache</key>
<value id="15" type="java.lang.String">true</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:Consider Calendar Results</key>
<value id="17" type="java.lang.String">false</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:Consider Negative Prices</key>
<value id="19" type="java.lang.String">false</value>
</entry>
<entry>
<key id="20" type="java.lang.String">Event:CreateGPRCOnHoliday</key>
<value id="21" type="java.lang.String">false</value>
</entry>
<entry>
<key id="22" type="java.lang.String">Event:CreatePriceStatusForGoldenPrice</key>
<value id="23" type="java.lang.String">true</value>
</entry>
<entry>
<key id="24" type="java.lang.String">Event:Derive Golden Price</key>
<value id="25" type="java.lang.String">false</value>
</entry>
<entry>
<key id="26" type="java.lang.String">Event:DiagnosticMode</key>
<value id="27" type="java.lang.String">false</value>
</entry>
<entry>
<key id="28" type="java.lang.String">Event:Do Price Derivation First</key>
<value id="29" type="java.lang.String">false</value>
</entry>
<entry>
<key id="30" type="java.lang.String">Event:Donot Consider Issue Maturity</key>
<value id="31" type="java.lang.String">false</value>
</entry>
<entry>
<key id="32" type="java.lang.String">Event:Downstream System Identifier</key>
<value id="33" type="java.lang.String">Default</value>
</entry>
<entry>
<key id="34" type="java.lang.String">Event:Extra Configuration Information</key>
<value id="35" type="java.lang.String">Price Validation Consolidated</value>
</entry>
<entry>
<key id="36" type="java.lang.String">Event:FXRT Look Back Period</key>
<value id="37" type="java.lang.String">5</value>
</entry>
<entry>
<key id="38" type="java.lang.String">Event:GoldenToleranceToDo</key>
<value id="39" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="40" type="java.lang.String">Event:Ignore Issue MAT_EXP_TMS</key>
<value id="41" type="java.lang.String">false</value>
</entry>
<entry>
<key id="42" type="java.lang.String">Event:IgnorePriceValidityForComparison</key>
<value id="43" type="java.lang.String">true</value>
</entry>
<entry>
<key id="44" type="java.lang.String">Event:IsExternalLibrary</key>
<value id="45" type="java.lang.String">false</value>
</entry>
<entry>
<key id="46" type="java.lang.String">Event:IsWaterfallModel</key>
<value id="47" type="java.lang.String">false</value>
</entry>
<entry>
<key id="48" type="java.lang.String">Event:LoadFromLocalBB</key>
<value id="49" type="java.lang.String">false</value>
</entry>
<entry>
<key id="50" type="java.lang.String">Event:LoadFromLocalElektron</key>
<value id="51" type="java.lang.String">false</value>
</entry>
<entry>
<key id="52" type="java.lang.String">Event:LoadFromLocalRT</key>
<value id="53" type="java.lang.String">false</value>
</entry>
<entry>
<key id="54" type="java.lang.String">Event:MessageTypeBB</key>
<value id="55" type="java.lang.String">CBA_Bloomberg_Currency</value>
</entry>
<entry>
<key id="56" type="java.lang.String">Event:Observation Period</key>
<value id="57" type="java.lang.String">1</value>
</entry>
<entry>
<key id="58" type="java.lang.String">Event:Overwrite Suspect Status</key>
<value id="59" type="java.lang.String">false</value>
</entry>
<entry>
<key id="60" type="java.lang.String">Event:PRVI Hierarchy Enable Switch</key>
<value id="61" type="java.lang.String">false</value>
</entry>
<entry>
<key id="62" type="java.lang.String">Event:Price Day Frequency</key>
<value id="63" type="java.lang.String">daily</value>
</entry>
<entry>
<key id="64" type="java.lang.String">Event:PricePointEventDefinitionId</key>
<value id="65" type="java.lang.String">SNAP====NY</value>
</entry>
<entry>
<key id="66" type="java.lang.String">Event:Prior GPRC Observation Count</key>
<value id="67" type="java.lang.String">3</value>
</entry>
<entry>
<key id="68" type="java.lang.String">Event:Processing Date Deriving Factor</key>
<value id="69" type="java.lang.String">-1</value>
</entry>
<entry>
<key id="70" type="java.lang.String">Event:Processing Mode</key>
<value id="71" type="java.lang.String">DoGoldenPriceCheckLast</value>
</entry>
<entry>
<key id="72" type="java.lang.String">Event:Qualifying type for Golden Price Check</key>
<value id="73" type="java.lang.String">VALIDANDUNVERIFED</value>
</entry>
<entry>
<key id="74" type="java.lang.String">Event:RTDirectory</key>
<value id="75" type="java.lang.String">/reports</value>
</entry>
<entry>
<key id="76" type="java.lang.String">Event:RTFilePattern</key>
<value id="77" type="java.lang.String">NY_IR_RT_DSS_1730_INTRDAY*.csv.gz</value>
</entry>
<entry>
<key id="78" type="java.lang.String">Event:ReProcessProcessedFiles</key>
<value id="79" type="java.lang.String">false</value>
</entry>
<entry>
<key id="80" type="java.lang.String">Event:ReUse Job Id</key>
<value id="81" type="java.lang.String">false</value>
</entry>
<entry>
<key id="82" type="java.lang.String">Event:RelType OneToMany</key>
<value id="83" type="java.lang.String">ONETOMNY</value>
</entry>
<entry>
<key id="84" type="java.lang.String">Event:RelType Sequence</key>
<value id="85" type="java.lang.String">SEQUENCE</value>
</entry>
<entry>
<key id="86" type="java.lang.String">Event:ReutersFileSystem</key>
<value id="87" type="java.lang.String">SFTP</value>
</entry>
<entry>
<key id="88" type="java.lang.String">Event:Run Rescrub</key>
<value id="89" type="java.lang.String">false</value>
</entry>
<entry>
<key id="90" type="java.lang.String">Event:RunSameDayProcessing</key>
<value id="91" type="java.lang.String">true</value>
</entry>
<entry>
<key id="92" type="java.lang.String">Event:Threads In Parallel</key>
<value id="93" type="java.lang.String">5</value>
</entry>
<entry>
<key id="94" type="java.lang.String">Event:ThresholdValue</key>
<value id="95" type="java.lang.String">20</value>
</entry>
<entry>
<key id="96" type="java.lang.String">Event:ToleranceToDo</key>
<value id="97" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="98" type="java.lang.String">Event:WriteValidStatusRecords</key>
<value id="99" type="java.lang.String">true</value>
</entry>
<entry>
<key id="100" type="java.lang.String">Event:pDoElecktronFlag</key>
<value id="101" type="java.lang.String">true</value>
</entry>
<entry>
<key id="102" type="java.lang.String">Event:pIssueGroupName</key>
<value id="103" type="java.lang.String">NY_IR_1730</value>
</entry>
<entry>
<key id="104" type="java.lang.String">Event:pPublishFlag</key>
<value id="105" type="java.lang.String">true</value>
</entry>
<entry>
<key id="106" type="java.lang.String">Event:pSnapName</key>
<value id="107" type="java.lang.String">NY</value>
</entry>
<entry>
<key id="108" type="java.lang.String">EventName</key>
<value id="109" type="java.lang.String">evt_CBA_4Eye_Consolidated</value>
</entry>
</jobDataMap>
<jobGroup id="110">Events</jobGroup>
<jobName id="111">CBA_Collection</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="112">NY_IR_1730</name>
<nextFireTime id="113">2018-05-14T07:29:55.000+1000</nextFireTime>
<previousFireTime id="114">2018-04-27T07:29:55.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="115">2018-05-13T20:42:06.000+1000</startTime>
<timeZone id="116">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_FX_1100" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">59 59 10 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:BBDownloadDirectory</key>
<value id="5" type="java.lang.String">/</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:BBResponseFileName</key>
<value id="7" type="java.lang.String">SYD_FX_BBG_1100.out.gz</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Bulk Size</key>
<value id="9" type="java.lang.String">100</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:Calculate MID price Options</key>
<value id="11" type="java.lang.String">CalcMIDIfMissing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:Calendar</key>
<value id="13" type="java.lang.String">PRPTUAL</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:CleanValidationInstructionCache</key>
<value id="15" type="java.lang.String">true</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:Consider Calendar Results</key>
<value id="17" type="java.lang.String">true</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:Consider Negative Prices</key>
<value id="19" type="java.lang.String">false</value>
</entry>
<entry>
<key id="20" type="java.lang.String">Event:CreateGPRCOnHoliday</key>
<value id="21" type="java.lang.String">false</value>
</entry>
<entry>
<key id="22" type="java.lang.String">Event:CreatePriceStatusForGoldenPrice</key>
<value id="23" type="java.lang.String">true</value>
</entry>
<entry>
<key id="24" type="java.lang.String">Event:Derive Golden Price</key>
<value id="25" type="java.lang.String">false</value>
</entry>
<entry>
<key id="26" type="java.lang.String">Event:DiagnosticMode</key>
<value id="27" type="java.lang.String">false</value>
</entry>
<entry>
<key id="28" type="java.lang.String">Event:Do Price Derivation First</key>
<value id="29" type="java.lang.String">false</value>
</entry>
<entry>
<key id="30" type="java.lang.String">Event:Donot Consider Issue Maturity</key>
<value id="31" type="java.lang.String">false</value>
</entry>
<entry>
<key id="32" type="java.lang.String">Event:Downstream System Identifier</key>
<value id="33" type="java.lang.String">Default</value>
</entry>
<entry>
<key id="34" type="java.lang.String">Event:Extra Configuration Information</key>
<value id="35" type="java.lang.String">Price Validation Consolidated</value>
</entry>
<entry>
<key id="36" type="java.lang.String">Event:FXRT Look Back Period</key>
<value id="37" type="java.lang.String">5</value>
</entry>
<entry>
<key id="38" type="java.lang.String">Event:GoldenToleranceToDo</key>
<value id="39" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="40" type="java.lang.String">Event:Ignore Issue MAT_EXP_TMS</key>
<value id="41" type="java.lang.String">false</value>
</entry>
<entry>
<key id="42" type="java.lang.String">Event:IgnorePriceValidityForComparison</key>
<value id="43" type="java.lang.String">true</value>
</entry>
<entry>
<key id="44" type="java.lang.String">Event:IsExternalLibrary</key>
<value id="45" type="java.lang.String">false</value>
</entry>
<entry>
<key id="46" type="java.lang.String">Event:IsWaterfallModel</key>
<value id="47" type="java.lang.String">false</value>
</entry>
<entry>
<key id="48" type="java.lang.String">Event:LoadFromLocalBB</key>
<value id="49" type="java.lang.String">false</value>
</entry>
<entry>
<key id="50" type="java.lang.String">Event:LoadFromLocalElektron</key>
<value id="51" type="java.lang.String">false</value>
</entry>
<entry>
<key id="52" type="java.lang.String">Event:LoadFromLocalRT</key>
<value id="53" type="java.lang.String">false</value>
</entry>
<entry>
<key id="54" type="java.lang.String">Event:MessageTypeBB</key>
<value id="55" type="java.lang.String">CBA_Bloomberg_Currency</value>
</entry>
<entry>
<key id="56" type="java.lang.String">Event:Observation Period</key>
<value id="57" type="java.lang.String">1</value>
</entry>
<entry>
<key id="58" type="java.lang.String">Event:Overwrite Suspect Status</key>
<value id="59" type="java.lang.String">false</value>
</entry>
<entry>
<key id="60" type="java.lang.String">Event:PRVI Hierarchy Enable Switch</key>
<value id="61" type="java.lang.String">false</value>
</entry>
<entry>
<key id="62" type="java.lang.String">Event:Price Day Frequency</key>
<value id="63" type="java.lang.String">daily</value>
</entry>
<entry>
<key id="64" type="java.lang.String">Event:PricePointEventDefinitionId</key>
<value id="65" type="java.lang.String">SNAP====SY</value>
</entry>
<entry>
<key id="66" type="java.lang.String">Event:Prior GPRC Observation Count</key>
<value id="67" type="java.lang.String">3</value>
</entry>
<entry>
<key id="68" type="java.lang.String">Event:Processing Date Deriving Factor</key>
<value id="69" type="java.lang.String">0</value>
</entry>
<entry>
<key id="70" type="java.lang.String">Event:Processing Mode</key>
<value id="71" type="java.lang.String">DoGoldenPriceCheckLast</value>
</entry>
<entry>
<key id="72" type="java.lang.String">Event:Qualifying type for Golden Price Check</key>
<value id="73" type="java.lang.String">VALIDANDUNVERIFED</value>
</entry>
<entry>
<key id="74" type="java.lang.String">Event:RTDirectory</key>
<value id="75" type="java.lang.String">/reports</value>
</entry>
<entry>
<key id="76" type="java.lang.String">Event:ReProcessProcessedFiles</key>
<value id="77" type="java.lang.String">false</value>
</entry>
<entry>
<key id="78" type="java.lang.String">Event:ReUse Job Id</key>
<value id="79" type="java.lang.String">false</value>
</entry>
<entry>
<key id="80" type="java.lang.String">Event:RelType OneToMany</key>
<value id="81" type="java.lang.String">ONETOMNY</value>
</entry>
<entry>
<key id="82" type="java.lang.String">Event:RelType Sequence</key>
<value id="83" type="java.lang.String">SEQUENCE</value>
</entry>
<entry>
<key id="84" type="java.lang.String">Event:ReutersFileSystem</key>
<value id="85" type="java.lang.String">SFTP</value>
</entry>
<entry>
<key id="86" type="java.lang.String">Event:Run Rescrub</key>
<value id="87" type="java.lang.String">false</value>
</entry>
<entry>
<key id="88" type="java.lang.String">Event:RunSameDayProcessing</key>
<value id="89" type="java.lang.String">true</value>
</entry>
<entry>
<key id="90" type="java.lang.String">Event:Threads In Parallel</key>
<value id="91" type="java.lang.String">5</value>
</entry>
<entry>
<key id="92" type="java.lang.String">Event:ThresholdValue</key>
<value id="93" type="java.lang.String">20</value>
</entry>
<entry>
<key id="94" type="java.lang.String">Event:ToleranceToDo</key>
<value id="95" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="96" type="java.lang.String">Event:WriteValidStatusRecords</key>
<value id="97" type="java.lang.String">true</value>
</entry>
<entry>
<key id="98" type="java.lang.String">Event:pDoElecktronFlag</key>
<value id="99" type="java.lang.String">true</value>
</entry>
<entry>
<key id="100" type="java.lang.String">Event:pIssueGroupName</key>
<value id="101" type="java.lang.String">SYD_FX_1100</value>
</entry>
<entry>
<key id="102" type="java.lang.String">Event:pPublishFlag</key>
<value id="103" type="java.lang.String">true</value>
</entry>
<entry>
<key id="104" type="java.lang.String">Event:pSnapName</key>
<value id="105" type="java.lang.String">SY</value>
</entry>
<entry>
<key id="106" type="java.lang.String">EventName</key>
<value id="107" type="java.lang.String">evt_CBA_4Eye_Consolidated</value>
</entry>
</jobDataMap>
<jobGroup id="108">Events</jobGroup>
<jobName id="109">CBA_Collection</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="110">SYD_FX_1100</name>
<nextFireTime id="111">2018-05-14T10:59:59.000+1000</nextFireTime>
<previousFireTime id="112">2018-04-27T10:59:59.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="113">2018-05-13T20:42:26.000+1000</startTime>
<timeZone id="114">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_FX_1645" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">55 44 16 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:BBDownloadDirectory</key>
<value id="5" type="java.lang.String">/</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:BBResponseFileName</key>
<value id="7" type="java.lang.String">SYD_FX_BBG_1645.out.gz</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Bulk Size</key>
<value id="9" type="java.lang.String">100</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:Calculate MID price Options</key>
<value id="11" type="java.lang.String">CalcMIDIfMissing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:Calendar</key>
<value id="13" type="java.lang.String">PRPTUAL</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:CleanValidationInstructionCache</key>
<value id="15" type="java.lang.String">true</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:Consider Calendar Results</key>
<value id="17" type="java.lang.String">false</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:Consider Negative Prices</key>
<value id="19" type="java.lang.String">false</value>
</entry>
<entry>
<key id="20" type="java.lang.String">Event:CreateGPRCOnHoliday</key>
<value id="21" type="java.lang.String">false</value>
</entry>
<entry>
<key id="22" type="java.lang.String">Event:CreatePriceStatusForGoldenPrice</key>
<value id="23" type="java.lang.String">true</value>
</entry>
<entry>
<key id="24" type="java.lang.String">Event:Derive Golden Price</key>
<value id="25" type="java.lang.String">false</value>
</entry>
<entry>
<key id="26" type="java.lang.String">Event:DiagnosticMode</key>
<value id="27" type="java.lang.String">false</value>
</entry>
<entry>
<key id="28" type="java.lang.String">Event:Do Price Derivation First</key>
<value id="29" type="java.lang.String">false</value>
</entry>
<entry>
<key id="30" type="java.lang.String">Event:Donot Consider Issue Maturity</key>
<value id="31" type="java.lang.String">false</value>
</entry>
<entry>
<key id="32" type="java.lang.String">Event:Downstream System Identifier</key>
<value id="33" type="java.lang.String">Default</value>
</entry>
<entry>
<key id="34" type="java.lang.String">Event:Extra Configuration Information</key>
<value id="35" type="java.lang.String">Price Validation Consolidated</value>
</entry>
<entry>
<key id="36" type="java.lang.String">Event:FXRT Look Back Period</key>
<value id="37" type="java.lang.String">5</value>
</entry>
<entry>
<key id="38" type="java.lang.String">Event:GoldenToleranceToDo</key>
<value id="39" type="java.lang.String">STOLToDay</value>
</entry>
<entry>
<key id="40" type="java.lang.String">Event:Ignore Issue MAT_EXP_TMS</key>
<value id="41" type="java.lang.String">false</value>
</entry>
<entry>
<key id="42" type="java.lang.String">Event:IgnorePriceValidityForComparison</key>
<value id="43" type="java.lang.String">false</value>
</entry>
<entry>
<key id="44" type="java.lang.String">Event:IsExternalLibrary</key>
<value id="45" type="java.lang.String">false</value>
</entry>
<entry>
<key id="46" type="java.lang.String">Event:IsWaterfallModel</key>
<value id="47" type="java.lang.String">false</value>
</entry>
<entry>
<key id="48" type="java.lang.String">Event:LoadFromLocalBB</key>
<value id="49" type="java.lang.String">false</value>
</entry>
<entry>
<key id="50" type="java.lang.String">Event:LoadFromLocalElektron</key>
<value id="51" type="java.lang.String">false</value>
</entry>
<entry>
<key id="52" type="java.lang.String">Event:LoadFromLocalRT</key>
<value id="53" type="java.lang.String">false</value>
</entry>
<entry>
<key id="54" type="java.lang.String">Event:MessageTypeBB</key>
<value id="55" type="java.lang.String">CBA_Bloomberg_Currency</value>
</entry>
<entry>
<key id="56" type="java.lang.String">Event:Observation Period</key>
<value id="57" type="java.lang.String">1</value>
</entry>
<entry>
<key id="58" type="java.lang.String">Event:Overwrite Suspect Status</key>
<value id="59" type="java.lang.String">false</value>
</entry>
<entry>
<key id="60" type="java.lang.String">Event:PRVI Hierarchy Enable Switch</key>
<value id="61" type="java.lang.String">false</value>
</entry>
<entry>
<key id="62" type="java.lang.String">Event:Price Day Frequency</key>
<value id="63" type="java.lang.String">daily</value>
</entry>
<entry>
<key id="64" type="java.lang.String">Event:PricePointEventDefinitionId</key>
<value id="65" type="java.lang.String">SNAP====SY</value>
</entry>
<entry>
<key id="66" type="java.lang.String">Event:Prior GPRC Observation Count</key>
<value id="67" type="java.lang.String">3</value>
</entry>
<entry>
<key id="68" type="java.lang.String">Event:Processing Date Deriving Factor</key>
<value id="69" type="java.lang.String">0</value>
</entry>
<entry>
<key id="70" type="java.lang.String">Event:Processing Mode</key>
<value id="71" type="java.lang.String">DoGoldenPriceCheckLast</value>
</entry>
<entry>
<key id="72" type="java.lang.String">Event:Qualifying type for Golden Price Check</key>
<value id="73" type="java.lang.String">VALIDANDUNVERIFED</value>
</entry>
<entry>
<key id="74" type="java.lang.String">Event:RTDirectory</key>
<value id="75" type="java.lang.String">/reports</value>
</entry>
<entry>
<key id="76" type="java.lang.String">Event:RTFilePattern</key>
<value id="77" type="java.lang.String">SYD_FX_RT_DSS_1645_INTRDAY*.csv.gz</value>
</entry>
<entry>
<key id="78" type="java.lang.String">Event:ReProcessProcessedFiles</key>
<value id="79" type="java.lang.String">false</value>
</entry>
<entry>
<key id="80" type="java.lang.String">Event:ReUse Job Id</key>
<value id="81" type="java.lang.String">false</value>
</entry>
<entry>
<key id="82" type="java.lang.String">Event:RelType OneToMany</key>
<value id="83" type="java.lang.String">ONETOMNY</value>
</entry>
<entry>
<key id="84" type="java.lang.String">Event:RelType Sequence</key>
<value id="85" type="java.lang.String">SEQUENCE</value>
</entry>
<entry>
<key id="86" type="java.lang.String">Event:ReutersFileSystem</key>
<value id="87" type="java.lang.String">SFTP</value>
</entry>
<entry>
<key id="88" type="java.lang.String">Event:Run Rescrub</key>
<value id="89" type="java.lang.String">false</value>
</entry>
<entry>
<key id="90" type="java.lang.String">Event:RunSameDayProcessing</key>
<value id="91" type="java.lang.String">true</value>
</entry>
<entry>
<key id="92" type="java.lang.String">Event:Threads In Parallel</key>
<value id="93" type="java.lang.String">5</value>
</entry>
<entry>
<key id="94" type="java.lang.String">Event:ThresholdValue</key>
<value id="95" type="java.lang.String">20</value>
</entry>
<entry>
<key id="96" type="java.lang.String">Event:ToleranceToDo</key>
<value id="97" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="98" type="java.lang.String">Event:WriteValidStatusRecords</key>
<value id="99" type="java.lang.String">true</value>
</entry>
<entry>
<key id="100" type="java.lang.String">Event:pDoElecktronFlag</key>
<value id="101" type="java.lang.String">true</value>
</entry>
<entry>
<key id="102" type="java.lang.String">Event:pIssueGroupName</key>
<value id="103" type="java.lang.String">SYD_FX_1645</value>
</entry>
<entry>
<key id="104" type="java.lang.String">Event:pPublishFlag</key>
<value id="105" type="java.lang.String">true</value>
</entry>
<entry>
<key id="106" type="java.lang.String">Event:pSnapName</key>
<value id="107" type="java.lang.String">SY</value>
</entry>
<entry>
<key id="108" type="java.lang.String">EventName</key>
<value id="109" type="java.lang.String">evt_CBA_4Eye_Consolidated</value>
</entry>
</jobDataMap>
<jobGroup id="110">Events</jobGroup>
<jobName id="111">CBA_Collection</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="112">SYD_FX_1645</name>
<nextFireTime id="113">2018-05-14T16:44:55.000+1000</nextFireTime>
<previousFireTime id="114">2018-04-27T16:44:55.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="115">2018-05-13T20:42:40.000+1000</startTime>
<timeZone id="116">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_FX_1815" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">55 14 18 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:BBDownloadDirectory</key>
<value id="5" type="java.lang.String">/</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:BBResponseFileName</key>
<value id="7" type="java.lang.String">SYD_FX_BBG_1815.out.gz</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Bulk Size</key>
<value id="9" type="java.lang.String">100</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:Calculate MID price Options</key>
<value id="11" type="java.lang.String">CalcMIDIfMissing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:Calendar</key>
<value id="13" type="java.lang.String">PRPTUAL</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:CleanValidationInstructionCache</key>
<value id="15" type="java.lang.String">true</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:Consider Calendar Results</key>
<value id="17" type="java.lang.String">false</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:Consider Negative Prices</key>
<value id="19" type="java.lang.String">false</value>
</entry>
<entry>
<key id="20" type="java.lang.String">Event:CreateGPRCOnHoliday</key>
<value id="21" type="java.lang.String">false</value>
</entry>
<entry>
<key id="22" type="java.lang.String">Event:CreatePriceStatusForGoldenPrice</key>
<value id="23" type="java.lang.String">true</value>
</entry>
<entry>
<key id="24" type="java.lang.String">Event:Derive Golden Price</key>
<value id="25" type="java.lang.String">false</value>
</entry>
<entry>
<key id="26" type="java.lang.String">Event:DiagnosticMode</key>
<value id="27" type="java.lang.String">false</value>
</entry>
<entry>
<key id="28" type="java.lang.String">Event:Do Price Derivation First</key>
<value id="29" type="java.lang.String">false</value>
</entry>
<entry>
<key id="30" type="java.lang.String">Event:Donot Consider Issue Maturity</key>
<value id="31" type="java.lang.String">false</value>
</entry>
<entry>
<key id="32" type="java.lang.String">Event:Downstream System Identifier</key>
<value id="33" type="java.lang.String">Default</value>
</entry>
<entry>
<key id="34" type="java.lang.String">Event:Extra Configuration Information</key>
<value id="35" type="java.lang.String">Price Validation Consolidated</value>
</entry>
<entry>
<key id="36" type="java.lang.String">Event:FXRT Look Back Period</key>
<value id="37" type="java.lang.String">5</value>
</entry>
<entry>
<key id="38" type="java.lang.String">Event:GoldenToleranceToDo</key>
<value id="39" type="java.lang.String">STOLToDay</value>
</entry>
<entry>
<key id="40" type="java.lang.String">Event:Ignore Issue MAT_EXP_TMS</key>
<value id="41" type="java.lang.String">false</value>
</entry>
<entry>
<key id="42" type="java.lang.String">Event:IgnorePriceValidityForComparison</key>
<value id="43" type="java.lang.String">false</value>
</entry>
<entry>
<key id="44" type="java.lang.String">Event:IsExternalLibrary</key>
<value id="45" type="java.lang.String">false</value>
</entry>
<entry>
<key id="46" type="java.lang.String">Event:IsWaterfallModel</key>
<value id="47" type="java.lang.String">false</value>
</entry>
<entry>
<key id="48" type="java.lang.String">Event:LoadFromLocalBB</key>
<value id="49" type="java.lang.String">false</value>
</entry>
<entry>
<key id="50" type="java.lang.String">Event:LoadFromLocalElektron</key>
<value id="51" type="java.lang.String">false</value>
</entry>
<entry>
<key id="52" type="java.lang.String">Event:LoadFromLocalRT</key>
<value id="53" type="java.lang.String">false</value>
</entry>
<entry>
<key id="54" type="java.lang.String">Event:MessageTypeBB</key>
<value id="55" type="java.lang.String">CBA_Bloomberg_Currency</value>
</entry>
<entry>
<key id="56" type="java.lang.String">Event:Observation Period</key>
<value id="57" type="java.lang.String">1</value>
</entry>
<entry>
<key id="58" type="java.lang.String">Event:Overwrite Suspect Status</key>
<value id="59" type="java.lang.String">false</value>
</entry>
<entry>
<key id="60" type="java.lang.String">Event:PRVI Hierarchy Enable Switch</key>
<value id="61" type="java.lang.String">false</value>
</entry>
<entry>
<key id="62" type="java.lang.String">Event:Price Day Frequency</key>
<value id="63" type="java.lang.String">daily</value>
</entry>
<entry>
<key id="64" type="java.lang.String">Event:PricePointEventDefinitionId</key>
<value id="65" type="java.lang.String">SNAP====SY</value>
</entry>
<entry>
<key id="66" type="java.lang.String">Event:Prior GPRC Observation Count</key>
<value id="67" type="java.lang.String">3</value>
</entry>
<entry>
<key id="68" type="java.lang.String">Event:Processing Date Deriving Factor</key>
<value id="69" type="java.lang.String">0</value>
</entry>
<entry>
<key id="70" type="java.lang.String">Event:Processing Mode</key>
<value id="71" type="java.lang.String">DoGoldenPriceCheckLast</value>
</entry>
<entry>
<key id="72" type="java.lang.String">Event:Qualifying type for Golden Price Check</key>
<value id="73" type="java.lang.String">VALIDANDUNVERIFED</value>
</entry>
<entry>
<key id="74" type="java.lang.String">Event:RTDirectory</key>
<value id="75" type="java.lang.String">/reports</value>
</entry>
<entry>
<key id="76" type="java.lang.String">Event:RTFilePattern</key>
<value id="77" type="java.lang.String">SYD_FX_RT_DSS_1815_EOD*.csv.gz</value>
</entry>
<entry>
<key id="78" type="java.lang.String">Event:ReProcessProcessedFiles</key>
<value id="79" type="java.lang.String">false</value>
</entry>
<entry>
<key id="80" type="java.lang.String">Event:ReUse Job Id</key>
<value id="81" type="java.lang.String">false</value>
</entry>
<entry>
<key id="82" type="java.lang.String">Event:RelType OneToMany</key>
<value id="83" type="java.lang.String">ONETOMNY</value>
</entry>
<entry>
<key id="84" type="java.lang.String">Event:RelType Sequence</key>
<value id="85" type="java.lang.String">SEQUENCE</value>
</entry>
<entry>
<key id="86" type="java.lang.String">Event:ReutersFileSystem</key>
<value id="87" type="java.lang.String">SFTP</value>
</entry>
<entry>
<key id="88" type="java.lang.String">Event:Run Rescrub</key>
<value id="89" type="java.lang.String">false</value>
</entry>
<entry>
<key id="90" type="java.lang.String">Event:RunSameDayProcessing</key>
<value id="91" type="java.lang.String">true</value>
</entry>
<entry>
<key id="92" type="java.lang.String">Event:Threads In Parallel</key>
<value id="93" type="java.lang.String">5</value>
</entry>
<entry>
<key id="94" type="java.lang.String">Event:ThresholdValue</key>
<value id="95" type="java.lang.String">20</value>
</entry>
<entry>
<key id="96" type="java.lang.String">Event:ToleranceToDo</key>
<value id="97" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="98" type="java.lang.String">Event:WriteValidStatusRecords</key>
<value id="99" type="java.lang.String">true</value>
</entry>
<entry>
<key id="100" type="java.lang.String">Event:pDoElecktronFlag</key>
<value id="101" type="java.lang.String">true</value>
</entry>
<entry>
<key id="102" type="java.lang.String">Event:pIssueGroupName</key>
<value id="103" type="java.lang.String">SYD_FX_1815</value>
</entry>
<entry>
<key id="104" type="java.lang.String">Event:pPublishFlag</key>
<value id="105" type="java.lang.String">true</value>
</entry>
<entry>
<key id="106" type="java.lang.String">Event:pSnapName</key>
<value id="107" type="java.lang.String">SY</value>
</entry>
<entry>
<key id="108" type="java.lang.String">EventName</key>
<value id="109" type="java.lang.String">evt_CBA_4Eye_Consolidated</value>
</entry>
</jobDataMap>
<jobGroup id="110">Events</jobGroup>
<jobName id="111">CBA_Collection</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="112">SYD_FX_1815</name>
<nextFireTime id="113">2018-05-14T18:14:55.000+1000</nextFireTime>
<previousFireTime id="114">2018-04-27T18:14:55.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="115">2018-05-13T20:42:53.000+1000</startTime>
<timeZone id="116">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_IR_1000" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">55 59 09 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:BBDownloadDirectory</key>
<value id="5" type="java.lang.String">/</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:BBResponseFileName</key>
<value id="7" type="java.lang.String">SYD_IR_BBG_1000.out.gz</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Bulk Size</key>
<value id="9" type="java.lang.String">100</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:Calculate MID price Options</key>
<value id="11" type="java.lang.String">CalcMIDIfMissing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:Calendar</key>
<value id="13" type="java.lang.String">PRPTUAL</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:CleanValidationInstructionCache</key>
<value id="15" type="java.lang.String">true</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:Consider Calendar Results</key>
<value id="17" type="java.lang.String">false</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:Consider Negative Prices</key>
<value id="19" type="java.lang.String">false</value>
</entry>
<entry>
<key id="20" type="java.lang.String">Event:CreateGPRCOnHoliday</key>
<value id="21" type="java.lang.String">false</value>
</entry>
<entry>
<key id="22" type="java.lang.String">Event:CreatePriceStatusForGoldenPrice</key>
<value id="23" type="java.lang.String">true</value>
</entry>
<entry>
<key id="24" type="java.lang.String">Event:Derive Golden Price</key>
<value id="25" type="java.lang.String">false</value>
</entry>
<entry>
<key id="26" type="java.lang.String">Event:DiagnosticMode</key>
<value id="27" type="java.lang.String">false</value>
</entry>
<entry>
<key id="28" type="java.lang.String">Event:Do Price Derivation First</key>
<value id="29" type="java.lang.String">false</value>
</entry>
<entry>
<key id="30" type="java.lang.String">Event:Donot Consider Issue Maturity</key>
<value id="31" type="java.lang.String">false</value>
</entry>
<entry>
<key id="32" type="java.lang.String">Event:Downstream System Identifier</key>
<value id="33" type="java.lang.String">Default</value>
</entry>
<entry>
<key id="34" type="java.lang.String">Event:Extra Configuration Information</key>
<value id="35" type="java.lang.String">Price Validation Consolidated</value>
</entry>
<entry>
<key id="36" type="java.lang.String">Event:FXRT Look Back Period</key>
<value id="37" type="java.lang.String">5</value>
</entry>
<entry>
<key id="38" type="java.lang.String">Event:GoldenToleranceToDo</key>
<value id="39" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="40" type="java.lang.String">Event:Ignore Issue MAT_EXP_TMS</key>
<value id="41" type="java.lang.String">false</value>
</entry>
<entry>
<key id="42" type="java.lang.String">Event:IgnorePriceValidityForComparison</key>
<value id="43" type="java.lang.String">true</value>
</entry>
<entry>
<key id="44" type="java.lang.String">Event:IsExternalLibrary</key>
<value id="45" type="java.lang.String">false</value>
</entry>
<entry>
<key id="46" type="java.lang.String">Event:IsWaterfallModel</key>
<value id="47" type="java.lang.String">false</value>
</entry>
<entry>
<key id="48" type="java.lang.String">Event:LoadFromLocalBB</key>
<value id="49" type="java.lang.String">false</value>
</entry>
<entry>
<key id="50" type="java.lang.String">Event:LoadFromLocalElektron</key>
<value id="51" type="java.lang.String">false</value>
</entry>
<entry>
<key id="52" type="java.lang.String">Event:LoadFromLocalRT</key>
<value id="53" type="java.lang.String">false</value>
</entry>
<entry>
<key id="54" type="java.lang.String">Event:MessageTypeBB</key>
<value id="55" type="java.lang.String">CBA_Bloomberg_Currency</value>
</entry>
<entry>
<key id="56" type="java.lang.String">Event:Observation Period</key>
<value id="57" type="java.lang.String">1</value>
</entry>
<entry>
<key id="58" type="java.lang.String">Event:Overwrite Suspect Status</key>
<value id="59" type="java.lang.String">false</value>
</entry>
<entry>
<key id="60" type="java.lang.String">Event:PRVI Hierarchy Enable Switch</key>
<value id="61" type="java.lang.String">false</value>
</entry>
<entry>
<key id="62" type="java.lang.String">Event:Price Day Frequency</key>
<value id="63" type="java.lang.String">daily</value>
</entry>
<entry>
<key id="64" type="java.lang.String">Event:PricePointEventDefinitionId</key>
<value id="65" type="java.lang.String">SNAP====SY</value>
</entry>
<entry>
<key id="66" type="java.lang.String">Event:Prior GPRC Observation Count</key>
<value id="67" type="java.lang.String">3</value>
</entry>
<entry>
<key id="68" type="java.lang.String">Event:Processing Date Deriving Factor</key>
<value id="69" type="java.lang.String">0</value>
</entry>
<entry>
<key id="70" type="java.lang.String">Event:Processing Mode</key>
<value id="71" type="java.lang.String">DoGoldenPriceCheckLast</value>
</entry>
<entry>
<key id="72" type="java.lang.String">Event:Qualifying type for Golden Price Check</key>
<value id="73" type="java.lang.String">VALIDANDUNVERIFED</value>
</entry>
<entry>
<key id="74" type="java.lang.String">Event:RTDirectory</key>
<value id="75" type="java.lang.String">/reports</value>
</entry>
<entry>
<key id="76" type="java.lang.String">Event:RTFilePattern</key>
<value id="77" type="java.lang.String">SYD_IR_RT_DSS_1000_INTRDAY*.csv.gz</value>
</entry>
<entry>
<key id="78" type="java.lang.String">Event:ReProcessProcessedFiles</key>
<value id="79" type="java.lang.String">false</value>
</entry>
<entry>
<key id="80" type="java.lang.String">Event:ReUse Job Id</key>
<value id="81" type="java.lang.String">false</value>
</entry>
<entry>
<key id="82" type="java.lang.String">Event:RelType OneToMany</key>
<value id="83" type="java.lang.String">ONETOMNY</value>
</entry>
<entry>
<key id="84" type="java.lang.String">Event:RelType Sequence</key>
<value id="85" type="java.lang.String">SEQUENCE</value>
</entry>
<entry>
<key id="86" type="java.lang.String">Event:ReutersFileSystem</key>
<value id="87" type="java.lang.String">SFTP</value>
</entry>
<entry>
<key id="88" type="java.lang.String">Event:Run Rescrub</key>
<value id="89" type="java.lang.String">false</value>
</entry>
<entry>
<key id="90" type="java.lang.String">Event:RunSameDayProcessing</key>
<value id="91" type="java.lang.String">true</value>
</entry>
<entry>
<key id="92" type="java.lang.String">Event:Threads In Parallel</key>
<value id="93" type="java.lang.String">5</value>
</entry>
<entry>
<key id="94" type="java.lang.String">Event:ThresholdValue</key>
<value id="95" type="java.lang.String">20</value>
</entry>
<entry>
<key id="96" type="java.lang.String">Event:ToleranceToDo</key>
<value id="97" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="98" type="java.lang.String">Event:WriteValidStatusRecords</key>
<value id="99" type="java.lang.String">true</value>
</entry>
<entry>
<key id="100" type="java.lang.String">Event:pDoElecktronFlag</key>
<value id="101" type="java.lang.String">true</value>
</entry>
<entry>
<key id="102" type="java.lang.String">Event:pIssueGroupName</key>
<value id="103" type="java.lang.String">SYD_IR_1000</value>
</entry>
<entry>
<key id="104" type="java.lang.String">Event:pPublishFlag</key>
<value id="105" type="java.lang.String">true</value>
</entry>
<entry>
<key id="106" type="java.lang.String">Event:pSnapName</key>
<value id="107" type="java.lang.String">SY</value>
</entry>
<entry>
<key id="108" type="java.lang.String">EventName</key>
<value id="109" type="java.lang.String">evt_CBA_4Eye_Consolidated</value>
</entry>
</jobDataMap>
<jobGroup id="110">Events</jobGroup>
<jobName id="111">CBA_Collection</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="112">SYD_IR_1000</name>
<nextFireTime id="113">2018-05-14T09:59:55.000+1000</nextFireTime>
<previousFireTime id="114">2018-05-11T09:59:55.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="115">2018-05-13T20:48:17.000+1000</startTime>
<timeZone id="116">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_IR_1018" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">59 17 10 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:BBDownloadDirectory</key>
<value id="5" type="java.lang.String">/</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:BBResponseFileName</key>
<value id="7" type="java.lang.String">SYD_IR_BBG_1018.out.gz</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Bulk Size</key>
<value id="9" type="java.lang.String">100</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:Calculate MID price Options</key>
<value id="11" type="java.lang.String">CalcMIDIfMissing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:Calendar</key>
<value id="13" type="java.lang.String">PRPTUAL</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:CleanValidationInstructionCache</key>
<value id="15" type="java.lang.String">true</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:Consider Calendar Results</key>
<value id="17" type="java.lang.String">false</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:Consider Negative Prices</key>
<value id="19" type="java.lang.String">false</value>
</entry>
<entry>
<key id="20" type="java.lang.String">Event:CreateGPRCOnHoliday</key>
<value id="21" type="java.lang.String">false</value>
</entry>
<entry>
<key id="22" type="java.lang.String">Event:CreatePriceStatusForGoldenPrice</key>
<value id="23" type="java.lang.String">true</value>
</entry>
<entry>
<key id="24" type="java.lang.String">Event:Derive Golden Price</key>
<value id="25" type="java.lang.String">false</value>
</entry>
<entry>
<key id="26" type="java.lang.String">Event:DiagnosticMode</key>
<value id="27" type="java.lang.String">false</value>
</entry>
<entry>
<key id="28" type="java.lang.String">Event:Do Price Derivation First</key>
<value id="29" type="java.lang.String">false</value>
</entry>
<entry>
<key id="30" type="java.lang.String">Event:Donot Consider Issue Maturity</key>
<value id="31" type="java.lang.String">false</value>
</entry>
<entry>
<key id="32" type="java.lang.String">Event:Downstream System Identifier</key>
<value id="33" type="java.lang.String">Default</value>
</entry>
<entry>
<key id="34" type="java.lang.String">Event:Extra Configuration Information</key>
<value id="35" type="java.lang.String">Price Validation Consolidated</value>
</entry>
<entry>
<key id="36" type="java.lang.String">Event:FXRT Look Back Period</key>
<value id="37" type="java.lang.String">5</value>
</entry>
<entry>
<key id="38" type="java.lang.String">Event:GoldenToleranceToDo</key>
<value id="39" type="java.lang.String">STOLToDay</value>
</entry>
<entry>
<key id="40" type="java.lang.String">Event:Ignore Issue MAT_EXP_TMS</key>
<value id="41" type="java.lang.String">false</value>
</entry>
<entry>
<key id="42" type="java.lang.String">Event:IgnorePriceValidityForComparison</key>
<value id="43" type="java.lang.String">false</value>
</entry>
<entry>
<key id="44" type="java.lang.String">Event:IsExternalLibrary</key>
<value id="45" type="java.lang.String">false</value>
</entry>
<entry>
<key id="46" type="java.lang.String">Event:IsWaterfallModel</key>
<value id="47" type="java.lang.String">false</value>
</entry>
<entry>
<key id="48" type="java.lang.String">Event:LoadFromLocalBB</key>
<value id="49" type="java.lang.String">false</value>
</entry>
<entry>
<key id="50" type="java.lang.String">Event:LoadFromLocalElektron</key>
<value id="51" type="java.lang.String">false</value>
</entry>
<entry>
<key id="52" type="java.lang.String">Event:LoadFromLocalRT</key>
<value id="53" type="java.lang.String">false</value>
</entry>
<entry>
<key id="54" type="java.lang.String">Event:MessageTypeBB</key>
<value id="55" type="java.lang.String">CBA_Bloomberg_Currency</value>
</entry>
<entry>
<key id="56" type="java.lang.String">Event:Observation Period</key>
<value id="57" type="java.lang.String">1</value>
</entry>
<entry>
<key id="58" type="java.lang.String">Event:Overwrite Suspect Status</key>
<value id="59" type="java.lang.String">false</value>
</entry>
<entry>
<key id="60" type="java.lang.String">Event:PRVI Hierarchy Enable Switch</key>
<value id="61" type="java.lang.String">false</value>
</entry>
<entry>
<key id="62" type="java.lang.String">Event:Price Day Frequency</key>
<value id="63" type="java.lang.String">daily</value>
</entry>
<entry>
<key id="64" type="java.lang.String">Event:PricePointEventDefinitionId</key>
<value id="65" type="java.lang.String">SNAP====SY</value>
</entry>
<entry>
<key id="66" type="java.lang.String">Event:Prior GPRC Observation Count</key>
<value id="67" type="java.lang.String">3</value>
</entry>
<entry>
<key id="68" type="java.lang.String">Event:Processing Date Deriving Factor</key>
<value id="69" type="java.lang.String">0</value>
</entry>
<entry>
<key id="70" type="java.lang.String">Event:Processing Mode</key>
<value id="71" type="java.lang.String">DoGoldenPriceCheckLast</value>
</entry>
<entry>
<key id="72" type="java.lang.String">Event:Qualifying type for Golden Price Check</key>
<value id="73" type="java.lang.String">VALIDANDUNVERIFED</value>
</entry>
<entry>
<key id="74" type="java.lang.String">Event:RTDirectory</key>
<value id="75" type="java.lang.String">/reports</value>
</entry>
<entry>
<key id="76" type="java.lang.String">Event:RTFilePattern</key>
<value id="77" type="java.lang.String">SYD_IR_RT_DSS_1018_INTRDAY*.csv.gz</value>
</entry>
<entry>
<key id="78" type="java.lang.String">Event:ReProcessProcessedFiles</key>
<value id="79" type="java.lang.String">false</value>
</entry>
<entry>
<key id="80" type="java.lang.String">Event:ReUse Job Id</key>
<value id="81" type="java.lang.String">false</value>
</entry>
<entry>
<key id="82" type="java.lang.String">Event:RelType OneToMany</key>
<value id="83" type="java.lang.String">ONETOMNY</value>
</entry>
<entry>
<key id="84" type="java.lang.String">Event:RelType Sequence</key>
<value id="85" type="java.lang.String">SEQUENCE</value>
</entry>
<entry>
<key id="86" type="java.lang.String">Event:ReutersFileSystem</key>
<value id="87" type="java.lang.String">SFTP</value>
</entry>
<entry>
<key id="88" type="java.lang.String">Event:Run Rescrub</key>
<value id="89" type="java.lang.String">false</value>
</entry>
<entry>
<key id="90" type="java.lang.String">Event:RunSameDayProcessing</key>
<value id="91" type="java.lang.String">true</value>
</entry>
<entry>
<key id="92" type="java.lang.String">Event:Threads In Parallel</key>
<value id="93" type="java.lang.String">5</value>
</entry>
<entry>
<key id="94" type="java.lang.String">Event:ThresholdValue</key>
<value id="95" type="java.lang.String">20</value>
</entry>
<entry>
<key id="96" type="java.lang.String">Event:ToleranceToDo</key>
<value id="97" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="98" type="java.lang.String">Event:WriteValidStatusRecords</key>
<value id="99" type="java.lang.String">true</value>
</entry>
<entry>
<key id="100" type="java.lang.String">Event:pDoElecktronFlag</key>
<value id="101" type="java.lang.String">true</value>
</entry>
<entry>
<key id="102" type="java.lang.String">Event:pIssueGroupName</key>
<value id="103" type="java.lang.String">SYD_IR_1018</value>
</entry>
<entry>
<key id="104" type="java.lang.String">Event:pPublishFlag</key>
<value id="105" type="java.lang.String">true</value>
</entry>
<entry>
<key id="106" type="java.lang.String">Event:pSnapName</key>
<value id="107" type="java.lang.String">SY</value>
</entry>
<entry>
<key id="108" type="java.lang.String">EventName</key>
<value id="109" type="java.lang.String">evt_CBA_4Eye_Consolidated</value>
</entry>
</jobDataMap>
<jobGroup id="110">Events</jobGroup>
<jobName id="111">CBA_Collection</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="112">SYD_IR_1018</name>
<nextFireTime id="113">2018-05-14T10:17:59.000+1000</nextFireTime>
<previousFireTime id="114">2018-04-27T10:17:59.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="115">2018-05-13T20:43:26.000+1000</startTime>
<timeZone id="116">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_IR_1100" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">57 59 10 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:BBDownloadDirectory</key>
<value id="5" type="java.lang.String">/</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:BBResponseFileName</key>
<value id="7" type="java.lang.String">SYD_IR_BBG_1100.out.gz</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Bulk Size</key>
<value id="9" type="java.lang.String">100</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:Calculate MID price Options</key>
<value id="11" type="java.lang.String">CalcMIDIfMissing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:Calendar</key>
<value id="13" type="java.lang.String">PRPTUAL</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:CleanValidationInstructionCache</key>
<value id="15" type="java.lang.String">true</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:Consider Calendar Results</key>
<value id="17" type="java.lang.String">false</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:Consider Negative Prices</key>
<value id="19" type="java.lang.String">false</value>
</entry>
<entry>
<key id="20" type="java.lang.String">Event:CreateGPRCOnHoliday</key>
<value id="21" type="java.lang.String">false</value>
</entry>
<entry>
<key id="22" type="java.lang.String">Event:CreatePriceStatusForGoldenPrice</key>
<value id="23" type="java.lang.String">true</value>
</entry>
<entry>
<key id="24" type="java.lang.String">Event:Derive Golden Price</key>
<value id="25" type="java.lang.String">false</value>
</entry>
<entry>
<key id="26" type="java.lang.String">Event:DiagnosticMode</key>
<value id="27" type="java.lang.String">false</value>
</entry>
<entry>
<key id="28" type="java.lang.String">Event:Do Price Derivation First</key>
<value id="29" type="java.lang.String">false</value>
</entry>
<entry>
<key id="30" type="java.lang.String">Event:Donot Consider Issue Maturity</key>
<value id="31" type="java.lang.String">false</value>
</entry>
<entry>
<key id="32" type="java.lang.String">Event:Downstream System Identifier</key>
<value id="33" type="java.lang.String">Default</value>
</entry>
<entry>
<key id="34" type="java.lang.String">Event:Extra Configuration Information</key>
<value id="35" type="java.lang.String">Price Validation Consolidated</value>
</entry>
<entry>
<key id="36" type="java.lang.String">Event:FXRT Look Back Period</key>
<value id="37" type="java.lang.String">5</value>
</entry>
<entry>
<key id="38" type="java.lang.String">Event:GoldenToleranceToDo</key>
<value id="39" type="java.lang.String">STOLToDay</value>
</entry>
<entry>
<key id="40" type="java.lang.String">Event:Ignore Issue MAT_EXP_TMS</key>
<value id="41" type="java.lang.String">false</value>
</entry>
<entry>
<key id="42" type="java.lang.String">Event:IgnorePriceValidityForComparison</key>
<value id="43" type="java.lang.String">false</value>
</entry>
<entry>
<key id="44" type="java.lang.String">Event:IsExternalLibrary</key>
<value id="45" type="java.lang.String">false</value>
</entry>
<entry>
<key id="46" type="java.lang.String">Event:IsWaterfallModel</key>
<value id="47" type="java.lang.String">false</value>
</entry>
<entry>
<key id="48" type="java.lang.String">Event:LoadFromLocalBB</key>
<value id="49" type="java.lang.String">false</value>
</entry>
<entry>
<key id="50" type="java.lang.String">Event:LoadFromLocalElektron</key>
<value id="51" type="java.lang.String">false</value>
</entry>
<entry>
<key id="52" type="java.lang.String">Event:LoadFromLocalRT</key>
<value id="53" type="java.lang.String">false</value>
</entry>
<entry>
<key id="54" type="java.lang.String">Event:MessageTypeBB</key>
<value id="55" type="java.lang.String">CBA_Bloomberg_Currency</value>
</entry>
<entry>
<key id="56" type="java.lang.String">Event:Observation Period</key>
<value id="57" type="java.lang.String">1</value>
</entry>
<entry>
<key id="58" type="java.lang.String">Event:Overwrite Suspect Status</key>
<value id="59" type="java.lang.String">false</value>
</entry>
<entry>
<key id="60" type="java.lang.String">Event:PRVI Hierarchy Enable Switch</key>
<value id="61" type="java.lang.String">false</value>
</entry>
<entry>
<key id="62" type="java.lang.String">Event:Price Day Frequency</key>
<value id="63" type="java.lang.String">daily</value>
</entry>
<entry>
<key id="64" type="java.lang.String">Event:PricePointEventDefinitionId</key>
<value id="65" type="java.lang.String">SNAP====SY</value>
</entry>
<entry>
<key id="66" type="java.lang.String">Event:Prior GPRC Observation Count</key>
<value id="67" type="java.lang.String">3</value>
</entry>
<entry>
<key id="68" type="java.lang.String">Event:Processing Date Deriving Factor</key>
<value id="69" type="java.lang.String">0</value>
</entry>
<entry>
<key id="70" type="java.lang.String">Event:Processing Mode</key>
<value id="71" type="java.lang.String">DoGoldenPriceCheckLast</value>
</entry>
<entry>
<key id="72" type="java.lang.String">Event:Qualifying type for Golden Price Check</key>
<value id="73" type="java.lang.String">VALIDANDUNVERIFED</value>
</entry>
<entry>
<key id="74" type="java.lang.String">Event:RTDirectory</key>
<value id="75" type="java.lang.String">/reports</value>
</entry>
<entry>
<key id="76" type="java.lang.String">Event:RTFilePattern</key>
<value id="77" type="java.lang.String">SYD_IR_RT_DSS_1100*.csv.gz</value>
</entry>
<entry>
<key id="78" type="java.lang.String">Event:ReProcessProcessedFiles</key>
<value id="79" type="java.lang.String">false</value>
</entry>
<entry>
<key id="80" type="java.lang.String">Event:ReUse Job Id</key>
<value id="81" type="java.lang.String">false</value>
</entry>
<entry>
<key id="82" type="java.lang.String">Event:RelType OneToMany</key>
<value id="83" type="java.lang.String">ONETOMNY</value>
</entry>
<entry>
<key id="84" type="java.lang.String">Event:RelType Sequence</key>
<value id="85" type="java.lang.String">SEQUENCE</value>
</entry>
<entry>
<key id="86" type="java.lang.String">Event:ReutersFileSystem</key>
<value id="87" type="java.lang.String">SFTP</value>
</entry>
<entry>
<key id="88" type="java.lang.String">Event:Run Rescrub</key>
<value id="89" type="java.lang.String">false</value>
</entry>
<entry>
<key id="90" type="java.lang.String">Event:RunSameDayProcessing</key>
<value id="91" type="java.lang.String">true</value>
</entry>
<entry>
<key id="92" type="java.lang.String">Event:Threads In Parallel</key>
<value id="93" type="java.lang.String">5</value>
</entry>
<entry>
<key id="94" type="java.lang.String">Event:ThresholdValue</key>
<value id="95" type="java.lang.String">20</value>
</entry>
<entry>
<key id="96" type="java.lang.String">Event:ToleranceToDo</key>
<value id="97" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="98" type="java.lang.String">Event:WriteValidStatusRecords</key>
<value id="99" type="java.lang.String">true</value>
</entry>
<entry>
<key id="100" type="java.lang.String">Event:pDoElecktronFlag</key>
<value id="101" type="java.lang.String">true</value>
</entry>
<entry>
<key id="102" type="java.lang.String">Event:pIssueGroupName</key>
<value id="103" type="java.lang.String">SYD_IR_1100</value>
</entry>
<entry>
<key id="104" type="java.lang.String">Event:pPublishFlag</key>
<value id="105" type="java.lang.String">true</value>
</entry>
<entry>
<key id="106" type="java.lang.String">Event:pSnapName</key>
<value id="107" type="java.lang.String">SY</value>
</entry>
<entry>
<key id="108" type="java.lang.String">EventName</key>
<value id="109" type="java.lang.String">evt_CBA_4Eye_Consolidated</value>
</entry>
</jobDataMap>
<jobGroup id="110">Events</jobGroup>
<jobName id="111">CBA_Collection</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="112">SYD_IR_1100</name>
<nextFireTime id="113">2018-05-14T10:59:57.000+1000</nextFireTime>
<previousFireTime id="114">2018-04-27T10:59:57.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="115">2018-05-13T20:43:39.000+1000</startTime>
<timeZone id="116">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_IR_1600" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">55 59 15 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:BBDownloadDirectory</key>
<value id="5" type="java.lang.String">/</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:BBResponseFileName</key>
<value id="7" type="java.lang.String">SYD_IR_BBG_1600.out.gz</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Bulk Size</key>
<value id="9" type="java.lang.String">100</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:Calculate MID price Options</key>
<value id="11" type="java.lang.String">CalcMIDIfMissing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:Calendar</key>
<value id="13" type="java.lang.String">PRPTUAL</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:CleanValidationInstructionCache</key>
<value id="15" type="java.lang.String">true</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:Consider Calendar Results</key>
<value id="17" type="java.lang.String">false</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:Consider Negative Prices</key>
<value id="19" type="java.lang.String">false</value>
</entry>
<entry>
<key id="20" type="java.lang.String">Event:CreateGPRCOnHoliday</key>
<value id="21" type="java.lang.String">false</value>
</entry>
<entry>
<key id="22" type="java.lang.String">Event:CreatePriceStatusForGoldenPrice</key>
<value id="23" type="java.lang.String">true</value>
</entry>
<entry>
<key id="24" type="java.lang.String">Event:Derive Golden Price</key>
<value id="25" type="java.lang.String">false</value>
</entry>
<entry>
<key id="26" type="java.lang.String">Event:DiagnosticMode</key>
<value id="27" type="java.lang.String">false</value>
</entry>
<entry>
<key id="28" type="java.lang.String">Event:Do Price Derivation First</key>
<value id="29" type="java.lang.String">false</value>
</entry>
<entry>
<key id="30" type="java.lang.String">Event:Donot Consider Issue Maturity</key>
<value id="31" type="java.lang.String">false</value>
</entry>
<entry>
<key id="32" type="java.lang.String">Event:Downstream System Identifier</key>
<value id="33" type="java.lang.String">Default</value>
</entry>
<entry>
<key id="34" type="java.lang.String">Event:Extra Configuration Information</key>
<value id="35" type="java.lang.String">Price Validation Consolidated</value>
</entry>
<entry>
<key id="36" type="java.lang.String">Event:FXRT Look Back Period</key>
<value id="37" type="java.lang.String">5</value>
</entry>
<entry>
<key id="38" type="java.lang.String">Event:GoldenToleranceToDo</key>
<value id="39" type="java.lang.String">STOLToDay</value>
</entry>
<entry>
<key id="40" type="java.lang.String">Event:Ignore Issue MAT_EXP_TMS</key>
<value id="41" type="java.lang.String">false</value>
</entry>
<entry>
<key id="42" type="java.lang.String">Event:IgnorePriceValidityForComparison</key>
<value id="43" type="java.lang.String">false</value>
</entry>
<entry>
<key id="44" type="java.lang.String">Event:IsExternalLibrary</key>
<value id="45" type="java.lang.String">false</value>
</entry>
<entry>
<key id="46" type="java.lang.String">Event:IsWaterfallModel</key>
<value id="47" type="java.lang.String">false</value>
</entry>
<entry>
<key id="48" type="java.lang.String">Event:LoadFromLocalBB</key>
<value id="49" type="java.lang.String">false</value>
</entry>
<entry>
<key id="50" type="java.lang.String">Event:LoadFromLocalElektron</key>
<value id="51" type="java.lang.String">false</value>
</entry>
<entry>
<key id="52" type="java.lang.String">Event:LoadFromLocalRT</key>
<value id="53" type="java.lang.String">false</value>
</entry>
<entry>
<key id="54" type="java.lang.String">Event:MessageTypeBB</key>
<value id="55" type="java.lang.String">CBA_Bloomberg_Currency</value>
</entry>
<entry>
<key id="56" type="java.lang.String">Event:Observation Period</key>
<value id="57" type="java.lang.String">1</value>
</entry>
<entry>
<key id="58" type="java.lang.String">Event:Overwrite Suspect Status</key>
<value id="59" type="java.lang.String">false</value>
</entry>
<entry>
<key id="60" type="java.lang.String">Event:PRVI Hierarchy Enable Switch</key>
<value id="61" type="java.lang.String">false</value>
</entry>
<entry>
<key id="62" type="java.lang.String">Event:Price Day Frequency</key>
<value id="63" type="java.lang.String">daily</value>
</entry>
<entry>
<key id="64" type="java.lang.String">Event:PricePointEventDefinitionId</key>
<value id="65" type="java.lang.String">SNAP====SY</value>
</entry>
<entry>
<key id="66" type="java.lang.String">Event:Prior GPRC Observation Count</key>
<value id="67" type="java.lang.String">3</value>
</entry>
<entry>
<key id="68" type="java.lang.String">Event:Processing Date Deriving Factor</key>
<value id="69" type="java.lang.String">0</value>
</entry>
<entry>
<key id="70" type="java.lang.String">Event:Processing Mode</key>
<value id="71" type="java.lang.String">DoGoldenPriceCheckLast</value>
</entry>
<entry>
<key id="72" type="java.lang.String">Event:Qualifying type for Golden Price Check</key>
<value id="73" type="java.lang.String">VALIDANDUNVERIFED</value>
</entry>
<entry>
<key id="74" type="java.lang.String">Event:RTDirectory</key>
<value id="75" type="java.lang.String">/reports</value>
</entry>
<entry>
<key id="76" type="java.lang.String">Event:ReProcessProcessedFiles</key>
<value id="77" type="java.lang.String">false</value>
</entry>
<entry>
<key id="78" type="java.lang.String">Event:ReUse Job Id</key>
<value id="79" type="java.lang.String">false</value>
</entry>
<entry>
<key id="80" type="java.lang.String">Event:RelType OneToMany</key>
<value id="81" type="java.lang.String">ONETOMNY</value>
</entry>
<entry>
<key id="82" type="java.lang.String">Event:RelType Sequence</key>
<value id="83" type="java.lang.String">SEQUENCE</value>
</entry>
<entry>
<key id="84" type="java.lang.String">Event:ReutersFileSystem</key>
<value id="85" type="java.lang.String">SFTP</value>
</entry>
<entry>
<key id="86" type="java.lang.String">Event:Run Rescrub</key>
<value id="87" type="java.lang.String">false</value>
</entry>
<entry>
<key id="88" type="java.lang.String">Event:RunSameDayProcessing</key>
<value id="89" type="java.lang.String">true</value>
</entry>
<entry>
<key id="90" type="java.lang.String">Event:Threads In Parallel</key>
<value id="91" type="java.lang.String">5</value>
</entry>
<entry>
<key id="92" type="java.lang.String">Event:ThresholdValue</key>
<value id="93" type="java.lang.String">20</value>
</entry>
<entry>
<key id="94" type="java.lang.String">Event:ToleranceToDo</key>
<value id="95" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="96" type="java.lang.String">Event:WriteValidStatusRecords</key>
<value id="97" type="java.lang.String">true</value>
</entry>
<entry>
<key id="98" type="java.lang.String">Event:pDoElecktronFlag</key>
<value id="99" type="java.lang.String">false</value>
</entry>
<entry>
<key id="100" type="java.lang.String">Event:pIssueGroupName</key>
<value id="101" type="java.lang.String">SYD_IR_1600</value>
</entry>
<entry>
<key id="102" type="java.lang.String">Event:pPublishFlag</key>
<value id="103" type="java.lang.String">true</value>
</entry>
<entry>
<key id="104" type="java.lang.String">Event:pSnapName</key>
<value id="105" type="java.lang.String">SY</value>
</entry>
<entry>
<key id="106" type="java.lang.String">EventName</key>
<value id="107" type="java.lang.String">evt_CBA_4Eye_Consolidated</value>
</entry>
</jobDataMap>
<jobGroup id="108">Events</jobGroup>
<jobName id="109">CBA_Collection</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="110">SYD_IR_1600</name>
<nextFireTime id="111">2018-05-14T15:59:55.000+1000</nextFireTime>
<previousFireTime id="112">2018-04-27T15:59:55.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="113">2018-05-13T20:43:52.000+1000</startTime>
<timeZone id="114">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_IR_1645" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">55 44 16 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:BBDownloadDirectory</key>
<value id="5" type="java.lang.String">/</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:BBResponseFileName</key>
<value id="7" type="java.lang.String">SYD_IR_BBG_1645.out.gz</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Bulk Size</key>
<value id="9" type="java.lang.String">100</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:Calculate MID price Options</key>
<value id="11" type="java.lang.String">CalcMIDIfMissing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:Calendar</key>
<value id="13" type="java.lang.String">PRPTUAL</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:CleanValidationInstructionCache</key>
<value id="15" type="java.lang.String">true</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:Consider Calendar Results</key>
<value id="17" type="java.lang.String">false</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:Consider Negative Prices</key>
<value id="19" type="java.lang.String">false</value>
</entry>
<entry>
<key id="20" type="java.lang.String">Event:CreateGPRCOnHoliday</key>
<value id="21" type="java.lang.String">false</value>
</entry>
<entry>
<key id="22" type="java.lang.String">Event:CreatePriceStatusForGoldenPrice</key>
<value id="23" type="java.lang.String">true</value>
</entry>
<entry>
<key id="24" type="java.lang.String">Event:Derive Golden Price</key>
<value id="25" type="java.lang.String">false</value>
</entry>
<entry>
<key id="26" type="java.lang.String">Event:DiagnosticMode</key>
<value id="27" type="java.lang.String">false</value>
</entry>
<entry>
<key id="28" type="java.lang.String">Event:Do Price Derivation First</key>
<value id="29" type="java.lang.String">false</value>
</entry>
<entry>
<key id="30" type="java.lang.String">Event:Donot Consider Issue Maturity</key>
<value id="31" type="java.lang.String">false</value>
</entry>
<entry>
<key id="32" type="java.lang.String">Event:Downstream System Identifier</key>
<value id="33" type="java.lang.String">Default</value>
</entry>
<entry>
<key id="34" type="java.lang.String">Event:Extra Configuration Information</key>
<value id="35" type="java.lang.String">Price Validation Consolidated</value>
</entry>
<entry>
<key id="36" type="java.lang.String">Event:FXRT Look Back Period</key>
<value id="37" type="java.lang.String">5</value>
</entry>
<entry>
<key id="38" type="java.lang.String">Event:GoldenToleranceToDo</key>
<value id="39" type="java.lang.String">STOLToDay</value>
</entry>
<entry>
<key id="40" type="java.lang.String">Event:Ignore Issue MAT_EXP_TMS</key>
<value id="41" type="java.lang.String">false</value>
</entry>
<entry>
<key id="42" type="java.lang.String">Event:IgnorePriceValidityForComparison</key>
<value id="43" type="java.lang.String">false</value>
</entry>
<entry>
<key id="44" type="java.lang.String">Event:IsExternalLibrary</key>
<value id="45" type="java.lang.String">false</value>
</entry>
<entry>
<key id="46" type="java.lang.String">Event:IsWaterfallModel</key>
<value id="47" type="java.lang.String">false</value>
</entry>
<entry>
<key id="48" type="java.lang.String">Event:LoadFromLocalBB</key>
<value id="49" type="java.lang.String">false</value>
</entry>
<entry>
<key id="50" type="java.lang.String">Event:LoadFromLocalElektron</key>
<value id="51" type="java.lang.String">false</value>
</entry>
<entry>
<key id="52" type="java.lang.String">Event:LoadFromLocalRT</key>
<value id="53" type="java.lang.String">false</value>
</entry>
<entry>
<key id="54" type="java.lang.String">Event:MessageTypeBB</key>
<value id="55" type="java.lang.String">CBA_Bloomberg_Currency</value>
</entry>
<entry>
<key id="56" type="java.lang.String">Event:Observation Period</key>
<value id="57" type="java.lang.String">1</value>
</entry>
<entry>
<key id="58" type="java.lang.String">Event:Overwrite Suspect Status</key>
<value id="59" type="java.lang.String">false</value>
</entry>
<entry>
<key id="60" type="java.lang.String">Event:PRVI Hierarchy Enable Switch</key>
<value id="61" type="java.lang.String">false</value>
</entry>
<entry>
<key id="62" type="java.lang.String">Event:Price Day Frequency</key>
<value id="63" type="java.lang.String">daily</value>
</entry>
<entry>
<key id="64" type="java.lang.String">Event:PricePointEventDefinitionId</key>
<value id="65" type="java.lang.String">SNAP====SY</value>
</entry>
<entry>
<key id="66" type="java.lang.String">Event:Prior GPRC Observation Count</key>
<value id="67" type="java.lang.String">3</value>
</entry>
<entry>
<key id="68" type="java.lang.String">Event:Processing Date Deriving Factor</key>
<value id="69" type="java.lang.String">0</value>
</entry>
<entry>
<key id="70" type="java.lang.String">Event:Processing Mode</key>
<value id="71" type="java.lang.String">DoGoldenPriceCheckLast</value>
</entry>
<entry>
<key id="72" type="java.lang.String">Event:Qualifying type for Golden Price Check</key>
<value id="73" type="java.lang.String">VALIDANDUNVERIFED</value>
</entry>
<entry>
<key id="74" type="java.lang.String">Event:RTDirectory</key>
<value id="75" type="java.lang.String">/reports</value>
</entry>
<entry>
<key id="76" type="java.lang.String">Event:RTFilePattern</key>
<value id="77" type="java.lang.String">SYD_IR_RT_DSS_1645_INTRDAY*.csv.gz</value>
</entry>
<entry>
<key id="78" type="java.lang.String">Event:ReProcessProcessedFiles</key>
<value id="79" type="java.lang.String">false</value>
</entry>
<entry>
<key id="80" type="java.lang.String">Event:ReUse Job Id</key>
<value id="81" type="java.lang.String">false</value>
</entry>
<entry>
<key id="82" type="java.lang.String">Event:RelType OneToMany</key>
<value id="83" type="java.lang.String">ONETOMNY</value>
</entry>
<entry>
<key id="84" type="java.lang.String">Event:RelType Sequence</key>
<value id="85" type="java.lang.String">SEQUENCE</value>
</entry>
<entry>
<key id="86" type="java.lang.String">Event:ReutersFileSystem</key>
<value id="87" type="java.lang.String">SFTP</value>
</entry>
<entry>
<key id="88" type="java.lang.String">Event:Run Rescrub</key>
<value id="89" type="java.lang.String">false</value>
</entry>
<entry>
<key id="90" type="java.lang.String">Event:RunSameDayProcessing</key>
<value id="91" type="java.lang.String">true</value>
</entry>
<entry>
<key id="92" type="java.lang.String">Event:Threads In Parallel</key>
<value id="93" type="java.lang.String">5</value>
</entry>
<entry>
<key id="94" type="java.lang.String">Event:ThresholdValue</key>
<value id="95" type="java.lang.String">20</value>
</entry>
<entry>
<key id="96" type="java.lang.String">Event:ToleranceToDo</key>
<value id="97" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="98" type="java.lang.String">Event:WriteValidStatusRecords</key>
<value id="99" type="java.lang.String">true</value>
</entry>
<entry>
<key id="100" type="java.lang.String">Event:pDoElecktronFlag</key>
<value id="101" type="java.lang.String">true</value>
</entry>
<entry>
<key id="102" type="java.lang.String">Event:pIssueGroupName</key>
<value id="103" type="java.lang.String">SYD_IR_1645</value>
</entry>
<entry>
<key id="104" type="java.lang.String">Event:pPublishFlag</key>
<value id="105" type="java.lang.String">true</value>
</entry>
<entry>
<key id="106" type="java.lang.String">Event:pSnapName</key>
<value id="107" type="java.lang.String">SY</value>
</entry>
<entry>
<key id="108" type="java.lang.String">EventName</key>
<value id="109" type="java.lang.String">evt_CBA_4Eye_Consolidated</value>
</entry>
</jobDataMap>
<jobGroup id="110">Events</jobGroup>
<jobName id="111">CBA_Collection</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="112">SYD_IR_1645</name>
<nextFireTime id="113">2018-05-14T16:44:55.000+1000</nextFireTime>
<previousFireTime id="114">2018-04-27T16:44:55.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="115">2018-05-13T20:44:05.000+1000</startTime>
<timeZone id="116">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
<businessobject displayString="SYD_IR_1815" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">55 14 18 ? * 2-6</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:BBDownloadDirectory</key>
<value id="5" type="java.lang.String">/</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:BBResponseFileName</key>
<value id="7" type="java.lang.String">SYD_IR_BBG_1815.out.gz</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Bulk Size</key>
<value id="9" type="java.lang.String">100</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:Calculate MID price Options</key>
<value id="11" type="java.lang.String">CalcMIDIfMissing</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:Calendar</key>
<value id="13" type="java.lang.String">PRPTUAL</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:CleanValidationInstructionCache</key>
<value id="15" type="java.lang.String">true</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:Consider Calendar Results</key>
<value id="17" type="java.lang.String">false</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:Consider Negative Prices</key>
<value id="19" type="java.lang.String">false</value>
</entry>
<entry>
<key id="20" type="java.lang.String">Event:CreateGPRCOnHoliday</key>
<value id="21" type="java.lang.String">false</value>
</entry>
<entry>
<key id="22" type="java.lang.String">Event:CreatePriceStatusForGoldenPrice</key>
<value id="23" type="java.lang.String">true</value>
</entry>
<entry>
<key id="24" type="java.lang.String">Event:Derive Golden Price</key>
<value id="25" type="java.lang.String">false</value>
</entry>
<entry>
<key id="26" type="java.lang.String">Event:DiagnosticMode</key>
<value id="27" type="java.lang.String">false</value>
</entry>
<entry>
<key id="28" type="java.lang.String">Event:Do Price Derivation First</key>
<value id="29" type="java.lang.String">false</value>
</entry>
<entry>
<key id="30" type="java.lang.String">Event:Donot Consider Issue Maturity</key>
<value id="31" type="java.lang.String">false</value>
</entry>
<entry>
<key id="32" type="java.lang.String">Event:Downstream System Identifier</key>
<value id="33" type="java.lang.String">Default</value>
</entry>
<entry>
<key id="34" type="java.lang.String">Event:Extra Configuration Information</key>
<value id="35" type="java.lang.String">Price Validation Consolidated</value>
</entry>
<entry>
<key id="36" type="java.lang.String">Event:FXRT Look Back Period</key>
<value id="37" type="java.lang.String">5</value>
</entry>
<entry>
<key id="38" type="java.lang.String">Event:GoldenToleranceToDo</key>
<value id="39" type="java.lang.String">STOLToDay</value>
</entry>
<entry>
<key id="40" type="java.lang.String">Event:Ignore Issue MAT_EXP_TMS</key>
<value id="41" type="java.lang.String">false</value>
</entry>
<entry>
<key id="42" type="java.lang.String">Event:IgnorePriceValidityForComparison</key>
<value id="43" type="java.lang.String">false</value>
</entry>
<entry>
<key id="44" type="java.lang.String">Event:IsExternalLibrary</key>
<value id="45" type="java.lang.String">false</value>
</entry>
<entry>
<key id="46" type="java.lang.String">Event:IsWaterfallModel</key>
<value id="47" type="java.lang.String">false</value>
</entry>
<entry>
<key id="48" type="java.lang.String">Event:LoadFromLocalBB</key>
<value id="49" type="java.lang.String">false</value>
</entry>
<entry>
<key id="50" type="java.lang.String">Event:LoadFromLocalElektron</key>
<value id="51" type="java.lang.String">false</value>
</entry>
<entry>
<key id="52" type="java.lang.String">Event:LoadFromLocalRT</key>
<value id="53" type="java.lang.String">false</value>
</entry>
<entry>
<key id="54" type="java.lang.String">Event:MessageTypeBB</key>
<value id="55" type="java.lang.String">CBA_Bloomberg_Currency</value>
</entry>
<entry>
<key id="56" type="java.lang.String">Event:Observation Period</key>
<value id="57" type="java.lang.String">1</value>
</entry>
<entry>
<key id="58" type="java.lang.String">Event:Overwrite Suspect Status</key>
<value id="59" type="java.lang.String">false</value>
</entry>
<entry>
<key id="60" type="java.lang.String">Event:PRVI Hierarchy Enable Switch</key>
<value id="61" type="java.lang.String">false</value>
</entry>
<entry>
<key id="62" type="java.lang.String">Event:Price Day Frequency</key>
<value id="63" type="java.lang.String">daily</value>
</entry>
<entry>
<key id="64" type="java.lang.String">Event:PricePointEventDefinitionId</key>
<value id="65" type="java.lang.String">SNAP====SY</value>
</entry>
<entry>
<key id="66" type="java.lang.String">Event:Prior GPRC Observation Count</key>
<value id="67" type="java.lang.String">3</value>
</entry>
<entry>
<key id="68" type="java.lang.String">Event:Processing Date Deriving Factor</key>
<value id="69" type="java.lang.String">0</value>
</entry>
<entry>
<key id="70" type="java.lang.String">Event:Processing Mode</key>
<value id="71" type="java.lang.String">DoGoldenPriceCheckLast</value>
</entry>
<entry>
<key id="72" type="java.lang.String">Event:Qualifying type for Golden Price Check</key>
<value id="73" type="java.lang.String">VALIDANDUNVERIFED</value>
</entry>
<entry>
<key id="74" type="java.lang.String">Event:RTDirectory</key>
<value id="75" type="java.lang.String">/reports</value>
</entry>
<entry>
<key id="76" type="java.lang.String">Event:RTFilePattern</key>
<value id="77" type="java.lang.String">SYD_IR_RT_DSS_1815*.csv.gz</value>
</entry>
<entry>
<key id="78" type="java.lang.String">Event:ReProcessProcessedFiles</key>
<value id="79" type="java.lang.String">false</value>
</entry>
<entry>
<key id="80" type="java.lang.String">Event:ReUse Job Id</key>
<value id="81" type="java.lang.String">false</value>
</entry>
<entry>
<key id="82" type="java.lang.String">Event:RelType OneToMany</key>
<value id="83" type="java.lang.String">ONETOMNY</value>
</entry>
<entry>
<key id="84" type="java.lang.String">Event:RelType Sequence</key>
<value id="85" type="java.lang.String">SEQUENCE</value>
</entry>
<entry>
<key id="86" type="java.lang.String">Event:ReutersFileSystem</key>
<value id="87" type="java.lang.String">SFTP</value>
</entry>
<entry>
<key id="88" type="java.lang.String">Event:Run Rescrub</key>
<value id="89" type="java.lang.String">false</value>
</entry>
<entry>
<key id="90" type="java.lang.String">Event:RunSameDayProcessing</key>
<value id="91" type="java.lang.String">true</value>
</entry>
<entry>
<key id="92" type="java.lang.String">Event:Threads In Parallel</key>
<value id="93" type="java.lang.String">5</value>
</entry>
<entry>
<key id="94" type="java.lang.String">Event:ThresholdValue</key>
<value id="95" type="java.lang.String">20</value>
</entry>
<entry>
<key id="96" type="java.lang.String">Event:ToleranceToDo</key>
<value id="97" type="java.lang.String">STOLDayOverDay</value>
</entry>
<entry>
<key id="98" type="java.lang.String">Event:WriteValidStatusRecords</key>
<value id="99" type="java.lang.String">true</value>
</entry>
<entry>
<key id="100" type="java.lang.String">Event:pDoElecktronFlag</key>
<value id="101" type="java.lang.String">true</value>
</entry>
<entry>
<key id="102" type="java.lang.String">Event:pIssueGroupName</key>
<value id="103" type="java.lang.String">SYD_IR_1815</value>
</entry>
<entry>
<key id="104" type="java.lang.String">Event:pPublishFlag</key>
<value id="105" type="java.lang.String">true</value>
</entry>
<entry>
<key id="106" type="java.lang.String">Event:pSnapName</key>
<value id="107" type="java.lang.String">SY</value>
</entry>
<entry>
<key id="108" type="java.lang.String">EventName</key>
<value id="109" type="java.lang.String">evt_CBA_4Eye_Consolidated</value>
</entry>
</jobDataMap>
<jobGroup id="110">Events</jobGroup>
<jobName id="111">CBA_Collection</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="112">SYD_IR_1815</name>
<nextFireTime id="113">2018-05-14T18:14:55.000+1000</nextFireTime>
<previousFireTime id="114">2018-04-27T18:14:55.000+1000</previousFireTime>
<priority>5</priority>
<startTime id="115">2018-05-13T20:44:18.000+1000</startTime>
<timeZone id="116">Australia/Sydney</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
</goldensource-package>
