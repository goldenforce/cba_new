<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.16">
<package-comment/>
<businessobject displayString="6 - Fixed persistency issue and commit points" type="com.j2fe.workflow.definition.Workflow">
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
<stringValue id="14">parentJobid</stringValue>
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
<name id="19">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="20">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="21" type="java.util.HashSet">
<item id="22" type="com.j2fe.workflow.definition.Transition">
<name id="23">goto-next</name>
<source id="24">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="25">Call Subworkflow</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="26">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="27" type="java.util.HashSet">
<item id="28" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="29">["IssId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="30">input["IssId"]</name>
<stringValue id="31">rics</stringValue>
<type>VARIABLE</type>
</item>
<item id="32" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="33">["queryForExecutionn"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="34">input["queryForExecutionn"]</name>
<stringValue id="35">pub_CBA_MRU_FutureRolling</stringValue>
<type>CONSTANT</type>
</item>
<item id="36" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="37">name</name>
<stringValue id="38">CbaMruPublish_FutureRolling_SelectInsert</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="39" type="java.util.HashSet">
<item id="40" type="com.j2fe.workflow.definition.Transition">
<name id="41">goto-next</name>
<source id="42">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="43">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="44">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="45" type="java.util.HashSet">
<item id="46" type="com.j2fe.workflow.definition.Transition">
<name id="47">goto-next</name>
<source id="48">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="49">Trigger MTGD Shift</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="50">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="51" type="java.util.HashSet">
<item id="52" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="53">["RicIds"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="54">input["RicIds"]</name>
<stringValue id="55">rics</stringValue>
<type>VARIABLE</type>
</item>
<item id="56" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="57">name</name>
<stringValue id="58">CBACustom_WF_DeleteFUT1Reuters</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="59" type="java.util.HashSet">
<item id="60" type="com.j2fe.workflow.definition.Transition">
<name id="61">goto-next</name>
<source id="62">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="63">Request Reply Reuters</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="64">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="65" type="java.util.HashSet">
<item id="66" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="67">["DefaultDataType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="68">input["DefaultDataType"]</name>
<stringValue id="69">DefaultDataType</stringValue>
<type>VARIABLE</type>
</item>
<item id="70" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="71">["MaxRequestsPerFile"]@java/lang/Long@</UITypeHint>
<input>true</input>
<name id="72">input["MaxRequestsPerFile"]</name>
<stringValue id="73">MaxRequestsPerFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="74" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="75">["Message"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="76">input["Message"]</name>
<stringValue id="77">reutersXMLMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="78" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="79">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="80">input["ParentJobID"]</name>
<stringValue id="81">parentJobid</stringValue>
<type>VARIABLE</type>
</item>
<item id="82" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="83">["QueryByMarketSectorFirst"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="84">input["QueryByMarketSectorFirst"]</name>
<stringValue id="85">QueryByMarketSectorFirst</stringValue>
<type>VARIABLE</type>
</item>
<item id="86" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="87">["RemoveDuplicateFields"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="88">input["RemoveDuplicateFields"]</name>
<stringValue id="89">RemoveDuplicateFields</stringValue>
<type>VARIABLE</type>
</item>
<item id="90" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="91">["ReteursFileSystemType"]@com/j2fe/connector/ReutersFileSystemType@</UITypeHint>
<input>true</input>
<name id="92">input["ReteursFileSystemType"]</name>
<stringValue id="93">ReteursFileSystemType</stringValue>
<type>VARIABLE</type>
</item>
<item id="94" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="95">["ReutersDSSReportTemplateName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="96">input["ReutersDSSReportTemplateName"]</name>
<stringValue id="97">ReutersDSSReportTemplateName</stringValue>
<type>VARIABLE</type>
</item>
<item id="98" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="99">name</name>
<stringValue id="100">Request Reply</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="101" type="java.util.HashSet">
<item id="102" type="com.j2fe.workflow.definition.Transition">
<name id="103">goto-next</name>
<source id="104">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="105">Update Maturing Rics in Custom table</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="106">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="107" type="java.util.HashSet">
<item id="108" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="109">database</name>
<stringValue id="110">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="111" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="112">querySQL</name>
<stringValue id="113">queryForFut1</stringValue>
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
<name id="118">Create Request</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="119">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="120" type="java.util.HashSet">
<item id="121" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="122">statements</name>
<objectValue id="123" type="java.lang.String">import java.lang.String;&#13;
import java.util.HashMap;&#13;
import java.util.Map;&#13;
&#13;
&#13;
	StringBuffer strbufXML = new StringBuffer();&#13;
&#13;
	Map originalManipulated = new HashMap();&#13;
&#13;
	String queryForFut1 = new String();		&#13;
&#13;
		String insertInto = new String();&#13;
&#13;
			insertInto = " INSERT INTO FT_T_FUT1  (ticker_id,fut_chain,STATUS_DESC ,START_TMS,LAST_CHG_TMS) ";&#13;
&#13;
	queryForFut1 = " ";&#13;
&#13;
	strbufXML.append("&lt;VendorRequest&gt;&lt;User&gt;CBA&lt;/User&gt;&lt;Requestor&gt;CBA&lt;/Requestor&gt;&lt;UserRequestID/&gt;&lt;Universe/&gt;");&#13;
&#13;
	String rics = new String();&#13;
&#13;
		for(int i=0;i&lt;ric.length;i++)&#13;
		{    &#13;
&#13;
			if(ric[i].trim().length()&gt;2)&#13;
			{&#13;
&#13;
			String ricVal = "0#"+ric[i].trim().substring(0,2)+":";&#13;
&#13;
				strbufXML.append("&lt;Request&gt;&lt;DataType&gt;PRICE&lt;/DataType&gt;&lt;Vendor&gt;REUTERS&lt;/Vendor&gt;");&#13;
				strbufXML.append("&lt;RequestType&gt;");&#13;
				strbufXML.append("ReutersCBA_EOD_ChainRic");&#13;
				strbufXML.append("&lt;/RequestType&gt;");	&#13;
				strbufXML.append("&lt;TableType&gt;ISSU&lt;/TableType&gt;");&#13;
				strbufXML.append("&lt;Identifier&gt;");&#13;
				originalManipulated.put(ricVal,ric[i].trim());&#13;
&#13;
				strbufXML.append(ricVal);&#13;
				strbufXML.append("&lt;/Identifier&gt;");&#13;
				strbufXML.append("&lt;IDContext&gt;CHR&lt;/IDContext&gt;");&#13;
				strbufXML.append("&lt;/Request&gt;");&#13;
			}		&#13;
		}&#13;
&#13;
			    for (Map.Entry entry : originalManipulated .entrySet()) &#13;
			{&#13;
&#13;
						queryForFut1 = queryForFut1  +  " SELECT  '"+(String)entry.getKey()+"','"+(String)entry.getValue()+"' , 'ORG',SYSDATE,SYSDATE  FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fut1 WHERE fut_chain = '"+(String)entry.getValue()+"')  UNION ";				&#13;
&#13;
					rics =rics+"'"+(String)entry.getKey()+"',";&#13;
&#13;
				//	rics =rics+(String)entry.getKey()+",";&#13;
&#13;
			}&#13;
&#13;
queryForFut1 = queryForFut1.trim();&#13;
&#13;
&#13;
&#13;
	if(queryForFut1.endsWith("UNION"))&#13;
		{&#13;
&#13;
				queryForFut1 = queryForFut1.substring(0, queryForFut1.lastIndexOf("UNION"));&#13;
&#13;
		}&#13;
&#13;
		queryForFut1  = insertInto +queryForFut1  ;&#13;
&#13;
&#13;
	if(rics.endsWith(","))&#13;
		{&#13;
&#13;
			rics =rics.substring(0, rics.lastIndexOf(",")); 	&#13;
&#13;
		}&#13;
&#13;
&#13;
	strbufXML.append("&lt;/VendorRequest&gt;");		&#13;
&#13;
	String xml = strbufXML.toString();&#13;
&#13;
&#13;
&#13;
&#13;
</objectValue>
<type>CONSTANT</type>
</item>
<item id="124" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="125">variables["queryForFut1"]</name>
<stringValue id="126">queryForFut1</stringValue>
<type>VARIABLE</type>
</item>
<item id="127" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="128">variables["ric"]</name>
<stringValue id="129">RIC</stringValue>
<type>VARIABLE</type>
</item>
<item id="130" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="131">["rics"]@java/lang/Object@</UITypeHint>
<input>false</input>
<name id="132">variables["rics"]</name>
<stringValue id="133">rics</stringValue>
<type>VARIABLE</type>
</item>
<item id="134" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="135">variables["xml"]</name>
<stringValue id="136">reutersXMLMessage</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="137" type="java.util.HashSet">
<item id="138" type="com.j2fe.workflow.definition.Transition">
<name id="139">rows-found</name>
<source id="140">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="141">Get Maturing Rics</name>
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
<stringValue id="149">RIC</stringValue>
<type>VARIABLE</type>
</item>
<item id="150" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="151">querySQL</name>
<stringValue id="152"> SELECT DISTINCT iss_id&#13;
  FROM ft_T_isid isid, ft_t_issu issu&#13;
 WHERE     (issu.end_tms IS NULL or issu.end_tms &gt; sysdate)&#13;
 AND isid.instr_id IN&#13;
 (SELECT DISTINCT instr_id&#13;
       FROM ft_t_mtgd&#13;
             WHERE mtdi_oid IN&#13;
    (SELECT DISTINCT mtdi_oid&#13;
       FROM fT_T_mtdi&#13;
            WHERE end_tms IS NULL AND curv_rolling_ind = 'Y')&#13;
AND END_TMS IS NULL )&#13;
 AND (isid.end_tms IS NULL or isid.end_tms &gt; sysdate)&#13;
AND id_ctxt_typ IN ('RIC')&#13;
   and issu.instr_id = isid.instr_id and  trunc(mat_exp_tms) = trunc(sysdate)&#13;
&#13;
</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="153" type="java.util.HashSet">
<item id="154" type="com.j2fe.workflow.definition.Transition">
<name id="155">goto-next</name>
<source id="156">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="157">Clear Custom table</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="158">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="159" type="java.util.HashSet">
<item id="160" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="161">database</name>
<stringValue id="162">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="163" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="164">querySQL</name>
<stringValue id="165">DELETE FROM FT_T_FUT1</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="166" type="java.util.HashSet">
<item id="167" type="com.j2fe.workflow.definition.Transition">
<name id="168">goto-next</name>
<source id="169">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="170">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="171">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="172" type="java.util.HashSet">
<item id="173" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="174">file</name>
<objectValue id="175" type="java.net.URI">CBA_ReutersChainRic_FutureRolling_WF</objectValue>
<type>CONSTANT</type>
</item>
<item id="176" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="177">jobId</name>
<stringValue id="178">parentJobid</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="179" type="java.util.HashSet">
<item id="180" type="com.j2fe.workflow.definition.Transition">
<name id="181">goto-next</name>
<source id="182">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="183">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="184">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="185" type="java.util.HashSet"/>
<targets id="186" type="java.util.HashSet">
<item idref="180" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="169"/>
</item>
</sources>
<targets id="187" type="java.util.HashSet">
<item idref="167" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="156"/>
</item>
</sources>
<targets id="188" type="java.util.HashSet">
<item idref="154" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="140"/>
</item>
</sources>
<targets id="189" type="java.util.HashSet">
<item id="190" type="com.j2fe.workflow.definition.Transition">
<name id="191">nothing-found</name>
<source idref="140"/>
<target idref="18"/>
</item>
<item idref="138" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="117"/>
</item>
</sources>
<targets id="192" type="java.util.HashSet">
<item idref="115" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="104"/>
</item>
</sources>
<targets id="193" type="java.util.HashSet">
<item idref="102" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="62"/>
</item>
</sources>
<targets id="194" type="java.util.HashSet">
<item idref="60" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="48"/>
</item>
</sources>
<targets id="195" type="java.util.HashSet">
<item idref="46" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="42"/>
</item>
</sources>
<targets id="196" type="java.util.HashSet">
<item idref="40" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="24"/>
</item>
</sources>
<targets id="197" type="java.util.HashSet">
<item idref="22" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="18"/>
</item>
<item idref="190" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="198" type="java.util.HashSet">
<item idref="16" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="8"/>
</item>
</sources>
<targets id="199" type="java.util.HashSet">
<item idref="6" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
</sources>
<targets id="200" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="201">Cba/CBAChainRIC</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="202">user1</lastChangeUser>
<lastUpdate id="203">2018-05-14T21:14:06.000+1000</lastUpdate>
<name id="204">CBAChainRequestReply</name>
<optimize>true</optimize>
<parameter id="205" type="java.util.HashMap">
<entry>
<key id="206" type="java.lang.String">BBDownloadDirectory</key>
<value id="207" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="208">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="209">The directory where BB response files are downloaded from.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="210" type="java.lang.String">BBTimeout</key>
<value id="211" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="212">java.lang.Long</className>
<clazz>java.lang.Long</clazz>
<description id="213">The Timeout for downloading the response file from BB.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="214" type="java.lang.String">BBUploadDirectory</key>
<value id="215" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="216">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="217">The directory where BB requests are uploaded to.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="218" type="java.lang.String">Counter</key>
<value id="219" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="220">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="221">Counter</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="222" type="java.lang.String">DefaultDataType</key>
<value id="223" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="224">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="225">The default data type used to determine the Request Type when no or no unique Request Type can be determined.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="226" type="java.lang.String">DnBProduct</key>
<value id="227" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="228">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="229">The DnBProduct to be used. Can be used to override the default DnBProduct configured in the Assembly.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="230" type="java.lang.String">ExcludeFields</key>
<value id="231" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="232">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="233" type="java.lang.String">IDCDownloadDirectory</key>
<value id="234" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="235">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="236"> Download directory for IDC.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="237" type="java.lang.String">IDCFormat</key>
<value id="238" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="239">com.j2fe.connector.IDCFormat</className>
<clazz>com.j2fe.connector.IDCFormat</clazz>
<description id="240">The Layout format for IDC.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="241" type="java.lang.String">IDCIterations</key>
<value id="242" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="243">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="244">The maximum number of iterations List Files should make for IDC. For each iteration the List Files will scan the IDC upload directory and wait for 5 seconds before going through the next iteration if the upload directory is not empty.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="245" type="java.lang.String">IDCRR</key>
<value id="246" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="247">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="248">Variable to determine delivery mechanism to request. 'False' for Ad-hoc and 'True' for Request/Response.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="249" type="java.lang.String">IDContextTypeChkReqd</key>
<value id="250" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="251">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="252">It determines whether ID Context Type is checked to get a distinct Instrument for determining External Issue Type of an Issue for Bloomberg.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="253" type="java.lang.String">InteractiveDataFileSuffix</key>
<value id="254" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="255">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="256">The suffix to append to the files when uploading them to the IDC FTP server.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="257" type="java.lang.String">InteractiveDataServiceID</key>
<value id="258" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="259">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="260">The Service Id of the Universe to be used (required if an immediate response is needed)</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="261" type="java.lang.String">InteractiveDataUniverseID</key>
<value id="262" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="263">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="264">The Universe that should be maintained.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="265" type="java.lang.String">InteractiveDataUploadDirectory</key>
<value id="266" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="267">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="268">The directory where IDC requests are uploaded to.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="269" type="java.lang.String">IsConnectionFailOver</key>
<value id="270" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="271">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="272">Has Primary Connection failed?</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="273" type="java.lang.String">JobDefinitionId</key>
<value id="274" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="275">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="276">Job Definition ID from FT_T_JBDF table to pick up job defination.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="277" type="java.lang.String">MaxRequestsPerFile</key>
<value id="278" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="279">java.lang.Long</className>
<clazz>java.lang.Long</clazz>
<description id="280">The maximum number of requests per file. (e.g. Bloomberg supports a max of 20.000 Requests in a file, Telekurs a max. of 500)</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="281" type="java.lang.String">MaxRetryTime</key>
<value id="282" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="283">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="284">Maximum time (in seconds) upto which the filesystem would be scanned for files.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="285" type="java.lang.String">Message</key>
<value id="286" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="287">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="288">The Vendor Request XML message.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="289" type="java.lang.String">NoOfFilesToRunInParallel</key>
<value id="290" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="291">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="292">The number of files to run in parallel.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="293" type="java.lang.String">ParentJobID</key>
<value id="294" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="295">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="296">Parent Job id is used to correlated all the child jobs.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="297" type="java.lang.String">ParticipantPurposeType</key>
<value id="298" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="299">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="300" type="java.lang.String">PricePointEventDefinitionId</key>
<value id="301" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="302">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="303">Price Point Event ID from FT_T_PPEF table to pick up prices for given Price Point.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="304" type="java.lang.String">ProcessFilteredMessages</key>
<value id="305" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="306">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="307">Indicates that messages are processed regardless of the result of the Generic Inbound Filter.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="308" type="java.lang.String">QueryByMarketSectorFirst</key>
<value id="309" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="310">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="311">If set to False, will always try to find out ReqType using InstrumentId and ExternalIss Typ, and if not found then only will try find out by Market Sector. (False for MnG).&#13;
Default is true.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="312" type="java.lang.String">RTTimeout</key>
<value id="313" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="314">java.lang.Long</className>
<clazz>java.lang.Long</clazz>
<description id="315">The Timeout for downloading the response file from Reuters.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="316" type="java.lang.String">RemoveDuplicateFields</key>
<value id="317" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="318">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="319">If this is false the RemoveDuplicateFields activity will be disabled.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="320" type="java.lang.String">RequestTransaction</key>
<value id="321" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="322">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="323">The Parent Transaction created for all the Requests.</description>
<input>false</input>
<output>true</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="324" type="java.lang.String">ReteursFileSystemType</key>
<value id="325" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="326">com.j2fe.connector.ReutersFileSystemType</className>
<clazz>com.j2fe.connector.ReutersFileSystemType</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="327" type="java.lang.String">ReutersDSSDownloadDirectory</key>
<value id="328" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="329">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="330">The directory where Reuters Datascope Select response files are downloaded from.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="331" type="java.lang.String">ReutersDSSInputListName</key>
<value id="332" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="333">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="334">The Reuters Datascope Select Input List Name to use. If not set, it is defaulted to the Request Type Name.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="335" type="java.lang.String">ReutersDSSReportTemplateName</key>
<value id="336" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="337">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="338">The Reuters Datascope Select Report Templae Name to use. If not set, it is defaulted to the Request Type Name.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="339" type="java.lang.String">ReutersDSSRicMaintenanceMessageType</key>
<value id="340" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="341">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="342">If this value is set it indicates that RicMaintenance files should be processed and that this Message Type is used to process the files.</description>
<input>true</input>
<logicalType id="343">com.j2fe.processing.MessageType</logicalType>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="344" type="java.lang.String">ReutersDSSScheduleName</key>
<value id="345" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="346">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="347">The Reuters Datascope Select Schedule Name to use. If not set, it is defaulted to the Request Type Name.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="348" type="java.lang.String">ReutersDSSUploadDirectory</key>
<value id="349" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="350">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="351">The directory where Reuters Datascope Select requests are uploaded to.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="352" type="java.lang.String">StoreRequestFileLocalDirectory</key>
<value id="353" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="354">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="355">Directory to store RequestFile on local</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="356" type="java.lang.String">StoreRequestFileonLocal</key>
<value id="357" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="358">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="359">Indicates whether request file has to be stored in local</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="360" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>4</retries>
<startNode idref="182"/>
<status>RELEASED</status>
<variables id="361" type="java.util.HashMap">
<entry>
<key id="362" type="java.lang.String">BBDownloadDirectory</key>
<value id="363" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="364">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="365">The directory where BB response files are downloaded from.</description>
<persistent>false</persistent>
<value id="366" type="java.lang.String">/</value>
</value>
</entry>
<entry>
<key id="367" type="java.lang.String">BBTimeout</key>
<value id="368" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="369">java.lang.Long</className>
<clazz>java.lang.Long</clazz>
<description id="370">The Timeout for downloading the response file from BB.</description>
<persistent>false</persistent>
<value id="371" type="java.lang.Long">3000</value>
</value>
</entry>
<entry>
<key id="372" type="java.lang.String">BBUploadDirectory</key>
<value id="373" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="374">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="375">The directory where BB requests are uploaded to.</description>
<persistent>false</persistent>
<value id="376" type="java.lang.String">/</value>
</value>
</entry>
<entry>
<key id="377" type="java.lang.String">Counter</key>
<value id="378" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="379">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="380">Counter</description>
<persistent>false</persistent>
<value id="381" type="java.lang.Integer">0</value>
</value>
</entry>
<entry>
<key id="382" type="java.lang.String">DefaultDataType</key>
<value id="383" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="384">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="385">The default data type used to determine the Request Type when no or no unique Request Type can be determined.</description>
<persistent>false</persistent>
<value id="386" type="java.lang.String">BASIC</value>
</value>
</entry>
<entry>
<key id="387" type="java.lang.String">DnBProduct</key>
<value id="388" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="389">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="390">The DnBProduct to be used. Can be used to override the default DnBProduct configured in the Assembly.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="391" type="java.lang.String">ExcludeFields</key>
<value id="392" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="393">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="394" type="java.lang.String">IDCDownloadDirectory</key>
<value id="395" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="396">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="397"> Download directory for IDC.</description>
<persistent>false</persistent>
<value id="398" type="java.lang.String">/</value>
</value>
</entry>
<entry>
<key id="399" type="java.lang.String">IDCFormat</key>
<value id="400" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="401">com.j2fe.connector.IDCFormat</className>
<clazz>com.j2fe.connector.IDCFormat</clazz>
<description id="402">The Layout format for IDC.</description>
<persistent>false</persistent>
<value id="403" type="com.j2fe.connector.IDCFormat">SingelRecordLayout</value>
</value>
</entry>
<entry>
<key id="404" type="java.lang.String">IDCIterations</key>
<value id="405" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="406">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="407">The maximum number of iterations List Files should make for IDC. For each iteration the List Files will scan the IDC upload directory and wait for 5 seconds before going through the next iteration if the upload directory is not empty.</description>
<persistent>false</persistent>
<value id="408" type="java.lang.String">60</value>
</value>
</entry>
<entry>
<key id="409" type="java.lang.String">IDCRR</key>
<value id="410" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="411">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="412">Variable to determine delivery mechanism to request. 'False' for Ad-hoc and 'True' for Request/Response.</description>
<persistent>false</persistent>
<value id="413" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="414" type="java.lang.String">IDContextTypeChkReqd</key>
<value id="415" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="416">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="417">It determines whether ID Context Type is checked to get a distinct Instrument for determining External Issue Type of an Issue for Bloomberg.</description>
<persistent>false</persistent>
<value id="418" type="java.lang.Boolean">true</value>
</value>
</entry>
<entry>
<key id="419" type="java.lang.String">InteractiveDataFileSuffix</key>
<value id="420" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="421">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="422">The suffix to append to the files when uploading them to the IDC FTP server.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="423" type="java.lang.String">InteractiveDataServiceID</key>
<value id="424" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="425">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="426">The Service Id of the Universe to be used (required if an immediate response is needed)</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="427" type="java.lang.String">InteractiveDataUniverseID</key>
<value id="428" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="429">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="430">The Universe that should be maintained.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="431" type="java.lang.String">InteractiveDataUploadDirectory</key>
<value id="432" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="433">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="434">The directory where IDC requests are uploaded to.</description>
<persistent>false</persistent>
<value id="435" type="java.lang.String">\</value>
</value>
</entry>
<entry>
<key id="436" type="java.lang.String">IsConnectionFailOver</key>
<value id="437" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="438">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="439">Has Primary Connection failed?</description>
<persistent>false</persistent>
<value idref="413"/>
</value>
</entry>
<entry>
<key id="440" type="java.lang.String">JobDefinitionId</key>
<value id="441" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="442">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="443">Job Definition ID from FT_T_JBDF table to pick up job defination.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="444" type="java.lang.String">MaxRequestsPerFile</key>
<value id="445" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="446">java.lang.Long</className>
<clazz>java.lang.Long</clazz>
<description id="447">The maximum number of requests per file. (e.g. Bloomberg supports a max of 20.000 Requests in a file, Telekurs a max. of 500)</description>
<persistent>false</persistent>
<value id="448" type="java.lang.Long">500</value>
</value>
</entry>
<entry>
<key id="449" type="java.lang.String">MaxRetryTime</key>
<value id="450" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="451">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="452">Maximum time (in seconds) upto which the filesystem would be scanned for files.</description>
<persistent>false</persistent>
<value id="453" type="java.lang.Integer">900</value>
</value>
</entry>
<entry>
<key id="454" type="java.lang.String">Message</key>
<value id="455" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="456">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="457">The Vendor Request XML message.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="458" type="java.lang.String">NoOfFilesToRunInParallel</key>
<value id="459" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="460">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="461">The number of files to run in parallel.</description>
<persistent>false</persistent>
<value id="462" type="java.lang.Integer">2</value>
</value>
</entry>
<entry>
<key id="463" type="java.lang.String">ParentJobID</key>
<value id="464" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="465">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="466">Parent Job id is used to correlated all the child jobs.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="467" type="java.lang.String">ParticipantPurposeType</key>
<value id="468" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="469">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="470" type="java.lang.String">REQUEST</value>
</value>
</entry>
<entry>
<key id="471" type="java.lang.String">PricePointEventDefinitionId</key>
<value id="472" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="473">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="474">Price Point Event ID from FT_T_PPEF table to pick up prices for given Price Point.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="475" type="java.lang.String">ProcessFilteredMessages</key>
<value id="476" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="477">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="478">Indicates that messages are processed regardless of the result of the Generic Inbound Filter.</description>
<persistent>false</persistent>
<value idref="413"/>
</value>
</entry>
<entry>
<key id="479" type="java.lang.String">QueryByMarketSectorFirst</key>
<value id="480" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="481">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="482">If set to False, will always try to find out ReqType using InstrumentId and ExternalIss Typ, and if not found then only will try find out by Market Sector. (False for MnG).&#13;
Default is true.</description>
<persistent>false</persistent>
<value idref="413"/>
</value>
</entry>
<entry>
<key id="483" type="java.lang.String">RTTimeout</key>
<value id="484" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="485">java.lang.Long</className>
<clazz>java.lang.Long</clazz>
<description id="486">The Timeout for downloading the response file from Reuters.</description>
<persistent>false</persistent>
<value id="487" type="java.lang.Long">3000</value>
</value>
</entry>
<entry>
<key id="488" type="java.lang.String">RemoveDuplicateFields</key>
<value id="489" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="490">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="491">If this is false the RemoveDuplicateFields activity will be disabled.</description>
<persistent>false</persistent>
<value idref="418"/>
</value>
</entry>
<entry>
<key id="492" type="java.lang.String">RequestTransaction</key>
<value id="493" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="494">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="495">The Parent Transaction created for all the Requests.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="496" type="java.lang.String">ReteursFileSystemType</key>
<value id="497" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="498">com.j2fe.connector.ReutersFileSystemType</className>
<clazz>com.j2fe.connector.ReutersFileSystemType</clazz>
<persistent>false</persistent>
<value id="499" type="com.j2fe.connector.ReutersFileSystemType">SFTP</value>
</value>
</entry>
<entry>
<key id="500" type="java.lang.String">ReutersDSSDownloadDirectory</key>
<value id="501" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="502">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="503">The directory where Reuters Datascope Select response files are downloaded from.</description>
<persistent>false</persistent>
<value id="504" type="java.lang.String">/reports</value>
</value>
</entry>
<entry>
<key id="505" type="java.lang.String">ReutersDSSInputListName</key>
<value id="506" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="507">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="508">The Reuters Datascope Select Input List Name to use. If not set, it is defaulted to the Request Type Name.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="509" type="java.lang.String">ReutersDSSReportTemplateName</key>
<value id="510" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="511">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="512">The Reuters Datascope Select Report Templae Name to use. If not set, it is defaulted to the Request Type Name.</description>
<persistent>false</persistent>
<value id="513" type="java.lang.String">CBA_EOD_ChainRIC</value>
</value>
</entry>
<entry>
<key id="514" type="java.lang.String">ReutersDSSRicMaintenanceMessageType</key>
<value id="515" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="516">com.j2fe.processing.MessageType</className>
<clazz>com.j2fe.processing.MessageType</clazz>
<description id="517">If this value is set it indicates that RicMaintenance files should be processed and that this Message Type is used to process the files.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="518" type="java.lang.String">ReutersDSSScheduleName</key>
<value id="519" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="520">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="521">The Reuters Datascope Select Schedule Name to use. If not set, it is defaulted to the Request Type Name.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="522" type="java.lang.String">ReutersDSSUploadDirectory</key>
<value id="523" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="524">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="525">The directory where Reuters Datascope Select requests are uploaded to.</description>
<persistent>false</persistent>
<value id="526" type="java.lang.String">/incoming</value>
</value>
</entry>
<entry>
<key id="527" type="java.lang.String">StoreRequestFileLocalDirectory</key>
<value id="528" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="529">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="530">Directory to store RequestFile on local</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="531" type="java.lang.String">StoreRequestFileonLocal</key>
<value id="532" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="533">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="534">Indicates whether request file has to be stored in local</description>
<persistent>false</persistent>
<value idref="413"/>
</value>
</entry>
<entry>
<key id="535" type="java.lang.String">Workflow Parameters</key>
<value id="536" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="537">java.util.Map</className>
<clazz>java.util.Map</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="538" type="java.lang.String">parentJobid</key>
<value id="539" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="540">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>6</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
