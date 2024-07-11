<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.15">
<package-comment/>
<businessobject displayString="1 - Initial Version" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">Initial Version</comment>
<description id="2">Checks if a list of prices exists and returns TRUE or FALSE</description>
<endNode id="3">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="4">Stop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="5">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="6" type="java.util.HashSet">
<item id="7" type="com.j2fe.workflow.definition.Transition">
<name id="8">goto-next</name>
<source id="9">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="10">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="12" type="java.util.HashSet"/>
<targets id="13" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="14" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="15">Cba/publish</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="16">user1</lastChangeUser>
<lastUpdate id="17">2018-03-19T10:17:21.000+1100</lastUpdate>
<name id="18">CbaAllPriceExist</name>
<optimize>true</optimize>
<parameter id="19" type="java.util.HashMap"/>
<permissions id="20" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="9"/>
<status>DEVELOPMENT</status>
<variables id="21" type="java.util.HashMap"/>
<version>1</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
