<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.16">
<package-comment/>
<businessobject displayString="4 - Released" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">Released</comment>
<endNode id="2">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="3">Stop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="4">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="5" type="java.util.HashSet">
<item id="6" type="com.j2fe.workflow.definition.Transition">
<name id="7">goto-next</name>
<source id="8">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="9">Close Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CloseJob</nodeHandler>
<nodeHandlerClass id="10">com.j2fe.streetlamp.activities.CloseJob</nodeHandlerClass>
<parameters id="11" type="java.util.HashSet">
<item id="12" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="13">jobId</name>
<stringValue id="14">JobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="15" type="java.util.HashSet">
<item id="16" type="com.j2fe.workflow.definition.Transition">
<name id="17">goto-next</name>
<source id="18">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="19">Call ReutersRequestReply</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="20">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="21" type="java.util.HashSet">
<item id="22" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="23">["Hours"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="24">input["Hours"]</name>
<stringValue id="25">Hours</stringValue>
<type>VARIABLE</type>
</item>
<item id="26" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="27">["Issue Group Name"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="28">input["Issue Group Name"]</name>
<stringValue id="29">Issue Group Name</stringValue>
<type>VARIABLE</type>
</item>
<item id="30" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="31">["MaxRequestsPerFile"]@java/lang/Long@</UITypeHint>
<input>true</input>
<name id="32">input["MaxRequestsPerFile"]</name>
<objectValue id="33" type="java.lang.Long">5000</objectValue>
<type>CONSTANT</type>
</item>
<item id="34" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="35">["Minutes"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="36">input["Minutes"]</name>
<stringValue id="37">Minutes</stringValue>
<type>VARIABLE</type>
</item>
<item id="38" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="39">["ReutersDSSInputListName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="40">input["ReutersDSSInputListName"]</name>
<stringValue id="41">lstNme</stringValue>
<type>VARIABLE</type>
</item>
<item id="42" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="43">["ReutersDSSReportTemplateName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="44">input["ReutersDSSReportTemplateName"]</name>
<stringValue id="45">ReutersDSSReportTemplateName</stringValue>
<type>VARIABLE</type>
</item>
<item id="46" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="47">["ReutersDSSScheduleName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="48">input["ReutersDSSScheduleName"]</name>
<stringValue id="49">scheduleNme</stringValue>
<type>VARIABLE</type>
</item>
<item id="50" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="51">["UpdateExpired"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="52">input["UpdateExpired"]</name>
<objectValue id="53" type="java.lang.Boolean">true</objectValue>
<type>CONSTANT</type>
</item>
<item id="54" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="55">["filePattern"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="56">input["filePattern"]</name>
<stringValue id="57">filePattern</stringValue>
<type>VARIABLE</type>
</item>
<item id="58" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="59">name</name>
<stringValue id="60">ReutersRequestReply</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="61" type="java.util.HashSet">
<item id="62" type="com.j2fe.workflow.definition.Transition">
<name id="63">goto-next</name>
<source id="64">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="65">generate listnameand schedule name</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="66">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="67" type="java.util.HashSet">
<item id="68" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="69">statements</name>
<stringValue id="70">String lstNme = "CBA_"+grpNme.replace(".","_")+"_"+RepNme.replace(".","_");&#13;
String scheduleNme = "CBA_"+grpNme.replace(".","_")+"_"+RepNme.replace(".","_");</stringValue>
<type>CONSTANT</type>
</item>
<item id="71" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="72">variables["RepNme"]</name>
<stringValue id="73">ReutersDSSReportTemplateName</stringValue>
<type>VARIABLE</type>
</item>
<item id="74" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="75">variables["grpNme"]</name>
<stringValue id="76">Issue Group Name</stringValue>
<type>VARIABLE</type>
</item>
<item id="77" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="78">variables["lstNme"]</name>
<stringValue id="79">lstNme</stringValue>
<type>VARIABLE</type>
</item>
<item id="80" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="81">variables["scheduleNme"]</name>
<stringValue id="82">scheduleNme</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="83" type="java.util.HashSet">
<item id="84" type="com.j2fe.workflow.definition.Transition">
<name id="85">goto-next</name>
<source id="86">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="87">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="88">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="89" type="java.util.HashSet">
<item id="90" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="91">configInfo</name>
<stringValue id="92">Issue Group Name</stringValue>
<type>VARIABLE</type>
</item>
<item id="93" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="94">file</name>
<objectValue id="95" type="java.net.URI">ReutersRequestReplyWrapper</objectValue>
<type>CONSTANT</type>
</item>
<item id="96" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="97">jobId</name>
<stringValue id="98">JobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="99" type="java.util.HashSet">
<item id="100" type="com.j2fe.workflow.definition.Transition">
<name id="101">goto-next</name>
<source id="102">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="103">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="104">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="105" type="java.util.HashSet"/>
<targets id="106" type="java.util.HashSet">
<item idref="100" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="86"/>
</item>
</sources>
<targets id="107" type="java.util.HashSet">
<item idref="84" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="64"/>
</item>
</sources>
<targets id="108" type="java.util.HashSet">
<item idref="62" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="18"/>
</item>
</sources>
<targets id="109" type="java.util.HashSet">
<item idref="16" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="8"/>
</item>
</sources>
<targets id="110" type="java.util.HashSet">
<item idref="6" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
</sources>
<targets id="111" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="112">Custom/Reuters</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="113">CBA_GC_OWN</lastChangeUser>
<lastUpdate id="114">2018-03-30T16:58:18.000+1100</lastUpdate>
<name id="115">ReutersRequestReplyWrapper</name>
<optimize>true</optimize>
<parameter id="116" type="java.util.HashMap">
<entry>
<key id="117" type="java.lang.String">Hours</key>
<value id="118" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="119">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="120" type="java.lang.String">Issue Group Name</key>
<value id="121" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="122">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="123" type="java.lang.String">Minutes</key>
<value id="124" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="125">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="126" type="java.lang.String">ReutersDSSReportTemplateName</key>
<value id="127" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="128">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="129">The name of the report created on Reuter's site</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="130" type="java.lang.String">filePattern</key>
<value id="131" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="132">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="133">CSV file for prices from Reuters.&#13;
Ex. RSU_PRICES_%D.csv</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="134" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="102"/>
<status>RELEASED</status>
<variables id="135" type="java.util.HashMap">
<entry>
<key id="136" type="java.lang.String">Hours</key>
<value id="137" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="138">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="139" type="java.lang.String">Issue Group Name</key>
<value id="140" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="141">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="142" type="java.lang.String">Minutes</key>
<value id="143" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="144">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="145" type="java.lang.String">ReutersDSSReportTemplateName</key>
<value id="146" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="147">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="148">The name of the report created on Reuter's site</description>
<persistent>false</persistent>
<value id="149" type="java.lang.String">RSU_ReutersDSS_Intraday_Pricing</value>
</value>
</entry>
<entry>
<key id="150" type="java.lang.String">filePattern</key>
<value id="151" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="152">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="153">CSV file for prices from Reuters.&#13;
Ex. RSU_PRICES_%D.csv</description>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>4</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
