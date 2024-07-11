<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.15">
<package-comment/>
<businessobject displayString="32 - Non Clustered Release" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>false</clustered>
<comment id="1">Non Clustered Release</comment>
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
<stringValue id="14">parentJobID</stringValue>
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
<name id="19">Publishing</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="20">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="21" type="java.util.HashSet">
<item id="22" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="23">["IssId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="24">input["IssId"]</name>
<stringValue id="25">ticsVals</stringValue>
<type>VARIABLE</type>
</item>
<item id="26" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="27">["queryForExecutionn"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="28">input["queryForExecutionn"]</name>
<stringValue id="29">pub_CBA_MRU_FutureRolling</stringValue>
<type>CONSTANT</type>
</item>
<item id="30" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="31">name</name>
<stringValue id="32">CbaMruPublish_FutureRolling_SelectInsert</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="33" type="java.util.HashSet">
<item id="34" type="com.j2fe.workflow.definition.Transition">
<name id="35">goto-next</name>
<source id="36">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="37">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="38">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="39" type="java.util.HashSet">
<item id="40" type="com.j2fe.workflow.definition.Transition">
<name id="41">goto-next</name>
<source id="42">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="43">Trigger Point Shift Workflow</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="44">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="45" type="java.util.HashSet">
<item id="46" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="47">["TicIds"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="48">input["TicIds"]</name>
<stringValue id="49">ticsVals</stringValue>
<type>VARIABLE</type>
</item>
<item id="50" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="51">name</name>
<stringValue id="52">CBACustom_WF_DeleteFUT1BB</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="53" type="java.util.HashSet">
<item id="54" type="com.j2fe.workflow.definition.Transition">
<name id="55">goto-next</name>
<source id="56">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="57">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="58">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="59" type="java.util.HashSet">
<item id="60" type="com.j2fe.workflow.definition.Transition">
<name id="61">goto-next</name>
<source id="62">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="63">Request Fut Setup</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="64">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="65" type="java.util.HashSet">
<item id="66" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="67">["BBDownloadDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="68">input["BBDownloadDirectory"]</name>
<stringValue id="69">BBDownloadDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="70" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="71">["BBTimeout"]@java/lang/Long@</UITypeHint>
<input>true</input>
<name id="72">input["BBTimeout"]</name>
<stringValue id="73">BBTimeout</stringValue>
<type>VARIABLE</type>
</item>
<item id="74" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="75">["BBUploadDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="76">input["BBUploadDirectory"]</name>
<stringValue id="77">BBUploadDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="78" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="79">["DefaultDataType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="80">input["DefaultDataType"]</name>
<stringValue id="81">DefaultDataType</stringValue>
<type>VARIABLE</type>
</item>
<item id="82" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="83">["MaxRequestsPerFile"]@java/lang/Long@</UITypeHint>
<input>true</input>
<name id="84">input["MaxRequestsPerFile"]</name>
<stringValue id="85">MaxRequestsPerFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="86" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="87">["Message"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="88">input["Message"]</name>
<stringValue id="89">pXmlMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="90" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="91">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="92">input["ParentJobID"]</name>
<stringValue id="93">parentJobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="94" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="95">["QueryByMarketSectorFirst"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="96">input["QueryByMarketSectorFirst"]</name>
<stringValue id="97">QueryByMarketSectorFirst</stringValue>
<type>VARIABLE</type>
</item>
<item id="98" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="99">["RemoveDuplicateFields"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="100">input["RemoveDuplicateFields"]</name>
<stringValue id="101">RemoveDuplicateFields</stringValue>
<type>VARIABLE</type>
</item>
<item id="102" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="103">name</name>
<stringValue id="104">Request Reply</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="105" type="java.util.HashSet">
<item id="106" type="com.j2fe.workflow.definition.Transition">
<name id="107">goto-next</name>
<source id="108">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="109">Create Request Fut Setup</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="110">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="111" type="java.util.HashSet">
<item id="112" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="113">statements</name>
<stringValue id="114">&#13;
	StringBuffer futChainXML = new StringBuffer();&#13;
&#13;
		futChainXML.append("&lt;VendorRequest&gt;&lt;User&gt;CBA&lt;/User&gt;&lt;Requestor&gt;CBA&lt;/Requestor&gt;&lt;UserRequestID/&gt;&lt;Universe/&gt;");&#13;
&#13;
		for(int i=0;i&lt;Futchain.length;i++)&#13;
		{    &#13;
			futChainXML.append("&lt;Request&gt;&lt;DataType&gt;BASIC&lt;/DataType&gt;&lt;Vendor&gt;BB&lt;/Vendor&gt;");&#13;
			futChainXML.append("&lt;RequestType&gt;");&#13;
			futChainXML.append("CBA_BB_FUTSetup");&#13;
			futChainXML.append("&lt;/RequestType&gt;");	&#13;
			futChainXML.append("&lt;TableType&gt;ISSU&lt;/TableType&gt;");&#13;
			futChainXML.append("&lt;Identifier&gt;");&#13;
			futChainXML.append(Futchain[i]);&#13;
			futChainXML.append("&lt;/Identifier&gt;");&#13;
			futChainXML.append("&lt;IDContext&gt;TICKER&lt;/IDContext&gt;");&#13;
			futChainXML.append("&lt;/Request&gt;");&#13;
		}&#13;
		futChainXML.append("&lt;/VendorRequest&gt;");		&#13;
		String xmlP = futChainXML.toString();&#13;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="115" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="116">variables["Futchain"]</name>
<stringValue id="117">FutChain</stringValue>
<type>VARIABLE</type>
</item>
<item id="118" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="119">variables["xmlP"]</name>
<stringValue id="120">pXmlMessage</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="121" type="java.util.HashSet">
<item id="122" type="com.j2fe.workflow.definition.Transition">
<name id="123">goto-next</name>
<source id="124">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="125">Get Tickers Fut Chain</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="126">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="127" type="java.util.HashSet">
<item id="128" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="129">database</name>
<stringValue id="130">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="131" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="132">firstColumnsResult</name>
<stringValue id="133">FutChain</stringValue>
<type>VARIABLE</type>
</item>
<item id="134" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="135">querySQL</name>
<stringValue id="136">select fut_chain  from ft_T_fut1 where end_tms is null</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="137" type="java.util.HashSet">
<item id="138" type="com.j2fe.workflow.definition.Transition">
<name id="139">ToSplit</name>
<source id="140">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="141">Automatically generated</description>
<directJoin>false</directJoin>
<name id="142">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="143">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="144" type="java.util.HashSet">
<item id="145" type="com.j2fe.workflow.definition.Transition">
<name id="146">goto-next</name>
<source id="147">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="148">Future Rolling</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="149">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="150" type="java.util.HashSet">
<item id="151" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="152">["BBDownloadDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="153">input["BBDownloadDirectory"]</name>
<stringValue id="154">BBUploadDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="155" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="156">["BBTimeout"]@java/lang/Long@</UITypeHint>
<input>true</input>
<name id="157">input["BBTimeout"]</name>
<stringValue id="158">BBTimeout</stringValue>
<type>VARIABLE</type>
</item>
<item id="159" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="160">["BBUploadDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="161">input["BBUploadDirectory"]</name>
<stringValue id="162">BBUploadDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="163" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="164">["DefaultDataType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="165">input["DefaultDataType"]</name>
<stringValue id="166">DefaultDataType</stringValue>
<type>VARIABLE</type>
</item>
<item id="167" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="168">["MaxRequestsPerFile"]@java/lang/Long@</UITypeHint>
<input>true</input>
<name id="169">input["MaxRequestsPerFile"]</name>
<stringValue id="170">MaxRequestsPerFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="171" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="172">["Message"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="173">input["Message"]</name>
<stringValue id="174">BbVendorXmlMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="175" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="176">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="177">input["ParentJobID"]</name>
<stringValue id="178">parentJobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="179" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="180">["QueryByMarketSectorFirst"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="181">input["QueryByMarketSectorFirst"]</name>
<stringValue id="182">QueryByMarketSectorFirst</stringValue>
<type>VARIABLE</type>
</item>
<item id="183" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="184">["RemoveDuplicateFields"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="185">input["RemoveDuplicateFields"]</name>
<stringValue id="186">RemoveDuplicateFields</stringValue>
<type>VARIABLE</type>
</item>
<item id="187" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="188">name</name>
<stringValue id="189">Request Reply</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="190" type="java.util.HashSet">
<item id="191" type="com.j2fe.workflow.definition.Transition">
<name id="192">goto-next</name>
<source id="193">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="194">Create Request Message</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="195">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="196" type="java.util.HashSet">
<item id="197" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="198">statements</name>
<objectValue id="199" type="java.lang.String">import java.util.*;&#13;
&#13;
&#13;
		StringBuffer strbufXML = new StringBuffer();&#13;
&#13;
		strbufXML.append("&lt;VendorRequest&gt;&lt;User&gt;CBA&lt;/User&gt;&lt;Requestor&gt;CBA&lt;/Requestor&gt;&lt;UserRequestID/&gt;&lt;Universe/&gt;");&#13;
String ticsVals = new String();&#13;
&#13;
TreeSet tics = new TreeSet();&#13;
&#13;
		for(int i=0;i&lt;IssId.length;i++)&#13;
		{    &#13;
&#13;
			if(IssId[i].startsWith("B"))&#13;
			{&#13;
				String[] getTICKER = IssId[i].split("\\|");&#13;
&#13;
				strbufXML.append("&lt;Request&gt;&lt;DataType&gt;SECMASTER&lt;/DataType&gt;&lt;Vendor&gt;BB&lt;/Vendor&gt;");&#13;
				strbufXML.append("&lt;RequestType&gt;");&#13;
				strbufXML.append("CBA_ReqRepFutRoll");&#13;
				strbufXML.append("&lt;/RequestType&gt;");	&#13;
				strbufXML.append("&lt;TableType&gt;ISSU&lt;/TableType&gt;");&#13;
				strbufXML.append("&lt;Identifier&gt;");&#13;
				strbufXML.append(getTICKER[1]);&#13;
					tics.add(getTICKER[1].substring(0, 4));&#13;
				strbufXML.append("&lt;/Identifier&gt;");&#13;
				strbufXML.append("&lt;IDContext&gt;TICKER&lt;/IDContext&gt;");&#13;
				strbufXML.append("&lt;/Request&gt;");&#13;
&#13;
			}&#13;
		&#13;
		}&#13;
&#13;
&#13;
			strbufXML.append("&lt;/VendorRequest&gt;");		&#13;
&#13;
&#13;
Iterator itr = tics.iterator();&#13;
while(itr.hasNext())&#13;
{&#13;
ticsVals = ticsVals +"'"+(String)itr.next()+"',";&#13;
}&#13;
&#13;
&#13;
	if(ticsVals.endsWith(","))&#13;
		{&#13;
			ticsVals =ticsVals.substring(0, ticsVals.lastIndexOf(",")); 	&#13;
		}&#13;
&#13;
//ticsVals  = ticsVals.&#13;
		String xml = strbufXML.toString();&#13;
&#13;
&#13;
</objectValue>
<type>CONSTANT</type>
</item>
<item id="200" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="201">variables["IssId"]</name>
<stringValue id="202">ISSID</stringValue>
<type>VARIABLE</type>
</item>
<item id="203" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="204">variables["ticsVals"]</name>
<stringValue id="205">ticsVals</stringValue>
<type>VARIABLE</type>
</item>
<item id="206" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="207">variables["xml"]</name>
<stringValue id="208">BbVendorXmlMessage</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="209" type="java.util.HashSet">
<item id="210" type="com.j2fe.workflow.definition.Transition">
<name id="211">rows-found</name>
<source id="212">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="213">Fetch Ticker For Commodities</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="214">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="215" type="java.util.HashSet">
<item id="216" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="217">database</name>
<stringValue id="218">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="219" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="220">firstColumnsResult</name>
<stringValue id="221">ISSID</stringValue>
<type>VARIABLE</type>
</item>
<item id="222" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="223">querySQL</name>
<stringValue id="224">&#13;
&#13;
 SELECT DISTINCT id_ctxt_typ || '|' || iss_id&#13;
  FROM ft_T_isid isid, ft_t_issu issu&#13;
 WHERE     (issu.end_tms IS NULL or issu.end_tms &gt; sysdate)&#13;
    AND isid.instr_id IN&#13;
       (SELECT DISTINCT instr_id&#13;
        FROM ft_t_mtgd&#13;
                WHERE mtdi_oid IN&#13;
          (SELECT DISTINCT mtdi_oid&#13;
                FROM fT_T_mtdi&#13;
            WHERE end_tms IS NULL AND curv_rolling_ind = 'Y')&#13;
AND  end_tms is null)&#13;
 AND (isid.end_tms IS NULL or isid.end_tms &gt; sysdate)&#13;
    AND id_ctxt_typ IN ('BBUNQTCK')&#13;
   and issu.instr_id = isid.instr_id and  trunc(mat_exp_tms) = trunc(sysdate)&#13;
&#13;
</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="225" type="java.util.HashSet">
<item id="226" type="com.j2fe.workflow.definition.Transition">
<name id="227">goto-next</name>
<source id="228">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="229">Clear Custom table</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="230">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="231" type="java.util.HashSet">
<item id="232" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="233">database</name>
<stringValue id="234">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="235" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="236">querySQL</name>
<stringValue id="237">DELETE FROM FT_T_FUT1</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="238" type="java.util.HashSet">
<item id="239" type="com.j2fe.workflow.definition.Transition">
<name id="240">goto-next</name>
<source id="241">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="242">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="243">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="244" type="java.util.HashSet">
<item id="245" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="246">jobId</name>
<stringValue id="247">parentJobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="248" type="java.util.HashSet">
<item id="249" type="com.j2fe.workflow.definition.Transition">
<name id="250">goto-next</name>
<source id="251">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="252">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="253">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="254" type="java.util.HashSet"/>
<targets id="255" type="java.util.HashSet">
<item idref="249" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="241"/>
</item>
</sources>
<targets id="256" type="java.util.HashSet">
<item idref="239" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="228"/>
</item>
</sources>
<targets id="257" type="java.util.HashSet">
<item idref="226" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="212"/>
</item>
</sources>
<targets id="258" type="java.util.HashSet">
<item id="259" type="com.j2fe.workflow.definition.Transition">
<name id="260">nothing-found</name>
<source idref="212"/>
<target idref="2"/>
</item>
<item idref="210" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="193"/>
</item>
</sources>
<targets id="261" type="java.util.HashSet">
<item idref="191" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="147"/>
</item>
</sources>
<targets id="262" type="java.util.HashSet">
<item idref="145" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="140"/>
</item>
</sources>
<targets id="263" type="java.util.HashSet">
<item idref="138" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="124"/>
</item>
</sources>
<targets id="264" type="java.util.HashSet">
<item idref="122" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="108"/>
</item>
</sources>
<targets id="265" type="java.util.HashSet">
<item idref="106" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="62"/>
</item>
</sources>
<targets id="266" type="java.util.HashSet">
<item idref="60" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="56"/>
</item>
</sources>
<targets id="267" type="java.util.HashSet">
<item idref="54" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="42"/>
</item>
</sources>
<targets id="268" type="java.util.HashSet">
<item idref="40" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="36"/>
</item>
</sources>
<targets id="269" type="java.util.HashSet">
<item idref="34" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="18"/>
</item>
</sources>
<targets id="270" type="java.util.HashSet">
<item idref="16" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="8"/>
</item>
</sources>
<targets id="271" type="java.util.HashSet">
<item idref="6" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
<item idref="259" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="272" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="273">Cba/FutureRolling</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="274">user1</lastChangeUser>
<lastUpdate id="275">2018-05-13T20:18:41.000+1000</lastUpdate>
<name id="276">FutureRolling</name>
<optimize>true</optimize>
<parameter id="277" type="java.util.HashMap">
<entry>
<key id="278" type="java.lang.String">BBDownloadDirectory</key>
<value id="279" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="280">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="281">The directory where BB response files are downloaded from.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="282" type="java.lang.String">BBTimeout</key>
<value id="283" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="284">java.lang.Long</className>
<clazz>java.lang.Long</clazz>
<description id="285">The Timeout for downloading the response file from BB.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="286" type="java.lang.String">BBUploadDirectory</key>
<value id="287" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="288">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="289">The directory where BB requests are uploaded to.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="290" type="java.lang.String">Counter</key>
<value id="291" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="292">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="293">Counter</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="294" type="java.lang.String">DefaultDataType</key>
<value id="295" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="296">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="297">The default data type used to determine the Request Type when no or no unique Request Type can be determined.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="298" type="java.lang.String">DnBProduct</key>
<value id="299" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="300">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="301">The DnBProduct to be used. Can be used to override the default DnBProduct configured in the Assembly.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="302" type="java.lang.String">ExcludeFields</key>
<value id="303" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="304">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="305" type="java.lang.String">IDCDownloadDirectory</key>
<value id="306" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="307">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="308">Download directory for IDC.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="309" type="java.lang.String">IDCFormat</key>
<value id="310" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="311">com.j2fe.connector.IDCFormat</className>
<clazz>com.j2fe.connector.IDCFormat</clazz>
<description id="312">The Layout format for IDC.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="313" type="java.lang.String">IDCIterations</key>
<value id="314" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="315">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="316">The maximum number of iterations List Files should make for IDC. For each iteration the List Files will scan the IDC upload directory and wait for 5 seconds before going through the next iteration if the upload directory is not empty.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="317" type="java.lang.String">IDCRR</key>
<value id="318" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="319">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="320">Variable to determine delivery mechanism to request. 'False' for Ad-hoc and 'True' for Request/Response.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="321" type="java.lang.String">IDContextTypeChkReqd</key>
<value id="322" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="323">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="324">It determines whether ID Context Type is checked to get a distinct Instrument for determining External Issue Type of an Issue for Bloomberg.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="325" type="java.lang.String">InteractiveDataFileSuffix</key>
<value id="326" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="327">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="328">The suffix to append to the files when uploading them to the IDC FTP server.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="329" type="java.lang.String">InteractiveDataServiceID</key>
<value id="330" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="331">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="332">The Service Id of the Universe to be used (required if an immediate response is needed)</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="333" type="java.lang.String">InteractiveDataUniverseID</key>
<value id="334" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="335">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="336">The Universe that should be maintained.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="337" type="java.lang.String">InteractiveDataUploadDirectory</key>
<value id="338" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="339">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="340">The directory where IDC requests are uploaded to.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="341" type="java.lang.String">IsConnectionFailOver</key>
<value id="342" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="343">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="344">Has Primary Connection failed?</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="345" type="java.lang.String">JobDefinitionId</key>
<value id="346" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="347">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="348">Job Definition ID from FT_T_JBDF table to pick up job defination.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="349" type="java.lang.String">MaxRequestsPerFile</key>
<value id="350" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="351">java.lang.Long</className>
<clazz>java.lang.Long</clazz>
<description id="352">The maximum number of requests per file. (e.g. Bloomberg supports a max of 20.000 Requests in a file, Telekurs a max. of 500)</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="353" type="java.lang.String">MaxRetryTime</key>
<value id="354" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="355">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="356">Maximum time (in seconds) upto which the filesystem would be scanned for files.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="357" type="java.lang.String">Message</key>
<value id="358" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="359">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="360">The Vendor Request XML message.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="361" type="java.lang.String">NoOfFilesToRunInParallel</key>
<value id="362" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="363">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="364">The number of files to run in parallel.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="365" type="java.lang.String">ParentJobID</key>
<value id="366" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="367">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="368">Parent Job id is used to correlated all the child jobs.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="369" type="java.lang.String">ParticipantPurposeType</key>
<value id="370" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="371">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="372" type="java.lang.String">PricePointEventDefinitionId</key>
<value id="373" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="374">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="375">Price Point Event ID from FT_T_PPEF table to pick up prices for given Price Point.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="376" type="java.lang.String">ProcessFilteredMessages</key>
<value id="377" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="378">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="379">Indicates that messages are processed regardless of the result of the Generic Inbound Filter.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="380" type="java.lang.String">QueryByMarketSectorFirst</key>
<value id="381" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="382">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="383">If set to False, will always try to find out ReqType using InstrumentId and ExternalIss Typ, and if not found then only will try find out by Market Sector. (False for MnG).
Default is true.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="384" type="java.lang.String">RTTimeout</key>
<value id="385" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="386">java.lang.Long</className>
<clazz>java.lang.Long</clazz>
<description id="387">The Timeout for downloading the response file from Reuters.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="388" type="java.lang.String">RemoveDuplicateFields</key>
<value id="389" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="390">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="391">If this is false the RemoveDuplicateFields activity will be disabled.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="392" type="java.lang.String">RequestTransaction</key>
<value id="393" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="394">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="395">The Parent Transaction created for all the Requests.</description>
<input>false</input>
<output>true</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="396" type="java.lang.String">ReteursFileSystemType</key>
<value id="397" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="398">com.j2fe.connector.ReutersFileSystemType</className>
<clazz>com.j2fe.connector.ReutersFileSystemType</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="399" type="java.lang.String">ReutersDSSDownloadDirectory</key>
<value id="400" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="401">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="402">The directory where Reuters Datascope Select response files are downloaded from.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="403" type="java.lang.String">ReutersDSSInputListName</key>
<value id="404" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="405">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="406">The Reuters Datascope Select Input List Name to use. If not set, it is defaulted to the Request Type Name.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="407" type="java.lang.String">ReutersDSSReportTemplateName</key>
<value id="408" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="409">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="410">The Reuters Datascope Select Report Templae Name to use. If not set, it is defaulted to the Request Type Name.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="411" type="java.lang.String">ReutersDSSRicMaintenanceMessageType</key>
<value id="412" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="413">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="414">If this value is set it indicates that RicMaintenance files should be processed and that this Message Type is used to process the files.</description>
<input>true</input>
<logicalType id="415">com.j2fe.processing.MessageType</logicalType>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="416" type="java.lang.String">ReutersDSSScheduleName</key>
<value id="417" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="418">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="419">The Reuters Datascope Select Schedule Name to use. If not set, it is defaulted to the Request Type Name.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="420" type="java.lang.String">ReutersDSSUploadDirectory</key>
<value id="421" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="422">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="423">The directory where Reuters Datascope Select requests are uploaded to.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="424" type="java.lang.String">StoreRequestFileLocalDirectory</key>
<value id="425" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="426">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="427">Directory to store RequestFile on local</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="428" type="java.lang.String">StoreRequestFileonLocal</key>
<value id="429" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="430">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="431">Indicates whether request file has to be stored in local</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="432" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>4</retries>
<startNode idref="251"/>
<status>RELEASED</status>
<variables id="433" type="java.util.HashMap">
<entry>
<key id="434" type="java.lang.String">BBDownloadDirectory</key>
<value id="435" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="436">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="437">The directory where BB response files are downloaded from.</description>
<persistent>false</persistent>
<value id="438" type="java.lang.String">/</value>
</value>
</entry>
<entry>
<key id="439" type="java.lang.String">BBTimeout</key>
<value id="440" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="441">java.lang.Long</className>
<clazz>java.lang.Long</clazz>
<description id="442">The Timeout for downloading the response file from BB.</description>
<persistent>false</persistent>
<value id="443" type="java.lang.Long">3000</value>
</value>
</entry>
<entry>
<key id="444" type="java.lang.String">BBUploadDirectory</key>
<value id="445" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="446">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="447">The directory where BB requests are uploaded to.</description>
<persistent>false</persistent>
<value id="448" type="java.lang.String">/</value>
</value>
</entry>
<entry>
<key id="449" type="java.lang.String">Counter</key>
<value id="450" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="451">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="452">Counter</description>
<persistent>false</persistent>
<value id="453" type="java.lang.Integer">0</value>
</value>
</entry>
<entry>
<key id="454" type="java.lang.String">DefaultDataType</key>
<value id="455" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="456">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="457">The default data type used to determine the Request Type when no or no unique Request Type can be determined.</description>
<persistent>false</persistent>
<value id="458" type="java.lang.String">BASIC</value>
</value>
</entry>
<entry>
<key id="459" type="java.lang.String">DnBProduct</key>
<value id="460" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="461">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="462">The DnBProduct to be used. Can be used to override the default DnBProduct configured in the Assembly.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="463" type="java.lang.String">ExcludeFields</key>
<value id="464" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="465">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="466" type="java.lang.String">IDCDownloadDirectory</key>
<value id="467" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="468">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="469">Download directory for IDC.</description>
<persistent>false</persistent>
<value id="470" type="java.lang.String">/</value>
</value>
</entry>
<entry>
<key id="471" type="java.lang.String">IDCFormat</key>
<value id="472" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="473">com.j2fe.connector.IDCFormat</className>
<clazz>com.j2fe.connector.IDCFormat</clazz>
<description id="474">The Layout format for IDC.</description>
<persistent>false</persistent>
<value id="475" type="com.j2fe.connector.IDCFormat">SingelRecordLayout</value>
</value>
</entry>
<entry>
<key id="476" type="java.lang.String">IDCIterations</key>
<value id="477" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="478">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="479">The maximum number of iterations List Files should make for IDC. For each iteration the List Files will scan the IDC upload directory and wait for 5 seconds before going through the next iteration if the upload directory is not empty.</description>
<persistent>false</persistent>
<value id="480" type="java.lang.String">60</value>
</value>
</entry>
<entry>
<key id="481" type="java.lang.String">IDCRR</key>
<value id="482" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="483">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="484">Variable to determine delivery mechanism to request. 'False' for Ad-hoc and 'True' for Request/Response.</description>
<persistent>false</persistent>
<value id="485" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="486" type="java.lang.String">IDContextTypeChkReqd</key>
<value id="487" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="488">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="489">It determines whether ID Context Type is checked to get a distinct Instrument for determining External Issue Type of an Issue for Bloomberg.</description>
<persistent>false</persistent>
<value id="490" type="java.lang.Boolean">true</value>
</value>
</entry>
<entry>
<key id="491" type="java.lang.String">InteractiveDataFileSuffix</key>
<value id="492" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="493">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="494">The suffix to append to the files when uploading them to the IDC FTP server.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="495" type="java.lang.String">InteractiveDataServiceID</key>
<value id="496" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="497">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="498">The Service Id of the Universe to be used (required if an immediate response is needed)</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="499" type="java.lang.String">InteractiveDataUniverseID</key>
<value id="500" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="501">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="502">The Universe that should be maintained.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="503" type="java.lang.String">InteractiveDataUploadDirectory</key>
<value id="504" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="505">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="506">The directory where IDC requests are uploaded to.</description>
<persistent>false</persistent>
<value id="507" type="java.lang.String">\</value>
</value>
</entry>
<entry>
<key id="508" type="java.lang.String">IsConnectionFailOver</key>
<value id="509" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="510">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="511">Has Primary Connection failed?</description>
<persistent>false</persistent>
<value idref="485"/>
</value>
</entry>
<entry>
<key id="512" type="java.lang.String">JobDefinitionId</key>
<value id="513" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="514">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="515">Job Definition ID from FT_T_JBDF table to pick up job defination.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="516" type="java.lang.String">MaxRequestsPerFile</key>
<value id="517" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="518">java.lang.Long</className>
<clazz>java.lang.Long</clazz>
<description id="519">The maximum number of requests per file. (e.g. Bloomberg supports a max of 20.000 Requests in a file, Telekurs a max. of 500)</description>
<persistent>false</persistent>
<value id="520" type="java.lang.Long">500</value>
</value>
</entry>
<entry>
<key id="521" type="java.lang.String">MaxRetryTime</key>
<value id="522" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="523">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="524">Maximum time (in seconds) upto which the filesystem would be scanned for files.</description>
<persistent>false</persistent>
<value id="525" type="java.lang.Integer">900</value>
</value>
</entry>
<entry>
<key id="526" type="java.lang.String">Message</key>
<value id="527" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="528">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="529">The Vendor Request XML message.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="530" type="java.lang.String">NoOfFilesToRunInParallel</key>
<value id="531" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="532">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="533">The number of files to run in parallel.</description>
<persistent>false</persistent>
<value id="534" type="java.lang.Integer">2</value>
</value>
</entry>
<entry>
<key id="535" type="java.lang.String">ParentJobID</key>
<value id="536" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="537">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="538">Parent Job id is used to correlated all the child jobs.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="539" type="java.lang.String">ParticipantPurposeType</key>
<value id="540" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="541">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="542" type="java.lang.String">REQUEST</value>
</value>
</entry>
<entry>
<key id="543" type="java.lang.String">PricePointEventDefinitionId</key>
<value id="544" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="545">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="546">Price Point Event ID from FT_T_PPEF table to pick up prices for given Price Point.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="547" type="java.lang.String">ProcessFilteredMessages</key>
<value id="548" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="549">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="550">Indicates that messages are processed regardless of the result of the Generic Inbound Filter.</description>
<persistent>false</persistent>
<value idref="485"/>
</value>
</entry>
<entry>
<key id="551" type="java.lang.String">QueryByMarketSectorFirst</key>
<value id="552" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="553">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="554">If set to False, will always try to find out ReqType using InstrumentId and ExternalIss Typ, and if not found then only will try find out by Market Sector. (False for MnG).
Default is true.</description>
<persistent>false</persistent>
<value idref="485"/>
</value>
</entry>
<entry>
<key id="555" type="java.lang.String">RTTimeout</key>
<value id="556" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="557">java.lang.Long</className>
<clazz>java.lang.Long</clazz>
<description id="558">The Timeout for downloading the response file from Reuters.</description>
<persistent>false</persistent>
<value id="559" type="java.lang.Long">3000</value>
</value>
</entry>
<entry>
<key id="560" type="java.lang.String">RemoveDuplicateFields</key>
<value id="561" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="562">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="563">If this is false the RemoveDuplicateFields activity will be disabled.</description>
<persistent>false</persistent>
<value idref="490"/>
</value>
</entry>
<entry>
<key id="564" type="java.lang.String">RequestTransaction</key>
<value id="565" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="566">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="567">The Parent Transaction created for all the Requests.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="568" type="java.lang.String">ReteursFileSystemType</key>
<value id="569" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="570">com.j2fe.connector.ReutersFileSystemType</className>
<clazz>com.j2fe.connector.ReutersFileSystemType</clazz>
<persistent>false</persistent>
<value id="571" type="com.j2fe.connector.ReutersFileSystemType">SFTP</value>
</value>
</entry>
<entry>
<key id="572" type="java.lang.String">ReutersDSSDownloadDirectory</key>
<value id="573" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="574">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="575">The directory where Reuters Datascope Select response files are downloaded from.</description>
<persistent>false</persistent>
<value id="576" type="java.lang.String">/reports</value>
</value>
</entry>
<entry>
<key id="577" type="java.lang.String">ReutersDSSInputListName</key>
<value id="578" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="579">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="580">The Reuters Datascope Select Input List Name to use. If not set, it is defaulted to the Request Type Name.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="581" type="java.lang.String">ReutersDSSReportTemplateName</key>
<value id="582" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="583">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="584">The Reuters Datascope Select Report Templae Name to use. If not set, it is defaulted to the Request Type Name.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="585" type="java.lang.String">ReutersDSSRicMaintenanceMessageType</key>
<value id="586" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="587">com.j2fe.processing.MessageType</className>
<clazz>com.j2fe.processing.MessageType</clazz>
<description id="588">If this value is set it indicates that RicMaintenance files should be processed and that this Message Type is used to process the files.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="589" type="java.lang.String">ReutersDSSScheduleName</key>
<value id="590" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="591">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="592">The Reuters Datascope Select Schedule Name to use. If not set, it is defaulted to the Request Type Name.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="593" type="java.lang.String">ReutersDSSUploadDirectory</key>
<value id="594" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="595">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="596">The directory where Reuters Datascope Select requests are uploaded to.</description>
<persistent>false</persistent>
<value id="597" type="java.lang.String">/incoming</value>
</value>
</entry>
<entry>
<key id="598" type="java.lang.String">StoreRequestFileLocalDirectory</key>
<value id="599" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="600">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="601">Directory to store RequestFile on local</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="602" type="java.lang.String">StoreRequestFileonLocal</key>
<value id="603" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="604">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="605">Indicates whether request file has to be stored in local</description>
<persistent>false</persistent>
<value idref="485"/>
</value>
</entry>
<entry>
<key id="606" type="java.lang.String">Workflow Parameters</key>
<value id="607" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="608">java.util.Map</className>
<clazz>java.util.Map</clazz>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>32</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
