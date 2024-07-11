<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.15">
<package-comment/>
<businessobject displayString="8 - 8.7.1.14a" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>false</clustered>
<comment id="1">8.7.1.14a</comment>
<description id="2">This workflow creates a transaction, sets the status of the provided Vendor Request OID to PROCESSING and calls the the Basic Message Processing workflow. After the message processing it checks the severity of the transaction and sets the status of the Vendor Request to CLOSED (when severity &lt; 40) or FAILED (severity &gt;= 40).</description>
<endNode id="3">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="4">END</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="5">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="6" type="java.util.HashSet">
<item id="7" type="com.j2fe.workflow.definition.Transition">
<name id="8">goto-next</name>
<source id="9">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="10">Report Error</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="14">["ApplicationId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="15">input["ApplicationId"]</name>
<stringValue id="16">VENDOR</stringValue>
<type>CONSTANT</type>
</item>
<item id="17" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="18">["ErrorText"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="19">input["ErrorText"]</name>
<stringValue id="20">Processing messages in the engine failed.</stringValue>
<type>CONSTANT</type>
</item>
<item id="21" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="22">["NotificationId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="23">input["NotificationId"]</name>
<stringValue id="24">7</stringValue>
<type>CONSTANT</type>
</item>
<item id="25" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="26">["PartId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="27">input["PartId"]</name>
<stringValue id="28">REQREPLY</stringValue>
<type>CONSTANT</type>
</item>
<item id="29" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="30">["Status"]@com/j2fe/connector/RequestStatus@</UITypeHint>
<input>true</input>
<name id="31">input["Status"]</name>
<stringValue id="32">FAILED</stringValue>
<type>CONSTANT</type>
</item>
<item id="33" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="34">["TRID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="35">input["TRID"]</name>
<stringValue id="36">TRID</stringValue>
<type>VARIABLE</type>
</item>
<item id="37" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="38">["VREQOIDS"]@[Ljava/lang/String;@[0]</UITypeHint>
<input>true</input>
<name id="39">input["VREQOIDS"][0]</name>
<stringValue id="40">VreqOID</stringValue>
<type>VARIABLE</type>
</item>
<item id="41" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="42">name</name>
<stringValue id="43">Report Error</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="44" type="java.util.HashSet">
<item id="45" type="com.j2fe.workflow.definition.Transition">
<name id="46">40</name>
<source id="47">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="48">Check Processing Status</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="49">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="50" type="java.util.HashSet">
<item id="51" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="52">caseItem</name>
<stringValue id="53">TRIDSeverity</stringValue>
<type>VARIABLE</type>
</item>
<item id="54" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="55">defaultItem</name>
<stringValue id="56">success</stringValue>
<type>CONSTANT</type>
</item>
<item id="57" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="58">nullTransition</name>
<stringValue id="59">success</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="60" type="java.util.HashSet">
<item id="61" type="com.j2fe.workflow.definition.Transition">
<name id="62">goto-next</name>
<source id="63">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="64">Process Messages</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="65">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="66" type="java.util.HashSet">
<item id="67" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="68">event</name>
<stringValue id="69">ProcessFeedMessage</stringValue>
<type>CONSTANT</type>
</item>
<item id="70" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="71">["Message"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="72">input["Message"]</name>
<stringValue id="73">Message</stringValue>
<type>VARIABLE</type>
</item>
<item id="74" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="75">["MessageMetaData"]@java/util/Map@</UITypeHint>
<input>true</input>
<name id="76">input["MessageMetaData"]</name>
<stringValue id="77">internalMessage</stringValue>
<type>VARIABLE</type>
<variablePart id="78">properties.custom</variablePart>
</item>
<item id="79" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="80">["MessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="81">input["MessageType"]</name>
<stringValue id="82">MessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="83" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="84">["ProcessFilteredMessages"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="85">input["ProcessFilteredMessages"]</name>
<stringValue id="86">ProcessFilteredMessages</stringValue>
<type>VARIABLE</type>
</item>
<item id="87" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="88">["TransactionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="89">input["TransactionId"]</name>
<stringValue id="90">TRID</stringValue>
<type>VARIABLE</type>
</item>
<item id="91" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="92">name</name>
<stringValue id="93">Basic Message Processing</stringValue>
<type>CONSTANT</type>
</item>
<item id="94" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="95">["Severity"]@java/lang/Integer@</UITypeHint>
<input>false</input>
<name id="96">output["Severity"]</name>
<stringValue id="97">TRIDSeverity</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="98" type="java.util.HashSet">
<item id="99" type="com.j2fe.workflow.definition.Transition">
<name id="100">goto-next</name>
<source id="101">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="102">Merge Maps</name>
<nodeHandler>com.j2fe.translation.activities.MergeMaps</nodeHandler>
<nodeHandlerClass id="103">com.j2fe.translation.activities.MergeMaps</nodeHandlerClass>
<parameters id="104" type="java.util.HashSet">
<item id="105" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="106">inputMap</name>
<stringValue id="107">MessageMetaData</stringValue>
<type>VARIABLE</type>
</item>
<item id="108" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="109">outputMap</name>
<stringValue id="110">internalMessage</stringValue>
<type>VARIABLE</type>
<variablePart id="111">properties.custom</variablePart>
</item>
</parameters>
<sources id="112" type="java.util.HashSet">
<item id="113" type="com.j2fe.workflow.definition.Transition">
<name id="114">goto-next</name>
<source id="115">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="116">Create Message</name>
<nodeHandler>com.j2fe.feeds.activities.CreateMessage</nodeHandler>
<nodeHandlerClass id="117">com.j2fe.feeds.activities.CreateMessage</nodeHandlerClass>
<parameters id="118" type="java.util.HashSet">
<item id="119" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="120">intputMessage</name>
<stringValue id="121">Message</stringValue>
<type>VARIABLE</type>
</item>
<item id="122" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="123">message</name>
<stringValue id="124">internalMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="125" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="126">messageType</name>
<stringValue id="127">MessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="128" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="129">transactionId</name>
<stringValue id="130">TRID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="131" type="java.util.HashSet">
<item id="132" type="com.j2fe.workflow.definition.Transition">
<name id="133">goto-next</name>
<source id="134">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="135">Status -&gt; PROCESSING</name>
<nodeHandler>com.j2fe.feeds.request.UpdateVREQ</nodeHandler>
<nodeHandlerClass id="136">com.j2fe.feeds.request.UpdateVREQ</nodeHandlerClass>
<parameters id="137" type="java.util.HashSet">
<item id="138" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="139">requestOIDs[0]</name>
<stringValue id="140">VreqOID</stringValue>
<type>VARIABLE</type>
</item>
<item id="141" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="142">status</name>
<stringValue id="143">PROCESSING</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="144" type="java.util.HashSet">
<item id="145" type="com.j2fe.workflow.definition.Transition">
<name id="146">goto-next</name>
<source id="147">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="148">Create Transaction</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateTransaction</nodeHandler>
<nodeHandlerClass id="149">com.j2fe.streetlamp.activities.CreateTransaction</nodeHandlerClass>
<parameters id="150" type="java.util.HashSet">
<item id="151" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="152">flushImmediate</name>
<objectValue id="153" type="java.lang.Boolean">true</objectValue>
<type>CONSTANT</type>
</item>
<item id="154" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="155">jobId</name>
<stringValue id="156">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="157" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="158">messageType</name>
<stringValue id="159">MessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="160" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="161">recordNumber</name>
<stringValue id="162">RecordNumber</stringValue>
<type>VARIABLE</type>
</item>
<item id="163" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="164">transactionId</name>
<stringValue id="165">TRID</stringValue>
<type>VARIABLE</type>
</item>
<item id="166" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="167">vreqOID</name>
<stringValue id="168">VreqOID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="169" type="java.util.HashSet">
<item id="170" type="com.j2fe.workflow.definition.Transition">
<name id="171">goto-next</name>
<source id="172">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="173">START</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="174">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="175" type="java.util.HashSet"/>
<targets id="176" type="java.util.HashSet">
<item idref="170" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="147"/>
</item>
</sources>
<targets id="177" type="java.util.HashSet">
<item idref="145" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="134"/>
</item>
</sources>
<targets id="178" type="java.util.HashSet">
<item idref="132" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="115"/>
</item>
</sources>
<targets id="179" type="java.util.HashSet">
<item idref="113" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="101"/>
</item>
</sources>
<targets id="180" type="java.util.HashSet">
<item idref="99" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="63"/>
</item>
</sources>
<targets id="181" type="java.util.HashSet">
<item idref="61" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="47"/>
</item>
</sources>
<targets id="182" type="java.util.HashSet">
<item idref="45" type="com.j2fe.workflow.definition.Transition"/>
<item id="183" type="com.j2fe.workflow.definition.Transition">
<name id="184">50</name>
<source idref="47"/>
<target idref="9"/>
</item>
<item id="185" type="com.j2fe.workflow.definition.Transition">
<name id="186">success</name>
<source idref="47"/>
<target id="187">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="188">Status -&gt; PROCESSED</name>
<nodeHandler>com.j2fe.feeds.request.UpdateVREQ</nodeHandler>
<nodeHandlerClass id="189">com.j2fe.feeds.request.UpdateVREQ</nodeHandlerClass>
<parameters id="190" type="java.util.HashSet">
<item id="191" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="192">requestOIDs[0]</name>
<stringValue id="193">VreqOID</stringValue>
<type>VARIABLE</type>
</item>
<item id="194" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="195">status</name>
<stringValue id="196">PROCESSED</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="197" type="java.util.HashSet">
<item idref="185" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="198" type="java.util.HashSet">
<item id="199" type="com.j2fe.workflow.definition.Transition">
<name id="200">goto-next</name>
<source idref="187"/>
<target id="201">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="202">Status -&gt; CLOSED</name>
<nodeHandler>com.j2fe.feeds.request.UpdateVREQ</nodeHandler>
<nodeHandlerClass id="203">com.j2fe.feeds.request.UpdateVREQ</nodeHandlerClass>
<parameters id="204" type="java.util.HashSet">
<item id="205" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="206">requestOIDs[0]</name>
<stringValue id="207">VreqOID</stringValue>
<type>VARIABLE</type>
</item>
<item id="208" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="209">status</name>
<stringValue id="210">CLOSED</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="211" type="java.util.HashSet">
<item idref="199" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="212" type="java.util.HashSet">
<item id="213" type="com.j2fe.workflow.definition.Transition">
<name id="214">goto-next</name>
<source idref="201"/>
<target idref="3"/>
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
<type>XORSPLIT</type>
</source>
<target idref="9"/>
</item>
<item idref="183" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="215" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
<item idref="213" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="216" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="217">Request Reply/Standard</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="218">user1</lastChangeUser>
<lastUpdate id="219">2018-04-19T01:37:49.000+1000</lastUpdate>
<name id="220">PrepareMessageProcessing</name>
<optimize>true</optimize>
<parameter id="221" type="java.util.HashMap">
<entry>
<key id="222" type="java.lang.String">JobID</key>
<value id="223" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="224">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="225">The JobID of the response file that is processed.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="226" type="java.lang.String">Message</key>
<value id="227" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="228">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="229">The response message to be processed.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="230" type="java.lang.String">MessageMetaData</key>
<value id="231" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="232">java.util.Map</className>
<clazz>java.util.Map</clazz>
<description id="233">MessageMetaData</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="234" type="java.lang.String">MessageType</key>
<value id="235" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="236">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="237">The message type to be used for processing the response message.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="238" type="java.lang.String">ParticipantPurposeType</key>
<value id="239" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="240">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="241" type="java.lang.String">PricePointEventDefinitionId</key>
<value id="242" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="243">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="244">PricePointEventDefinitionId</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="245" type="java.lang.String">ProcessFilteredMessages</key>
<value id="246" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="247">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="248">Indicates that messages are processed regardless of the result of the Generic Inbound Filter.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="249" type="java.lang.String">RecordNumber</key>
<value id="250" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="251">java.lang.Long</className>
<clazz>java.lang.Long</clazz>
<description id="252">The position of the message in the file.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="253" type="java.lang.String">VreqOID</key>
<value id="254" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="255">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="256">The Vendor Request OID this message has been correlated too.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="257" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="172"/>
<status>RELEASED</status>
<variables id="258" type="java.util.HashMap">
<entry>
<key id="259" type="java.lang.String">JobID</key>
<value id="260" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="261">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="262">The JobID of the response file that is processed.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="263" type="java.lang.String">Message</key>
<value id="264" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="265">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="266">The response message to be processed.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="267" type="java.lang.String">MessageMetaData</key>
<value id="268" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="269">java.util.Map</className>
<clazz>java.util.Map</clazz>
<description id="270">MessageMetaData</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="271" type="java.lang.String">MessageType</key>
<value id="272" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="273">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="274">The message type to be used for processing the response message.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="275" type="java.lang.String">ParticipantPurposeType</key>
<value id="276" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="277">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="278" type="java.lang.String">REQUEST</value>
</value>
</entry>
<entry>
<key id="279" type="java.lang.String">PricePointEventDefinitionId</key>
<value id="280" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="281">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="282">PricePointEventDefinitionId</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="283" type="java.lang.String">ProcessFilteredMessages</key>
<value id="284" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="285">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="286">Indicates that messages are processed regardless of the result of the Generic Inbound Filter.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="287" type="java.lang.String">RecordNumber</key>
<value id="288" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="289">java.lang.Long</className>
<clazz>java.lang.Long</clazz>
<description id="290">The position of the message in the file.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="291" type="java.lang.String">VreqOID</key>
<value id="292" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="293">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="294">The Vendor Request OID this message has been correlated too.</description>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>8</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
<businessobject displayString="7 - 8.7.1.14a" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>false</clustered>
<comment id="1">8.7.1.14a</comment>
<description id="2">This workflow creates a transaction, sets the status of the provided Vendor Request OID to PROCESSING and calls the the Basic Message Processing workflow. After the message processing it checks the severity of the transaction and sets the status of the Vendor Request to CLOSED (when severity &lt; 40) or FAILED (severity &gt;= 40).</description>
<endNode id="3">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="4">END</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="5">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="6" type="java.util.HashSet">
<item id="7" type="com.j2fe.workflow.definition.Transition">
<name id="8">goto-next</name>
<source id="9">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="10">BB Scheduled Report Error</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="14">["ApplicationId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="15">input["ApplicationId"]</name>
<stringValue id="16">VENDOR</stringValue>
<type>CONSTANT</type>
</item>
<item id="17" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="18">["ErrorText"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="19">input["ErrorText"]</name>
<stringValue id="20">Processing messages in the engine failed.</stringValue>
<type>CONSTANT</type>
</item>
<item id="21" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="22">["JobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="23">input["JobID"]</name>
<stringValue id="24">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="25" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="26">["NotificationId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="27">input["NotificationId"]</name>
<stringValue id="28">7</stringValue>
<type>CONSTANT</type>
</item>
<item id="29" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="30">["PartId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="31">input["PartId"]</name>
<stringValue id="32">REQREPLY</stringValue>
<type>CONSTANT</type>
</item>
<item id="33" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="34">["RequestTransaction"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="35">input["RequestTransaction"]</name>
<stringValue id="36">RequestTransaction</stringValue>
<type>VARIABLE</type>
</item>
<item id="37" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="38">["Status"]@com/j2fe/connector/RequestStatus@</UITypeHint>
<input>true</input>
<name id="39">input["Status"]</name>
<stringValue id="40">FAILED</stringValue>
<type>CONSTANT</type>
</item>
<item id="41" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="42">["VREQOIDS"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="43">input["VREQOIDS"]</name>
<stringValue id="44">VreqOID</stringValue>
<type>VARIABLE</type>
</item>
<item id="45" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="46">name</name>
<stringValue id="47">BBScheduledReportError</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="48" type="java.util.HashSet">
<item id="49" type="com.j2fe.workflow.definition.Transition">
<name id="50">40</name>
<source id="51">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="52">Check Processing Status</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="53">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="54" type="java.util.HashSet">
<item id="55" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="56">caseItem</name>
<stringValue id="57">TRIDSeverity</stringValue>
<type>VARIABLE</type>
</item>
<item id="58" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="59">defaultItem</name>
<stringValue id="60">success</stringValue>
<type>CONSTANT</type>
</item>
<item id="61" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="62">nullTransition</name>
<stringValue id="63">success</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="64" type="java.util.HashSet">
<item id="65" type="com.j2fe.workflow.definition.Transition">
<name id="66">goto-next</name>
<source id="67">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="68">Process Messages</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="69">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="70" type="java.util.HashSet">
<item id="71" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="72">event</name>
<stringValue id="73">ProcessFeedMessage</stringValue>
<type>CONSTANT</type>
</item>
<item id="74" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="75">["Message"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="76">input["Message"]</name>
<stringValue id="77">Message</stringValue>
<type>VARIABLE</type>
</item>
<item id="78" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="79">["MessageMetaData"]@java/util/Map@</UITypeHint>
<input>true</input>
<name id="80">input["MessageMetaData"]</name>
<stringValue id="81">internalMessage</stringValue>
<type>VARIABLE</type>
<variablePart id="82">properties.custom</variablePart>
</item>
<item id="83" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="84">["MessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="85">input["MessageType"]</name>
<stringValue id="86">MessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="87" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="88">["ProcessFilteredMessages"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="89">input["ProcessFilteredMessages"]</name>
<stringValue id="90">ProcessFilteredMessages</stringValue>
<type>VARIABLE</type>
</item>
<item id="91" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="92">["TransactionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="93">input["TransactionId"]</name>
<stringValue id="94">RequestTransaction</stringValue>
<type>VARIABLE</type>
</item>
<item id="95" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="96">name</name>
<stringValue id="97">Basic Message Processing</stringValue>
<type>CONSTANT</type>
</item>
<item id="98" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="99">["Severity"]@java/lang/Integer@</UITypeHint>
<input>false</input>
<name id="100">output["Severity"]</name>
<stringValue id="101">TRIDSeverity</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="102" type="java.util.HashSet">
<item id="103" type="com.j2fe.workflow.definition.Transition">
<name id="104">goto-next</name>
<source id="105">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="106">Merge Maps</name>
<nodeHandler>com.j2fe.translation.activities.MergeMaps</nodeHandler>
<nodeHandlerClass id="107">com.j2fe.translation.activities.MergeMaps</nodeHandlerClass>
<parameters id="108" type="java.util.HashSet">
<item id="109" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="110">inputMap</name>
<stringValue id="111">MessageMetaData</stringValue>
<type>VARIABLE</type>
</item>
<item id="112" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="113">outputMap</name>
<stringValue id="114">internalMessage</stringValue>
<type>VARIABLE</type>
<variablePart id="115">properties.custom</variablePart>
</item>
</parameters>
<sources id="116" type="java.util.HashSet">
<item id="117" type="com.j2fe.workflow.definition.Transition">
<name id="118">goto-next</name>
<source id="119">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="120">Create Message</name>
<nodeHandler>com.j2fe.feeds.activities.CreateMessage</nodeHandler>
<nodeHandlerClass id="121">com.j2fe.feeds.activities.CreateMessage</nodeHandlerClass>
<parameters id="122" type="java.util.HashSet">
<item id="123" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="124">intputMessage</name>
<stringValue id="125">Message</stringValue>
<type>VARIABLE</type>
</item>
<item id="126" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="127">message</name>
<stringValue id="128">internalMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="129" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="130">messageType</name>
<stringValue id="131">MessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="132" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="133">transactionId</name>
<stringValue id="134">RequestTransaction</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="135" type="java.util.HashSet">
<item id="136" type="com.j2fe.workflow.definition.Transition">
<name id="137">goto-next</name>
<source id="138">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="139">Create Transaction</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateTransaction</nodeHandler>
<nodeHandlerClass id="140">com.j2fe.streetlamp.activities.CreateTransaction</nodeHandlerClass>
<parameters id="141" type="java.util.HashSet">
<item id="142" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="143">flushImmediate</name>
<objectValue id="144" type="java.lang.Boolean">true</objectValue>
<type>CONSTANT</type>
</item>
<item id="145" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="146">jobId</name>
<stringValue id="147">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="148" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="149">messageType</name>
<stringValue id="150">MessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="151" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="152">recordNumber</name>
<stringValue id="153">RecordNumber</stringValue>
<type>VARIABLE</type>
</item>
<item id="154" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="155">transactionId</name>
<stringValue id="156">RequestTransaction</stringValue>
<type>VARIABLE</type>
</item>
<item id="157" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="158">vreqOID</name>
<stringValue id="159">VreqOID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="160" type="java.util.HashSet">
<item id="161" type="com.j2fe.workflow.definition.Transition">
<name id="162">goto-next</name>
<source id="163">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="164">START</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="165">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="166" type="java.util.HashSet"/>
<targets id="167" type="java.util.HashSet">
<item idref="161" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="138"/>
</item>
</sources>
<targets id="168" type="java.util.HashSet">
<item idref="136" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="119"/>
</item>
</sources>
<targets id="169" type="java.util.HashSet">
<item idref="117" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="105"/>
</item>
</sources>
<targets id="170" type="java.util.HashSet">
<item idref="103" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="67"/>
</item>
</sources>
<targets id="171" type="java.util.HashSet">
<item idref="65" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="51"/>
</item>
</sources>
<targets id="172" type="java.util.HashSet">
<item idref="49" type="com.j2fe.workflow.definition.Transition"/>
<item id="173" type="com.j2fe.workflow.definition.Transition">
<name id="174">50</name>
<source idref="51"/>
<target idref="9"/>
</item>
<item id="175" type="com.j2fe.workflow.definition.Transition">
<name id="176">success</name>
<source idref="51"/>
<target idref="3"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="9"/>
</item>
<item idref="173" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="177" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
<item idref="175" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="178" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="179">Request Reply/Standard</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="180">user1</lastChangeUser>
<lastUpdate id="181">2018-04-19T02:35:29.000+1000</lastUpdate>
<name id="182">PrepareScheduledMessageProcessing</name>
<optimize>true</optimize>
<parameter id="183" type="java.util.HashMap">
<entry>
<key id="184" type="java.lang.String">JobID</key>
<value id="185" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="186">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="187">The JobID of the response file that is processed.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="188" type="java.lang.String">Message</key>
<value id="189" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="190">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="191">The response message to be processed.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="192" type="java.lang.String">MessageMetaData</key>
<value id="193" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="194">java.util.Map</className>
<clazz>java.util.Map</clazz>
<description id="195">MessageMetaData</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="196" type="java.lang.String">MessageType</key>
<value id="197" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="198">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="199">The message type to be used for processing the response message.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="200" type="java.lang.String">ProcessFilteredMessages</key>
<value id="201" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="202">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="203">Indicates that messages are processed regardless of the result of the Generic Inbound Filter.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="204" type="java.lang.String">RecordNumber</key>
<value id="205" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="206">java.lang.Long</className>
<clazz>java.lang.Long</clazz>
<description id="207">The position of the message in the file.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="208" type="java.lang.String">UniverseJobId</key>
<value id="209" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="210">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="211">UniverseJobId</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="212" type="java.lang.String">VreqOID</key>
<value id="213" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="214">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="215">The Vendor Request OID this message has been correlated too.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="216" type="java.util.HashSet"/>
<priority>0</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="163"/>
<status>RELEASED</status>
<variables id="217" type="java.util.HashMap">
<entry>
<key id="218" type="java.lang.String">JobID</key>
<value id="219" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="220">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="221">The JobID of the response file that is processed.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="222" type="java.lang.String">Message</key>
<value id="223" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="224">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="225">The response message to be processed.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="226" type="java.lang.String">MessageMetaData</key>
<value id="227" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="228">java.util.Map</className>
<clazz>java.util.Map</clazz>
<description id="229">MessageMetaData</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="230" type="java.lang.String">MessageType</key>
<value id="231" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="232">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="233">The message type to be used for processing the response message.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="234" type="java.lang.String">ProcessFilteredMessages</key>
<value id="235" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="236">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="237">Indicates that messages are processed regardless of the result of the Generic Inbound Filter.</description>
<persistent>false</persistent>
<value idref="144"/>
</value>
</entry>
<entry>
<key id="238" type="java.lang.String">RecordNumber</key>
<value id="239" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="240">java.lang.Long</className>
<clazz>java.lang.Long</clazz>
<description id="241">The position of the message in the file.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="242" type="java.lang.String">UniverseJobId</key>
<value id="243" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="244">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="245">UniverseJobId</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="246" type="java.lang.String">VreqOID</key>
<value id="247" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="248">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="249">The Vendor Request OID this message has been correlated too.</description>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>7</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
