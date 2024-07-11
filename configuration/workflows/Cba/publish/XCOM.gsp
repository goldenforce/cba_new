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
<name id="9">Command Line</name>
<nodeHandler>com.j2fe.general.activities.CommandLine</nodeHandler>
<nodeHandlerClass id="10">com.j2fe.general.activities.CommandLine</nodeHandlerClass>
<parameters id="11" type="java.util.HashSet">
<item id="12" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="13">commandLine</name>
<stringValue id="14">serverCommand</stringValue>
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
<name id="19">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="20">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="21" type="java.util.HashSet"/>
<targets id="22" type="java.util.HashSet">
<item idref="16" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="8"/>
</item>
</sources>
<targets id="23" type="java.util.HashSet">
<item idref="6" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
</sources>
<targets id="24" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="25">Cba/publish</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="26">user1</lastChangeUser>
<lastUpdate id="27">2018-03-19T15:10:25.000+1100</lastUpdate>
<name id="28">XCOM</name>
<optimize>true</optimize>
<parameter id="29" type="java.util.HashMap">
<entry>
<key id="30" type="java.lang.String">serverCommand</key>
<value id="31" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="32">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="33" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="18"/>
<status>RELEASED</status>
<variables id="34" type="java.util.HashMap">
<entry>
<key id="35" type="java.lang.String">serverCommand</key>
<value id="36" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="37">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>3</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
