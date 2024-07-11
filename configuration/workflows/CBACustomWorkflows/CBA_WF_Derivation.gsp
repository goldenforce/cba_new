<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.15">
<package-comment/>
<businessobject displayString="2 - Version1" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>false</clustered>
<comment id="1">Version1</comment>
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
<name id="19">Call Subworkflow</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="20">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="21" type="java.util.HashSet">
<item id="22" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="23">["pIssueGroup"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="24">input["pIssueGroup"]</name>
<stringValue id="25">IssueGroupId</stringValue>
<type>VARIABLE</type>
</item>
<item id="26" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="27">["pPriceDate"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="28">input["pPriceDate"]</name>
<stringValue id="29">ProcessingDate</stringValue>
<type>VARIABLE</type>
</item>
<item id="30" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="31">["pSnapName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="32">input["pSnapName"]</name>
<stringValue id="33">PricePointEventDefinitionId</stringValue>
<type>VARIABLE</type>
</item>
<item id="34" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="35">name</name>
<stringValue id="36">CbaMruPublish_SelectInsert</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="37" type="java.util.HashSet">
<item id="38" type="com.j2fe.workflow.definition.Transition">
<name id="39">goto-next</name>
<source id="40">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="41">Call Subworkflow</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="42">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="43" type="java.util.HashSet">
<item id="44" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="45">["CleanValidationInstructionCache"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="46">input["CleanValidationInstructionCache"]</name>
<objectValue id="47" type="java.lang.Boolean">true</objectValue>
<type>CONSTANT</type>
</item>
<item id="48" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="49">["CreateIspcOnly"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="50">input["CreateIspcOnly"]</name>
<objectValue id="51" type="java.lang.Boolean">false</objectValue>
<type>CONSTANT</type>
</item>
<item id="52" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="53">["DerivationMethod"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="54">input["DerivationMethod"]</name>
<stringValue id="55">INSTRUMENTDERIVATION</stringValue>
<type>CONSTANT</type>
</item>
<item id="56" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="57">["DeriveFromGoldenPrices"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="58">input["DeriveFromGoldenPrices"]</name>
<objectValue idref="47"/>
<type>CONSTANT</type>
</item>
<item id="59" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="60">["DownstreamSystemIdentifier"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="61">input["DownstreamSystemIdentifier"]</name>
<stringValue id="62">Default</stringValue>
<type>CONSTANT</type>
</item>
<item id="63" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="64">["InstrumentId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="65">input["InstrumentId"]</name>
<stringValue id="66">InstrumentId</stringValue>
<type>VARIABLE</type>
</item>
<item id="67" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="68">["IssueGroupId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="69">input["IssueGroupId"]</name>
<stringValue id="70">IssueGroupId</stringValue>
<type>VARIABLE</type>
</item>
<item id="71" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="72">["PricePointEventDefinitionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="73">input["PricePointEventDefinitionId"]</name>
<stringValue id="74">PricePointEventDefinitionId</stringValue>
<type>VARIABLE</type>
</item>
<item id="75" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="76">["ProcessingDate"]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="77">input["ProcessingDate"]</name>
<stringValue id="78">ProcessingDate</stringValue>
<type>VARIABLE</type>
</item>
<item id="79" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="80">name</name>
<stringValue id="81">Price Derivation</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="82" type="java.util.HashSet">
<item id="83" type="com.j2fe.workflow.definition.Transition">
<name id="84">rows-found</name>
<source id="85">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="86">Database Select (Xor Split)</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="87">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="88" type="java.util.HashSet">
<item id="89" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="90">database</name>
<stringValue id="91">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="92" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="93">querySQL</name>
<stringValue id="94">select distinct gprc_ind from FT_T_GPCS where trunc(prc_tms)='4-May-2018' and GPRC_IND is not null and GPRC_IND &lt;&gt;'P'</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="95" type="java.util.HashSet">
<item id="96" type="com.j2fe.workflow.definition.Transition">
<name id="97">goto-next</name>
<source id="98">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="99">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="100">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="101" type="java.util.HashSet">
<item id="102" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="103">file</name>
<objectValue id="104" type="java.net.URI">Price%20Derivation</objectValue>
<type>CONSTANT</type>
</item>
<item id="105" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="106">jobId</name>
<stringValue id="107">JobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="108" type="java.util.HashSet">
<item id="109" type="com.j2fe.workflow.definition.Transition">
<name id="110">goto-next</name>
<source id="111">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="112">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="113">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="114" type="java.util.HashSet"/>
<targets id="115" type="java.util.HashSet">
<item idref="109" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="98"/>
</item>
</sources>
<targets id="116" type="java.util.HashSet">
<item idref="96" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="85"/>
</item>
</sources>
<targets id="117" type="java.util.HashSet">
<item id="118" type="com.j2fe.workflow.definition.Transition">
<name id="119">nothing-found</name>
<source idref="85"/>
<target id="120">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="121">Fetch Email Id</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="122">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="123" type="java.util.HashSet">
<item id="124" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="125">database</name>
<stringValue id="126">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="127" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="128">firstColumnsResult</name>
<stringValue id="129">emailID</stringValue>
<type>VARIABLE</type>
</item>
<item id="130" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="131">querySQL</name>
<stringValue id="132">select EMAIL_ID from FT_T_ISG1 where ISS_GRP_OID='MAKERUSER'</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="133" type="java.util.HashSet">
<item idref="118" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="134" type="java.util.HashSet">
<item id="135" type="com.j2fe.workflow.definition.Transition">
<name id="136">goto-next</name>
<source idref="120"/>
<target id="137">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="138">Bean Shell Script (Standard)</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="139">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="140" type="java.util.HashSet">
<item id="141" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="142">statements</name>
<stringValue id="143">String msg="Some of the underlying instrument's prices are missing or suspect for "+ processing_date +" Please correct it.";</stringValue>
<type>CONSTANT</type>
</item>
<item id="144" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="145">variables["msg"]</name>
<stringValue id="146">email_msg</stringValue>
<type>VARIABLE</type>
</item>
<item id="147" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="148">["processing_date"]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="149">variables["processing_date"]</name>
<stringValue id="150">ProcessingDate</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="151" type="java.util.HashSet">
<item idref="135" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="152" type="java.util.HashSet">
<item id="153" type="com.j2fe.workflow.definition.Transition">
<name id="154">goto-next</name>
<source idref="137"/>
<target id="155">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="156">Email</name>
<nodeHandler>com.j2fe.general.activities.EMAIL</nodeHandler>
<nodeHandlerClass id="157">com.j2fe.general.activities.EMAIL</nodeHandlerClass>
<parameters id="158" type="java.util.HashSet">
<item id="159" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="160">emailText</name>
<stringValue id="161">email_msg</stringValue>
<type>VARIABLE</type>
</item>
<item id="162" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="163">from</name>
<stringValue id="164">no-reply@thegoldensource.com</stringValue>
<type>CONSTANT</type>
</item>
<item id="165" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="166">recipients</name>
<stringValue id="167">emailID</stringValue>
<type>VARIABLE</type>
</item>
<item id="168" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="169">session</name>
<stringValue id="170">email/session</stringValue>
<type>REFERENCE</type>
</item>
<item id="171" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="172">subject</name>
<stringValue id="173">Derivation : Underlying Prices Missing</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="174" type="java.util.HashSet">
<item idref="153" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="175" type="java.util.HashSet">
<item id="176" type="com.j2fe.workflow.definition.Transition">
<name id="177">goto-next</name>
<source idref="155"/>
<target idref="8"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="83" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="40"/>
</item>
</sources>
<targets id="178" type="java.util.HashSet">
<item idref="38" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="18"/>
</item>
</sources>
<targets id="179" type="java.util.HashSet">
<item idref="16" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="8"/>
</item>
<item idref="176" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="180" type="java.util.HashSet">
<item idref="6" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
</sources>
<targets id="181" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="182">CBACustomWorkflows</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="183">user1</lastChangeUser>
<lastUpdate id="184">2018-05-13T22:12:48.000+1000</lastUpdate>
<name id="185">CBA_WF_Derivation</name>
<optimize>true</optimize>
<parameter id="186" type="java.util.HashMap">
<entry>
<key id="187" type="java.lang.String">InstrumentId</key>
<value id="188" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="189">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="190" type="java.lang.String">IssueGroupId</key>
<value id="191" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="192">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="193" type="java.lang.String">PricePointEventDefinitionId</key>
<value id="194" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="195">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="196" type="java.lang.String">ProcessingDate</key>
<value id="197" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="198">java.util.Date</className>
<clazz>java.util.Date</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="199" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="111"/>
<status>RELEASED</status>
<variables id="200" type="java.util.HashMap">
<entry>
<key id="201" type="java.lang.String">InstrumentId</key>
<value id="202" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="203">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="204" type="java.lang.String">IssueGroupId</key>
<value id="205" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="206">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="207" type="java.lang.String">PricePointEventDefinitionId</key>
<value id="208" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="209">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="210" type="java.lang.String">ProcessingDate</key>
<value id="211" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="212">java.util.Date</className>
<clazz>java.util.Date</clazz>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>2</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
