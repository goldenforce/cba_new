<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.15">
<package-comment/>
<businessobject displayString="14 - Multiple Instrument publish" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>false</clustered>
<comment id="1">Multiple Instrument publish</comment>
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
<name id="17">end-loop</name>
<source id="18">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="19">For Loop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.ForEach</nodeHandler>
<nodeHandlerClass id="20">com.j2fe.workflow.handler.impl.ForEach</nodeHandlerClass>
<parameters id="21" type="java.util.HashSet">
<item id="22" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="23">counter</name>
<stringValue id="24">Counter</stringValue>
<type>VARIABLE</type>
</item>
<item id="25" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="26">counter</name>
<stringValue id="27">Counter</stringValue>
<type>VARIABLE</type>
</item>
<item id="28" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="29">input</name>
<stringValue id="30">instruments</stringValue>
<type>VARIABLE</type>
</item>
<item id="31" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="32">output</name>
<stringValue id="33">Output</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="34" type="java.util.HashSet">
<item id="35" type="com.j2fe.workflow.definition.Transition">
<name id="36">ToSplit</name>
<source id="37">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="38">Automatically generated</description>
<directJoin>false</directJoin>
<name id="39">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="40">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="41" type="java.util.HashSet">
<item id="42" type="com.j2fe.workflow.definition.Transition">
<name id="43">goto-next</name>
<source id="44">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="45">Bean Shell Script (Standard)</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="46">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="47" type="java.util.HashSet">
<item id="48" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="49">statements</name>
<objectValue id="50" type="java.lang.String"> &#13;
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
<item id="51" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="52">variables["datasource"]</name>
<stringValue id="53">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="54" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="55">variables["extractionQueryName"]</name>
<stringValue id="56">queryForExecutionn</stringValue>
<type>VARIABLE</type>
</item>
<item id="57" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="58">variables["sqlQuery"]</name>
<stringValue id="59">sqlQuery</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="60" type="java.util.HashSet">
<item id="61" type="com.j2fe.workflow.definition.Transition">
<name id="62">rows-found</name>
<source id="63">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="64">Database Select (Xor Split)</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="65">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="66" type="java.util.HashSet">
<item id="67" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="68">database</name>
<stringValue id="69">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="70" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="71">firstColumnsResult</name>
<stringValue id="72">instruments</stringValue>
<type>VARIABLE</type>
</item>
<item id="73" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="74">querySQL</name>
<stringValue id="75">publishingInstruments</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="76" type="java.util.HashSet">
<item id="77" type="com.j2fe.workflow.definition.Transition">
<name id="78">goto-next</name>
<source id="79">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="80">Bean Shell Script (Standard) #2</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="81">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="82" type="java.util.HashSet">
<item id="83" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="84">statements</name>
<stringValue id="85">&#13;
&#13;
String publishingInstruments  = new String();&#13;
&#13;
	publishingInstruments =  " SELECT DISTINCT ISID.INSTR_ID FROM  FT_t_ISID ISID WHERE  (ISID.END_TMS IS NULL OR ISID.END_TMS &gt; SYSDATE ) AND TRUNC(START_TMS)= TRUNC(SYSDATE) "&#13;
  +" AND ISID.ID_CTXT_TYP = (SELECT CASE WHEN FUT1.LAST_CHG_USR_ID ='CBA:WKF'  "&#13;
  +" THEN 'RIC' WHEN FUT1.LAST_CHG_USR_ID='BB'  THEN 'TICKER' END FROM FT_t_FUT1 FUT1 WHERE (FUT1.END_TMS IS NOT NULL OR FUT1.END_TMS &gt; SYSDATE) "&#13;
  +" AND FUT1.TICKER_ID IN (" + rics + ") AND ROWNUM = 1) AND ISID.ISS_ID "&#13;
   +" IN  (select DISTINCT case when last_chg_usr_id='CBA:WKF' THEN TRIM(FUT_CHAIN)  when  last_chg_usr_id='BB' then  "&#13;
   +" SUBSTR( FUT_CHAIN,0,4) END  FROM FT_t_FUT1 WHERE (END_TMS IS NOT NULL OR TRUNC(END_TMS)=TRUNC(  SYSDATE) ) "&#13;
   +" AND TICKER_ID IN (" + rics + ")) AND ISID.ISS_ID NOT IN ( " + rics + ") " ;&#13;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="86" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="87">variables["publishingInstruments"]</name>
