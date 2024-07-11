<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.15">
<package-comment/>
<businessobject displayString="3 - 0.0.0.1" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">0.0.0.1</comment>
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
<name id="9">Call Subworkflow</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="10">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="11" type="java.util.HashSet">
<item id="12" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="13">["serverCommand"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="14">input["serverCommand"]</name>
<stringValue id="15">serverCommand</stringValue>
<type>VARIABLE</type>
</item>
<item id="16" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="17">name</name>
<stringValue id="18">XCOM</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="19" type="java.util.HashSet">
<item id="20" type="com.j2fe.workflow.definition.Transition">
<name id="21">goto-next</name>
<source id="22">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="23">Call Subworkflow</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="24">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="25" type="java.util.HashSet">
<item id="26" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="27">["ExtractionQueryName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="28">input["ExtractionQueryName"]</name>
<stringValue id="29">ExtractionQueryName</stringValue>
<type>VARIABLE</type>
</item>
<item id="30" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="31">["FileType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="32">input["FileType"]</name>
<stringValue id="33">FileType</stringValue>
<type>VARIABLE</type>
</item>
<item id="34" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="35">["PublishToDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="36">input["PublishToDirectory"]</name>
<stringValue id="37">PublishToDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="38" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="39">["PublishToFileNamePattern"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="40">input["PublishToFileNamePattern"]</name>
<stringValue id="41">PublishToFileNamePattern</stringValue>
<type>VARIABLE</type>
</item>
<item id="42" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="43">["QueryParameter1"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="44">input["QueryParameter1"]</name>
<stringValue id="45">QueryParameter1</stringValue>
<type>VARIABLE</type>
</item>
<item id="46" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="47">["QueryParameter2"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="48">input["QueryParameter2"]</name>
<stringValue id="49">QueryParameter2</stringValue>
<type>VARIABLE</type>
</item>
<item id="50" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="51">["QueryParameter3"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="52">input["QueryParameter3"]</name>
<stringValue id="53">QueryParameter3</stringValue>
<type>VARIABLE</type>
</item>
<item id="54" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="55">["QueryParameter4"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="56">input["QueryParameter4"]</name>
<stringValue id="57">QueryParameter4</stringValue>
<type>VARIABLE</type>
</item>
<item id="58" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="59">["QueryParameter5"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="60">input["QueryParameter5"]</name>
<stringValue id="61">QueryParameter5</stringValue>
<type>VARIABLE</type>
</item>
<item id="62" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="63">name</name>
<stringValue id="64">CbaAllPublish</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="65" type="java.util.HashSet">
<item id="66" type="com.j2fe.workflow.definition.Transition">
<name id="67">goto-next</name>
<source id="68">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="69">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="70">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="71" type="java.util.HashSet"/>
<targets id="72" type="java.util.HashSet">
<item idref="66" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="22"/>
</item>
</sources>
<targets id="73" type="java.util.HashSet">
<item idref="20" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="8"/>
</item>
</sources>
<targets id="74" type="java.util.HashSet">
<item idref="6" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
</sources>
<targets id="75" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="76">Cba/publish</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="77">user1</lastChangeUser>
<lastUpdate id="78">2018-03-19T17:30:28.000+1100</lastUpdate>
<name id="79">CbaWSSWrapper</name>
<optimize>true</optimize>
<parameter id="80" type="java.util.HashMap">
<entry>
<key id="81" type="java.lang.String">ExtractionQueryName</key>
<value id="82" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="83">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="84" type="java.lang.String">FileType</key>
<value id="85" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="86">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="87">		</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="88" type="java.lang.String">PublishToDirectory</key>
<value id="89" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="90">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="91" type="java.lang.String">PublishToFileNamePattern</key>
<value id="92" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="93">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="94" type="java.lang.String">QueryParameter1</key>
<value id="95" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="96">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="97" type="java.lang.String">QueryParameter2</key>
<value id="98" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="99">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="100" type="java.lang.String">QueryParameter3</key>
<value id="101" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="102">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="103" type="java.lang.String">QueryParameter4</key>
<value id="104" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="105">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="106" type="java.lang.String">QueryParameter5</key>
<value id="107" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="108">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="109" type="java.lang.String">serverCommand</key>
<value id="110" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="111">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="112" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="68"/>
<status>DEVELOPMENT</status>
<variables id="113" type="java.util.HashMap">
<entry>
<key id="114" type="java.lang.String">ExtractionQueryName</key>
<value id="115" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="116">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="117" type="java.lang.String">FileType</key>
<value id="118" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="119">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="120">		</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="121" type="java.lang.String">PublishToDirectory</key>
<value id="122" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="123">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="124" type="java.lang.String">PublishToFileNamePattern</key>
<value id="125" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="126">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="127" type="java.lang.String">QueryParameter1</key>
<value id="128" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="129">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="130" type="java.lang.String">QueryParameter2</key>
<value id="131" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="132">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="133" type="java.lang.String">QueryParameter3</key>
<value id="134" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="135">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="136" type="java.lang.String">QueryParameter4</key>
<value id="137" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="138">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="139" type="java.lang.String">QueryParameter5</key>
<value id="140" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="141">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="142" type="java.lang.String">serverCommand</key>
<value id="143" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="144">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>3</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
