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
<stringValue id="14">JobId</stringValue>
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
<name id="23">ToSplit</name>
<source id="24">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="25">Automatically generated</description>
<directJoin>false</directJoin>
<name id="26">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="27">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="28" type="java.util.HashSet">
<item id="29" type="com.j2fe.workflow.definition.Transition">
<name id="30">goto-next</name>
<source id="31">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="32">BB Re-Schedule Request</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="33">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="34" type="java.util.HashSet">
<item id="35" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="36">["IsConnectionFailOver"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="37">input["IsConnectionFailOver"]</name>
<stringValue id="38">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="39" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="40">["Message"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="41">input["Message"]</name>
<stringValue id="42">XmlMsgReRequest</stringValue>
<type>VARIABLE</type>
<variablePart id="43">[0]</variablePart>
</item>
<item id="44" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="45">name</name>
<stringValue id="46">BBScheduledWrapper</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="47" type="java.util.HashSet">
<item id="48" type="com.j2fe.workflow.definition.Transition">
<name id="49">goto-next</name>
<source id="50">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="51">Re-Schedule Request Msg</name>
<nodeHandler>com.j2fe.general.activities.database.XMLQuery</nodeHandler>
<nodeHandlerClass id="52">com.j2fe.general.activities.database.XMLQuery</nodeHandlerClass>
<parameters id="53" type="java.util.HashSet">
<item id="54" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="55">database</name>
<stringValue id="56">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="57" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="58">indexedParameters[0]</name>
<stringValue id="59">vrscoid</stringValue>
<type>VARIABLE</type>
<variablePart id="60">[0]</variablePart>
</item>
<item id="61" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="62">querySQL</name>
<objectValue id="63" type="java.lang.String">SELECT &#13;
XMLELEMENT("VendorRequestDetail",XMLAGG(&#13;
XMLELEMENT("VendorRequest",&#13;
XMLELEMENT("Requestor", 'SYSTEM'),&#13;
   XMLELEMENT("User", 'SYSTEM'),&#13;
   XMLELEMENT("UserRequestID", '20100104163224'),&#13;
   XMLELEMENT("ProgramFlag", trim(vrsc.rqst_fq_sp_typ)),&#13;
   XMLELEMENT("Time", trim(vrsc.runtime_txt)),&#13;
   XMLELEMENT("RunDate", to_char(trunc(sysdate),'yyyymmdd')),&#13;
   --XMLELEMENT("ReplyFileName", trim(REPLACE(vrsc.file_nme,'.gz',''))),&#13;
   XMLELEMENT("ReplyFileName", trim(vrsc.file_nme)),&#13;
   XMLELEMENT("DiffFlag", 'yes'),&#13;
   XMLELEMENT("VRSCOID", trim(vrsc.vrsc_oid)),&#13;
   XMLELEMENT("Universe", trim(vrsc.universe_oid)),&#13;
   XMLELEMENT("RequestType", 'CBA_BB_Currency')&#13;
 --  ,XMLELEMENT("Param",XMLATTRIBUTES( 'Header_YELLOWKEY' AS "Key"),'CURNCY')&#13;
   ))) msg   &#13;
FROM FT_T_VRSC VRSC ,FT_T_VRST VRST &#13;
--, FT_T_ISGP ISGP, FT_T_ISGR ISGR &#13;
WHERE 1=1&#13;
AND VRST.VRSC_OID = VRSC.VRSC_OID&#13;
--AND VRSC.UNIVERSE_OID = ISGR.ISS_GRP_OID&#13;
--AND ISGP.PRNT_ISS_GRP_OID = ISGR.ISS_GRP_OID&#13;
AND VRSC.END_TMS IS NULL&#13;
AND VRSC.vrsc_oid = ?</objectValue>
<type>CONSTANT</type>
</item>
<item id="64" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="65">result</name>
<stringValue id="66">XmlMsgReRequest</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="67" type="java.util.HashSet">
<item id="68" type="com.j2fe.workflow.definition.Transition">
<name id="69">goto-next</name>
<source id="70">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="71">BB Cancel Request</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="72">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="73" type="java.util.HashSet">
<item id="74" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="75">["IsConnectionFailOver"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="76">input["IsConnectionFailOver"]</name>
<stringValue id="77">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="78" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="79">["Message"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="80">input["Message"]</name>
<stringValue id="81">XmlMsgCancel</stringValue>
<type>VARIABLE</type>
<variablePart id="82">[0]</variablePart>
</item>
<item id="83" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="84">name</name>
<stringValue id="85">BBScheduledWrapper</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="86" type="java.util.HashSet">
<item id="87" type="com.j2fe.workflow.definition.Transition">
<name id="88">goto-next</name>
<source id="89">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="90">Cancel Request Msg</name>
<nodeHandler>com.j2fe.general.activities.database.XMLQuery</nodeHandler>
<nodeHandlerClass id="91">com.j2fe.general.activities.database.XMLQuery</nodeHandlerClass>
<parameters id="92" type="java.util.HashSet">
<item id="93" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="94">database</name>
<stringValue id="95">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="96" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="97">indexedParameters[0]</name>
<stringValue id="98">vrscoid</stringValue>
<type>VARIABLE</type>
<variablePart id="99">[0]</variablePart>
</item>
<item id="100" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="101">querySQL</name>
<stringValue id="102">SELECT &#13;
XMLELEMENT("VendorRequestDetail",XMLAGG(&#13;
XMLELEMENT("VendorRequest",&#13;
   XMLELEMENT("ProgramFlag", trim(vrsc.rqst_fq_sp_typ)),&#13;
   XMLELEMENT("filenames",&#13;
--   XMLELEMENT("filename", trim(replace(vrsc.file_nme,'.gz','')))&#13;
   XMLELEMENT("filename", trim(vrsc.file_nme))&#13;
   ))))&#13;
msg   &#13;
FROM FT_T_VRSC VRSC ,FT_T_VRST VRST &#13;
--, FT_T_ISGP ISGP, FT_T_ISGR ISGR &#13;
WHERE 1=1&#13;
AND VRST.VRSC_OID = VRSC.VRSC_OID&#13;
--AND VRSC.UNIVERSE_OID = ISGR.ISS_GRP_OID&#13;
--AND ISGP.PRNT_ISS_GRP_OID = ISGR.ISS_GRP_OID&#13;
AND VRSC.END_TMS IS NULL&#13;
AND VRSC.vrsc_oid = ?</stringValue>
<type>CONSTANT</type>
</item>
<item id="103" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="104">result</name>
<stringValue id="105">XmlMsgCancel</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="106" type="java.util.HashSet">
<item id="107" type="com.j2fe.workflow.definition.Transition">
<name id="108">goto-next</name>
<source id="109">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="110">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="111">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="112" type="java.util.HashSet">
<item id="113" type="com.j2fe.workflow.definition.Transition">
<name id="114">0</name>
<source id="115">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="116">Switch Case</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="117">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="118" type="java.util.HashSet">
<item id="119" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="120">caseItem</name>
<stringValue id="121">v_flag</stringValue>
<type>VARIABLE</type>
</item>
<item id="122" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="123">defaultItem</name>
<stringValue id="124">0</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="125" type="java.util.HashSet">
<item id="126" type="com.j2fe.workflow.definition.Transition">
<name id="127">goto-next</name>
<source id="128">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="129">Bean Shell Script (Standard)</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="130">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="131" type="java.util.HashSet">
<item id="132" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="133">statements</name>
<objectValue id="134" type="java.lang.String">&#13;
&#13;
String v_query="";&#13;
String v_query_1="";&#13;
String v_query_final="";&#13;
String v_flag="0";&#13;
&#13;
String updateFlag = (String) v_update_flag;&#13;
&#13;
if(!(null == updateFlag  || ("").equals(updateFlag)))&#13;
{&#13;
&#13;
if("timenfreq"==updateFlag || "timenfreq".equals(updateFlag))&#13;
{&#13;
v_query="update ft_t_vrsc set runtime_txt='"+(String)v_runtime+"',RQST_FQ_SP_TYP='"+(String)v_freq+"',LAST_CHG_TMS= sysdate where vrsc_oid='"+(String)v_vrsc+"';";&#13;
}&#13;
&#13;
else if("timeonly"==updateFlag || "timeonly".equals(updateFlag))&#13;
//else if("timeonly"==updateFlag )&#13;
{&#13;
v_query="update ft_t_vrsc set runtime_txt='"+(String)v_runtime+"', LAST_CHG_TMS= sysdate where vrsc_oid='"+(String)v_vrsc+"';";&#13;
}&#13;
&#13;
else if("freqonly"==updateFlag || "freqonly".equals(updateFlag))&#13;
//else if("freqonly"==updateFlag  || )&#13;
{&#13;
v_query="update ft_t_vrsc set RQST_FQ_SP_TYP='"+(String)v_freq+"', LAST_CHG_TMS= sysdate where vrsc_oid='"+(String)v_vrsc+"';";&#13;
}&#13;
&#13;
&#13;
}&#13;
else&#13;
{&#13;
&#13;
&#13;
v_query="";&#13;
&#13;
}&#13;
&#13;
if(!(null == (String)v_vrst_flag  || ("").equals((String)v_vrst_flag)))&#13;
&#13;
{&#13;
if ("msgtype"==(String)v_vrst_flag || "msgtype".equals((String)v_vrst_flag))&#13;
{&#13;
v_query_1="update ft_T_vrst set VND_RQST_DATA_TYP='"+(String)vnd_msg_type+"' , LAST_CHG_TMS= sysdate where vrsc_oid='"+(String)v_vrsc+"';";&#13;
}&#13;
}&#13;
else  &#13;
{&#13;
v_query_1="";&#13;
}&#13;
&#13;
if((!(null == (String)v_query  || ("").equals((String)v_query))) || (!(null == (String)v_query_1  || ("").equals((String)v_query_1))))&#13;
{&#13;
v_query_final="begin  "+v_query+" " + v_query_1+ "end; ";&#13;
&#13;
v_flag="1";&#13;
}&#13;
&#13;
&#13;
</objectValue>
<type>CONSTANT</type>
</item>
<item id="135" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="136">["v_flag"]@java/lang/Object@</UITypeHint>
<input>false</input>
<name id="137">variables["v_flag"]</name>
<stringValue id="138">v_flag</stringValue>
<type>VARIABLE</type>
</item>
<item id="139" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="140">["v_freq"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="141">variables["v_freq"]</name>
<stringValue id="142">RequestFrequency</stringValue>
<type>VARIABLE</type>
</item>
<item id="143" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="144">variables["v_query"]</name>
<stringValue id="145">v_query</stringValue>
<type>VARIABLE</type>
</item>
<item id="146" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="147">variables["v_query_1"]</name>
<stringValue id="148">v_query_1</stringValue>
<type>VARIABLE</type>
</item>
<item id="149" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="150">variables["v_query_final"]</name>
<stringValue id="151">v_final_update</stringValue>
<type>VARIABLE</type>
</item>
<item id="152" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="153">["v_runtime"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="154">variables["v_runtime"]</name>
<stringValue id="155">ScheduleTime</stringValue>
<type>VARIABLE</type>
</item>
<item id="156" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="157">["v_update_flag"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="158">variables["v_update_flag"]</name>
<stringValue id="159">updateflag</stringValue>
<type>VARIABLE</type>
</item>
<item id="160" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="161">["v_vrsc"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="162">variables["v_vrsc"]</name>
<stringValue id="163">vrscoid</stringValue>
<type>VARIABLE</type>
<variablePart id="164">[0]</variablePart>
</item>
<item id="165" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="166">["v_vrst_flag"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="167">variables["v_vrst_flag"]</name>
<stringValue id="168">updateflagvrst</stringValue>
<type>VARIABLE</type>
</item>
<item id="169" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="170">variables["vnd_msg_type"]</name>
<stringValue id="171">VendorRequestDataType</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="172" type="java.util.HashSet">
<item id="173" type="com.j2fe.workflow.definition.Transition">
<name id="174">goto-next</name>
<source id="175">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="176">Update VRST?</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="177">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="178" type="java.util.HashSet">
<item id="179" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="180">database</name>
<stringValue id="181">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="182" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="183">firstColumnsResult[0]</name>
<stringValue id="184">updateflagvrst</stringValue>
<type>VARIABLE</type>
</item>
<item id="185" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="186">indexedParameters[0]</name>
<stringValue id="187">VendorRequestDataType</stringValue>
<type>VARIABLE</type>
</item>
<item id="188" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="189">indexedParameters[1]</name>
<stringValue id="190">vrscoid</stringValue>
<type>VARIABLE</type>
<variablePart id="191">[0]</variablePart>
</item>
<item id="192" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="193">querySQL</name>
<stringValue id="194">select &#13;
case &#13;
when VND_RQST_DATA_TYP &lt;&gt; ?  then 'msgtype'&#13;
else 'none' end update_flag&#13;
from ft_T_vrst where vrsc_oid=?</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="195" type="java.util.HashSet">
<item id="196" type="com.j2fe.workflow.definition.Transition">
<name id="197">goto-next</name>
<source id="198">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="199">Update VRSC?</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="200">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="201" type="java.util.HashSet">
<item id="202" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="203">database</name>
<stringValue id="204">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="205" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="206">firstColumnsResult[0]</name>
<stringValue id="207">updateflag</stringValue>
<type>VARIABLE</type>
</item>
<item id="208" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="209">indexedParameters[0]</name>
<stringValue id="210">ScheduleTime</stringValue>
<type>VARIABLE</type>
</item>
<item id="211" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="212">indexedParameters[1]</name>
<stringValue id="213">RequestFrequency</stringValue>
<type>VARIABLE</type>
</item>
<item id="214" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="215">indexedParameters[2]</name>
<stringValue id="216">ScheduleTime</stringValue>
<type>VARIABLE</type>
</item>
<item id="217" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="218">indexedParameters[3]</name>
<stringValue id="219">RequestFrequency</stringValue>
<type>VARIABLE</type>
</item>
<item id="220" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="221">indexedParameters[4]</name>
<stringValue id="222">vrscoid</stringValue>
<type>VARIABLE</type>
<variablePart id="223">[0]</variablePart>
</item>
<item id="224" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="225">querySQL</name>
<stringValue id="226">select &#13;
case &#13;
when RUNTIME_TXT&lt;&gt; ? and RQST_FQ_SP_TYP &lt;&gt; ? then 'timenfreq'&#13;
when RUNTIME_TXT&lt;&gt; ?  then 'timeonly'&#13;
when RQST_FQ_SP_TYP &lt;&gt; ?  then 'freqonly'&#13;
else 'none' end update_flag&#13;
from ft_t_vrsc where vrsc_oid=?</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="227" type="java.util.HashSet">
<item id="228" type="com.j2fe.workflow.definition.Transition">
<name id="229">rows-found</name>
<source id="230">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="231">Check Existing VRSC Setup</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="232">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="233" type="java.util.HashSet">
<item id="234" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="235">database</name>
<stringValue id="236">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="237" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="238">firstColumnsResult</name>
<stringValue id="239">vrscoid</stringValue>
<type>VARIABLE</type>
</item>
<item id="240" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="241">indexedParameters[0]</name>
<stringValue id="242">GroupName</stringValue>
<type>VARIABLE</type>
</item>
<item id="243" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="244">indexedParameters[1]</name>
<stringValue id="245">ResponseFileName</stringValue>
<type>VARIABLE</type>
</item>
<item id="246" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="247">querySQL</name>
<stringValue id="248">SELECT vrsc_oid FROM FT_T_VRSC WHERE universe_oid IN ( SELECT iss_grp_oid FROM ft_t_isgr WHERE grp_nme=?) AND file_nme=?&#13;
</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<persistentVariables id="249" type="java.util.HashSet">
<item id="250" type="java.lang.String">vrscoid
1000</item>
</persistentVariables>
<sources id="251" type="java.util.HashSet">
<item id="252" type="com.j2fe.workflow.definition.Transition">
<name id="253">false</name>
<source id="254">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="255">Switch Case</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="256">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="257" type="java.util.HashSet">
<item id="258" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="259">caseItem</name>
<stringValue id="260">CancelOnly</stringValue>
<type>VARIABLE</type>
</item>
<item id="261" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="262">nullTransition</name>
<stringValue id="263">false</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="264" type="java.util.HashSet">
<item id="265" type="com.j2fe.workflow.definition.Transition">
<name id="266">goto-next</name>
<source id="267">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="268">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="269">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="270" type="java.util.HashSet">
<item id="271" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="272">configInfo</name>
<stringValue id="273">GroupName</stringValue>
<type>VARIABLE</type>
</item>
<item id="274" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="275">file</name>
<objectValue id="276" type="java.net.URI">CBA_WF_BB_RequestCancel</objectValue>
<type>CONSTANT</type>
</item>
<item id="277" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="278">jobId</name>
<stringValue id="279">JobId</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="280" type="java.util.HashSet">
<item id="281" type="com.j2fe.workflow.definition.Transition">
<name id="282">goto-next</name>
<source id="283">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="284">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="285">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="286" type="java.util.HashSet"/>
<targets id="287" type="java.util.HashSet">
<item idref="281" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="267"/>
</item>
</sources>
<targets id="288" type="java.util.HashSet">
<item idref="265" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="254"/>
</item>
</sources>
<targets id="289" type="java.util.HashSet">
<item idref="252" type="com.j2fe.workflow.definition.Transition"/>
<item id="290" type="com.j2fe.workflow.definition.Transition">
<name id="291">true</name>
<source idref="254"/>
<target id="292">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="293">Cancel Only Request Msg</name>
<nodeHandler>com.j2fe.general.activities.database.XMLQuery</nodeHandler>
<nodeHandlerClass id="294">com.j2fe.general.activities.database.XMLQuery</nodeHandlerClass>
<parameters id="295" type="java.util.HashSet">
<item id="296" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="297">database</name>
<stringValue id="298">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="299" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="300">indexedParameters[0]</name>
<stringValue id="301">GroupName</stringValue>
<type>VARIABLE</type>
</item>
<item id="302" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="303">indexedParameters[1]</name>
<stringValue id="304">ResponseFileName</stringValue>
<type>VARIABLE</type>
</item>
<item id="305" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="306">querySQL</name>
<stringValue id="307">SELECT &#13;
XMLELEMENT("VendorRequestDetail",XMLAGG(&#13;
XMLELEMENT("VendorRequest",&#13;
   XMLELEMENT("ProgramFlag", trim(vrsc.rqst_fq_sp_typ)),&#13;
   XMLELEMENT("filenames",&#13;
--   XMLELEMENT("filename", trim(replace(vrsc.file_nme,'.gz','')))&#13;
   XMLELEMENT("filename", trim(vrsc.file_nme))&#13;
   ))))&#13;
msg   &#13;
FROM FT_T_VRSC VRSC ,FT_T_VRST VRST &#13;
--, FT_T_ISGP ISGP, FT_T_ISGR ISGR &#13;
WHERE 1=1&#13;
AND VRST.VRSC_OID = VRSC.VRSC_OID&#13;
--AND VRSC.UNIVERSE_OID = ISGR.ISS_GRP_OID&#13;
--AND ISGP.PRNT_ISS_GRP_OID = ISGR.ISS_GRP_OID&#13;
AND VRSC.END_TMS IS NULL&#13;
AND VRSC.UNIVERSE_OID=(SELECT iss_grp_oid FROM ft_t_isgr WHERE grp_nme=?)&#13;
AND VRSC.file_nme=?</stringValue>
<type>CONSTANT</type>
</item>
<item id="308" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="309">result</name>
<stringValue id="310">XmlMsgCancelOnly</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="311" type="java.util.HashSet">
<item idref="290" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="312" type="java.util.HashSet">
<item id="313" type="com.j2fe.workflow.definition.Transition">
<name id="314">goto-next</name>
<source idref="292"/>
<target id="315">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="316">BB Cancel Request</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="317">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="318" type="java.util.HashSet">
<item id="319" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="320">["IsConnectionFailOver"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="321">input["IsConnectionFailOver"]</name>
<stringValue id="322">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="323" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="324">["Message"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="325">input["Message"]</name>
<stringValue id="326">XmlMsgCancelOnly</stringValue>
<type>VARIABLE</type>
<variablePart id="327">[0]</variablePart>
</item>
<item id="328" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="329">name</name>
<stringValue id="330">BBScheduledWrapper</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="331" type="java.util.HashSet">
<item idref="313" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="332" type="java.util.HashSet">
<item id="333" type="com.j2fe.workflow.definition.Transition">
<name id="334">goto-next</name>
<source idref="315"/>
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
</source>
<target idref="230"/>
</item>
</sources>
<targets id="335" type="java.util.HashSet">
<item id="336" type="com.j2fe.workflow.definition.Transition">
<name id="337">nothing-found</name>
<source idref="230"/>
<target id="338">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="339">Create SetUp VRSC</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="340">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="341" type="java.util.HashSet">
<item id="342" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="343">database</name>
<stringValue id="344">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="345" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="346">indexedParameters[0]</name>
<stringValue id="347">ResponseFileName</stringValue>
<type>VARIABLE</type>
</item>
<item id="348" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="349">indexedParameters[1]</name>
<stringValue id="350">ScheduleTime</stringValue>
<type>VARIABLE</type>
</item>
<item id="351" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="352">indexedParameters[2]</name>
<stringValue id="353">RequestFrequency</stringValue>
<type>VARIABLE</type>
</item>
<item id="354" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="355">indexedParameters[3]</name>
<stringValue id="356">GroupName</stringValue>
<type>VARIABLE</type>
</item>
<item id="357" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="358">querySQL</name>
<stringValue id="359">INSERT INTO FT_T_VRSC&#13;
SELECT new_oid,iss_grp_oid,?,sysdate,?,?,'No','Active',sysdate,null,sysdate,'admin','BB','Y','','1'&#13;
FROM ft_t_isgr WHERE grp_nme=?&#13;
</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="360" type="java.util.HashSet">
<item idref="336" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="361" type="java.util.HashSet">
<item id="362" type="com.j2fe.workflow.definition.Transition">
<name id="363">goto-next</name>
<source idref="338"/>
<target id="364">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="365">Create SetUp VRST</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="366">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="367" type="java.util.HashSet">
<item id="368" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="369">database</name>
<stringValue id="370">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="371" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="372">indexedParameters[0]</name>
<stringValue id="373">VendorRequestDataType</stringValue>
<type>VARIABLE</type>
</item>
<item id="374" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="375">indexedParameters[1]</name>
<stringValue id="376">GroupName</stringValue>
<type>VARIABLE</type>
</item>
<item id="377" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="378">querySQL</name>
<stringValue id="379">INSERT INTO ft_t_vrst&#13;
SELECT new_oid,vrsc_oid,?,sysdate,null,sysdate,'ADMIN' &#13;
FROM FT_T_VRSC WHERE UNIVERSE_OID=(SELECT iss_grp_oid FROM ft_t_isgr WHERE grp_nme=?)&#13;
</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="380" type="java.util.HashSet">
<item idref="362" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="381" type="java.util.HashSet">
<item id="382" type="com.j2fe.workflow.definition.Transition">
<name id="383">goto-next</name>
<source idref="364"/>
<target id="384">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="385">Schedule Request Msg</name>
<nodeHandler>com.j2fe.general.activities.database.XMLQuery</nodeHandler>
<nodeHandlerClass id="386">com.j2fe.general.activities.database.XMLQuery</nodeHandlerClass>
<parameters id="387" type="java.util.HashSet">
<item id="388" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="389">database</name>
<stringValue id="390">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="391" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="392">indexedParameters[0]</name>
<stringValue id="393">GroupName</stringValue>
<type>VARIABLE</type>
</item>
<item id="394" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="395">indexedParameters[1]</name>
<stringValue id="396">ResponseFileName</stringValue>
<type>VARIABLE</type>
</item>
<item id="397" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="398">querySQL</name>
<objectValue id="399" type="java.lang.String">SELECT &#13;
XMLELEMENT("VendorRequestDetail",XMLAGG(&#13;
XMLELEMENT("VendorRequest",&#13;
XMLELEMENT("Requestor", 'SYSTEM'),&#13;
   XMLELEMENT("User", 'SYSTEM'),&#13;
   XMLELEMENT("UserRequestID", '20100104163224'),&#13;
   XMLELEMENT("ProgramFlag", trim(vrsc.rqst_fq_sp_typ)),&#13;
   XMLELEMENT("Time", trim(vrsc.runtime_txt)),&#13;
   XMLELEMENT("RunDate", to_char(trunc(sysdate),'yyyymmdd')),&#13;
   --XMLELEMENT("ReplyFileName", trim(REPLACE(vrsc.file_nme,'.gz',''))),&#13;
   XMLELEMENT("ReplyFileName", trim(vrsc.file_nme)),&#13;
   XMLELEMENT("DiffFlag", 'yes'),&#13;
   XMLELEMENT("VRSCOID", trim(vrsc.vrsc_oid)),&#13;
   XMLELEMENT("Universe", trim(vrsc.universe_oid)),&#13;
   XMLELEMENT("RequestType", 'CBA_BB_Currency')&#13;
 --  ,XMLELEMENT("Param",XMLATTRIBUTES( 'Header_YELLOWKEY' AS "Key"),'CURNCY')&#13;
   ))) msg   &#13;
FROM FT_T_VRSC VRSC ,FT_T_VRST VRST &#13;
--, FT_T_ISGP ISGP, FT_T_ISGR ISGR &#13;
WHERE 1=1&#13;
AND VRST.VRSC_OID = VRSC.VRSC_OID&#13;
--AND VRSC.UNIVERSE_OID = ISGR.ISS_GRP_OID&#13;
--AND ISGP.PRNT_ISS_GRP_OID = ISGR.ISS_GRP_OID&#13;
AND VRSC.END_TMS IS NULL&#13;
--AND VRSC.vrsc_oid = ?&#13;
AND VRSC.UNIVERSE_OID=(SELECT iss_grp_oid FROM ft_t_isgr WHERE grp_nme=?)&#13;
AND VRSC.file_nme=?</objectValue>
<type>CONSTANT</type>
</item>
<item id="400" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="401">result</name>
<stringValue id="402">XmlMsgRequest</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="403" type="java.util.HashSet">
<item idref="382" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="404" type="java.util.HashSet">
<item id="405" type="com.j2fe.workflow.definition.Transition">
<name id="406">goto-next</name>
<source idref="384"/>
<target id="407">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="408">BB Schedule Request</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="409">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="410" type="java.util.HashSet">
<item id="411" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="412">["IsConnectionFailOver"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="413">input["IsConnectionFailOver"]</name>
<stringValue id="414">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="415" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="416">["Message"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="417">input["Message"]</name>
<stringValue id="418">XmlMsgRequest</stringValue>
<type>VARIABLE</type>
<variablePart id="419">[0]</variablePart>
</item>
<item id="420" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="421">name</name>
<stringValue id="422">BBScheduledWrapper</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="423" type="java.util.HashSet">
<item idref="405" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="424" type="java.util.HashSet">
<item id="425" type="com.j2fe.workflow.definition.Transition">
<name id="426">goto-next</name>
<source idref="407"/>
<target idref="24"/>
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
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="228" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="198"/>
</item>
</sources>
<targets id="427" type="java.util.HashSet">
<item idref="196" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="175"/>
</item>
</sources>
<targets id="428" type="java.util.HashSet">
<item idref="173" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="128"/>
</item>
</sources>
<targets id="429" type="java.util.HashSet">
<item idref="126" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="115"/>
</item>
</sources>
<targets id="430" type="java.util.HashSet">
<item idref="113" type="com.j2fe.workflow.definition.Transition"/>
<item id="431" type="com.j2fe.workflow.definition.Transition">
<name id="432">1</name>
<source idref="115"/>
<target id="433">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="434">Update VRSC and VRST</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="435">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="436" type="java.util.HashSet">
<item id="437" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="438">database</name>
<stringValue id="439">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="440" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="441">querySQL</name>
<stringValue id="442">v_final_update</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="443" type="java.util.HashSet">
<item idref="431" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="444" type="java.util.HashSet">
<item id="445" type="com.j2fe.workflow.definition.Transition">
<name id="446">0</name>
<source idref="433"/>
<target idref="109"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="109"/>
</item>
<item idref="445" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="447" type="java.util.HashSet">
<item idref="107" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="89"/>
</item>
</sources>
<targets id="448" type="java.util.HashSet">
<item idref="87" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="70"/>
</item>
</sources>
<targets id="449" type="java.util.HashSet">
<item idref="68" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="50"/>
</item>
</sources>
<targets id="450" type="java.util.HashSet">
<item idref="48" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="31"/>
</item>
</sources>
<targets id="451" type="java.util.HashSet">
<item idref="29" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="24"/>
</item>
<item idref="425" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="452" type="java.util.HashSet">
<item idref="22" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="18"/>
</item>
<item idref="333" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="453" type="java.util.HashSet">
<item idref="16" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="8"/>
</item>
</sources>
<targets id="454" type="java.util.HashSet">
<item idref="6" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
</sources>
<targets id="455" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="456">CBACustomWorkflows</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="457">user1</lastChangeUser>
<lastUpdate id="458">2018-05-14T20:46:25.000+1000</lastUpdate>
<name id="459">CBA_WF_BB_RequestCancel</name>
<optimize>true</optimize>
<parameter id="460" type="java.util.HashMap">
<entry>
<key id="461" type="java.lang.String">CancelOnly</key>
<value id="462" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="463">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="464">if set true, WF will generate Cancel msg only</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="465" type="java.lang.String">GroupName</key>
<value id="466" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="467">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="468">Group Name</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="469" type="java.lang.String">RequestFrequency</key>
<value id="470" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="471">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="472">Schedule Request Frequency such as Daily</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="473" type="java.lang.String">ResponseFileName</key>
<value id="474" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="475">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="476">BB Response File Name</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="477" type="java.lang.String">ScheduleTime</key>
<value id="478" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="479">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="480">This parameter denotes the time of BB schedule file. 24HHMI is the applicable Format such as "1645".</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="481" type="java.lang.String">VendorRequestDataType</key>
<value id="482" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="483">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="484">Vendor Request Data Type such as "CBA_BB_CurrencyDT", "BASIC", "PRICE" etc.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="485" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="283"/>
<status>RELEASED</status>
<variables id="486" type="java.util.HashMap">
<entry>
<key id="487" type="java.lang.String">CancelOnly</key>
<value id="488" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="489">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="490">if set true, WF will generate Cancel msg only</description>
<persistent>false</persistent>
<value id="491" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="492" type="java.lang.String">GroupName</key>
<value id="493" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="494">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="495">Group Name</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="496" type="java.lang.String">JobId</key>
<value id="497" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="498">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="499" type="java.lang.String">RequestFrequency</key>
<value id="500" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="501">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="502">Schedule Request Frequency such as Daily</description>
<persistent>false</persistent>
<value id="503" type="java.lang.String">Daily</value>
</value>
</entry>
<entry>
<key id="504" type="java.lang.String">ResponseFileName</key>
<value id="505" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="506">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="507">BB Response File Name</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="508" type="java.lang.String">ScheduleTime</key>
<value id="509" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="510">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="511">This parameter denotes the time of BB schedule file. 24HHMI is the applicable Format such as "1645".</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="512" type="java.lang.String">VendorRequestDataType</key>
<value id="513" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="514">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="515">Vendor Request Data Type such as "CBA_BB_CurrencyDT", "BASIC", "PRICE" etc.</description>
<persistent>false</persistent>
<value id="516" type="java.lang.String">CBA_BB_CurrencyDT</value>
</value>
</entry>
</variables>
<version>6</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
