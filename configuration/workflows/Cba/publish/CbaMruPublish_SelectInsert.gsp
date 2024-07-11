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
<stringValue id="14">vJobId</stringValue>
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
<stringValue id="28">pSnapName</stringValue>
<type>VARIABLE</type>
</item>
<item id="29" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="30">[1]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="31">indexedParameters[1]</name>
<stringValue id="32">pIssueGroup</stringValue>
<type>VARIABLE</type>
</item>
<item id="33" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="34">[2]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="35">indexedParameters[2]</name>
<stringValue id="36">I</stringValue>
<type>CONSTANT</type>
</item>
<item id="37" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="38">[3]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="39">indexedParameters[3]</name>
<stringValue id="40">pPriceDate</stringValue>
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
<name id="48">get query text from db</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="49">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="50" type="java.util.HashSet">
<item id="51" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="52">statements</name>
<stringValue id="53">import java.sql.Connection;&#13;
import java.lang.String;&#13;
import java.sql.PreparedStatement;&#13;
import java.sql.ResultSet;&#13;
import com.j2fe.misc.ResourceUtils;&#13;
&#13;
Connection conn = null; &#13;
PreparedStatement stmt = null;&#13;
ResultSet rset = null;&#13;
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
}</stringValue>
<type>CONSTANT</type>
</item>
<item id="54" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="55">variables["datasource"]</name>
<stringValue id="56">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="57" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="58">["extractionQueryName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="59">variables["extractionQueryName"]</name>
<stringValue id="60">pQueryName</stringValue>
<type>VARIABLE</type>
</item>
<item id="61" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="62">["sqlQuery"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="63">variables["sqlQuery"]</name>
<stringValue id="64">vSqlQuery</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="65" type="java.util.HashSet">
<item id="66" type="com.j2fe.workflow.definition.Transition">
<name id="67">goto-next</name>
<source id="68">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="69">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="70">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="71" type="java.util.HashSet">
<item id="72" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="73">file</name>
<stringValue id="74">vJobName</stringValue>
<type>VARIABLE</type>
</item>
<item id="75" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="76">jobId</name>
<stringValue id="77">vJobId</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="78" type="java.util.HashSet">
<item id="79" type="com.j2fe.workflow.definition.Transition">
<name id="80">goto-next</name>
<source id="81">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="82">create jobName</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="83">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="84" type="java.util.HashSet">
<item id="85" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="86">statements</name>
<stringValue id="87">import java.lang.String;&#13;
&#13;
&#13;
String jobId = "Publishing_" + pIssueGroup;</stringValue>
<type>CONSTANT</type>
</item>
<item id="88" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="89">["jobId"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="90">variables["jobId"]</name>
<stringValue id="91">vJobName</stringValue>
<type>VARIABLE</type>
</item>
<item id="92" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="93">["pIssueGroup"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="94">variables["pIssueGroup"]</name>
<stringValue id="95">pIssueGroup</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="96" type="java.util.HashSet">
<item id="97" type="com.j2fe.workflow.definition.Transition">
<name id="98">goto-next</name>
<source id="99">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="100">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="101">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="102" type="java.util.HashSet"/>
<targets id="103" type="java.util.HashSet">
<item idref="97" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="81"/>
</item>
</sources>
<targets id="104" type="java.util.HashSet">
<item idref="79" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="68"/>
</item>
</sources>
<targets id="105" type="java.util.HashSet">
<item idref="66" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="47"/>
</item>
</sources>
<targets id="106" type="java.util.HashSet">
<item idref="45" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="18"/>
</item>
</sources>
<targets id="107" type="java.util.HashSet">
<item idref="16" type="com.j2fe.workflow.definition.Transition"/>
<item id="108" type="com.j2fe.workflow.definition.Transition">
<name id="109">rows-found</name>
<source idref="18"/>
<target idref="8"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="8"/>
</item>
<item idref="108" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="110" type="java.util.HashSet">
<item idref="6" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
</sources>
<targets id="111" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="112">Cba/publish</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="113">user1</lastChangeUser>
<lastUpdate id="114">2018-05-14T18:52:32.000+1000</lastUpdate>
<name id="115">CbaMruPublish_SelectInsert</name>
<optimize>true</optimize>
<parameter id="116" type="java.util.HashMap">
<entry>
<key id="117" type="java.lang.String">pIssueGroup</key>
<value id="118" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="119">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="120" type="java.lang.String">pPriceDate</key>
<value id="121" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="122">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="123">price tms, format is YYYYMMDD</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="124" type="java.lang.String">pQueryName</key>
<value id="125" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="126">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="127" type="java.lang.String">pSnapName</key>
<value id="128" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="129">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="130">SY, AS, LN, NY</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="131" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="99"/>
<status>RELEASED</status>
<variables id="132" type="java.util.HashMap">
<entry>
<key id="133" type="java.lang.String">pIssueGroup</key>
<value id="134" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="135">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="136" type="java.lang.String">SYD_IRD_Reuters_Elektron_4:45</value>
</value>
</entry>
<entry>
<key id="137" type="java.lang.String">pPriceDate</key>
<value id="138" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="139">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="140">price tms, format is YYYYMMDD</description>
<persistent>false</persistent>
<value id="141" type="java.lang.String">20180101</value>
</value>
</entry>
<entry>
<key id="142" type="java.lang.String">pQueryName</key>
<value id="143" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="144">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="145" type="java.lang.String">pub_CBA_MRU_Prices</value>
</value>
</entry>
<entry>
<key id="146" type="java.lang.String">pSnapName</key>
<value id="147" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="148">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="149">SY, AS, LN, NY</description>
<persistent>false</persistent>
<value id="150" type="java.lang.String">SY</value>
</value>
</entry>
</variables>
<version>6</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
