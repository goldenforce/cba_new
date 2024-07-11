<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.15">
<package-comment/>
<businessobject displayString="12 - Close Connection" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>false</clustered>
<comment id="1">Close Connection</comment>
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
<name id="17">nothing-found</name>
<source id="18">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="19">Database Statement (Xor Split)</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="20">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="21" type="java.util.HashSet">
<item id="22" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="23">database</name>
<stringValue id="24">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="25" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="26">[0]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="27">indexedParameters[0]</name>
<stringValue id="28">pIssueGroup</stringValue>
<type>VARIABLE</type>
</item>
<item id="29" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="30">[1]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="31">indexedParameters[1]</name>
<stringValue id="32">pActionType</stringValue>
<type>VARIABLE</type>
</item>
<item id="33" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="34">[2]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="35">indexedParameters[2]</name>
<stringValue id="36">pBatchName</stringValue>
<type>VARIABLE</type>
</item>
<item id="37" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="38">[3]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="39">indexedParameters[3]</name>
<stringValue id="40">pProcessingDate</stringValue>
<type>VARIABLE</type>
</item>
<item id="41" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="42">querySQL</name>
<stringValue id="43">vSqlQuery</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="44" type="java.util.HashSet">
<item id="45" type="com.j2fe.workflow.definition.Transition">
<name id="46">goto-next</name>
<source id="47">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="48">get query from DB</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="49">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="50" type="java.util.HashSet">
<item id="51" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="52">statements</name>
<objectValue id="53" type="java.lang.String"> &#13;
   &#13;
   import java.sql.Connection;&#13;
import java.lang.String;&#13;
import java.sql.PreparedStatement;&#13;
import java.sql.ResultSet;&#13;
import org.springframework.jdbc.datasource.DataSourceUtils; &#13;
import com.j2fe.misc.ResourceUtils;&#13;
Connection conn = null; &#13;
PreparedStatement stmt = null;&#13;
ResultSet rset = null; &#13;
try&#13;
{&#13;
                conn = datasource.getConnection();&#13;
                stmt = conn.prepareStatement("SELECT query_txt FROM ft_cfg_qrdf WHERE query_nme = ?");&#13;
                stmt.setString(1, extractionQueryName);&#13;
                rset = stmt.executeQuery();&#13;
                while(rset.next())&#13;
                {&#13;
                                java.sql.Clob clobRst = rset.getClob("query_txt");&#13;
                                sqlQuery =  clobRst.getSubString(1, (int)clobRst.length());&#13;
                }&#13;
} &#13;
finally&#13;
{&#13;
                ResourceUtils.sql.SafeClose(rset);&#13;
                ResourceUtils.sql.SafeClose(stmt);&#13;
                ResourceUtils.sql.SafeClose(conn);&#13;
} &#13;
&#13;
</objectValue>
<type>CONSTANT</type>
</item>
<item id="54" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="55">variables["datasource"]</name>
<stringValue id="56">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="57" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="58">variables["extractionQueryName"]</name>
<stringValue id="59">pQueryName</stringValue>
<type>VARIABLE</type>
</item>
<item id="60" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="61">variables["sqlQuery"]</name>
<stringValue id="62">vSqlQuery</stringValue>
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
<name id="67">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="68">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="69" type="java.util.HashSet">
<item id="70" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="71">jobId</name>
<stringValue id="72">JobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="73" type="java.util.HashSet">
<item id="74" type="com.j2fe.workflow.definition.Transition">
<name id="75">goto-next</name>
<source id="76">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="77">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="78">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="79" type="java.util.HashSet"/>
<targets id="80" type="java.util.HashSet">
<item idref="74" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="66"/>
</item>
</sources>
<targets id="81" type="java.util.HashSet">
<item idref="64" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="47"/>
</item>
</sources>
<targets id="82" type="java.util.HashSet">
<item idref="45" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="18"/>
</item>
</sources>
<targets id="83" type="java.util.HashSet">
<item idref="16" type="com.j2fe.workflow.definition.Transition"/>
<item id="84" type="com.j2fe.workflow.definition.Transition">
<name id="85">rows-found</name>
<source idref="18"/>
<target idref="8"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="8"/>
</item>
<item idref="84" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="86" type="java.util.HashSet">
<item idref="6" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
</sources>
<targets id="87" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="88">Cba/publish</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="89">user1</lastChangeUser>
<lastUpdate id="90">2018-05-14T20:02:55.000+1000</lastUpdate>
<name id="91">CbaMruPublish_MaturityDate</name>
<optimize>true</optimize>
<parameter id="92" type="java.util.HashMap">
<entry>
<key id="93" type="java.lang.String">pActionType</key>
<value id="94" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="95">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="96">Action Type</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="97" type="java.lang.String">pBatchName</key>
<value id="98" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="99">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="100">REuters Schedule Na\me</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="101" type="java.lang.String">pIssueGroup</key>
<value id="102" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="103">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="104">Group Name</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="105" type="java.lang.String">pProcessingDate</key>
<value id="106" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="107">java.util.Date</className>
<clazz>java.util.Date</clazz>
<description id="108">Processing date</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="109" type="java.lang.String">pQueryName</key>
<value id="110" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="111">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="112">Query Name for Publishing</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="113" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="76"/>
<status>RELEASED</status>
<variables id="114" type="java.util.HashMap">
<entry>
<key id="115" type="java.lang.String">pActionType</key>
<value id="116" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="117">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="118">Action Type</description>
<persistent>true</persistent>
<value id="119" type="java.lang.String">I</value>
</value>
</entry>
<entry>
<key id="120" type="java.lang.String">pBatchName</key>
<value id="121" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="122">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="123">REuters Schedule Na\me</description>
<persistent>true</persistent>
<value id="124" type="java.lang.String">SYD_MAT_DSS_1215_INTRDAY</value>
</value>
</entry>
<entry>
<key id="125" type="java.lang.String">pIssueGroup</key>
<value id="126" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="127">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="128">Group Name</description>
<persistent>true</persistent>
<value id="129" type="java.lang.String">SYD_MAT_DSS_1215_INTRDAY</value>
</value>
</entry>
<entry>
<key id="130" type="java.lang.String">pProcessingDate</key>
<value id="131" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="132">java.util.Date</className>
<clazz>java.util.Date</clazz>
<description id="133">Processing date</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="134" type="java.lang.String">pQueryName</key>
<value id="135" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="136">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="137">Query Name for Publishing</description>
<persistent>true</persistent>
<value id="138" type="java.lang.String">pub_CBA_CollectMaturityDate</value>
</value>
</entry>
</variables>
<version>12</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
