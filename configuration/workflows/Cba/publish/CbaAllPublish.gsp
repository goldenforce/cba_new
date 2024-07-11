<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.15">
<package-comment/>
<businessobject displayString="5 - 8.7.1.01" type="com.j2fe.workflow.definition.Workflow">
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
<directJoin>true</directJoin>
<name id="9">Synchronize</name>
<nodeHandler>com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandler>
<nodeHandlerClass id="10">com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandlerClass>
<sources id="11" type="java.util.HashSet">
<item id="12" type="com.j2fe.workflow.definition.Transition">
<name id="13">goto-next</name>
<source id="14">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="15">write data to file</name>
<nodeHandler>com.j2fe.general.activities.File</nodeHandler>
<nodeHandlerClass id="16">com.j2fe.general.activities.File</nodeHandlerClass>
<parameters id="17" type="java.util.HashSet">
<item id="18" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="19">append</name>
<stringValue id="20">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="21" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="22">directory</name>
<stringValue id="23">PublishToDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="24" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="25">fileName</name>
<stringValue id="26">FileName</stringValue>
<type>VARIABLE</type>
</item>
<item id="27" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="28">text</name>
<stringValue id="29">row</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="30" type="java.util.HashSet">
<item id="31" type="com.j2fe.workflow.definition.Transition">
<name id="32">goto-next</name>
<source id="33">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>true</directJoin>
<name id="34">For Each Split</name>
<nodeHandler>com.j2fe.workflow.handler.impl.GenericSplit</nodeHandler>
<nodeHandlerClass id="35">com.j2fe.workflow.handler.impl.GenericSplit</nodeHandlerClass>
<parameters id="36" type="java.util.HashSet">
<item id="37" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="38">input</name>
<stringValue id="39">queryResults</stringValue>
<type>VARIABLE</type>
</item>
<item id="40" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="41">output</name>
<stringValue id="42">row</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="43" type="java.util.HashSet">
<item id="44" type="com.j2fe.workflow.definition.Transition">
<name id="45">rows-found</name>
<source id="46">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="47">execute query</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="48">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="49" type="java.util.HashSet">
<item id="50" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="51">database</name>
<stringValue id="52">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="53" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="54">firstColumnsResult</name>
<stringValue id="55">queryResults</stringValue>
<type>VARIABLE</type>
</item>
<item id="56" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="57">querySQL</name>
<stringValue id="58">sqlQuery</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="59" type="java.util.HashSet">
<item id="60" type="com.j2fe.workflow.definition.Transition">
<name id="61">goto-next</name>
<source id="62">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="63">Automatically generated</description>
<directJoin>false</directJoin>
<name id="64">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="65">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="66" type="java.util.HashSet">
<item id="67" type="com.j2fe.workflow.definition.Transition">
<name id="68">PSV</name>
<source id="69">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="70">SwitchCaseSplit</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="71">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="72" type="java.util.HashSet">
<item id="73" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="74">caseItem</name>
<stringValue id="75">FileType</stringValue>
<type>VARIABLE</type>
</item>
<item id="76" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="77">defaultItem</name>
<stringValue id="78">FILETYPE NOT SUPPORTED</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="79" type="java.util.HashSet">
<item id="80" type="com.j2fe.workflow.definition.Transition">
<name id="81">goto-next</name>
<source id="82">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="83">create rml file name</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="84">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="85" type="java.util.HashSet">
<item id="86" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="87">statements</name>
<objectValue id="88" type="java.lang.String">import java.util.Date;&#13;
import java.text.DateFormat;&#13;
import java.text.SimpleDateFormat;&#13;
import java.util.Calendar;&#13;
import java.sql.Connection;&#13;
import java.lang.String;&#13;
import java.sql.Statement;&#13;
import java.sql.ResultSet;&#13;
import org.springframework.jdbc.datasource.DataSourceUtils; &#13;
import java.util.ArrayList;&#13;
import java.util.Arrays;&#13;
import java.util.List;&#13;
&#13;
		// DateFormat dateFormat = new SimpleDateFormat("yyyyMMddhhmmss");&#13;
		Date date = new Date();&#13;
&#13;
		// get business date&#13;
		Date buisnessdate = new Date();&#13;
		Calendar cal = Calendar.getInstance();&#13;
		cal.add(Calendar.DATE, -1);&#13;
		buisnessdate = cal.getTime();&#13;
&#13;
		String fileName = null;&#13;
		String fileID = null;&#13;
