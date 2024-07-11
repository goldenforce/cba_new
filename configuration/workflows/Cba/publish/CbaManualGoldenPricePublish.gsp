<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.16">
<package-comment/>
<businessobject displayString="6 - 8.7.1.01" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>false</clustered>
<comment id="1">8.7.1.01</comment>
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
<name id="19">Email</name>
<nodeHandler>com.j2fe.general.activities.EMAIL</nodeHandler>
<nodeHandlerClass id="20">com.j2fe.general.activities.EMAIL</nodeHandlerClass>
<parameters id="21" type="java.util.HashSet">
<item id="22" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="23">emailText</name>
<stringValue id="24">msg</stringValue>
<type>VARIABLE</type>
</item>
<item id="25" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="26">from</name>
<stringValue id="27">no-reply@thegoldensource.com</stringValue>
<type>CONSTANT</type>
</item>
<item id="28" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="29">recipients</name>
<stringValue id="30">emailIds</stringValue>
<type>VARIABLE</type>
</item>
<item id="31" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="32">session</name>
<stringValue id="33">email/session</stringValue>
<type>REFERENCE</type>
</item>
<item id="34" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="35">subject</name>
<stringValue id="36">Published Manual Prices</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="37" type="java.util.HashSet">
<item id="38" type="com.j2fe.workflow.definition.Transition">
<name id="39">goto-next</name>
<source id="40">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="41">Bean Shell Script (Standard) #2</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="42">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="43" type="java.util.HashSet">
<item id="44" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="45">statements</name>
<stringValue id="46">import java.io.*;&#13;
String str="";&#13;
for(int i=0;i&lt;ResultList.length;i++)&#13;
str=str+" Manual Price: "+ResultList[i][0]+" "+ResultList[i][1]+" "+ResultList[i][2]+" is published to MRU.";</stringValue>
<type>CONSTANT</type>
</item>
<item id="47" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="48">variables["ResultList"]</name>
<stringValue id="49">ResultList</stringValue>
<type>VARIABLE</type>
</item>
<item id="50" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="51">variables["str"]</name>
<stringValue id="52">msg</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="53" type="java.util.HashSet">
<item id="54" type="com.j2fe.workflow.definition.Transition">
<name id="55">goto-next</name>
<source id="56">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="57">Database Select (Standard)</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="58">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="59" type="java.util.HashSet">
<item id="60" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="61">database</name>
<stringValue id="62">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="63" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="64">[0]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="65">indexedParameters[0]</name>
<stringValue id="66">pPreviousTokenId</stringValue>
<type>VARIABLE</type>
</item>
<item id="67" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="68">indexedResult</name>
<stringValue id="69">ResultList</stringValue>
<type>VARIABLE</type>
</item>
<item id="70" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="71">querySQL</name>
<stringValue id="72">select issu.pref_iss_nme,gpcs.prc_typ,gpcs.UNIT_CPRC &#13;
from FT_T_GPCS gpcs, FT_T_ISSU issu &#13;
where gpcs.instr_id=issu.instr_id and gpcs_oid = (select main_cross_ref_id from ft_wf_uiwa where token_id = ?)</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="73" type="java.util.HashSet">
<item id="74" type="com.j2fe.workflow.definition.Transition">
<name id="75">nothing-found</name>
<source id="76">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="77">Database Statement (Xor Split)</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="78">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="79" type="java.util.HashSet">
<item id="80" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="81">database</name>
<stringValue id="82">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="83" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="84">[0]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="85">indexedParameters[0]</name>
<stringValue id="86">pPreviousTokenId</stringValue>
<type>VARIABLE</type>
</item>
<item id="87" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="88">querySQL</name>
<stringValue id="89">vSqlQuery</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="90" type="java.util.HashSet">
<item id="91" type="com.j2fe.workflow.definition.Transition">
<name id="92">goto-next</name>
<source id="93">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="94">Bean Shell Script (Standard)</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="95">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="96" type="java.util.HashSet">
<item id="97" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="98">statements</name>
<stringValue id="99">import java.sql.Connection;&#13;
import java.lang.String;&#13;
import java.sql.PreparedStatement;&#13;
import java.sql.ResultSet;&#13;
import com.j2fe.misc.ResourceUtils;&#13;
&#13;
Connection conn = null; &#13;
PreparedStatement stmt = null;&#13;
ResultSet rset = null;&#13;
String sqlQuery=null;&#13;
&#13;
try&#13;
{&#13;
                conn = datasource.getConnection();&#13;
                stmt = conn.prepareStatement("SELECT query_txt FROM ft_cfg_qrdf WHERE query_nme = ?");&#13;
                stmt.setString(1, extractionQueryName);&#13;
                rset = stmt.executeQuery();&#13;
                while(rset .next())&#13;
                {&#13;
                                java.sql.Clob clobRst = rset.getClob("query_txt");&#13;
                                sqlQuery =  clobRst.getSubString(1, (int)clobRst.length());&#13;
                }&#13;
}&#13;
finally&#13;
{&#13;
                ResourceUtils.sql.SafeClose(rset);&#13;
                ResourceUtils.sql.SafeClose(stmt);&#13;
                ResourceUtils.sql.SafeClose(conn);&#13;
}&#13;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="100" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="101">variables["datasource"]</name>
<stringValue id="102">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="103" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="104">["extractionQueryName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="105">variables["extractionQueryName"]</name>
<stringValue id="106">pQueryName</stringValue>
<type>VARIABLE</type>
</item>
<item id="107" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="108">variables["sqlQuery"]</name>
<stringValue id="109">vSqlQuery</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="110" type="java.util.HashSet">
<item id="111" type="com.j2fe.workflow.definition.Transition">
<name id="112">goto-next</name>
<source id="113">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="114">Fetch email Id's</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="115">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="116" type="java.util.HashSet">
<item id="117" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="118">database</name>
<stringValue id="119">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="120" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="121">firstColumnsResult</name>
<stringValue id="122">emailIds</stringValue>
<type>VARIABLE</type>
</item>
<item id="123" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="124">querySQL</name>
<stringValue id="125">select EMAIL_ID from FT_T_ISG1 where ISS_GRP_OID='MAKERUSER'</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="126" type="java.util.HashSet">
<item id="127" type="com.j2fe.workflow.definition.Transition">
<name id="128">goto-next</name>
<source id="129">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="130">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="131">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="132" type="java.util.HashSet">
<item id="133" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="134">jobId</name>
<stringValue id="135">JobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="136" type="java.util.HashSet">
<item id="137" type="com.j2fe.workflow.definition.Transition">
<name id="138">goto-next</name>
<source id="139">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="140">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="141">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="142" type="java.util.HashSet"/>
<targets id="143" type="java.util.HashSet">
<item idref="137" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="129"/>
</item>
</sources>
<targets id="144" type="java.util.HashSet">
<item idref="127" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="113"/>
</item>
</sources>
<targets id="145" type="java.util.HashSet">
<item idref="111" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="93"/>
</item>
</sources>
<targets id="146" type="java.util.HashSet">
<item idref="91" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="76"/>
</item>
</sources>
<targets id="147" type="java.util.HashSet">
<item idref="74" type="com.j2fe.workflow.definition.Transition"/>
<item id="148" type="com.j2fe.workflow.definition.Transition">
<name id="149">rows-found</name>
<source idref="76"/>
<target idref="56"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="56"/>
</item>
<item idref="148" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="150" type="java.util.HashSet">
<item idref="54" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="40"/>
</item>
</sources>
<targets id="151" type="java.util.HashSet">
<item idref="38" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="18"/>
</item>
</sources>
<targets id="152" type="java.util.HashSet">
<item idref="16" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="8"/>
</item>
</sources>
<targets id="153" type="java.util.HashSet">
<item idref="6" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
</sources>
<targets id="154" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="155">Cba/publish</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="156">user1</lastChangeUser>
<lastUpdate id="157">2018-05-14T19:08:43.000+1000</lastUpdate>
<name id="158">CbaManualGoldenPricePublish</name>
<optimize>true</optimize>
<parameter id="159" type="java.util.HashMap">
<entry>
<key id="160" type="java.lang.String">pPreviousTokenId</key>
<value id="161" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="162">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="163" type="java.lang.String">pQueryName</key>
<value id="164" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="165">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="166" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="139"/>
<status>RELEASED</status>
<variables id="167" type="java.util.HashMap">
<entry>
<key id="168" type="java.lang.String">pPreviousTokenId</key>
<value id="169" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="170">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>true</persistent>
</value>
</entry>
<entry>
<key id="171" type="java.lang.String">pQueryName</key>
<value id="172" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="173">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="174" type="java.lang.String">pub_CBA_Manual_Golden_Price</value>
</value>
</entry>
</variables>
<version>6</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
