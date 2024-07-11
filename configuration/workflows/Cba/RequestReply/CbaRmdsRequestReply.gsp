<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.16">
<package-comment/>
<businessobject displayString="8 - Fixed persistency issue and commit points" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">Fixed persistency issue and commit points</comment>
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
<stringValue id="14">vJobId</stringValue>
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
<name id="19">Call Subworkflow</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="20">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="21" type="java.util.HashSet">
<item id="22" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="23">["IsChainRequest"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="24">input["IsChainRequest"]</name>
<objectValue id="25" type="java.lang.Boolean">false</objectValue>
<type>CONSTANT</type>
</item>
<item id="26" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="27">["MaxRequestPerItem"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="28">input["MaxRequestPerItem"]</name>
<objectValue id="29" type="java.lang.Integer">500</objectValue>
<type>CONSTANT</type>
</item>
<item id="30" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="31">["Message"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="32">input["Message"]</name>
<stringValue id="33">vReqXml</stringValue>
<type>VARIABLE</type>
</item>
<item id="34" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="35">["MessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="36">input["MessageType"]</name>
<stringValue id="37">RMDS</stringValue>
<type>CONSTANT</type>
</item>
<item id="38" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="39">["ParentJob"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="40">input["ParentJob"]</name>
<stringValue id="41">vJobId</stringValue>
<type>VARIABLE</type>
</item>
<item id="42" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="43">["PricePointEventDefinitionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="44">input["PricePointEventDefinitionId"]</name>
<stringValue id="45">pPPEDOid</stringValue>
<type>VARIABLE</type>
</item>
<item id="46" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="47">["ProcessingDate"]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="48">input["ProcessingDate"]</name>
<stringValue id="49">pProcessingDate</stringValue>
<type>VARIABLE</type>
</item>
<item id="50" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="51">["RMDS Service"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="52">input["RMDS Service"]</name>
<stringValue id="53">IDN_SELECTFEED</stringValue>
<type>CONSTANT</type>
</item>
<item id="54" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="55">["RunTime"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="56">input["RunTime"]</name>
<objectValue id="57" type="java.lang.Integer">100</objectValue>
<type>CONSTANT</type>
</item>
<item id="58" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="59">["WriteToFile"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="60">input["WriteToFile"]</name>
<objectValue id="61" type="java.lang.Boolean">true</objectValue>
<type>CONSTANT</type>
</item>
<item id="62" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="63">name</name>
<stringValue id="64">RMDSRequestReply</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="65" type="java.util.HashSet">
<item id="66" type="com.j2fe.workflow.definition.Transition">
<name id="67">rows-found</name>
<source id="68">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="69">XML Select (Xor Split)</name>
<nodeHandler>com.j2fe.general.activities.database.XMLQuery</nodeHandler>
<nodeHandlerClass id="70">com.j2fe.general.activities.database.XMLQuery</nodeHandlerClass>
<parameters id="71" type="java.util.HashSet">
<item id="72" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="73">database</name>
<stringValue id="74">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="75" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="76">[0]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="77">indexedParameters[0]</name>
<stringValue id="78">pGroupName</stringValue>
<type>VARIABLE</type>
</item>
<item id="79" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="80">[1]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="81">indexedParameters[1]</name>
<stringValue id="82">pRequestType</stringValue>
<type>VARIABLE</type>
</item>
<item id="83" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="84">[2]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="85">indexedParameters[2]</name>
<stringValue id="86">pRegion</stringValue>
<type>VARIABLE</type>
</item>
<item id="87" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="88">queryName</name>
<stringValue id="89">qry_CBA_RMDSReqRep</stringValue>
<type>CONSTANT</type>
</item>
<item id="90" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="91">result[0]</name>
<stringValue id="92">vReqXml</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="93" type="java.util.HashSet">
<item id="94" type="com.j2fe.workflow.definition.Transition">
<name id="95">goto-next</name>
<source id="96">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="97">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="98">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="99" type="java.util.HashSet">
<item id="100" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="101">jobId</name>
<stringValue id="102">vJobId</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="103" type="java.util.HashSet">
<item id="104" type="com.j2fe.workflow.definition.Transition">
<name id="105">goto-next</name>
<source id="106">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="107">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="108">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="109" type="java.util.HashSet"/>
<targets id="110" type="java.util.HashSet">
<item idref="104" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="96"/>
</item>
</sources>
<targets id="111" type="java.util.HashSet">
<item idref="94" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="68"/>
</item>
</sources>
<targets id="112" type="java.util.HashSet">
<item id="113" type="com.j2fe.workflow.definition.Transition">
<name id="114">nothing-found</name>
<source idref="68"/>
<target idref="8"/>
</item>
<item idref="66" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="18"/>
</item>
</sources>
<targets id="115" type="java.util.HashSet">
<item idref="16" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="8"/>
</item>
<item idref="113" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="116" type="java.util.HashSet">
<item idref="6" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
</sources>
<targets id="117" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="118">Cba/RequestReply</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="119">user1</lastChangeUser>
<lastUpdate id="120">2018-05-14T20:58:11.000+1000</lastUpdate>
<name id="121">CbaRmdsRequestReply</name>
<optimize>true</optimize>
<parameter id="122" type="java.util.HashMap">
<entry>
<key id="123" type="java.lang.String">pGroupName</key>
<value id="124" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="125">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="126" type="java.lang.String">pPPEDOid</key>
<value id="127" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="128">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="129">snap</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="130" type="java.lang.String">pProcessingDate</key>
<value id="131" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="132">java.util.Date</className>
<clazz>java.util.Date</clazz>
<description id="133">Processing Date for prices</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="134" type="java.lang.String">pRegion</key>
<value id="135" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="136">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="137" type="java.lang.String">pRequestType</key>
<value id="138" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="139">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="140">BAISC, SECMASTER, PRICING, INTRA PRICE</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="141" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="106"/>
<status>RELEASED</status>
<variables id="142" type="java.util.HashMap">
<entry>
<key id="143" type="java.lang.String">pGroupName</key>
<value id="144" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="145">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="146" type="java.lang.String">pPPEDOid</key>
<value id="147" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="148">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="149">snap</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="150" type="java.lang.String">pProcessingDate</key>
<value id="151" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="152">java.util.Date</className>
<clazz>java.util.Date</clazz>
<description id="153">Processing Date for prices</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="154" type="java.lang.String">pRegion</key>
<value id="155" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="156">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="157" type="java.lang.String">pRequestType</key>
<value id="158" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="159">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="160">BAISC, SECMASTER, PRICING, INTRA PRICE</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="161" type="java.lang.String">vJobId</key>
<value id="162" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="163">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>8</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