&#13;
		String QUERY_NAME_STRING = "&lt;QueryName&gt;";&#13;
		String SYSDATE_STRING_START = "&lt;Sysdate[";&#13;
		String SYSDATE_STRING_END = "]&gt;";&#13;
&#13;
		String BUSINESSDATE_STRING_START = "&lt;Busidate[";&#13;
		String BUSINESSDATE_STRING_END = "]&gt;";&#13;
&#13;
		&#13;
&#13;
// &#13;
if (fileNamePattern != null &amp;&amp; !fileNamePattern.equals("")) {&#13;
&#13;
	// replace &lt;QueryName&gt; with the query's name&#13;
	if (fileNamePattern.contains(QUERY_NAME_STRING)) {&#13;
		int stIndex = fileNamePattern.indexOf(QUERY_NAME_STRING);&#13;
		fileNamePattern = fileNamePattern.substring(0, stIndex) + queryName + fileNamePattern.substring(stIndex +QUERY_NAME_STRING.length(), fileNamePattern.length());&#13;
	}&#13;
	&#13;
	// replace the &lt;Sysdate[...]&gt; with the processing time string&#13;
	if (fileNamePattern.contains(SYSDATE_STRING_START)) {&#13;
		int stIndex = fileNamePattern.indexOf(SYSDATE_STRING_START);&#13;
		int endIndex = fileNamePattern.indexOf(SYSDATE_STRING_END, stIndex);&#13;
		String dtFormatStr = fileNamePattern.substring(stIndex + SYSDATE_STRING_START.length(), endIndex );&#13;
		DateFormat dateFormat = new SimpleDateFormat(dtFormatStr);&#13;
		fileNamePattern = fileNamePattern.substring(0, stIndex) + dateFormat.format(date) + fileNamePattern.substring(endIndex+2, fileNamePattern.length());&#13;
	}&#13;
&#13;
	// replace the &lt;Busidate[...]&gt; with the processing time string&#13;
	if (fileNamePattern.contains(BUSINESSDATE_STRING_START)) {&#13;
		int stIndex = fileNamePattern&#13;
				.indexOf(BUSINESSDATE_STRING_START);&#13;
		int endIndex = fileNamePattern.indexOf(BUSINESSDATE_STRING_END,&#13;
				stIndex);&#13;
		String dtFormatStr = fileNamePattern.substring(stIndex&#13;
				+ BUSINESSDATE_STRING_START.length(), endIndex);&#13;
		DateFormat dateFormat = new SimpleDateFormat(dtFormatStr);&#13;
		fileNamePattern = fileNamePattern.substring(0, stIndex)&#13;
				+ dateFormat.format(buisnessdate)&#13;
				+ fileNamePattern.substring(endIndex + 2,&#13;
						fileNamePattern.length());&#13;
	}&#13;
&#13;
}&#13;
&#13;
if (fileType.equals("PSV") )&#13;
{&#13;
fileName = fileNamePattern + ".psv";&#13;
}&#13;
else if (fileType.equals("RML") )&#13;
{&#13;
fileName = fileNamePattern + ".rml";&#13;
}&#13;
else if (fileType.equals("XML") )&#13;
{&#13;
fileName = fileNamePattern + ".xml";&#13;
}&#13;
else if (fileType.equals("CSV") )&#13;
{&#13;
fileName = fileNamePattern + ".csv";&#13;
}&#13;
&#13;
if (fileType.equals("WSS") )&#13;
{&#13;
fileName = fileNamePattern + ".wl";&#13;
}&#13;
&#13;
&#13;
</objectValue>
<type>CONSTANT</type>
</item>
<item id="89" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="90">variables["datasource"]</name>
<stringValue id="91">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="92" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="93">variables["fileID"]</name>
<stringValue id="94">FileID</stringValue>
<type>VARIABLE</type>
</item>
<item id="95" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="96">variables["fileName"]</name>
<stringValue id="97">FileName</stringValue>
<type>VARIABLE</type>
</item>
<item id="98" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="99">["fileNamePattern"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="100">variables["fileNamePattern"]</name>
<stringValue id="101">PublishToFileNamePattern</stringValue>
<type>VARIABLE</type>
</item>
<item id="102" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="103">["fileType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="104">variables["fileType"]</name>
<stringValue id="105">FileType</stringValue>
<type>VARIABLE</type>
</item>
<item id="106" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="107">["paramOne"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="108">variables["paramOne"]</name>
<stringValue id="109">QueryParameter1</stringValue>
<type>VARIABLE</type>
</item>
<item id="110" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="111">["queryName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="112">variables["queryName"]</name>
<stringValue id="113">ExtractionQueryName</stringValue>
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
<name id="118">get query text from db</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="119">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="120" type="java.util.HashSet">
<item id="121" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="122">statements</name>
<stringValue id="123">import java.sql.Connection;&#13;
import java.lang.String;&#13;
import java.sql.Statement;&#13;
import java.sql.ResultSet;&#13;
import org.springframework.jdbc.datasource.DataSourceUtils; &#13;
&#13;
Connection conn = DataSourceUtils.getConnection(datasource); &#13;
String sqlQuery="";&#13;
Statement stmt = conn.createStatement();&#13;
&#13;
ResultSet rset = stmt.executeQuery("SELECT query_txt FROM ft_cfg_qrdf WHERE query_nme='"+extractionQueryName+"'");&#13;
&#13;
if (true == rset.next()) {&#13;
	java.sql.Clob clobRst = rset.getClob("query_txt");&#13;
	sqlQuery =  clobRst.getSubString(1, (int)clobRst.length()) ;&#13;
}&#13;
&#13;
&#13;
String[] queryParameterArray = new String[]{queryParameter1, queryParameter2, queryParameter3, queryParameter4, queryParameter5};&#13;
for (int i = 0; i &lt; queryParameterArray.length; i ++) {&#13;
	if (queryParameterArray[i] != null) {&#13;
		sqlQuery = sqlQuery.replaceFirst("\\?","'"+queryParameterArray[i]+"'");&#13;
	} else {&#13;
		sqlQuery = sqlQuery.replaceFirst("\\?", "null");&#13;
	}&#13;
}</stringValue>
<type>CONSTANT</type>
</item>
<item id="124" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="125">variables["datasource"]</name>
<stringValue id="126">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="127" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="128">["extractionQueryName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="129">variables["extractionQueryName"]</name>
<stringValue id="130">ExtractionQueryName</stringValue>
<type>VARIABLE</type>
</item>
<item id="131" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="132">["queryParameter1"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="133">variables["queryParameter1"]</name>
<stringValue id="134">QueryParameter1</stringValue>
<type>VARIABLE</type>
</item>
<item id="135" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="136">["queryParameter2"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="137">variables["queryParameter2"]</name>
<stringValue id="138">QueryParameter2</stringValue>
<type>VARIABLE</type>
</item>
<item id="139" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="140">["queryParameter3"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="141">variables["queryParameter3"]</name>
<stringValue id="142">QueryParameter3</stringValue>
<type>VARIABLE</type>
</item>
<item id="143" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="144">["queryParameter4"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="145">variables["queryParameter4"]</name>
<stringValue id="146">QueryParameter4</stringValue>
<type>VARIABLE</type>
</item>
<item id="147" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="148">["queryParameter5"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="149">variables["queryParameter5"]</name>
<stringValue id="150">QueryParameter5</stringValue>
<type>VARIABLE</type>
</item>
<item id="151" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="152">["sqlQuery"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="153">variables["sqlQuery"]</name>
<stringValue id="154">sqlQuery</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="155" type="java.util.HashSet">
<item id="156" type="com.j2fe.workflow.definition.Transition">
<name id="157">goto-next</name>
<source id="158">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="159">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="160">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="161" type="java.util.HashSet"/>
<targets id="162" type="java.util.HashSet">
<item idref="156" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="117"/>
</item>
</sources>
<targets id="163" type="java.util.HashSet">
<item idref="115" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="82"/>
</item>
</sources>
<targets id="164" type="java.util.HashSet">
<item idref="80" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="69"/>
</item>
</sources>
<targets id="165" type="java.util.HashSet">
<item id="166" type="com.j2fe.workflow.definition.Transition">
<name id="167">CSV</name>
<source idref="69"/>
<target id="168">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="169">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="170">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="171" type="java.util.HashSet">
<item idref="166" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="172" type="java.util.HashSet">
<item id="173" type="com.j2fe.workflow.definition.Transition">
<name id="174">ToSplit</name>
<source idref="168"/>
<target id="175">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="176">execute query</name>
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
<name id="183">firstColumnsResult</name>
<stringValue id="184">queryResults</stringValue>
<type>VARIABLE</type>
</item>
<item id="185" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="186">querySQL</name>
<stringValue id="187">sqlQuery</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="188" type="java.util.HashSet">
<item idref="173" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="189" type="java.util.HashSet">
<item id="190" type="com.j2fe.workflow.definition.Transition">
<name id="191">nothing-found</name>
<source idref="175"/>
<target idref="2"/>
</item>
<item id="192" type="com.j2fe.workflow.definition.Transition">
<name id="193">rows-found</name>
<source idref="175"/>
<target id="194">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>true</directJoin>
<name id="195">For Each Split</name>
<nodeHandler>com.j2fe.workflow.handler.impl.GenericSplit</nodeHandler>
<nodeHandlerClass id="196">com.j2fe.workflow.handler.impl.GenericSplit</nodeHandlerClass>
<parameters id="197" type="java.util.HashSet">
<item id="198" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="199">input</name>
<stringValue id="200">queryResults</stringValue>
<type>VARIABLE</type>
</item>
<item id="201" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="202">output</name>
<stringValue id="203">row</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="204" type="java.util.HashSet">
<item idref="192" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="205" type="java.util.HashSet">
<item id="206" type="com.j2fe.workflow.definition.Transition">
<name id="207">goto-next</name>
<source idref="194"/>
<target id="208">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="209">Bean Shell Script (Standard)</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="210">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="211" type="java.util.HashSet">
<item id="212" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="213">statements</name>
<stringValue id="214">	int rowsize = row.length;&#13;
	String split = "" ;&#13;
	StringBuffer reStringbuffer = new StringBuffer();&#13;
&#13;
	if (spliter == null || spliter.equals(""))&#13;
		split = "";&#13;
	else if (spliter.equals("tab"))&#13;
		split = "\t";&#13;
	else&#13;
		split = spliter;&#13;
&#13;
	if (rowsize &gt; 0) {&#13;
		for (int i = 0; i &lt; rowsize - 1; i++) {&#13;
			if (null == row[i])&#13;
				reStringbuffer = reStringbuffer.append("" + split);&#13;
			else&#13;
				reStringbuffer = reStringbuffer.append(row[i] + split);&#13;
		}&#13;
			&#13;
			&#13;
	if (null == row[rowsize - 1])&#13;
		reStringbuffer = reStringbuffer.append("" + split);&#13;
	else&#13;
		reStringbuffer = reStringbuffer.append(row[rowsize - 1]);&#13;
		}&#13;
&#13;
	String outputRow = reStringbuffer.toString();&#13;
&#13;
&#13;
&#13;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="215" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="216">["outputRow"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="217">variables["outputRow"]</name>
<stringValue id="218">outputRow</stringValue>
<type>VARIABLE</type>
</item>
<item id="219" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="220">["row"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="221">variables["row"]</name>
<stringValue id="222">row</stringValue>
<type>VARIABLE</type>
</item>
<item id="223" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="224">variables["spliter"]</name>
<stringValue id="225">Spliter</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="226" type="java.util.HashSet">
<item idref="206" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="227" type="java.util.HashSet">
<item id="228" type="com.j2fe.workflow.definition.Transition">
<name id="229">goto-next</name>
<source idref="208"/>
<target id="230">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="231">write data to file</name>
<nodeHandler>com.j2fe.general.activities.File</nodeHandler>
<nodeHandlerClass id="232">com.j2fe.general.activities.File</nodeHandlerClass>
<parameters id="233" type="java.util.HashSet">
<item id="234" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="235">append</name>
<stringValue id="236">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="237" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="238">directory</name>
<stringValue id="239">PublishToDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="240" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="241">fileName</name>
<stringValue id="242">FileName</stringValue>
<type>VARIABLE</type>
</item>
<item id="243" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="244">text</name>
<stringValue id="245">outputRow</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="246" type="java.util.HashSet">
<item idref="228" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="247" type="java.util.HashSet">
<item id="248" type="com.j2fe.workflow.definition.Transition">
<name id="249">goto-next</name>
<source idref="230"/>
<target id="250">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>true</directJoin>
<name id="251">Synchronize</name>
<nodeHandler>com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandler>
<nodeHandlerClass id="252">com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandlerClass>
<sources id="253" type="java.util.HashSet">
<item idref="248" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="254" type="java.util.HashSet">
<item id="255" type="com.j2fe.workflow.definition.Transition">
<name id="256">goto-next</name>
<source idref="250"/>
<target idref="2"/>
</item>
</targets>
<type>ANDJOIN</type>
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
<type>ANDSPLIT</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="67" type="com.j2fe.workflow.definition.Transition"/>
<item id="257" type="com.j2fe.workflow.definition.Transition">
<name id="258">RML</name>
<source idref="69"/>
<target id="259">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="260">Automatically generated</description>
<directJoin>false</directJoin>
<name id="261">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="262">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="263" type="java.util.HashSet">
<item idref="257" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="264" type="java.util.HashSet">
<item id="265" type="com.j2fe.workflow.definition.Transition">
<name id="266">ToSplit</name>
<source idref="259"/>
<target id="267">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="268">execute query</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="269">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="270" type="java.util.HashSet">
<item id="271" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="272">database</name>
<stringValue id="273">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="274" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="275">indexedResult</name>
<stringValue id="276">queryResults</stringValue>
<type>VARIABLE</type>
</item>
<item id="277" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="278">querySQL</name>
<stringValue id="279">sqlQuery</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="280" type="java.util.HashSet">
<item idref="265" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="281" type="java.util.HashSet">
<item id="282" type="com.j2fe.workflow.definition.Transition">
<name id="283">nothing-found</name>
<source idref="267"/>
<target idref="2"/>
</item>
<item id="284" type="com.j2fe.workflow.definition.Transition">
<name id="285">rows-found</name>
<source idref="267"/>
<target id="286">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>true</directJoin>
<name id="287">For Each Split</name>
<nodeHandler>com.j2fe.workflow.handler.impl.GenericSplit</nodeHandler>
<nodeHandlerClass id="288">com.j2fe.workflow.handler.impl.GenericSplit</nodeHandlerClass>
<parameters id="289" type="java.util.HashSet">
<item id="290" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="291">input</name>
<stringValue id="292">queryResults</stringValue>
<type>VARIABLE</type>
</item>
<item id="293" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="294">output</name>
<stringValue id="295">row</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="296" type="java.util.HashSet">
<item idref="284" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="297" type="java.util.HashSet">
<item id="298" type="com.j2fe.workflow.definition.Transition">
<name id="299">goto-next</name>
<source idref="286"/>
<target id="300">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="301">Bean Shell Script (Standard)</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="302">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="303" type="java.util.HashSet">
<item id="304" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="305">statements</name>
<stringValue id="306">import oracle.sql.CLOB;&#13;
import java.io.Reader;&#13;
import java.io.BufferedReader;&#13;
&#13;
Object[] obj = row;&#13;
CLOB clob = obj[1];&#13;
String reString = null;&#13;
&#13;
	Reader is = clob.getCharacterStream();&#13;
	BufferedReader br = new BufferedReader(is);&#13;
	String s = br.readLine();&#13;
	StringBuffer sb = new StringBuffer();&#13;
	while (s != null) {&#13;
		sb.append(s);&#13;
		s = br.readLine();&#13;
	}&#13;
	reString = sb.toString();&#13;
&#13;
String outputRow = obj[0].toString() + reString;&#13;
&#13;
&#13;
&#13;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="307" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="308">["outputRow"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="309">variables["outputRow"]</name>
<stringValue id="310">outputRow</stringValue>
<type>VARIABLE</type>
</item>
<item id="311" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="312">["row"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="313">variables["row"]</name>
<stringValue id="314">row</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="315" type="java.util.HashSet">
<item idref="298" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="316" type="java.util.HashSet">
<item id="317" type="com.j2fe.workflow.definition.Transition">
<name id="318">goto-next</name>
<source idref="300"/>
<target id="319">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="320">write data to file</name>
<nodeHandler>com.j2fe.general.activities.File</nodeHandler>
<nodeHandlerClass id="321">com.j2fe.general.activities.File</nodeHandlerClass>
<parameters id="322" type="java.util.HashSet">
<item id="323" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="324">append</name>
<stringValue id="325">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="326" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="327">directory</name>
<stringValue id="328">PublishToDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="329" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="330">fileName</name>
<stringValue id="331">FileName</stringValue>
<type>VARIABLE</type>
</item>
<item id="332" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="333">text</name>
<stringValue id="334">outputRow</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="335" type="java.util.HashSet">
<item idref="317" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="336" type="java.util.HashSet">
<item id="337" type="com.j2fe.workflow.definition.Transition">
<name id="338">goto-next</name>
<source idref="319"/>
<target id="339">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>true</directJoin>
<name id="340">Synchronize</name>
<nodeHandler>com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandler>
<nodeHandlerClass id="341">com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandlerClass>
<sources id="342" type="java.util.HashSet">
<item idref="337" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="343" type="java.util.HashSet">
<item id="344" type="com.j2fe.workflow.definition.Transition">
<name id="345">goto-next</name>
<source idref="339"/>
<target idref="2"/>
</item>
</targets>
<type>ANDJOIN</type>
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
<type>ANDSPLIT</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item id="346" type="com.j2fe.workflow.definition.Transition">
<name id="347">WSS</name>
<source idref="69"/>
<target id="348">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="349">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="350">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="351" type="java.util.HashSet">
<item idref="346" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="352" type="java.util.HashSet">
<item id="353" type="com.j2fe.workflow.definition.Transition">
<name id="354">goto-next</name>
<source idref="348"/>
<target id="355">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="356">Execute Query</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="357">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="358" type="java.util.HashSet">
<item id="359" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="360">database</name>
<stringValue id="361">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="362" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="363">firstColumnsResult</name>
<stringValue id="364">queryResults</stringValue>
<type>VARIABLE</type>
</item>
<item id="365" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="366">querySQL</name>
<stringValue id="367">sqlQuery</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="368" type="java.util.HashSet">
<item idref="353" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="369" type="java.util.HashSet">
<item id="370" type="com.j2fe.workflow.definition.Transition">
<name id="371">nothing-found</name>
<source idref="355"/>
<target idref="2"/>
</item>
<item id="372" type="com.j2fe.workflow.definition.Transition">
<name id="373">rows-found</name>
<source idref="355"/>
<target id="374">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>true</directJoin>
<name id="375">For Each Split</name>
<nodeHandler>com.j2fe.workflow.handler.impl.GenericSplit</nodeHandler>
<nodeHandlerClass id="376">com.j2fe.workflow.handler.impl.GenericSplit</nodeHandlerClass>
<parameters id="377" type="java.util.HashSet">
<item id="378" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="379">input</name>
<stringValue id="380">queryResults</stringValue>
<type>VARIABLE</type>
</item>
<item id="381" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="382">output</name>
<stringValue id="383">row</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="384" type="java.util.HashSet">
<item idref="372" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="385" type="java.util.HashSet">
<item id="386" type="com.j2fe.workflow.definition.Transition">
<name id="387">goto-next</name>
<source idref="374"/>
<target id="388">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="389">Bean Shell Script (Standard)</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="390">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="391" type="java.util.HashSet">
<item id="392" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="393">statements</name>
<stringValue id="394">String outputRow = row + " ";&#13;
&#13;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="395" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="396">["outputRow"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="397">variables["outputRow"]</name>
<stringValue id="398">outputRow</stringValue>
<type>VARIABLE</type>
</item>
<item id="399" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="400">["row"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="401">variables["row"]</name>
<stringValue id="402">row</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="403" type="java.util.HashSet">
<item idref="386" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="404" type="java.util.HashSet">
<item id="405" type="com.j2fe.workflow.definition.Transition">
<name id="406">goto-next</name>
<source idref="388"/>
<target id="407">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="408">write data to file</name>
<nodeHandler>com.j2fe.general.activities.File</nodeHandler>
<nodeHandlerClass id="409">com.j2fe.general.activities.File</nodeHandlerClass>
<parameters id="410" type="java.util.HashSet">
<item id="411" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="412">append</name>
<objectValue id="413" type="java.lang.Boolean">true</objectValue>
<type>CONSTANT</type>
</item>
<item id="414" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="415">appendEOFLine</name>
<objectValue idref="413"/>
<type>CONSTANT</type>
</item>
<item id="416" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="417">directory</name>
<stringValue id="418">PublishToDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="419" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="420">fileName</name>
<stringValue id="421">FileName</stringValue>
<type>VARIABLE</type>
</item>
<item id="422" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="423">text</name>
<stringValue id="424">outputRow</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="425" type="java.util.HashSet">
<item idref="405" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="426" type="java.util.HashSet">
<item id="427" type="com.j2fe.workflow.definition.Transition">
<name id="428">goto-next</name>
<source idref="407"/>
<target id="429">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>true</directJoin>
<name id="430">Synchronize</name>
<nodeHandler>com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandler>
<nodeHandlerClass id="431">com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandlerClass>
<sources id="432" type="java.util.HashSet">
<item idref="427" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="433" type="java.util.HashSet">
<item id="434" type="com.j2fe.workflow.definition.Transition">
<name id="435">goto-next</name>
<source idref="429"/>
<target idref="2"/>
</item>
</targets>
<type>ANDJOIN</type>
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
<type>ANDSPLIT</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item id="436" type="com.j2fe.workflow.definition.Transition">
<name id="437">XML</name>
<source idref="69"/>
<target id="438">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="439">execute xml query</name>
<nodeHandler>com.j2fe.general.activities.database.XMLQuery</nodeHandler>
<nodeHandlerClass id="440">com.j2fe.general.activities.database.XMLQuery</nodeHandlerClass>
<parameters id="441" type="java.util.HashSet">
<item id="442" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="443">database</name>
<stringValue id="444">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="445" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="446">querySQL</name>
<stringValue id="447">sqlQuery</stringValue>
<type>VARIABLE</type>
</item>
<item id="448" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="449">result</name>
<stringValue id="450">xmlResult</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="451" type="java.util.HashSet">
<item idref="436" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="452" type="java.util.HashSet">
<item id="453" type="com.j2fe.workflow.definition.Transition">
<name id="454">nothing-found</name>
<source idref="438"/>
<target idref="2"/>
</item>
<item id="455" type="com.j2fe.workflow.definition.Transition">
<name id="456">rows-found</name>
<source idref="438"/>
<target id="457">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="458">write xml to file</name>
<nodeHandler>com.j2fe.general.activities.File</nodeHandler>
<nodeHandlerClass id="459">com.j2fe.general.activities.File</nodeHandlerClass>
<parameters id="460" type="java.util.HashSet">
<item id="461" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="462">append</name>
<stringValue id="463">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="464" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="465">directory</name>
<stringValue id="466">PublishToDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="467" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="468">fileName</name>
<stringValue id="469">FileName</stringValue>
<type>VARIABLE</type>
</item>
<item id="470" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="471">headerLine</name>
<stringValue id="472">&lt;?xml version="1.0" encoding="UTF-8" ?&gt;</stringValue>
<type>CONSTANT</type>
</item>
<item id="473" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="474">text</name>
<stringValue id="475">xmlResult</stringValue>
<type>VARIABLE</type>
<variablePart id="476">[0]</variablePart>
</item>
</parameters>
<sources id="477" type="java.util.HashSet">
<item idref="455" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="478" type="java.util.HashSet">
<item id="479" type="com.j2fe.workflow.definition.Transition">
<name id="480">goto-next</name>
<source idref="457"/>
<target idref="2"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="62"/>
</item>
</sources>
<targets id="481" type="java.util.HashSet">
<item idref="60" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="46"/>
</item>
</sources>
<targets id="482" type="java.util.HashSet">
<item id="483" type="com.j2fe.workflow.definition.Transition">
<name id="484">nothing-found</name>
<source idref="46"/>
<target idref="2"/>
</item>
<item idref="44" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="33"/>
</item>
</sources>
<targets id="485" type="java.util.HashSet">
<item idref="31" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ANDSPLIT</type>
</source>
<target idref="14"/>
</item>
</sources>
<targets id="486" type="java.util.HashSet">
<item idref="12" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="8"/>
</item>
</sources>
<targets id="487" type="java.util.HashSet">
<item idref="6" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ANDJOIN</type>
</source>
<target idref="2"/>
</item>
<item idref="344" type="com.j2fe.workflow.definition.Transition"/>
<item idref="434" type="com.j2fe.workflow.definition.Transition"/>
<item idref="255" type="com.j2fe.workflow.definition.Transition"/>
<item idref="479" type="com.j2fe.workflow.definition.Transition"/>
<item idref="370" type="com.j2fe.workflow.definition.Transition"/>
<item idref="190" type="com.j2fe.workflow.definition.Transition"/>
<item idref="282" type="com.j2fe.workflow.definition.Transition"/>
<item idref="483" type="com.j2fe.workflow.definition.Transition"/>
<item idref="453" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="488" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="489">Cba/publish</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="490">user1</lastChangeUser>
<lastUpdate id="491">2018-05-11T20:25:19.000+1000</lastUpdate>
<name id="492">CbaAllPublish</name>
<optimize>true</optimize>
<parameter id="493" type="java.util.HashMap">
<entry>
<key id="494" type="java.lang.String">ExtractionQueryName</key>
<value id="495" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="496">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="497">This points to FT_CFG_QRDF.QUERY_NME used to identify the SQL used in the extract activity.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="498" type="java.lang.String">FileType</key>
<value id="499" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="500">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="501">Please select one of the following values PSV,XML or RML.
</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="502" type="java.lang.String">PublishToDirectory</key>
<value id="503" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="504">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="505">Absolute Location of the Directory to where the file output will be written to.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="506" type="java.lang.String">PublishToFileNamePattern</key>
<value id="507" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="508">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="509">Specifies the file name pattern that will be used. "&lt;Sysdate[yyyyMMddHHmmss]&gt;" is used to define the format of processing date format.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="510" type="java.lang.String">QueryParameter1</key>
<value id="511" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="512">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="513">The first parameter of the query. Pass blank if there is no such a parameter.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="514" type="java.lang.String">QueryParameter2</key>
<value id="515" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="516">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="517">The 2nd parameter of the query. Pass blank if there is no such a parameter.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="518" type="java.lang.String">QueryParameter3</key>
<value id="519" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="520">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="521">The 3rd parameter of the query. Pass blank if there is no such a parameter.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="522" type="java.lang.String">QueryParameter4</key>
<value id="523" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="524">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<description id="525">The 4th parameter of the query. Pass blank if there is no such a parameter.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="526" type="java.lang.String">QueryParameter5</key>
<value id="527" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="528">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<description id="529">The 5th parameter of the query. Pass blank if there is no such a parameter.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="530" type="java.lang.String">Spliter</key>
<value id="531" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="532">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="533">It is used to indentify the split between the fields in the publishing file</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="534" type="java.lang.String">bulksize</key>
<value id="535" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="536">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="537" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="158"/>
<status>RELEASED</status>
<variables id="538" type="java.util.HashMap">
<entry>
<key id="539" type="java.lang.String">ExtractionQueryName</key>
<value id="540" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="541">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="542">This points to FT_CFG_QRDF.QUERY_NME used to identify the SQL used in the extract activity.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="543" type="java.lang.String">FileType</key>
<value id="544" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="545">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="546">Please select one of the following values PSV,XML or RML.
</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="547" type="java.lang.String">PublishToDirectory</key>
<value id="548" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="549">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="550">Absolute Location of the Directory to where the file output will be written to.</description>
<persistent>false</persistent>
<value id="551" type="java.lang.String">/tmp</value>
</value>
</entry>
<entry>
<key id="552" type="java.lang.String">PublishToFileNamePattern</key>
<value id="553" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="554">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="555">Specifies the file name pattern that will be used. "&lt;Sysdate[yyyyMMddHHmmss]&gt;" is used to define the format of processing date format.</description>
<persistent>false</persistent>
<value id="556" type="java.lang.String">&lt;QueryName&gt;_&lt;Sysdate[yyyyMMddHHmmss]&gt;</value>
</value>
</entry>
<entry>
<key id="557" type="java.lang.String">QueryParameter1</key>
<value id="558" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="559">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="560">The first parameter of the query. Pass blank if there is no such a parameter.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="561" type="java.lang.String">QueryParameter2</key>
<value id="562" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="563">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="564">The 2nd parameter of the query. Pass blank if there is no such a parameter.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="565" type="java.lang.String">QueryParameter3</key>
<value id="566" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="567">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="568">The 3rd parameter of the query. Pass blank if there is no such a parameter.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="569" type="java.lang.String">QueryParameter4</key>
<value id="570" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="571">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<description id="572">The 4th parameter of the query. Pass blank if there is no such a parameter.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="573" type="java.lang.String">QueryParameter5</key>
<value id="574" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="575">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<description id="576">The 5th parameter of the query. Pass blank if there is no such a parameter.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="577" type="java.lang.String">Spliter</key>
<value id="578" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="579">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="580">It is used to indentify the split between the fields in the publishing file</description>
<persistent>false</persistent>
<value id="581" type="java.lang.String">tab</value>
</value>
</entry>
<entry>
<key id="582" type="java.lang.String">bulksize</key>
<value id="583" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="584">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
<value id="585" type="java.lang.Integer">500</value>
</value>
</entry>
<entry>
<key id="586" type="java.lang.String">counter</key>
<value id="587" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="588">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
<value id="589" type="java.lang.Integer">0</value>
</value>
</entry>
</variables>
<version>5</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
