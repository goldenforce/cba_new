<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.15">
<package-comment/>
<businessobject displayString="6 - 8.7.1.16" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">8.7.1.16</comment>
<endNode id="2">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="3">Stop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="4">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="5" type="java.util.HashSet">
<item id="6" type="com.j2fe.workflow.definition.Transition">
<name id="7">0</name>
<source id="8">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="9">Switch Case</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="10">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="11" type="java.util.HashSet">
<item id="12" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="13">caseItem</name>
<stringValue id="14">empty</stringValue>
<type>VARIABLE</type>
</item>
<item id="15" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="16">defaultItem</name>
<stringValue id="17">0</stringValue>
<type>CONSTANT</type>
</item>
<item id="18" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="19">nullTransition</name>
<stringValue id="20">0</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="21" type="java.util.HashSet">
<item id="22" type="com.j2fe.workflow.definition.Transition">
<name id="23">goto-next</name>
<source id="24">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="25">Bean Shell Script (Standard)</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="26">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="27" type="java.util.HashSet">
<item id="28" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="29">statements</name>
<stringValue id="30">int empty=1;
String fileName="";
if(items==null)
{
empty=0;
}
else if(items!=null &amp;&amp; items.length==0)
{
empty=0;
}
else
{
fileName=items[0];
}</stringValue>
<type>CONSTANT</type>
</item>
<item id="31" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="32">["empty"]@java/lang/Integer@</UITypeHint>
<input>false</input>
<name id="33">variables["empty"]</name>
<stringValue id="34">empty</stringValue>
<type>VARIABLE</type>
</item>
<item id="35" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="36">["fileName"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="37">variables["fileName"]</name>
<stringValue id="38">fileName</stringValue>
<type>VARIABLE</type>
</item>
<item id="39" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="40">variables["items"]</name>
<stringValue id="41">Items</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="42" type="java.util.HashSet">
<item id="43" type="com.j2fe.workflow.definition.Transition">
<name id="44">goto-next</name>
<source id="45">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="46">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="47">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="48" type="java.util.HashSet"/>
<targets id="49" type="java.util.HashSet">
<item idref="43" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="24"/>
</item>
</sources>
<targets id="50" type="java.util.HashSet">
<item idref="22" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="8"/>
</item>
</sources>
<targets id="51" type="java.util.HashSet">
<item idref="6" type="com.j2fe.workflow.definition.Transition"/>
<item id="52" type="com.j2fe.workflow.definition.Transition">
<name id="53">1</name>
<source idref="8"/>
<target id="54">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="55">List Files</name>
<nodeHandler>com.j2fe.feeds.activities.ListFiles</nodeHandler>
<nodeHandlerClass id="56">com.j2fe.feeds.activities.ListFiles</nodeHandlerClass>
<parameters id="57" type="java.util.HashSet">
<item id="58" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="59">directory</name>
<stringValue id="60">Directory</stringValue>
<type>VARIABLE</type>
</item>
<item id="61" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="62">fileSystem</name>
<stringValue id="63">filesystem/local</stringValue>
<type>REFERENCE</type>
</item>
<item id="64" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="65">pattern</name>
<stringValue id="66">fileName</stringValue>
<type>VARIABLE</type>
</item>
<item id="67" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="68">uris[0]</name>
<stringValue id="69">RMDSFile</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="70" type="java.util.HashSet">
<item idref="52" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="71" type="java.util.HashSet">
<item id="72" type="com.j2fe.workflow.definition.Transition">
<name id="73">empty</name>
<source idref="54"/>
<target idref="2"/>
</item>
<item id="74" type="com.j2fe.workflow.definition.Transition">
<name id="75">not-empty</name>
<source idref="54"/>
<target id="76">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="77">RMDSProcessResponse</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="78">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="79" type="java.util.HashSet">
<item id="80" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="81">["AllRequestOIDs"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="82">input["AllRequestOIDs"]</name>
<stringValue id="83">vreqOids</stringValue>
<type>VARIABLE</type>
</item>
<item id="84" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="85">["BusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="86">input["BusinessFeed"]</name>
<stringValue id="87">RMDS</stringValue>
<type>CONSTANT</type>
</item>
<item id="88" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="89">["MessageMetaData"]@java/util/Map@</UITypeHint>
<input>true</input>
<name id="90">input["MessageMetaData"]</name>
<stringValue id="91">MessageMetaData</stringValue>
<type>VARIABLE</type>
</item>
<item id="92" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="93">["MessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="94">input["MessageType"]</name>
<stringValue id="95">MessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="96" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="97">["PricePointEventDefinitionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="98">input["PricePointEventDefinitionId"]</name>
<stringValue id="99">PricePointEventDefinitionId</stringValue>
<type>VARIABLE</type>
</item>
<item id="100" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="101">["ProcessingDate"]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="102">input["ProcessingDate"]</name>
<stringValue id="103">ProcessingDate</stringValue>
<type>VARIABLE</type>
</item>
<item id="104" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="105">["ReplyFile"]@java/net/URI@</UITypeHint>
<input>true</input>
<name id="106">input["ReplyFile"]</name>
<stringValue id="107">RMDSFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="108" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="109">["RequestTransaction"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="110">input["RequestTransaction"]</name>
<stringValue id="111">RequestTransaction</stringValue>
<type>VARIABLE</type>
</item>
<item id="112" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="113">name</name>
<stringValue id="114">RMDSProcessResponse</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="115" type="java.util.HashSet">
<item idref="74" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="116" type="java.util.HashSet">
<item id="117" type="com.j2fe.workflow.definition.Transition">
<name id="118">goto-next</name>
<source idref="76"/>
<target idref="2"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="2"/>
</item>
<item idref="72" type="com.j2fe.workflow.definition.Transition"/>
<item idref="117" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="119" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="120">Request Reply/RMDS</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="121">user1</lastChangeUser>
<lastUpdate id="122">2018-04-24T16:32:54.000+1000</lastUpdate>
<name id="123">RMDSProcessFiles</name>
<optimize>true</optimize>
<parameter id="124" type="java.util.HashMap">
<entry>
<key id="125" type="java.lang.String">BulkSize</key>
<value id="126" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="127">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="128">BulkSize</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="129" type="java.lang.String">Directory</key>
<value id="130" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="131">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="132" type="java.lang.String">Items</key>
<value id="133" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="134">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="135" type="java.lang.String">MessageMetaData</key>
<value id="136" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="137">java.util.Map</className>
<clazz>java.util.Map</clazz>
<description id="138">MessageMetaData</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="139" type="java.lang.String">MessageType</key>
<value id="140" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="141">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="142" type="java.lang.String">PricePointEventDefinitionId</key>
<value id="143" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="144">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="145">Price Point Event ID from FT_T_PPEF table to pick up prices for given Price Point.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="146" type="java.lang.String">ProcessingDate</key>
<value id="147" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="148">java.util.Date</className>
<clazz>java.util.Date</clazz>
<description id="149">ProcessingDate for Price Files</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="150" type="java.lang.String">RequestTransaction</key>
<value id="151" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="152">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="153">RequestTransaction</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="154" type="java.lang.String">vreqOids</key>
<value id="155" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="156">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="157" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="45"/>
<status>RELEASED</status>
<variables id="158" type="java.util.HashMap">
<entry>
<key id="159" type="java.lang.String">BulkSize</key>
<value id="160" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="161">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="162">BulkSize</description>
<persistent>false</persistent>
<value id="163" type="java.lang.Integer">100</value>
</value>
</entry>
<entry>
<key id="164" type="java.lang.String">Directory</key>
<value id="165" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="166">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="167" type="java.lang.String">Items</key>
<value id="168" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="169">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="170" type="java.lang.String">MessageMetaData</key>
<value id="171" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="172">java.util.Map</className>
<clazz>java.util.Map</clazz>
<description id="173">MessageMetaData</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="174" type="java.lang.String">MessageType</key>
<value id="175" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="176">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="177" type="java.lang.String">RMDS</value>
</value>
</entry>
<entry>
<key id="178" type="java.lang.String">PricePointEventDefinitionId</key>
<value id="179" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="180">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="181">Price Point Event ID from FT_T_PPEF table to pick up prices for given Price Point.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="182" type="java.lang.String">ProcessingDate</key>
<value id="183" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="184">java.util.Date</className>
<clazz>java.util.Date</clazz>
<description id="185">ProcessingDate for Price Files</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="186" type="java.lang.String">RequestTransaction</key>
<value id="187" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="188">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="189">RequestTransaction</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="190" type="java.lang.String">vreqOids</key>
<value id="191" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="192">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>6</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
<businessobject displayString="4 - 8.7.1.16" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">8.7.1.16</comment>
<description id="2">This workflow is a utility workflow and should not be called stand alone. The workflow processes a response file from REUTERS and correlates the requests made to the responses received.</description>
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
<name id="10">Close File</name>
<nodeHandler>com.j2fe.feeds.activities.EndFile</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.feeds.activities.EndFile</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="14">file</name>
<stringValue id="15">ReplyFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="16" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="17">successAction</name>
<stringValue id="18">LEAVE</stringValue>
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
<name id="23">Close Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CloseJob</nodeHandler>
<nodeHandlerClass id="24">com.j2fe.streetlamp.activities.CloseJob</nodeHandlerClass>
<parameters id="25" type="java.util.HashSet">
<item id="26" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="27">jobId</name>
<stringValue id="28">JobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="29" type="java.util.HashSet">
<item id="30" type="java.lang.String">JobID
0100</item>
</persistentVariables>
<sources id="31" type="java.util.HashSet">
<item id="32" type="com.j2fe.workflow.definition.Transition">
<name id="33">goto-next</name>
<source id="34">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="35">Clear PPJB</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="36">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="37" type="java.util.HashSet">
<item id="38" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="39">database</name>
<stringValue id="40">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="41" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="42">[0]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="43">indexedParameters[0]</name>
<stringValue id="44">PricePointEventDefinitionId</stringValue>
<type>VARIABLE</type>
</item>
<item id="45" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="46">[1]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="47">indexedParameters[1]</name>
<stringValue id="48">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="49" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="50">querySQL</name>
<stringValue id="51">DECLARE&#13;
PPED_OID_PARAM VARCHAR2(1000);&#13;
JOB_ID_PARAM VARCHAR2(1000);&#13;
begin&#13;
PPED_OID_PARAM:=?;&#13;
JOB_ID_PARAM:=?;&#13;
IF(PPED_OID_PARAM is not null) then&#13;
 delete from FT_O_PPJB where PPED_OID=PPED_OID_PARAM and JOB_ID=JOB_ID_PARAM;&#13;
end if;&#13;
end;</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="52" type="java.util.HashSet">
<item id="53" type="com.j2fe.workflow.definition.Transition">
<name id="54">false</name>
<source id="55">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="56">Check PPED</name>
<nodeHandler>com.j2fe.general.activities.IsNull</nodeHandler>
<nodeHandlerClass id="57">com.j2fe.general.activities.IsNull</nodeHandlerClass>
<parameters id="58" type="java.util.HashSet">
<item id="59" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="60">input</name>
<stringValue id="61">PricePointEventDefinitionId</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="62" type="java.util.HashSet">
<item id="63" type="com.j2fe.workflow.definition.Transition">
<name id="64">ToSplit</name>
<source id="65">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="66">Automatically generated</description>
<directJoin>false</directJoin>
<name id="67">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="68">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="69" type="java.util.HashSet">
<item id="70" type="com.j2fe.workflow.definition.Transition">
<name id="71">goto-next</name>
<source id="72">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="73">Call Report Error</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="74">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="75" type="java.util.HashSet">
<item id="76" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="77">["ApplicationId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="78">input["ApplicationId"]</name>
<stringValue id="79">VENDOR</stringValue>
<type>CONSTANT</type>
</item>
<item id="80" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="81">["ErrorText"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="82">input["ErrorText"]</name>
<stringValue id="83">No response found in the Reuters response file.</stringValue>
<type>CONSTANT</type>
</item>
<item id="84" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="85">["NotificationId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="86">input["NotificationId"]</name>
<stringValue id="87">8</stringValue>
<type>CONSTANT</type>
</item>
<item id="88" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="89">["PartId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="90">input["PartId"]</name>
<stringValue id="91">REQREPLY</stringValue>
<type>CONSTANT</type>
</item>
<item id="92" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="93">["TRID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="94">input["TRID"]</name>
<stringValue id="95">RequestTransaction</stringValue>
<type>VARIABLE</type>
</item>
<item id="96" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="97">["VREQOIDS"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="98">input["VREQOIDS"]</name>
<stringValue id="99">AllRequestOIDs</stringValue>
<type>VARIABLE</type>
</item>
<item id="100" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="101">name</name>
<stringValue id="102">Report Error</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<persistentVariables id="103" type="java.util.HashSet">
<item id="104" type="java.lang.String">FileStatusObject
1100</item>
<item id="105" type="java.lang.String">Messages
1100</item>
<item id="106" type="java.lang.String">JobID
1000</item>
</persistentVariables>
<sources id="107" type="java.util.HashSet">
<item id="108" type="com.j2fe.workflow.definition.Transition">
<name id="109">end-of-file</name>
<source id="110">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="111">File Split</name>
<nodeHandler>com.j2fe.feeds.activities.FileSplitCondition</nodeHandler>
<nodeHandlerClass id="112">com.j2fe.feeds.activities.FileSplitCondition</nodeHandlerClass>
<parameters id="113" type="java.util.HashSet">
<item id="114" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="115">bulk</name>
<stringValue id="116">BulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="117" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="118">businessFeed</name>
<stringValue id="119">BusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="120" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="121">createTransactions</name>
<stringValue id="122">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="123" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="124">fileConnection</name>
<stringValue id="125">FileStatusObject</stringValue>
<type>VARIABLE</type>
</item>
<item id="126" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="127">grouping</name>
<stringValue id="128">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="129" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="130">messageType</name>
<stringValue id="131">MessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="132" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="133">messages</name>
<stringValue id="134">Messages</stringValue>
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
<name id="139">Merge Point</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="140">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="141" type="java.util.HashSet">
<item id="142" type="com.j2fe.workflow.definition.Transition">
<name id="143">goto-next</name>
<source id="144">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="145">Consolidate Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandler>
<nodeHandlerClass id="146">com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandlerClass>
<parameters id="147" type="java.util.HashSet">
<item id="148" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="149">jobId</name>
<stringValue id="150">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="151" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="152">updateTotalCount</name>
<stringValue id="153">true</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="154" type="java.util.HashSet">
<item id="155" type="com.j2fe.workflow.definition.Transition">
<name id="156">goto-next</name>
<source id="157">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<directJoin>true</directJoin>
<name id="158">Synchronize</name>
<nodeHandler>com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandler>
<nodeHandlerClass id="159">com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandlerClass>
<sources id="160" type="java.util.HashSet">
<item id="161" type="com.j2fe.workflow.definition.Transition">
<name id="162">goto-next</name>
<source id="163">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="164">Prepare Message Processing</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="165">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="166" type="java.util.HashSet">
<item id="167" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="168">["JobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="169">input["JobID"]</name>
<stringValue id="170">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="171" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="172">["Message"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="173">input["Message"]</name>
<stringValue id="174">Message</stringValue>
<type>VARIABLE</type>
<variablePart id="175">message</variablePart>
</item>
<item id="176" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="177">["MessageMetaData"]@java/util/Map@</UITypeHint>
<input>true</input>
<name id="178">input["MessageMetaData"]</name>
<stringValue id="179">MessageMetaData</stringValue>
<type>VARIABLE</type>
</item>
<item id="180" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="181">["MessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="182">input["MessageType"]</name>
<stringValue id="183">Message</stringValue>
<type>VARIABLE</type>
<variablePart id="184">properties.messageType</variablePart>
</item>
<item id="185" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="186">["PricePointEventDefinitionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="187">input["PricePointEventDefinitionId"]</name>
<stringValue id="188">PricePointEventDefinitionId</stringValue>
<type>VARIABLE</type>
</item>
<item id="189" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="190">["ProcessFilteredMessages"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="191">input["ProcessFilteredMessages"]</name>
<stringValue id="192">ProcessFilteredMessages</stringValue>
<type>VARIABLE</type>
</item>
<item id="193" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="194">["RecordNumber"]@java/lang/Long@</UITypeHint>
<input>true</input>
<name id="195">input["RecordNumber"]</name>
<stringValue id="196">Message</stringValue>
<type>VARIABLE</type>
<variablePart id="197">properties.jobIndex</variablePart>
</item>
<item id="198" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="199">["RequestTransaction"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="200">input["RequestTransaction"]</name>
<stringValue id="201">RequestTransaction</stringValue>
<type>VARIABLE</type>
</item>
<item id="202" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="203">["VreqOID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="204">input["VreqOID"]</name>
<stringValue id="205">Message</stringValue>
<type>VARIABLE</type>
<variablePart id="206">properties.custom["OID"]</variablePart>
</item>
<item id="207" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="208">name</name>
<stringValue id="209">PrepareMessageProcessing</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<persistentVariables id="210" type="java.util.HashSet">
<item id="211" type="java.lang.String">Message
0100</item>
</persistentVariables>
<sources id="212" type="java.util.HashSet">
<item id="213" type="com.j2fe.workflow.definition.Transition">
<name id="214">goto-next</name>
<source id="215">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="216">Status -&gt; RECEIVED</name>
<nodeHandler>com.j2fe.feeds.request.UpdateVREQ</nodeHandler>
<nodeHandlerClass id="217">com.j2fe.feeds.request.UpdateVREQ</nodeHandlerClass>
<parameters id="218" type="java.util.HashSet">
<item id="219" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="220">requestOIDs[0]</name>
<stringValue id="221">Message</stringValue>
<type>VARIABLE</type>
<variablePart id="222">properties.custom["OID"]</variablePart>
</item>
<item id="223" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="224">status</name>
<stringValue id="225">RECEIVED</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="226" type="java.util.HashSet">
<item id="227" type="com.j2fe.workflow.definition.Transition">
<name id="228">goto-next</name>
<source id="229">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<directJoin>true</directJoin>
<name id="230">Generic Split</name>
<nodeHandler>com.j2fe.workflow.handler.impl.GenericSplit</nodeHandler>
<nodeHandlerClass id="231">com.j2fe.workflow.handler.impl.GenericSplit</nodeHandlerClass>
<parameters id="232" type="java.util.HashSet">
<item id="233" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="234">input</name>
<stringValue id="235">Messages</stringValue>
<type>VARIABLE</type>
</item>
<item id="236" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="237">output</name>
<stringValue id="238">Message</stringValue>
<type>VARIABLE</type>
</item>
<item id="239" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="240">output.properties.jobIndex</name>
<stringValue id="241">KeyIndex</stringValue>
<type>VARIABLE</type>
</item>
<item id="242" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="243">output.properties.messageKey</name>
<stringValue id="244">Key</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="245" type="java.util.HashSet">
<item id="246" type="java.lang.String">FileStatusObject
1000</item>
<item id="247" type="java.lang.String">Key
1110</item>
<item id="248" type="java.lang.String">Messages
1100</item>
<item id="249" type="java.lang.String">Message
1000</item>
<item id="250" type="java.lang.String">KeyIndex
1101</item>
<item id="251" type="java.lang.String">JobID
1000</item>
</persistentVariables>
<sources id="252" type="java.util.HashSet">
<item id="253" type="com.j2fe.workflow.definition.Transition">
<name id="254">has-messages</name>
<source idref="110"/>
<target idref="229"/>
</item>
</sources>
<targets id="255" type="java.util.HashSet">
<item idref="227" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ANDSPLIT</type>
</source>
<target idref="215"/>
</item>
</sources>
<targets id="256" type="java.util.HashSet">
<item idref="213" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="163"/>
</item>
</sources>
<targets id="257" type="java.util.HashSet">
<item idref="161" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="157"/>
</item>
</sources>
<targets id="258" type="java.util.HashSet">
<item idref="155" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ANDJOIN</type>
</source>
<target idref="144"/>
</item>
</sources>
<targets id="259" type="java.util.HashSet">
<item idref="142" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="138"/>
</item>
<item id="260" type="com.j2fe.workflow.definition.Transition">
<name id="261">goto-next</name>
<source id="262">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="263">Merge Point</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="264">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="265" type="java.util.HashSet">
<item id="266" type="com.j2fe.workflow.definition.Transition">
<name id="267">goto-next</name>
<source id="268">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="269">Merge Maps</name>
<nodeHandler>com.j2fe.translation.activities.MergeMaps</nodeHandler>
<nodeHandlerClass id="270">com.j2fe.translation.activities.MergeMaps</nodeHandlerClass>
<parameters id="271" type="java.util.HashSet">
<item id="272" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="273">inputMap["PricePointEventDefinitionId"]</name>
<stringValue id="274">PricePointEventDefinitionId</stringValue>
<type>VARIABLE</type>
</item>
<item id="275" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="276">["ProcessingDate"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="277">inputMap["ProcessingDate"]</name>
<stringValue id="278">processingDateString</stringValue>
<type>VARIABLE</type>
</item>
<item id="279" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="280">outputMap</name>
<stringValue id="281">MessageMetaData</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="282" type="java.util.HashSet">
<item id="283" type="com.j2fe.workflow.definition.Transition">
<name id="284">goto-next</name>
<source id="285">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="286">Bean Shell Script (Standard) #2</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="287">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="288" type="java.util.HashSet">
<item id="289" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="290">statements</name>
<stringValue id="291">import java.text.ParseException;&#13;
import java.text.SimpleDateFormat;&#13;
import org.apache.log4j.Logger;&#13;
import java.util.Date;&#13;
import java.util.*;&#13;
&#13;
&#13;
Logger logger = Logger.getLogger(String.class);&#13;
&#13;
String processingDateString =null;&#13;
&#13;
if(processingDate== null)&#13;
{&#13;
	if(messageMetaData !=null)&#13;
	processingDateString  = messageMetaData.get("ProcessingDate");&#13;
}&#13;
if(processingDate!= null)&#13;
{&#13;
	try&#13;
	{&#13;
		processingDateString  = new SimpleDateFormat("MM-dd-yyyy hh:mm:ss a").format(processingDate);&#13;
	}&#13;
	catch (ParseException e) &#13;
   	 {&#13;
        	logger.error(e.getMessage());&#13;
    	}&#13;
}&#13;
&#13;
if(messageMetaData==null)&#13;
{&#13;
	messageMetaData= new HashMap(); &#13;
}&#13;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="292" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="293">variables["messageMetaData"]</name>
<stringValue id="294">MessageMetaData</stringValue>
<type>VARIABLE</type>
</item>
<item id="295" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="296">variables["messageMetaData"]</name>
<stringValue id="297">MessageMetaData</stringValue>
<type>VARIABLE</type>
</item>
<item id="298" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="299">["processingDate"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="300">variables["processingDate"]</name>
<stringValue id="301">ProcessingDate</stringValue>
<type>VARIABLE</type>
</item>
<item id="302" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="303">variables["processingDateString"]</name>
<stringValue id="304">processingDateString</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="305" type="java.util.HashSet">
<item id="306" type="com.j2fe.workflow.definition.Transition">
<name id="307">goto-next</name>
<source id="308">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="309">Populate PPJB</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="310">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="311" type="java.util.HashSet">
<item id="312" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="313">database</name>
<stringValue id="314">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="315" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="316">[0]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="317">indexedParameters[0]</name>
<stringValue id="318">PricePointEventDefinitionId</stringValue>
<type>VARIABLE</type>
</item>
<item id="319" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="320">[1]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="321">indexedParameters[1]</name>
<stringValue id="322">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="323" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="324">querySQL</name>
<stringValue id="325">DECLARE&#13;
PPED_OID_PARAM VARCHAR2(1000);&#13;
JOB_ID_PARAM VARCHAR2(1000);&#13;
begin&#13;
PPED_OID_PARAM:=?;&#13;
JOB_ID_PARAM:=?;&#13;
IF(PPED_OID_PARAM is not null) then&#13;
  Insert into FT_O_PPJB(PPED_OID, JOB_ID) Values (PPED_OID_PARAM, JOB_ID_PARAM);&#13;
end if;&#13;
end;</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="326" type="java.util.HashSet">
<item id="327" type="com.j2fe.workflow.definition.Transition">
<name id="328">false</name>
<source id="329">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="330">PPED</name>
<nodeHandler>com.j2fe.general.activities.IsNull</nodeHandler>
<nodeHandlerClass id="331">com.j2fe.general.activities.IsNull</nodeHandlerClass>
<parameters id="332" type="java.util.HashSet">
<item id="333" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="334">input</name>
<stringValue id="335">PricePointEventDefinitionId</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="336" type="java.util.HashSet">
<item id="337" type="com.j2fe.workflow.definition.Transition">
<name id="338">success</name>
<source id="339">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="340">Open File</name>
<nodeHandler>com.j2fe.feeds.activities.ReadFile</nodeHandler>
<nodeHandlerClass id="341">com.j2fe.feeds.activities.ReadFile</nodeHandlerClass>
<parameters id="342" type="java.util.HashSet">
<item id="343" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="344">businessFeed</name>
<stringValue id="345">BusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="346" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="347">businessFeed</name>
<stringValue id="348">BusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="349" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="350">exception</name>
<stringValue id="351">Exception</stringValue>
<type>VARIABLE</type>
</item>
<item id="352" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="353">file</name>
<stringValue id="354">ReplyFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="355" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="356">fileConnection</name>
<stringValue id="357">FileStatusObject</stringValue>
<type>VARIABLE</type>
</item>
<item id="358" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="359">grouping</name>
<stringValue id="360">GroupingEnabled</stringValue>
<type>VARIABLE</type>
</item>
<item id="361" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="362">jobId</name>
<stringValue id="363">JobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="364" type="java.util.HashSet">
<item id="365" type="com.j2fe.workflow.definition.Transition">
<name id="366">goto-next</name>
<source id="367">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="368">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="369">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="370" type="java.util.HashSet">
<item id="371" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="372">configInfo</name>
<stringValue id="373">Reuters Reply File</stringValue>
<type>CONSTANT</type>
</item>
<item id="374" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="375">file</name>
<stringValue id="376">ReplyFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="377" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="378">flushImmediate</name>
<stringValue id="379">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="380" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="381">jobId</name>
<stringValue id="382">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="383" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="384">parentJobId</name>
<stringValue id="385">Parent Job Id</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="386" type="java.util.HashSet"/>
<targets id="387" type="java.util.HashSet">
<item idref="365" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="339"/>
</item>
</sources>
<targets id="388" type="java.util.HashSet">
<item id="389" type="com.j2fe.workflow.definition.Transition">
<name id="390">error</name>
<source idref="339"/>
<target id="391">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="392">Call Report Error</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="393">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="394" type="java.util.HashSet">
<item id="395" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="396">["ApplicationId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="397">input["ApplicationId"]</name>
<stringValue id="398">VENDOR</stringValue>
<type>CONSTANT</type>
</item>
<item id="399" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="400">["ErrorText"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="401">input["ErrorText"]</name>
<stringValue id="402">Exception</stringValue>
<type>VARIABLE</type>
</item>
<item id="403" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="404">["NotificationId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="405">input["NotificationId"]</name>
<stringValue id="406">8</stringValue>
<type>CONSTANT</type>
</item>
<item id="407" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="408">["PartId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="409">input["PartId"]</name>
<stringValue id="410">REQREPLY</stringValue>
<type>CONSTANT</type>
</item>
<item id="411" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="412">["TRID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="413">input["TRID"]</name>
<stringValue id="414">RequestTransaction</stringValue>
<type>VARIABLE</type>
</item>
<item id="415" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="416">["VREQOIDS"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="417">input["VREQOIDS"]</name>
<stringValue id="418">AllRequestOIDs</stringValue>
<type>VARIABLE</type>
</item>
<item id="419" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="420">name</name>
<stringValue id="421">Report Error</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="422" type="java.util.HashSet">
<item idref="389" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="423" type="java.util.HashSet">
<item id="424" type="com.j2fe.workflow.definition.Transition">
<name id="425">goto-next</name>
<source idref="391"/>
<target idref="65"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="337" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="329"/>
</item>
</sources>
<targets id="426" type="java.util.HashSet">
<item idref="327" type="com.j2fe.workflow.definition.Transition"/>
<item id="427" type="com.j2fe.workflow.definition.Transition">
<name id="428">true</name>
<source idref="329"/>
<target idref="285"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="308"/>
</item>
</sources>
<targets id="429" type="java.util.HashSet">
<item idref="306" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="285"/>
</item>
<item idref="427" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="430" type="java.util.HashSet">
<item idref="283" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="268"/>
</item>
</sources>
<targets id="431" type="java.util.HashSet">
<item idref="266" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="262"/>
</item>
</sources>
<targets id="432" type="java.util.HashSet">
<item idref="260" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="138"/>
</item>
</sources>
<targets id="433" type="java.util.HashSet">
<item idref="136" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="110"/>
</item>
</sources>
<targets id="434" type="java.util.HashSet">
<item idref="108" type="com.j2fe.workflow.definition.Transition"/>
<item idref="253" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="72"/>
</item>
</sources>
<targets id="435" type="java.util.HashSet">
<item idref="70" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="65"/>
</item>
<item idref="424" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="436" type="java.util.HashSet">
<item idref="63" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="55"/>
</item>
</sources>
<targets id="437" type="java.util.HashSet">
<item idref="53" type="com.j2fe.workflow.definition.Transition"/>
<item id="438" type="com.j2fe.workflow.definition.Transition">
<name id="439">true</name>
<source idref="55"/>
<target idref="22"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="34"/>
</item>
</sources>
<targets id="440" type="java.util.HashSet">
<item idref="32" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="22"/>
</item>
<item idref="438" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="441" type="java.util.HashSet">
<item idref="20" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="442" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="443" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="444">Request Reply/RMDS</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="445">user1</lastChangeUser>
<lastUpdate id="446">2018-04-24T16:17:17.000+1000</lastUpdate>
<name id="447">RMDSProcessResponse</name>
<optimize>true</optimize>
<parameter id="448" type="java.util.HashMap">
<entry>
<key id="449" type="java.lang.String">AllRequestOIDs</key>
<value id="450" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="451">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="452">The Request OIDs the Request is coping with.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="453" type="java.lang.String">BulkSize</key>
<value id="454" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="455">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="456">The BulkSize to use for File Splitting.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="457" type="java.lang.String">BusinessFeed</key>
<value id="458" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="459">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="460">The BusinessFeed to use to process the file.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="461" type="java.lang.String">MessageMetaData</key>
<value id="462" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="463">java.util.Map</className>
<clazz>java.util.Map</clazz>
<description id="464">MessageMetaData</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="465" type="java.lang.String">MessageType</key>
<value id="466" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="467">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="468">MessageType</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="469" type="java.lang.String">Parent Job Id</key>
<value id="470" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="471">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="472">Parent Job id is used to correlated all the child jobs.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="473" type="java.lang.String">PricePointEventDefinitionId</key>
<value id="474" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="475">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="476" type="java.lang.String">ProcessFilteredMessages</key>
<value id="477" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="478">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="479">Indicates that messages are processed regardless of the result of the Generic Inbound Filter.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="480" type="java.lang.String">ProcessingDate</key>
<value id="481" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="482">java.util.Date</className>
<clazz>java.util.Date</clazz>
<description id="483">ProcessingDate for Price Files</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="484" type="java.lang.String">ReplyFile</key>
<value id="485" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="486">java.net.URI</className>
<clazz>java.net.URI</clazz>
<description id="487">The response file to process.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="488" type="java.lang.String">RequestTransaction</key>
<value id="489" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="490">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="491">The Parent Transaction created for all the Requests. Used for Error Reporting.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="492" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="367"/>
<status>RELEASED</status>
<variables id="493" type="java.util.HashMap">
<entry>
<key id="494" type="java.lang.String">AllRequestOIDs</key>
<value id="495" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="496">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="497">The Request OIDs the Request is coping with.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="498" type="java.lang.String">BulkSize</key>
<value id="499" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="500">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="501">The BulkSize to use for File Splitting.</description>
<persistent>false</persistent>
<value id="502" type="java.lang.Integer">500</value>
</value>
</entry>
<entry>
<key id="503" type="java.lang.String">BusinessFeed</key>
<value id="504" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="505">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="506">The BusinessFeed to use to process the file.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="507" type="java.lang.String">MessageMetaData</key>
<value id="508" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="509">java.util.Map</className>
<clazz>java.util.Map</clazz>
<description id="510">MessageMetaData</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="511" type="java.lang.String">MessageType</key>
<value id="512" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="513">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="514">MessageType</description>
<persistent>false</persistent>
<value id="515" type="java.lang.String">RMDS</value>
</value>
</entry>
<entry>
<key id="516" type="java.lang.String">Parent Job Id</key>
<value id="517" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="518">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="519">Parent Job id is used to correlated all the child jobs.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="520" type="java.lang.String">PricePointEventDefinitionId</key>
<value id="521" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="522">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="523" type="java.lang.String">ProcessFilteredMessages</key>
<value id="524" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="525">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="526">Indicates that messages are processed regardless of the result of the Generic Inbound Filter.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="527" type="java.lang.String">ProcessingDate</key>
<value id="528" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="529">java.util.Date</className>
<clazz>java.util.Date</clazz>
<description id="530">ProcessingDate for Price Files</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="531" type="java.lang.String">ReplyFile</key>
<value id="532" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="533">java.net.URI</className>
<clazz>java.net.URI</clazz>
<description id="534">The response file to process.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="535" type="java.lang.String">RequestTransaction</key>
<value id="536" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="537">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="538">The Parent Transaction created for all the Requests. Used for Error Reporting.</description>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>4</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
<businessobject displayString="4 - 8.7.1.16" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">8.7.1.16</comment>
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
<name id="9">Close Transaction</name>
<nodeHandler>com.j2fe.streetlamp.activities.CloseTransaction</nodeHandler>
<nodeHandlerClass id="10">com.j2fe.streetlamp.activities.CloseTransaction</nodeHandlerClass>
<parameters id="11" type="java.util.HashSet">
<item id="12" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="13">transactionId</name>
<stringValue id="14">RequestTransaction</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="15" type="java.util.HashSet">
<item id="16" type="com.j2fe.workflow.definition.Transition">
<name id="17">no-response</name>
<source id="18">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="19">RMDS Consumer (Xor Split)</name>
<nodeHandler>com.j2fe.feeds.request.RMDSConsumer</nodeHandler>
<nodeHandlerClass id="20">com.j2fe.feeds.request.RMDSConsumer</nodeHandlerClass>
<parameters id="21" type="java.util.HashSet">
<item id="22" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="23">bulkItemSize</name>
<stringValue id="24">MaxRequestPerItem</stringValue>
<type>VARIABLE</type>
</item>
<item id="25" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="26">chainItems</name>
<stringValue id="27">ChainItems</stringValue>
<type>VARIABLE</type>
</item>
<item id="28" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="29">chainOutputXml</name>
<stringValue id="30">ChainOutputResponseXML</stringValue>
<type>VARIABLE</type>
</item>
<item id="31" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="32">chainedRequest</name>
<stringValue id="33">IsChainRequest</stringValue>
<type>VARIABLE</type>
</item>
<item id="34" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="35">chainedRequest</name>
<stringValue id="36">ChainedRequest</stringValue>
<type>VARIABLE</type>
</item>
<item id="37" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="38">correlatedItems</name>
<stringValue id="39">CorrelatedItems</stringValue>
<type>VARIABLE</type>
</item>
<item id="40" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="41">cursor</name>
<stringValue id="42">cursor</stringValue>
<type>VARIABLE</type>
</item>
<item id="43" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="44">cursor</name>
<stringValue id="45">cursor</stringValue>
<type>VARIABLE</type>
</item>
<item id="46" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="47">itemMessageXML</name>
<stringValue id="48">Message</stringValue>
<type>VARIABLE</type>
</item>
<item id="49" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="50">items</name>
<stringValue id="51">items</stringValue>
<type>VARIABLE</type>
</item>
<item id="52" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="53">items</name>
<stringValue id="54">items</stringValue>
<type>VARIABLE</type>
</item>
<item id="55" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="56">outDirectory</name>
<stringValue id="57">OutFileDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="58" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="59">outputFilePatterns</name>
<stringValue id="60">OutputFilePatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="61" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="62">rmdsMessage</name>
<stringValue id="63">RMDSOutputMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="64" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="65">runtime</name>
<stringValue id="66">RunTime</stringValue>
<type>VARIABLE</type>
</item>
<item id="67" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="68">serviceName</name>
<stringValue id="69">RMDS Service</stringValue>
<type>VARIABLE</type>
</item>
<item id="70" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="71">transactionID</name>
<stringValue id="72">RequestTransaction</stringValue>
<type>VARIABLE</type>
</item>
<item id="73" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="74">vreqOids</name>
<stringValue id="75">vreqOids</stringValue>
<type>VARIABLE</type>
</item>
<item id="76" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="77">writeToFile</name>
<stringValue id="78">WriteToFile</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="79" type="java.util.HashSet">
<item id="80" type="java.lang.String">vreqOids
1000</item>
</persistentVariables>
<sources id="81" type="java.util.HashSet">
<item id="82" type="com.j2fe.workflow.definition.Transition">
<name id="83">goto-next</name>
<source id="84">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="85">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="86">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="87" type="java.util.HashSet">
<item id="88" type="com.j2fe.workflow.definition.Transition">
<name id="89">goto-next</name>
<source id="90">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="91">Initialize Cursor</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="92">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="93" type="java.util.HashSet">
<item id="94" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="95">statements</name>
<stringValue id="96">int cursor=0;
Object items=null;
Object correlateItems=null</stringValue>
<type>CONSTANT</type>
</item>
<item id="97" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="98">variables["correlatedItems"]</name>
<stringValue id="99">CorrelatedItems</stringValue>
<type>VARIABLE</type>
</item>
<item id="100" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="101">["cursor"]@java/lang/Integer@</UITypeHint>
<input>false</input>
<name id="102">variables["cursor"]</name>
<stringValue id="103">cursor</stringValue>
<type>VARIABLE</type>
</item>
<item id="104" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="105">variables["items"]</name>
<stringValue id="106">items</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="107" type="java.util.HashSet">
<item id="108" type="com.j2fe.workflow.definition.Transition">
<name id="109">goto-next</name>
<source id="110">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="111">Create Transaction</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateTransaction</nodeHandler>
<nodeHandlerClass id="112">com.j2fe.streetlamp.activities.CreateTransaction</nodeHandlerClass>
<parameters id="113" type="java.util.HashSet">
<item id="114" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="115">flushImmediate</name>
<objectValue id="116" type="java.lang.Boolean">true</objectValue>
<type>CONSTANT</type>
</item>
<item id="117" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="118">jobId</name>
<stringValue id="119">ParentJob</stringValue>
<type>VARIABLE</type>
</item>
<item id="120" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="121">transactionId</name>
<stringValue id="122">RequestTransaction</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="123" type="java.util.HashSet">
<item id="124" type="com.j2fe.workflow.definition.Transition">
<name id="125">goto-next</name>
<source id="126">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="127">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="128">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="129" type="java.util.HashSet"/>
<targets id="130" type="java.util.HashSet">
<item idref="124" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="110"/>
</item>
</sources>
<targets id="131" type="java.util.HashSet">
<item idref="108" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="90"/>
</item>
</sources>
<targets id="132" type="java.util.HashSet">
<item idref="88" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="84"/>
</item>
<item id="133" type="com.j2fe.workflow.definition.Transition">
<name id="134">goto-next</name>
<source id="135">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="136">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="137">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="138" type="java.util.HashSet">
<item id="139" type="com.j2fe.workflow.definition.Transition">
<name id="140">goto-next</name>
<source id="141">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="142">Make Chain XML</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="143">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="144" type="java.util.HashSet">
<item id="145" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="146">statements</name>
<stringValue id="147">if(chainItemXML==null)
chainItemXML="";

if(chainOutput==null)
chainOutput="";

if(!chainOutput.equalsIgnoreCase(""))
{
	chainOutput=chainOutput.replace("&lt;/VendorRequest&gt;", "");
	chainItemXML=chainItemXML.replace("&lt;VendorRequest&gt;  &lt;User&gt;admin&lt;/User&gt;  &lt;Requestor&gt;admin&lt;/Requestor&gt;  &lt;UserRequestID/&gt;  &lt;Universe/&gt;", "");
}
chainOutput=chainOutput+chainItemXML;</stringValue>
<type>CONSTANT</type>
</item>
<item id="148" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="149">["chainItemXML"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="150">variables["chainItemXML"]</name>
<stringValue id="151">ChainOutputResponseXML</stringValue>
<type>VARIABLE</type>
</item>
<item id="152" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="153">["chainOutput"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="154">variables["chainOutput"]</name>
<stringValue id="155">ChainResponseXML</stringValue>
<type>VARIABLE</type>
</item>
<item id="156" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="157">["chainOutput"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="158">variables["chainOutput"]</name>
<stringValue id="159">ChainResponseXML</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="160" type="java.util.HashSet">
<item id="161" type="com.j2fe.workflow.definition.Transition">
<name id="162">chain-response</name>
<source idref="18"/>
<target idref="141"/>
</item>
</sources>
<targets id="163" type="java.util.HashSet">
<item idref="139" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="135"/>
</item>
</sources>
<targets id="164" type="java.util.HashSet">
<item idref="133" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="84"/>
</item>
<item id="165" type="com.j2fe.workflow.definition.Transition">
<name id="166">goto-next</name>
<source id="167">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="168">RMDS Process Files</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="169">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="170" type="java.util.HashSet">
<item id="171" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="172">["BulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="173">input["BulkSize"]</name>
<stringValue id="174">MaxRequestPerItem</stringValue>
<type>VARIABLE</type>
</item>
<item id="175" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="176">["Directory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="177">input["Directory"]</name>
<stringValue id="178">OutFileDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="179" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="180">["Items"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="181">input["Items"]</name>
<stringValue id="182">OutputFilePatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="183" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="184">["MessageMetaData"]@java/util/Map@</UITypeHint>
<input>true</input>
<name id="185">input["MessageMetaData"]</name>
<stringValue id="186">MessageMetaData</stringValue>
<type>VARIABLE</type>
</item>
<item id="187" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="188">["MessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="189">input["MessageType"]</name>
<stringValue id="190">MessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="191" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="192">["PricePointEventDefinitionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="193">input["PricePointEventDefinitionId"]</name>
<stringValue id="194">PricePointEventDefinitionId</stringValue>
<type>VARIABLE</type>
</item>
<item id="195" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="196">["ProcessingDate"]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="197">input["ProcessingDate"]</name>
<stringValue id="198">ProcessingDate</stringValue>
<type>VARIABLE</type>
</item>
<item id="199" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="200">["RequestTransaction"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="201">input["RequestTransaction"]</name>
<stringValue id="202">RequestTransaction</stringValue>
<type>VARIABLE</type>
</item>
<item id="203" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="204">["vreqOids"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="205">input["vreqOids"]</name>
<stringValue id="206">vreqOids</stringValue>
<type>VARIABLE</type>
</item>
<item id="207" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="208">name</name>
<stringValue id="209">RMDSProcessFiles</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<persistentVariables id="210" type="java.util.HashSet">
<item id="211" type="java.lang.String">vreqOids
1000</item>
</persistentVariables>
<sources id="212" type="java.util.HashSet">
<item id="213" type="com.j2fe.workflow.definition.Transition">
<name id="214">response</name>
<source idref="18"/>
<target idref="167"/>
</item>
</sources>
<targets id="215" type="java.util.HashSet">
<item idref="165" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="84"/>
</item>
</sources>
<targets id="216" type="java.util.HashSet">
<item idref="82" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="18"/>
</item>
</sources>
<targets id="217" type="java.util.HashSet">
<item idref="161" type="com.j2fe.workflow.definition.Transition"/>
<item idref="16" type="com.j2fe.workflow.definition.Transition"/>
<item idref="213" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="8"/>
</item>
</sources>
<targets id="218" type="java.util.HashSet">
<item idref="6" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
</sources>
<targets id="219" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="220">Request Reply/RMDS</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="221">user1</lastChangeUser>
<lastUpdate id="222">2018-04-24T14:23:58.000+1000</lastUpdate>
<name id="223">RMDSRequestReply</name>
<optimize>true</optimize>
<parameter id="224" type="java.util.HashMap">
<entry>
<key id="225" type="java.lang.String">ChainResponseXML</key>
<value id="226" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="227">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="228">RMDS chain response XML.</description>
<input>false</input>
<output>true</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="229" type="java.lang.String">IsChainRequest</key>
<value id="230" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="231">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="232">If the request is a Chain item?</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="233" type="java.lang.String">MaxRequestPerItem</key>
<value id="234" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="235">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="236">Max request per item size.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="237" type="java.lang.String">Message</key>
<value id="238" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="239">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="240">Input XML message.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="241" type="java.lang.String">MessageMetaData</key>
<value id="242" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="243">java.util.Map</className>
<clazz>java.util.Map</clazz>
<description id="244">MessageMetaData</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="245" type="java.lang.String">MessageType</key>
<value id="246" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="247">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="248" type="java.lang.String">ParentJob</key>
<value id="249" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="250">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="251">Parent Job ID.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="252" type="java.lang.String">PricePointEventDefinitionId</key>
<value id="253" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="254">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="255">Price Point Event ID from FT_T_PPEF table to pick up prices for given Price Point.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="256" type="java.lang.String">ProcessingDate</key>
<value id="257" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="258">java.util.Date</className>
<clazz>java.util.Date</clazz>
<description id="259">ProcessingDate for Price Files</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="260" type="java.lang.String">RMDS Service</key>
<value id="261" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="262">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="263">RMDS Service Name</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="264" type="java.lang.String">RequestTransaction</key>
<value id="265" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="266">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="267">Request Transaction</description>
<input>false</input>
<output>true</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="268" type="java.lang.String">RunTime</key>
<value id="269" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="270">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="271">Runtime to be assigned to RMDS request pool.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="272" type="java.lang.String">WriteToFile</key>
<value id="273" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="274">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="275">Boolean flag to enable/disable file writing.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="276" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="126"/>
<status>RELEASED</status>
<variables id="277" type="java.util.HashMap">
<entry>
<key id="278" type="java.lang.String">ChainResponseXML</key>
<value id="279" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="280">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="281">RMDS chain response XML.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="282" type="java.lang.String">IsChainRequest</key>
<value id="283" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="284">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="285">If the request is a Chain item?</description>
<persistent>false</persistent>
<value id="286" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="287" type="java.lang.String">MaxRequestPerItem</key>
<value id="288" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="289">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="290">Max request per item size.</description>
<persistent>false</persistent>
<value id="291" type="java.lang.Integer">100</value>
</value>
</entry>
<entry>
<key id="292" type="java.lang.String">Message</key>
<value id="293" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="294">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="295">Input XML message.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="296" type="java.lang.String">MessageMetaData</key>
<value id="297" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="298">java.util.Map</className>
<clazz>java.util.Map</clazz>
<description id="299">MessageMetaData</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="300" type="java.lang.String">MessageType</key>
<value id="301" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="302">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="303" type="java.lang.String">RMDS</value>
</value>
</entry>
<entry>
<key id="304" type="java.lang.String">ParentJob</key>
<value id="305" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="306">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="307">Parent Job ID.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="308" type="java.lang.String">PricePointEventDefinitionId</key>
<value id="309" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="310">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="311">Price Point Event ID from FT_T_PPEF table to pick up prices for given Price Point.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="312" type="java.lang.String">ProcessingDate</key>
<value id="313" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="314">java.util.Date</className>
<clazz>java.util.Date</clazz>
<description id="315">ProcessingDate for Price Files</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="316" type="java.lang.String">RMDS Service</key>
<value id="317" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="318">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="319">RMDS Service Name</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="320" type="java.lang.String">RequestTransaction</key>
<value id="321" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="322">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="323">Request Transaction</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="324" type="java.lang.String">RunTime</key>
<value id="325" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="326">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="327">Runtime to be assigned to RMDS request pool.</description>
<persistent>false</persistent>
<value id="328" type="java.lang.Integer">120</value>
</value>
</entry>
<entry>
<key id="329" type="java.lang.String">WriteToFile</key>
<value id="330" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="331">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="332">Boolean flag to enable/disable file writing.</description>
<persistent>false</persistent>
<value idref="116"/>
</value>
</entry>
</variables>
<version>4</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