<stringValue id="88">publishingInstruments</stringValue>
<type>VARIABLE</type>
</item>
<item id="89" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="90">variables["rics"]</name>
<stringValue id="91">IssId</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="92" type="java.util.HashSet">
<item id="93" type="com.j2fe.workflow.definition.Transition">
<name id="94">goto-next</name>
<source id="95">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="96">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="97">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="98" type="java.util.HashSet">
<item id="99" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="100">jobId</name>
<stringValue id="101">JobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="102" type="java.util.HashSet">
<item id="103" type="com.j2fe.workflow.definition.Transition">
<name id="104">goto-next</name>
<source id="105">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="106">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="107">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="108" type="java.util.HashSet"/>
<targets id="109" type="java.util.HashSet">
<item idref="103" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="95"/>
</item>
</sources>
<targets id="110" type="java.util.HashSet">
<item idref="93" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="79"/>
</item>
</sources>
<targets id="111" type="java.util.HashSet">
<item idref="77" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="63"/>
</item>
</sources>
<targets id="112" type="java.util.HashSet">
<item id="113" type="com.j2fe.workflow.definition.Transition">
<name id="114">nothing-found</name>
<source idref="63"/>
<target idref="8"/>
</item>
<item idref="61" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="44"/>
</item>
</sources>
<targets id="115" type="java.util.HashSet">
<item idref="42" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="37"/>
</item>
<item id="116" type="com.j2fe.workflow.definition.Transition">
<name id="117">goto-next</name>
<source id="118">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="119">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="120">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="121" type="java.util.HashSet">
<item id="122" type="com.j2fe.workflow.definition.Transition">
<name id="123">goto-next</name>
<source id="124">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="125">Database Statement (Standard)</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="126">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="127" type="java.util.HashSet">
<item id="128" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="129">database</name>
<stringValue id="130">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="131" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="132">indexedParameters</name>
<stringValue id="133">Output</stringValue>
<type>VARIABLE</type>
</item>
<item id="134" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="135">querySQL</name>
<stringValue id="136">sqlQuery</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="137" type="java.util.HashSet">
<item id="138" type="com.j2fe.workflow.definition.Transition">
<name id="139">loop</name>
<source idref="18"/>
<target idref="124"/>
</item>
</sources>
<targets id="140" type="java.util.HashSet">
<item idref="122" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="118"/>
</item>
</sources>
<targets id="141" type="java.util.HashSet">
<item idref="116" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="37"/>
</item>
</sources>
<targets id="142" type="java.util.HashSet">
<item idref="35" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="18"/>
</item>
</sources>
<targets id="143" type="java.util.HashSet">
<item idref="16" type="com.j2fe.workflow.definition.Transition"/>
<item idref="138" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="8"/>
</item>
<item idref="113" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="144" type="java.util.HashSet">
<item idref="6" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
</sources>
<targets id="145" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="146">Cba/publish</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="147">user1</lastChangeUser>
<lastUpdate id="148">2018-05-14T23:23:55.000+1000</lastUpdate>
<name id="149">CbaMruPublish_FutureRolling_SelectInsert</name>
<optimize>true</optimize>
<parameter id="150" type="java.util.HashMap">
<entry>
<key id="151" type="java.lang.String">IssId</key>
<value id="152" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="153">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="154" type="java.lang.String">queryForExecutionn</key>
<value id="155" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="156">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="157" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="105"/>
<status>RELEASED</status>
<variables id="158" type="java.util.HashMap">
<entry>
<key id="159" type="java.lang.String">Counter</key>
<value id="160" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="161">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
<value id="162" type="java.lang.Integer">0</value>
</value>
</entry>
<entry>
<key id="163" type="java.lang.String">IssId</key>
<value id="164" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="165">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="166" type="java.lang.String">queryForExecutionn</key>
<value id="167" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="168">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>true</persistent>
<value id="169" type="java.lang.String">pub_CBA_MRU_FutureRolling</value>
</value>
</entry>
</variables>
<version>14</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
