<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.16">
<package-comment>	</package-comment>
<businessobject displayString="4 - Released" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">Released</comment>
<description id="2">SELECT ISID.ISS_ID&#13;
   FROM FT_T_ISID ISID, FT_T_ISGP ISGP, FT_T_ISGR ISGR &#13;
WHERE ISID.INSTR_ID = ISGP.INSTR_ID &#13;
    AND ISGP.PRNT_ISS_GRP_OID = ISGR.ISS_GRP_OID &#13;
    AND ISID.ID_CTXT_TYP = 'RIC'&#13;
    AND ISGR.GRP_NME = 'FXNOECB'&#13;
&#13;
&#13;
SELECT ISID.ISS_ID&#13;
   FROM FT_T_ISID ISID, FT_T_ISGP ISGP, FT_T_ISGR ISGR &#13;
WHERE ISID.INSTR_ID = ISGP.INSTR_ID &#13;
    AND ISGP.PRNT_ISS_GRP_OID = ISGR.ISS_GRP_OID &#13;
    AND ISID.ID_CTXT_TYP = 'RIC'&#13;
    AND ISGR.GRP_NME = 'FXECB'</description>
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
<name id="10">Close Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CloseJob</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.streetlamp.activities.CloseJob</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="14">jobId</name>
<stringValue id="15">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="16" type="java.util.HashSet">
<item id="17" type="com.j2fe.workflow.definition.Transition">
<name id="18">goto-next</name>
<source id="19">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="20">Consolidate Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandler>
<nodeHandlerClass id="21">com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandlerClass>
<parameters id="22" type="java.util.HashSet">
<item id="23" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="24">jobId</name>
<stringValue id="25">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="26" type="java.util.HashSet">
<item id="27" type="com.j2fe.workflow.definition.Transition">
<name id="28">goto-next</name>
<source id="29">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="30">Close Transaction</name>
<nodeHandler>com.j2fe.streetlamp.activities.CloseTransaction</nodeHandler>
<nodeHandlerClass id="31">com.j2fe.streetlamp.activities.CloseTransaction</nodeHandlerClass>
<parameters id="32" type="java.util.HashSet">
<item id="33" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="34">transactionId</name>
<stringValue id="35">TrnId</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="36" type="java.util.HashSet">
<item id="37" type="com.j2fe.workflow.definition.Transition">
<name id="38">goto-next</name>
<source id="39">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="40">CallTranslateAndSftpProcess</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="41">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="42" type="java.util.HashSet">
<item id="43" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="44">["FilePattern"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="45">input["FilePattern"]</name>
<stringValue id="46">filePattern</stringValue>
<type>VARIABLE</type>
</item>
<item id="47" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="48">["Hours"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="49">input["Hours"]</name>
<stringValue id="50">Hours</stringValue>
<type>VARIABLE</type>
</item>
<item id="51" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="52">["InputListName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="53">input["InputListName"]</name>
<stringValue id="54">ReutersDSSInputListName</stringValue>
<type>VARIABLE</type>
</item>
<item id="55" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="56">["Minutes"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="57">input["Minutes"]</name>
<stringValue id="58">Minutes</stringValue>
<type>VARIABLE</type>
</item>
<item id="59" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="60">["ReportTemplateName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="61">input["ReportTemplateName"]</name>
<stringValue id="62">ReutersDSSReportTemplateName</stringValue>
<type>VARIABLE</type>
</item>
<item id="63" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="64">["ScheduleName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="65">input["ScheduleName"]</name>
<stringValue id="66">ReutersDSSScheduleName</stringValue>
<type>VARIABLE</type>
</item>
<item id="67" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="68">["VendorRequestString"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="69">input["VendorRequestString"]</name>
<stringValue id="70">RicXml</stringValue>
<type>VARIABLE</type>
</item>
<item id="71" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="72">name</name>
<stringValue id="73">RsuReutersUpDownloadRequestReplySFTP</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="74" type="java.util.HashSet">
<item id="75" type="com.j2fe.workflow.definition.Transition">
<name id="76">goto-next</name>
<source id="77">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="78">Fail old rqst</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="79">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="80" type="java.util.HashSet">
<item id="81" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="82">database</name>
<stringValue id="83">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="84" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="85">querySQL</name>
<stringValue id="86">failOldRequestsSql</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="87" type="java.util.HashSet">
<item id="88" type="com.j2fe.workflow.definition.Transition">
<name id="89">goto-next</name>
<source id="90">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="91">Cancel old rqst</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="92">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="93" type="java.util.HashSet">
<item id="94" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="95">database</name>
<stringValue id="96">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="97" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="98">querySQL</name>
<stringValue id="99">cancelOldRequestsSql</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="100" type="java.util.HashSet">
<item id="101" type="com.j2fe.workflow.definition.Transition">
<name id="102">goto-next</name>
<source id="103">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="104">prep SQL updates</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="105">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="106" type="java.util.HashSet">
<item id="107" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="108">statements</name>
<stringValue id="109">String cancelOldRequestsSql = "update ft_t_vreq set VND_RQST_STAT_TYP='CANCELLED' where vnd_resp_file_nme = '" + filename +"' and vnd_rqst_tms &gt; (trunc(sysdate)-1/24/60/60) and trn_id != '" +trnId + "'";&#13;
&#13;
String failOldRequestsSql = "update ft_t_vreq set VND_RQST_STAT_TYP='FAIL' where vnd_resp_file_nme = '" + filename +"' and vnd_rqst_tms &lt;= (trunc(sysdate)-1/24/60/60) and trn_id != '" +trnId + "'";&#13;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="110" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="111">variables["cancelOldRequestsSql"]</name>
<stringValue id="112">cancelOldRequestsSql</stringValue>
<type>VARIABLE</type>
</item>
<item id="113" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="114">variables["failOldRequestsSql"]</name>
<stringValue id="115">failOldRequestsSql</stringValue>
<type>VARIABLE</type>
</item>
<item id="116" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="117">variables["filename"]</name>
<stringValue id="118">filePattern</stringValue>
<type>VARIABLE</type>
</item>
<item id="119" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="120">variables["trnId"]</name>
<stringValue id="121">TrnId</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="122" type="java.util.HashSet">
<item id="123" type="com.j2fe.workflow.definition.Transition">
<name id="124">rows-found</name>
<source id="125">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="126">FetchXML</name>
<nodeHandler>com.j2fe.general.activities.database.XMLQuery</nodeHandler>
<nodeHandlerClass id="127">com.j2fe.general.activities.database.XMLQuery</nodeHandlerClass>
<parameters id="128" type="java.util.HashSet">
<item id="129" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="130">database</name>
<stringValue id="131">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="132" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="133">indexedParameters[0]</name>
<stringValue id="134">TrnId</stringValue>
<type>VARIABLE</type>
</item>
<item id="135" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="136">querySQL</name>
<stringValue id="137">SELECT XMLELEMENT("VendorRequest", &#13;
  XMLELEMENT("User", 'admin'),&#13;
  XMLELEMENT("Requestor", 'admin'),&#13;
  XMLELEMENT("UserRequestID", null),&#13;
  XMLELEMENT("Universe", null),&#13;
  XMLAGG(XMLELEMENT("Request", &#13;
    XMLELEMENT("RequestType",'ReutersDSS_Intraday_Pricing'),&#13;
    XMLELEMENT("Vendor",'REUTERS'),&#13;
    XMLELEMENT("TableType",'ISSU'),&#13;
    XMLELEMENT("Identifier",VND_RQST_XREF_ID),&#13;
    XMLELEMENT("IDContext",'RIC'),&#13;
    XMLELEMENT("OID",VND_RQST_OID),&#13;
    XMLELEMENT("UserDefinedIdentifier",trn_id))&#13;
  )&#13;
)&#13;
FROM ft_t_vreq where trn_id = ?</stringValue>
<type>CONSTANT</type>
</item>
<item id="138" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="139">result[0]</name>
<stringValue id="140">RicXml</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="141" type="java.util.HashSet">
<item id="142" type="com.j2fe.workflow.definition.Transition">
<name id="143">goto-next</name>
<source id="144">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="145">Create VREQ</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="146">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="147" type="java.util.HashSet">
<item id="148" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="149">statements</name>
<objectValue id="150" type="java.lang.String">import java.text.SimpleDateFormat;&#13;
import java.util.Date;&#13;
import org.xml.sax.Attributes;&#13;
import org.xml.sax.helpers.DefaultHandler;&#13;
import java.util.HashSet;&#13;
import java.util.Set;&#13;
import javax.xml.parsers.ParserConfigurationException;&#13;
import javax.xml.parsers.SAXParser;&#13;
import javax.xml.parsers.SAXParserFactory;&#13;
import java.sql.Connection;&#13;
import java.sql.DriverManager;&#13;
import java.sql.SQLException;&#13;
import java.sql.Statement;&#13;
import java.util.Iterator;&#13;
import java.util.Properties;&#13;
import org.springframework.jdbc.core.JdbcTemplate;&#13;
&#13;
        sdf = new SimpleDateFormat("MM.dd.yy");&#13;
        String requestDate  = sdf.format(new Date())+" " + hours+":"+ minutes +":00";&#13;
        String requestStatus = "REQUESTED";&#13;
        String user = "admin";&#13;
        String vendorRequestActionType = "DSSIntraday_Pricing";&#13;
        String requestType = "ReutersDSS_Intraday_Pricing";&#13;
        &#13;
        String sqlInsert = "Insert into FT_T_VREQ (VND_RQST_OID,VND_RQSTR_ID,VND_RQST_ACTION_TYP,VND_RQST_TMS,VND_RQST_TYP,DATA_SRC_ID,VND_RQST_XREF_TBL_TYP,\n" +&#13;
        "VND_RQST_XREF_ID_CTXT_TYP,VND_RQST_XREF_ID,VND_RQST_STAT_TYP,VND_RQST_STAT_TXT,VND_RQST_CORR_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,TRN_ID,\n" +&#13;
        "USR_RQST_ID,PHYSICAL_RQST_IND,VENDOR_ID,VND_RQST_DATA_TYP,BASIC_VND_RQST_OID,VND_RESP_FILE_NME,MSG_CNT,VND_SRVC_NME,\n" +&#13;
        "VND_CHAIN_RQST_IND,VND_RQST_FILE_NME,PRNT_VND_RQST_OID,VND_RESP_FILE_CORR_TXT,MSTP_OID,VRSC_OID)\n" +&#13;
        "select new_oid(),'admin','"+vendorRequestActionType+"',to_date('"+requestDate+"','MM.DD.RR HH24:MI:SS'),'"+requestType+"',\n" +&#13;
        "'REUTERS','ISSU','RIC',iss_id,'"+requestStatus+"',null,null,sysdate,\n" +&#13;
        "'"+user+"','"+trnId+"',null,'Y',null,null,null,'"+filePattern+"',null,null,null,null,null,null,null,null ";&#13;
&#13;
    JdbcTemplate jt = new JdbcTemplate(dataSource);&#13;
        jt.update(sqlInsert + sqlSelect);&#13;
&#13;
</objectValue>
<type>CONSTANT</type>
</item>
<item id="151" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="152">variables["dataSource"]</name>
<stringValue id="153">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="154" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="155">variables["filePattern"]</name>
<stringValue id="156">filePattern</stringValue>
<type>VARIABLE</type>
</item>
<item id="157" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="158">variables["filePattern"]</name>
<stringValue id="159">filePattern</stringValue>
<type>VARIABLE</type>
</item>
<item id="160" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="161">variables["hours"]</name>
<stringValue id="162">Hours</stringValue>
<type>VARIABLE</type>
</item>
<item id="163" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="164">["minutes"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="165">variables["minutes"]</name>
<stringValue id="166">Minutes</stringValue>
<type>VARIABLE</type>
</item>
<item id="167" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="168">variables["request"]</name>
<stringValue id="169">Message</stringValue>
<type>VARIABLE</type>
</item>
<item id="170" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="171">variables["sqlSelect"]</name>
<stringValue id="172">Sql</stringValue>
<type>VARIABLE</type>
</item>
<item id="173" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="174">variables["trnId"]</name>
<stringValue id="175">TrnId</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="176" type="java.util.HashSet">
<item id="177" type="com.j2fe.workflow.definition.Transition">
<name id="178">goto-next</name>
<source id="179">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="180">Create Transaction</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateTransaction</nodeHandler>
<nodeHandlerClass id="181">com.j2fe.streetlamp.activities.CreateTransaction</nodeHandlerClass>
<parameters id="182" type="java.util.HashSet">
<item id="183" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="184">flushImmediate</name>
<objectValue id="185" type="java.lang.Boolean">true</objectValue>
<type>CONSTANT</type>
</item>
<item id="186" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="187">jobId</name>
<stringValue id="188">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="189" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="190">transactionId</name>
<stringValue id="191">TrnId</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="192" type="java.util.HashSet">
<item id="193" type="com.j2fe.workflow.definition.Transition">
<name id="194">goto-next</name>
<source id="195">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="196">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="197">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="198" type="java.util.HashSet">
<item id="199" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="200">file</name>
<objectValue id="201" type="java.net.URI">RSURequestSchedule</objectValue>
<type>CONSTANT</type>
</item>
<item id="202" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="203">flushImmediate</name>
<objectValue idref="185"/>
<type>CONSTANT</type>
</item>
<item id="204" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="205">jobId</name>
<stringValue id="206">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="207" type="java.util.HashSet">
<item id="208" type="com.j2fe.workflow.definition.Transition">
<name id="209">false</name>
<source id="210">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="211">Is Sql Null?</name>
<nodeHandler>com.j2fe.general.activities.IsNull</nodeHandler>
<nodeHandlerClass id="212">com.j2fe.general.activities.IsNull</nodeHandlerClass>
<parameters id="213" type="java.util.HashSet">
<item id="214" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="215">input</name>
<stringValue id="216">Sql</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="217" type="java.util.HashSet">
<item id="218" type="com.j2fe.workflow.definition.Transition">
<name id="219">goto-next</name>
<source id="220">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="221">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="222">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="223" type="java.util.HashSet"/>
<targets id="224" type="java.util.HashSet">
<item idref="218" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="210"/>
</item>
</sources>
<targets id="225" type="java.util.HashSet">
<item idref="208" type="com.j2fe.workflow.definition.Transition"/>
<item id="226" type="com.j2fe.workflow.definition.Transition">
<name id="227">true</name>
<source idref="210"/>
<target id="228">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="229">Is GRP_NME null?</name>
<nodeHandler>com.j2fe.general.activities.IsNull</nodeHandler>
<nodeHandlerClass id="230">com.j2fe.general.activities.IsNull</nodeHandlerClass>
<parameters id="231" type="java.util.HashSet">
<item id="232" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="233">input</name>
<stringValue id="234">Issue Group Name</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="235" type="java.util.HashSet">
<item idref="226" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="236" type="java.util.HashSet">
<item id="237" type="com.j2fe.workflow.definition.Transition">
<name id="238">false</name>
<source idref="228"/>
<target id="239">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="240">Generate SQL Select</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="241">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="242" type="java.util.HashSet">
<item id="243" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="244">statements</name>
<stringValue id="245">String[] grps = grpNme.split(",");&#13;
String grpStr = "'";&#13;
for(int i =0;i&lt;grps.length-1;i++) {&#13;
	grpStr+=grps[i]+"','";&#13;
}&#13;
grpStr+=grps[grps.length-1]+"'";&#13;
&#13;
String sqlStr = "from ft_t_isid isid where isid.id_ctxt_typ='RIC' " +&#13;
" and isid.start_tms &lt; sysdate and (isid.end_tms &gt; sysdate or isid.end_tms is null) " +&#13;
" and isid_oid in  ( " +&#13;
" select isgp.isid_oid from ft_t_isgr isgr, ft_t_isgp isgp " +&#13;
" where isgr.iss_grp_oid = isgp.prnt_iss_grp_oid " +&#13;
" and isgr.grp_nme in (" +grpStr + ") " +&#13;
" and isgr.grp_purp_typ='REQUEST' " +&#13;
" and isgr.start_tms &lt; sysdate and (isgr.end_tms &gt; sysdate or isgr.end_tms is null) " +&#13;
" and isgp.start_tms &lt; sysdate and (isgp.end_tms &gt; sysdate or isgp.end_tms is null) " +&#13;
" and isgp.data_stat_typ='ACTIVE')";</stringValue>
<type>CONSTANT</type>
</item>
<item id="246" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="247">variables["grpNme"]</name>
<stringValue id="248">Issue Group Name</stringValue>
<type>VARIABLE</type>
</item>
<item id="249" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="250">variables["sqlStr"]</name>
<stringValue id="251">Sql</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="252" type="java.util.HashSet">
<item idref="237" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="253" type="java.util.HashSet">
<item id="254" type="com.j2fe.workflow.definition.Transition">
<name id="255">goto-next</name>
<source idref="239"/>
<target idref="195"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item id="256" type="com.j2fe.workflow.definition.Transition">
<name id="257">true</name>
<source idref="228"/>
<target idref="3"/>
</item>
</targets>
<type>XORSPLIT</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="195"/>
</item>
<item idref="254" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="258" type="java.util.HashSet">
<item idref="193" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="179"/>
</item>
</sources>
<targets id="259" type="java.util.HashSet">
<item idref="177" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="144"/>
</item>
</sources>
<targets id="260" type="java.util.HashSet">
<item idref="142" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="125"/>
</item>
</sources>
<targets id="261" type="java.util.HashSet">
<item id="262" type="com.j2fe.workflow.definition.Transition">
<name id="263">nothing-found</name>
<source idref="125"/>
<target idref="29"/>
</item>
<item idref="123" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="103"/>
</item>
</sources>
<targets id="264" type="java.util.HashSet">
<item idref="101" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="90"/>
</item>
</sources>
<targets id="265" type="java.util.HashSet">
<item idref="88" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="77"/>
</item>
</sources>
<targets id="266" type="java.util.HashSet">
<item idref="75" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="39"/>
</item>
</sources>
<targets id="267" type="java.util.HashSet">
<item idref="37" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="29"/>
</item>
<item idref="262" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="268" type="java.util.HashSet">
<item idref="27" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="19"/>
</item>
</sources>
<targets id="269" type="java.util.HashSet">
<item idref="17" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="270" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
<item idref="256" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="271" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="272">Custom/Reuters</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="273">CBA_GC_OWN</lastChangeUser>
<lastUpdate id="274">2018-04-04T23:22:55.000+1000</lastUpdate>
<name id="275">ReutersRequestReply</name>
<optimize>true</optimize>
<parameter id="276" type="java.util.HashMap">
<entry>
<key id="277" type="java.lang.String">Hours</key>
<value id="278" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="279">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="280">In HH format. Example: 17</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="281" type="java.lang.String">Issue Group Name</key>
<value id="282" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="283">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="284" type="java.lang.String">MaxRequestsPerFile</key>
<value id="285" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="286">java.lang.Long</className>
<clazz>java.lang.Long</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="287" type="java.lang.String">Minutes</key>
<value id="288" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="289">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="290">In MI format. Example: 08</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="291" type="java.lang.String">ReutersDSSInputListName</key>
<value id="292" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="293">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="294" type="java.lang.String">ReutersDSSReportTemplateName</key>
<value id="295" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="296">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="297" type="java.lang.String">ReutersDSSScheduleName</key>
<value id="298" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="299">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="300" type="java.lang.String">Sql</key>
<value id="301" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="302">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="303" type="java.lang.String">UpdateExpired</key>
<value id="304" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="305">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="306" type="java.lang.String">filePattern</key>
<value id="307" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="308">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="309" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="220"/>
<status>RELEASED</status>
<variables id="310" type="java.util.HashMap">
<entry>
<key id="311" type="java.lang.String">Hours</key>
<value id="312" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="313">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="314">In HH format. Example: 17</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="315" type="java.lang.String">Issue Group Name</key>
<value id="316" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="317">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="318" type="java.lang.String">MaxRequestsPerFile</key>
<value id="319" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="320">java.lang.Long</className>
<clazz>java.lang.Long</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="321" type="java.lang.String">Minutes</key>
<value id="322" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="323">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="324">In MI format. Example: 08</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="325" type="java.lang.String">ReutersDSSInputListName</key>
<value id="326" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="327">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="328" type="java.lang.String">ReutersDSSReportTemplateName</key>
<value id="329" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="330">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="331" type="java.lang.String">Siemens_ReutersDSS_Intraday_Pricing</value>
</value>
</entry>
<entry>
<key id="332" type="java.lang.String">ReutersDSSScheduleName</key>
<value id="333" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="334">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="335" type="java.lang.String">Sql</key>
<value id="336" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="337">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="338" type="java.lang.String">UpdateExpired</key>
<value id="339" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="340">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="185"/>
</value>
</entry>
<entry>
<key id="341" type="java.lang.String">filePattern</key>
<value id="342" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="343">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>4</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
