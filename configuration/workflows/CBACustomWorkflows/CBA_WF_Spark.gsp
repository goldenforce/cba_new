<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.16">
<package-comment/>
<businessobject displayString="6 - 1.0.0.2" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>false</clustered>
<comment id="1">1.0.0.2</comment>
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
<name id="19">Command Line</name>
<nodeHandler>com.j2fe.general.activities.CommandLine</nodeHandler>
<nodeHandlerClass id="20">com.j2fe.general.activities.CommandLine</nodeHandlerClass>
<parameters id="21" type="java.util.HashSet">
<item id="22" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="23">commandLine</name>
<stringValue id="24">/opt/app/spark-2.2.1-bin-hadoop2.7/bin/cba-tolerance-calc.sh $sparkMasterURL $priceDate</stringValue>
<type>CONSTANT</type>
</item>
<item id="25" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="26">["priceDate"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="27">environment["priceDate"]</name>
<stringValue id="28">vPriceDate</stringValue>
<type>VARIABLE</type>
</item>
<item id="29" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="30">["sparkMasterURL"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="31">environment["sparkMasterURL"]</name>
<stringValue id="32">pSparkMasterURL</stringValue>
<type>VARIABLE</type>
</item>
<item id="33" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="34">logFileName</name>
<stringValue id="35">saprklogfile.txt</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="36" type="java.util.HashSet">
<item id="37" type="com.j2fe.workflow.definition.Transition">
<name id="38">goto-next</name>
<source id="39">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="40">Bean Shell Script (Standard)</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="41">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="42" type="java.util.HashSet">
<item id="43" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="44">statements</name>
<stringValue id="45">import java.util.Date;&#13;
import java.text.DateFormat;&#13;
import java.text.SimpleDateFormat;&#13;
import java.lang.String;&#13;
&#13;
&#13;
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");&#13;
		Date date = new Date();&#13;
&#13;
		String vPriceDate = null;&#13;
&#13;
		vPriceDate = dateFormat.format(date);&#13;
&#13;
&#13;
&#13;
&#13;
&#13;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="46" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="47">["vPriceDate"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="48">variables["vPriceDate"]</name>
<stringValue id="49">vPriceDate</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="50" type="java.util.HashSet">
<item id="51" type="com.j2fe.workflow.definition.Transition">
<name id="52">goto-next</name>
<source id="53">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="54">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="55">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="56" type="java.util.HashSet">
<item id="57" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="58">file</name>
<objectValue id="59" type="java.net.URI">SPAKR%20-%20Tolerance%20Calculation</objectValue>
<type>CONSTANT</type>
</item>
<item id="60" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="61">jobId</name>
<stringValue id="62">JobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="63" type="java.util.HashSet">
<item id="64" type="com.j2fe.workflow.definition.Transition">
<name id="65">goto-next</name>
<source id="66">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="67">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="68">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="69" type="java.util.HashSet"/>
<targets id="70" type="java.util.HashSet">
<item idref="64" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="53"/>
</item>
</sources>
<targets id="71" type="java.util.HashSet">
<item idref="51" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="39"/>
</item>
</sources>
<targets id="72" type="java.util.HashSet">
<item idref="37" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="18"/>
</item>
</sources>
<targets id="73" type="java.util.HashSet">
<item idref="16" type="com.j2fe.workflow.definition.Transition"/>
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
<group id="76">CBACustomWorkflows</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="77">user1</lastChangeUser>
<lastUpdate id="78">2018-05-12T20:02:06.000+1000</lastUpdate>
<name id="79">CBA_WF_Spark</name>
<optimize>true</optimize>
<parameter id="80" type="java.util.HashMap">
<entry>
<key id="81" type="java.lang.String">pSparkMasterURL</key>
<value id="82" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="83">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="84" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="66"/>
<status>RELEASED</status>
<variables id="85" type="java.util.HashMap">
<entry>
<key id="86" type="java.lang.String">pSparkMasterURL</key>
<value id="87" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="88">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>6</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
