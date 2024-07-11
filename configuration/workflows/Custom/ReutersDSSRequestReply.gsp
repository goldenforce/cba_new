<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.16">
<package-comment/>
<businessobject displayString="4 - Request by iss_typ and RIC" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">Request by iss_typ and RIC</comment>
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
<stringValue id="14">ParentJobID</stringValue>
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
<name id="19">Consolidate Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandler>
<nodeHandlerClass id="20">com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandlerClass>
<parameters id="21" type="java.util.HashSet">
<item id="22" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="23">jobId</name>
<stringValue id="24">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="25" type="java.util.HashSet">
<item id="26" type="com.j2fe.workflow.definition.Transition">
<name id="27">goto-next</name>
<source id="28">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="29">Call Request Reply</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="30">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="31" type="java.util.HashSet">
<item id="32" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="33">["Message"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="34">input["Message"]</name>
<stringValue id="35">RequestXML</stringValue>
<type>VARIABLE</type>
</item>
<item id="36" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="37">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="38">input["ParentJobID"]</name>
<stringValue id="39">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="40" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="41">name</name>
<stringValue id="42">Request Reply</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="43" type="java.util.HashSet">
<item id="44" type="com.j2fe.workflow.definition.Transition">
<name id="45">goto-next</name>
<source id="46">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="47">Generate Request XML</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="48">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="49" type="java.util.HashSet">
<item id="50" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="51">statements</name>
<stringValue id="52">StringBuffer strbufXML = new StringBuffer();&#13;
&#13;
strbufXML.append("&lt;VendorRequest&gt;&lt;User&gt;user1&lt;/User&gt;&lt;Requestor&gt;user1&lt;/Requestor&gt;&lt;UserRequestID/&gt;");&#13;
&#13;
for(int i=0;i&lt;IssId.length;i++)&#13;
{&#13;
			strbufXML.append("&lt;Request&gt;&lt;RequestType&gt;");&#13;
			strbufXML.append("ReutersDSS_Terms_and_Conditions");&#13;
			strbufXML.append("&lt;/RequestType&gt;");&#13;
			strbufXML.append("&lt;Vendor&gt;REUTERS&lt;/Vendor&gt;");&#13;
			strbufXML.append("&lt;TableType&gt;ISSU&lt;/TableType&gt;");&#13;
			strbufXML.append("&lt;Identifier&gt;");&#13;
			strbufXML.append(IssId[i]);&#13;
			strbufXML.append("&lt;/Identifier&gt;");&#13;
			strbufXML.append("&lt;IDContext&gt;RIC&lt;/IDContext&gt;");&#13;
			strbufXML.append("&lt;/Request&gt;");&#13;
}&#13;
&#13;
strbufXML.append("&lt;/VendorRequest&gt;");&#13;
&#13;
String xml = strbufXML.toString();</stringValue>
<type>CONSTANT</type>
</item>
<item id="53" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="54">variables["IssId"]</name>
<stringValue id="55">IssIdList</stringValue>
<type>VARIABLE</type>
</item>
<item id="56" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="57">variables["xml"]</name>
<stringValue id="58">RequestXML</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="59" type="java.util.HashSet">
<item id="60" type="com.j2fe.workflow.definition.Transition">
<name id="61">rows-found</name>
<source id="62">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="63">Fetch RIC for request 2</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="64">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="65" type="java.util.HashSet">
<item id="66" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="67">database</name>
<stringValue id="68">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="69" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="70">firstColumnsResult</name>
<stringValue id="71">IssIdList</stringValue>
<type>VARIABLE</type>
</item>
<item id="72" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="73">indexedParameters[0]</name>
<stringValue id="74">Iss_typ</stringValue>
<type>VARIABLE</type>
</item>
<item id="75" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="76">indexedParameters[1]</name>
<stringValue id="77">iss_id</stringValue>
<type>VARIABLE</type>
</item>
<item id="78" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="79">querySQL</name>
<stringValue id="80">SELECT ISID.ISS_ID FROM FT_T_ISID ISID, FT_T_ISSU ISSU,FT_T_MKIS MKIS&#13;
WHERE ISID.INSTR_ID = ISSU.INSTR_ID&#13;
AND ISID.ID_CTXT_TYP = 'RIC'&#13;
AND (ISSU.END_TMS IS NULL  OR ISSU.END_TMS&gt;SYSDATE)&#13;
AND ISID.INSTR_ID = MKIS.INSTR_ID&#13;
AND ISID.MKT_OID = MKIS.MKT_OID&#13;
AND MKIS.PRIM_TRD_MKT_IND = 'Y'&#13;
AND (ISID.END_TMS IS NULL OR ISID.END_TMS&gt;SYSDATE)&#13;
AND (MKIS.END_TMS IS NULL OR ISSU.END_TMS&gt;SYSDATE)&#13;
AND ISSU.ISS_TYP=?&#13;
AND ISID.ISS_ID LIKE '%'||?||'%'&#13;
</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="81" type="java.util.HashSet">
<item id="82" type="com.j2fe.workflow.definition.Transition">
<name id="83">RIC</name>
<source id="84">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="85">Multiple Processing</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="86">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="87" type="java.util.HashSet">
<item id="88" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="89">caseItem</name>
<stringValue id="90">Split</stringValue>
<type>VARIABLE</type>
</item>
<item id="91" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="92">defaultItem</name>
<stringValue id="93">NO</stringValue>
<type>CONSTANT</type>
</item>
<item id="94" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="95">nullTransition</name>
<stringValue id="96">NO</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="97" type="java.util.HashSet">
<item id="98" type="com.j2fe.workflow.definition.Transition">
<name id="99">goto-next</name>
<source id="100">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="101">Bean Shell Script</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="102">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="103" type="java.util.HashSet">
<item id="104" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="105">statements</name>
<stringValue id="106">import org.apache.log4j.Logger;&#13;
&#13;
if ((iss_id == null || iss_id.isEmpty()))&#13;
{&#13;
	Split="ISSTYP";&#13;
}&#13;
else&#13;
{&#13;
Split="RIC";&#13;
}</stringValue>
<type>CONSTANT</type>
</item>
<item id="107" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="108">variables["Split"]</name>
<stringValue id="109">Split</stringValue>
<type>VARIABLE</type>
</item>
<item id="110" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="111">["iss_id"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="112">variables["iss_id"]</name>
<stringValue id="113">iss_id</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="114" type="java.util.HashSet">
<item id="115" type="com.j2fe.workflow.definition.Transition">
<name id="116">goto-next</name>
<source id="117">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="118">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="119">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="120" type="java.util.HashSet">
<item id="121" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="122">file</name>
<objectValue id="123" type="java.net.URI">ReutersDSSRequestReply</objectValue>
<type>CONSTANT</type>
</item>
<item id="124" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="125">jobId</name>
<stringValue id="126">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="127" type="java.util.HashSet">
<item id="128" type="com.j2fe.workflow.definition.Transition">
<name id="129">goto-next</name>
<source id="130">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="131">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="132">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="133" type="java.util.HashSet"/>
<targets id="134" type="java.util.HashSet">
<item idref="128" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="117"/>
</item>
</sources>
<targets id="135" type="java.util.HashSet">
<item idref="115" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="100"/>
</item>
</sources>
<targets id="136" type="java.util.HashSet">
<item idref="98" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="84"/>
</item>
</sources>
<targets id="137" type="java.util.HashSet">
<item id="138" type="com.j2fe.workflow.definition.Transition">
<name id="139">ISSTYP</name>
<source idref="84"/>
<target id="140">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="141">Fetch RIC for request</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="142">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="143" type="java.util.HashSet">
<item id="144" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="145">database</name>
<stringValue id="146">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="147" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="148">firstColumnsResult</name>
<stringValue id="149">IssIdList</stringValue>
<type>VARIABLE</type>
</item>
<item id="150" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="151">indexedParameters[0]</name>
<stringValue id="152">Iss_typ</stringValue>
<type>VARIABLE</type>
</item>
<item id="153" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="154">querySQL</name>
<stringValue id="155">SELECT ISID.ISS_ID FROM FT_T_ISID ISID, FT_T_ISSU ISSU,FT_T_MKIS MKIS&#13;
WHERE ISID.INSTR_ID = ISSU.INSTR_ID&#13;
AND ISID.ID_CTXT_TYP = 'RIC'&#13;
AND (ISSU.END_TMS IS NULL  OR ISSU.END_TMS&gt;SYSDATE)&#13;
AND ISID.INSTR_ID = MKIS.INSTR_ID&#13;
AND ISID.MKT_OID = MKIS.MKT_OID&#13;
AND MKIS.PRIM_TRD_MKT_IND = 'Y'&#13;
AND (ISID.END_TMS IS NULL OR ISID.END_TMS&gt;SYSDATE)&#13;
AND (MKIS.END_TMS IS NULL OR ISSU.END_TMS&gt;SYSDATE)&#13;
AND ISSU.ISS_TYP=?&#13;
</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="156" type="java.util.HashSet">
<item idref="138" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="157" type="java.util.HashSet">
<item id="158" type="com.j2fe.workflow.definition.Transition">
<name id="159">nothing-found</name>
<source idref="140"/>
<target idref="18"/>
</item>
<item id="160" type="com.j2fe.workflow.definition.Transition">
<name id="161">rows-found</name>
<source idref="140"/>
<target id="162">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="163">Generate Request XML</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="164">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="165" type="java.util.HashSet">
<item id="166" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="167">statements</name>
<stringValue id="168">StringBuffer strbufXML = new StringBuffer();&#13;
&#13;
strbufXML.append("&lt;VendorRequest&gt;&lt;User&gt;user1&lt;/User&gt;&lt;Requestor&gt;user1&lt;/Requestor&gt;&lt;UserRequestID/&gt;");&#13;
&#13;
for(int i=0;i&lt;IssId.length;i++)&#13;
{&#13;
			strbufXML.append("&lt;Request&gt;&lt;RequestType&gt;");&#13;
			strbufXML.append("ReutersDSS_Terms_and_Conditions");&#13;
			strbufXML.append("&lt;/RequestType&gt;");&#13;
			strbufXML.append("&lt;Vendor&gt;REUTERS&lt;/Vendor&gt;");&#13;
			strbufXML.append("&lt;TableType&gt;ISSU&lt;/TableType&gt;");&#13;
			strbufXML.append("&lt;Identifier&gt;");&#13;
			strbufXML.append(IssId[i]);&#13;
			strbufXML.append("&lt;/Identifier&gt;");&#13;
			strbufXML.append("&lt;IDContext&gt;RIC&lt;/IDContext&gt;");&#13;
			strbufXML.append("&lt;/Request&gt;");&#13;
}&#13;
&#13;
strbufXML.append("&lt;/VendorRequest&gt;");&#13;
&#13;
String xml = strbufXML.toString();</stringValue>
<type>CONSTANT</type>
</item>
<item id="169" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="170">variables["IssId"]</name>
<stringValue id="171">IssIdList</stringValue>
<type>VARIABLE</type>
</item>
<item id="172" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="173">variables["xml"]</name>
<stringValue id="174">RequestXML</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="175" type="java.util.HashSet">
<item idref="160" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="176" type="java.util.HashSet">
<item id="177" type="com.j2fe.workflow.definition.Transition">
<name id="178">goto-next</name>
<source idref="162"/>
<target id="179">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="180">Call Request Reply</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="181">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="182" type="java.util.HashSet">
<item id="183" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="184">["Message"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="185">input["Message"]</name>
<stringValue id="186">RequestXML</stringValue>
<type>VARIABLE</type>
</item>
<item id="187" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="188">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="189">input["ParentJobID"]</name>
<stringValue id="190">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="191" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="192">name</name>
<stringValue id="193">Request Reply</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="194" type="java.util.HashSet">
<item idref="177" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="195" type="java.util.HashSet">
<item id="196" type="com.j2fe.workflow.definition.Transition">
<name id="197">goto-next</name>
<source idref="179"/>
<target idref="18"/>
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
</target>
</item>
<item idref="82" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="62"/>
</item>
</sources>
<targets id="198" type="java.util.HashSet">
<item id="199" type="com.j2fe.workflow.definition.Transition">
<name id="200">nothing-found</name>
<source idref="62"/>
<target idref="18"/>
</item>
<item idref="60" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="46"/>
</item>
</sources>
<targets id="201" type="java.util.HashSet">
<item idref="44" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="28"/>
</item>
</sources>
<targets id="202" type="java.util.HashSet">
<item idref="26" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="18"/>
</item>
<item idref="196" type="com.j2fe.workflow.definition.Transition"/>
<item idref="158" type="com.j2fe.workflow.definition.Transition"/>
<item idref="199" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="203" type="java.util.HashSet">
<item idref="16" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="8"/>
</item>
</sources>
<targets id="204" type="java.util.HashSet">
<item idref="6" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
</sources>
<targets id="205" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="206">Custom</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="207">CBA_GC_OWN</lastChangeUser>
<lastUpdate id="208">2017-10-17T00:50:07.000+1100</lastUpdate>
<name id="209">ReutersDSSRequestReply</name>
<optimize>true</optimize>
<parameter id="210" type="java.util.HashMap">
<entry>
<key id="211" type="java.lang.String">Iss_typ</key>
<value id="212" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="213">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="214" type="java.lang.String">iss_id</key>
<value id="215" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="216">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="217" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="130"/>
<status>DEVELOPMENT</status>
<variables id="218" type="java.util.HashMap">
<entry>
<key id="219" type="java.lang.String">Iss_typ</key>
<value id="220" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="221">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="222" type="java.lang.String">iss_id</key>
<value id="223" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="224">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>4</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
