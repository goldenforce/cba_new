<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.16">
<package-comment/>
<businessobject displayString="8 - 8.7.1.5a" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">8.7.1.5a</comment>
<endNode id="2">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="3">End</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="4">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="5" type="java.util.HashSet">
<item id="6" type="com.j2fe.workflow.definition.Transition">
<name id="7">goto-next</name>
<source id="8">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="9">Cancel WF</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="10">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="11" type="java.util.HashSet">
<item id="12" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="13">["FilePattern"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="14">input["FilePattern"]</name>
<stringValue id="15">gs*.req</stringValue>
<type>CONSTANT</type>
</item>
<item id="16" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="17">["IsConnectionFailOver"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="18">input["IsConnectionFailOver"]</name>
<stringValue id="19">IsConnectionFailOver</stringValue>
<type>VARIABLE</type>
</item>
<item id="20" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="21">["Message"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="22">input["Message"]</name>
<stringValue id="23">RequestXMLMessageforcancelRequest</stringValue>
<type>VARIABLE</type>
</item>
<item id="24" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="25">name</name>
<stringValue id="26">BBCancelScheduledRequestReplySFTP</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="27" type="java.util.HashSet">
<item id="28" type="com.j2fe.workflow.definition.Transition">
<name id="29">false</name>
<source id="30">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="31">Is Null</name>
<nodeHandler>com.j2fe.general.activities.IsNull</nodeHandler>
<nodeHandlerClass id="32">com.j2fe.general.activities.IsNull</nodeHandlerClass>
<parameters id="33" type="java.util.HashSet">
<item id="34" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="35">input</name>
<stringValue id="36">RequestXMLMessageforcancelRequest</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="37" type="java.util.HashSet">
<item id="38" type="com.j2fe.workflow.definition.Transition">
<name id="39">end-loop</name>
<source id="40">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="41">For Loop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.ForEach</nodeHandler>
<nodeHandlerClass id="42">com.j2fe.workflow.handler.impl.ForEach</nodeHandlerClass>
<parameters id="43" type="java.util.HashSet">
<item id="44" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="45">counter</name>
<stringValue id="46">loopCounter</stringValue>
<type>VARIABLE</type>
</item>
<item id="47" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="48">counter</name>
<stringValue id="49">loopCounter</stringValue>
<type>VARIABLE</type>
</item>
<item id="50" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="51">input</name>
<stringValue id="52">files</stringValue>
<type>VARIABLE</type>
</item>
<item id="53" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="54">output</name>
<stringValue id="55">Output</stringValue>
<type>VARIABLE</type>
</item>
<item id="56" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="57">resetOnEnd</name>
<objectValue id="58" type="java.lang.Boolean">true</objectValue>
<type>CONSTANT</type>
</item>
</parameters>
<persistentVariables id="59" type="java.util.HashSet">
<item id="60" type="java.lang.String">RequestXMLMessageforcancelRequest
1100</item>
<item id="61" type="java.lang.String">Output
1100</item>
</persistentVariables>
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
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="73">Bean Shell Script (Standard)</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="74">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="75" type="java.util.HashSet">
<item id="76" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="77">statements</name>
<stringValue id="78">Map scheduledRequestUniverseMap = scheduledRequestUniverse;

String[] fileName = scheduledRequestUniverseMap.keySet().toArray(new String[scheduledRequestUniverse.keySet().size()]);
</stringValue>
<type>CONSTANT</type>
</item>
<item id="79" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="80">variables["fileName"]</name>
<stringValue id="81">files</stringValue>
<type>VARIABLE</type>
</item>
<item id="82" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="83">["scheduledRequestUniverse"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="84">variables["scheduledRequestUniverse"]</name>
<stringValue id="85">scheduledRequestUniverse</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="86" type="java.util.HashSet">
<item id="87" type="java.lang.String">files
1100</item>
<item id="88" type="java.lang.String">loopCounter
1100</item>
</persistentVariables>
<sources id="89" type="java.util.HashSet">
<item id="90" type="com.j2fe.workflow.definition.Transition">
<name id="91">goto-next</name>
<source id="92">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="93">Extract Scheduled Request</name>
<nodeHandler>com.j2fe.feeds.request.ExtractScheduledRequest</nodeHandler>
<nodeHandlerClass id="94">com.j2fe.feeds.request.ExtractScheduledRequest</nodeHandlerClass>
<parameters id="95" type="java.util.HashSet">
<item id="96" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="97">cancelRequest</name>
<stringValue id="98">RequestXMLMessageforcancelRequest</stringValue>
<type>VARIABLE</type>
</item>
<item id="99" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="100">requestMessageStr</name>
<stringValue id="101">Message</stringValue>
<type>VARIABLE</type>
</item>
<item id="102" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="103">scheduledRequest</name>
<stringValue id="104">scheduledRequest</stringValue>
<type>VARIABLE</type>
</item>
<item id="105" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="106">scheduledRequestUniverse</name>
<stringValue id="107">scheduledRequestUniverse</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="108" type="java.util.HashSet">
<item id="109" type="java.lang.String">scheduledRequest
1000</item>
<item id="110" type="java.lang.String">scheduledRequestUniverse
1000</item>
<item id="111" type="java.lang.String">RequestXMLMessageforcancelRequest
1000</item>
</persistentVariables>
<sources id="112" type="java.util.HashSet">
<item id="113" type="com.j2fe.workflow.definition.Transition">
<name id="114">goto-next</name>
<source id="115">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="116">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="117">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="118" type="java.util.HashSet"/>
<targets id="119" type="java.util.HashSet">
<item idref="113" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="92"/>
</item>
</sources>
<targets id="120" type="java.util.HashSet">
<item idref="90" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="72"/>
</item>
</sources>
<targets id="121" type="java.util.HashSet">
<item idref="70" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="65"/>
</item>
<item id="122" type="com.j2fe.workflow.definition.Transition">
<name id="123">goto-next</name>
<source id="124">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="125">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="126">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="127" type="java.util.HashSet">
<item id="128" type="com.j2fe.workflow.definition.Transition">
<name id="129">goto-next</name>
<source id="130">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="131">Database Statement (Standard)</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="132">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="133" type="java.util.HashSet">
<item id="134" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="135">database</name>
<stringValue id="136">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="137" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="138">[0]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="139">indexedParameters[0]</name>
<stringValue id="140">Output</stringValue>
<type>VARIABLE</type>
</item>
<item id="141" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="142">querySQL</name>
<stringValue id="143">UPDATE FT_T_VRSC SET SUB_STAT_IND = 'Y' WHERE FILE_NME =?</stringValue>
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
<name id="148">Call Subworkflow</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="149">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="150" type="java.util.HashSet">
<item id="151" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="152">["BBDownloadDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="153">input["BBDownloadDirectory"]</name>
<stringValue id="154">DownloadDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="155" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="156">["BBUploadDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="157">input["BBUploadDirectory"]</name>
<stringValue id="158">UploadDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="159" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="160">["IsConnectionFailOver"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="161">input["IsConnectionFailOver"]</name>
<stringValue id="162">IsConnectionFailOver</stringValue>
<type>VARIABLE</type>
</item>
<item id="163" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="164">["MaxRequestsPerFile"]@java/lang/Long@</UITypeHint>
<input>true</input>
<name id="165">input["MaxRequestsPerFile"]</name>
<objectValue id="166" type="java.lang.Long">20000</objectValue>
<type>CONSTANT</type>
</item>
<item id="167" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="168">["Message"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="169">input["Message"]</name>
<stringValue id="170">newRequestXML</stringValue>
<type>VARIABLE</type>
</item>
<item id="171" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="172">name</name>
<stringValue id="173">Request Reply</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="174" type="java.util.HashSet">
<item id="175" type="com.j2fe.workflow.definition.Transition">
<name id="176">goto-next</name>
<source id="177">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="178">Database Statement (Standard)</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="179">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="180" type="java.util.HashSet">
<item id="181" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="182">database</name>
<stringValue id="183">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="184" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="185">[0]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="186">indexedParameters[0]</name>
<stringValue id="187">Output</stringValue>
<type>VARIABLE</type>
</item>
<item id="188" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="189">querySQL</name>
<stringValue id="190">UPDATE FT_T_VREQ SET VND_RQST_STAT_TYP = 'CLOSED', LAST_CHG_TMS = SYSDATE WHERE VND_RQST_STAT_TYP = 'SCHEDULED' AND VND_RESP_FILE_NME = ?</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="191" type="java.util.HashSet">
<item id="192" type="com.j2fe.workflow.definition.Transition">
<name id="193">goto-next</name>
<source id="194">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="195">Bean Shell Script (Standard) #2</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="196">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="197" type="java.util.HashSet">
<item id="198" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="199">statements</name>
<stringValue id="200">import com.j2fe.util.XMLStringTokenizer;

Map scheduledRequestMap = scheduledRequest;

String requestXML = scheduledRequestMap.get(responseFileName);

String newRequestXML = requestXML.substring(0, requestXML.indexOf("&lt;/VendorRequest&gt;"));

for (String str : resultXML)
{
	XMLStringTokenizer vendorRequest = new XMLStringTokenizer(str, "VendorRequest");
	while (vendorRequest.hasMoreTokens())
	{
		newRequestXML = newRequestXML +vendorRequest.nextToken();
	}
}

newRequestXML = newRequestXML+"&lt;/VendorRequest&gt;";

</stringValue>
<type>CONSTANT</type>
</item>
<item id="201" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="202">["newRequestXML"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="203">variables["newRequestXML"]</name>
<stringValue id="204">newRequestXML</stringValue>
<type>VARIABLE</type>
</item>
<item id="205" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="206">["responseFileName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="207">variables["responseFileName"]</name>
<stringValue id="208">Output</stringValue>
<type>VARIABLE</type>
</item>
<item id="209" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="210">variables["resultXML"]</name>
<stringValue id="211">ResultXML</stringValue>
<type>VARIABLE</type>
</item>
<item id="212" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="213">variables["scheduledRequest"]</name>
<stringValue id="214">scheduledRequest</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="215" type="java.util.HashSet">
<item id="216" type="com.j2fe.workflow.definition.Transition">
<name id="217">rows-found</name>
<source id="218">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="219">Form Request XML</name>
<nodeHandler>com.j2fe.general.activities.database.XMLQuery</nodeHandler>
<nodeHandlerClass id="220">com.j2fe.general.activities.database.XMLQuery</nodeHandlerClass>
<parameters id="221" type="java.util.HashSet">
<item id="222" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="223">database</name>
<stringValue id="224">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="225" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="226">[0]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="227">indexedParameters[0]</name>
<stringValue id="228">universeId</stringValue>
<type>VARIABLE</type>
</item>
<item id="229" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="230">[1]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="231">indexedParameters[1]</name>
<stringValue id="232">Output</stringValue>
<type>VARIABLE</type>
</item>
<item id="233" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="234">querySQL</name>
<objectValue id="235" type="java.lang.String">SELECT XMLELEMENT("VendorRequest",XMLAGG&#13;
(XMLELEMENT("Request", XMLELEMENT("DataType", VRST.VND_RQST_DATA_TYP),&#13;
   XMLELEMENT("Vendor", VRSC.DATA_SRC_ID),&#13;
   XMLELEMENT("TableType", 'ISSU'),&#13;
   XMLELEMENT("Identifier", ISID.ISS_ID),&#13;
   XMLELEMENT("IDContext", (case ISID.ID_CTXT_TYP when 'BBUNQTCK' then 'TICKER' else isid.ID_CTXT_TYP end)),&#13;
   (SELECT  XMLAGG(XMLELEMENT("Param",XMLATTRIBUTES( 'MarketSector' as "Key"),MKID.mkt_id_ctxt_typ)) from &#13;
   ft_T_mkid MKID where data_Src_id='BB' and mkt_oid = &#13;
   (select mkt_oid from ft_t_mkis where mkt_iss_oid=(select isgp1.MKT_ISS_OID &#13;
   from FT_T_ISGP isgp1 , FT_T_ISID ISID1 where isgp1.instr_id=ISID1.instr_id&#13;
   and ISID1.ISID_OID = ISGP1.ISID_OID and rownum = 1))and rownum = 1)&#13;
   ))) &#13;
   FROM FT_T_ISID ISID, FT_T_ISGP ISGP, FT_T_ISGR ISGR , FT_T_VRSC VRSC ,FT_T_VRST VRST  &#13;
WHERE ISID.INSTR_ID = ISGP.INSTR_ID&#13;
AND ISID.ISID_OID = ISGP.ISID_OID&#13;
AND ISGP.PRNT_ISS_GRP_OID = ISGR.ISS_GRP_OID&#13;
and VRSC.UNIVERSE_OID = ISGR.ISS_GRP_OID&#13;
and VRST.VRSC_OID = VRSC.VRSC_OID&#13;
and VRSC.UNIVERSE_OID = ?&#13;
AND VRSC.FILE_NME = ?</objectValue>
<type>CONSTANT</type>
</item>
<item id="236" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="237">result</name>
<stringValue id="238">ResultXML</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="239" type="java.util.HashSet">
<item id="240" type="java.lang.String">ResultXML
1100</item>
</persistentVariables>
<sources id="241" type="java.util.HashSet">
<item id="242" type="com.j2fe.workflow.definition.Transition">
<name id="243">goto-next</name>
<source id="244">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="245">Get universe oid</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="246">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="247" type="java.util.HashSet">
<item id="248" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="249">statements</name>
<stringValue id="250">Map scheduledRequestUniverseMap = scheduledRequestUniverse;

String universeId = scheduledRequestUniverseMap.get(responseFileName);
</stringValue>
<type>CONSTANT</type>
</item>
<item id="251" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="252">["responseFileName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="253">variables["responseFileName"]</name>
<stringValue id="254">Output</stringValue>
<type>VARIABLE</type>
</item>
<item id="255" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="256">variables["scheduledRequestUniverse"]</name>
<stringValue id="257">scheduledRequestUniverse</stringValue>
<type>VARIABLE</type>
</item>
<item id="258" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="259">["universeId"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="260">variables["universeId"]</name>
<stringValue id="261">universeId</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="262" type="java.util.HashSet">
<item id="263" type="java.lang.String">universeId
1100</item>
</persistentVariables>
<sources id="264" type="java.util.HashSet">
<item id="265" type="com.j2fe.workflow.definition.Transition">
<name id="266">loop</name>
<source idref="40"/>
<target idref="244"/>
</item>
</sources>
<targets id="267" type="java.util.HashSet">
<item idref="242" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="218"/>
</item>
</sources>
<targets id="268" type="java.util.HashSet">
<item id="269" type="com.j2fe.workflow.definition.Transition">
<name id="270">nothing-found</name>
<source idref="218"/>
<target idref="2"/>
</item>
<item idref="216" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="194"/>
</item>
</sources>
<targets id="271" type="java.util.HashSet">
<item idref="192" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="177"/>
</item>
</sources>
<targets id="272" type="java.util.HashSet">
<item idref="175" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="147"/>
</item>
</sources>
<targets id="273" type="java.util.HashSet">
<item idref="145" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="130"/>
</item>
</sources>
<targets id="274" type="java.util.HashSet">
<item idref="128" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="124"/>
</item>
</sources>
<targets id="275" type="java.util.HashSet">
<item idref="122" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="65"/>
</item>
</sources>
<targets id="276" type="java.util.HashSet">
<item idref="63" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="40"/>
</item>
</sources>
<targets id="277" type="java.util.HashSet">
<item idref="38" type="com.j2fe.workflow.definition.Transition"/>
<item idref="265" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="30"/>
</item>
</sources>
<targets id="278" type="java.util.HashSet">
<item idref="28" type="com.j2fe.workflow.definition.Transition"/>
<item id="279" type="com.j2fe.workflow.definition.Transition">
<name id="280">true</name>
<source idref="30"/>
<target idref="2"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="8"/>
</item>
</sources>
<targets id="281" type="java.util.HashSet">
<item idref="6" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
<item idref="269" type="com.j2fe.workflow.definition.Transition"/>
<item idref="279" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="282" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="283">Request Reply/Bloomberg</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="284">user1</lastChangeUser>
<lastUpdate id="285">2018-04-19T12:16:08.000+1000</lastUpdate>
<name id="286">BBScheduledWrapper</name>
<optimize>true</optimize>
<parameter id="287" type="java.util.HashMap">
<entry>
<key id="288" type="java.lang.String">DownloadDirectory</key>
<value id="289" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="290">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="291">DownloadDirectory</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="292" type="java.lang.String">IsConnectionFailOver</key>
<value id="293" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="294">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="295">Has Primary Connection failed?</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="296" type="java.lang.String">Message</key>
<value id="297" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="298">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="299" type="java.lang.String">UploadDirectory</key>
<value id="300" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="301">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="302">UploadDirectory</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="303" type="java.util.HashSet"/>
<priority>0</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="115"/>
<status>RELEASED</status>
<variables id="304" type="java.util.HashMap">
<entry>
<key id="305" type="java.lang.String">DownloadDirectory</key>
<value id="306" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="307">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="308">DownloadDirectory</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="309" type="java.lang.String">IsConnectionFailOver</key>
<value id="310" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="311">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="312">Has Primary Connection failed?</description>
<persistent>false</persistent>
<value id="313" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="314" type="java.lang.String">Message</key>
<value id="315" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="316">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="317" type="java.lang.String">UploadDirectory</key>
<value id="318" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="319">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="320">UploadDirectory</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="321" type="java.lang.String">loopCounter</key>
<value id="322" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="323">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="324">loopCounter</description>
<persistent>false</persistent>
<value id="325" type="java.lang.Integer">0</value>
</value>
</entry>
</variables>
<version>8</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
