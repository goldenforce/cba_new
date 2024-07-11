<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.16">
<package-comment/>
<businessobject displayString="4 - CustomXmlProcessing" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>false</clustered>
<comment id="1">CustomXmlProcessing</comment>
<endNode id="2">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="3">END</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="4">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="5" type="java.util.HashSet">
<item id="6" type="com.j2fe.workflow.definition.Transition">
<name id="7">goto-next</name>
<source id="8">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="9">Log Error</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="10">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="11" type="java.util.HashSet">
<item id="12" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="13">statements</name>
<stringValue id="14">import com.j2fe.general.activities.BeanShellScript;&#13;
import org.apache.log4j.Logger;&#13;
&#13;
static final Logger logger = Logger.getLogger(BeanShellScript.class);&#13;
logger.error("Error while uploading file.");</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="15" type="java.util.HashSet">
<item id="16" type="com.j2fe.workflow.definition.Transition">
<name id="17">false</name>
<source id="18">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="19">Upload File</name>
<nodeHandler>com.j2fe.feeds.activities.UploadFile</nodeHandler>
<nodeHandlerClass id="20">com.j2fe.feeds.activities.UploadFile</nodeHandlerClass>
<parameters id="21" type="java.util.HashSet">
<item id="22" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="23">directory</name>
<stringValue id="24">/incoming</stringValue>
<type>CONSTANT</type>
</item>
<item id="25" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="26">exception</name>
<stringValue id="27">Exception</stringValue>
<type>VARIABLE</type>
</item>
<item id="28" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="29">fileName</name>
<stringValue id="30">UploadFileName</stringValue>
<type>VARIABLE</type>
</item>
<item id="31" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="32">fileName</name>
<stringValue id="33">FileName</stringValue>
<type>VARIABLE</type>
</item>
<item id="34" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="35">fileSystem</name>
<stringValue id="36">filesystem/sftp/reuterssftp/dss</stringValue>
<type>REFERENCE</type>
</item>
<item id="37" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="38">inputText</name>
<stringValue id="39">TranslationResult</stringValue>
<type>VARIABLE</type>
<variablePart id="40">[0]</variablePart>
</item>
</parameters>
<sources id="41" type="java.util.HashSet">
<item id="42" type="com.j2fe.workflow.definition.Transition">
<name id="43">goto-next</name>
<source id="44">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="45">Translation</name>
<nodeHandler>com.j2fe.translation.activities.Translation</nodeHandler>
<nodeHandlerClass id="46">com.j2fe.translation.activities.Translation</nodeHandlerClass>
<parameters id="47" type="java.util.HashSet">
<item id="48" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="49">component</name>
<stringValue id="50">xslt</stringValue>
<type>CONSTANT</type>
</item>
<item id="51" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="52">input</name>
<stringValue id="53">VendorRequestString</stringValue>
<type>VARIABLE</type>
</item>
<item id="54" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="55">mapping</name>
<stringValue id="56">XSLTMappingFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="57" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="58">metaData["Hours"]</name>
<stringValue id="59">Hours</stringValue>
<type>VARIABLE</type>
</item>
<item id="60" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="61">["InputListName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="62">metaData["InputListName"]</name>
<stringValue id="63">InputListName</stringValue>
<type>VARIABLE</type>
</item>
<item id="64" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="65">metaData["Minutes"]</name>
<stringValue id="66">Minutes</stringValue>
<type>VARIABLE</type>
</item>
<item id="67" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="68">["OutputFileName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="69">metaData["OutputFileName"]</name>
<stringValue id="70">FilePattern</stringValue>
<type>VARIABLE</type>
</item>
<item id="71" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="72">["ReportTemplateName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="73">metaData["ReportTemplateName"]</name>
<stringValue id="74">ReportTemplateName</stringValue>
<type>VARIABLE</type>
</item>
<item id="75" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="76">["ScheduleName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="77">metaData["ScheduleName"]</name>
<stringValue id="78">ScheduleName</stringValue>
<type>VARIABLE</type>
</item>
<item id="79" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="80">plainOutput</name>
<stringValue id="81">TranslationResult</stringValue>
<type>VARIABLE</type>
</item>
<item id="82" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="83">wantedOutputType</name>
<stringValue id="84">Text</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="85" type="java.util.HashSet">
<item id="86" type="com.j2fe.workflow.definition.Transition">
<name id="87">goto-next</name>
<source id="88">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="89">Create File Names and Request Settings</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="90">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="91" type="java.util.HashSet">
<item id="92" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="93">statements</name>
<stringValue id="94">String uploadFileName = filePattern.replace(".csv",".xml");</stringValue>
<type>CONSTANT</type>
</item>
<item id="95" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="96">["filePattern"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="97">variables["filePattern"]</name>
<stringValue id="98">FilePattern</stringValue>
<type>VARIABLE</type>
</item>
<item id="99" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="100">["uploadFileName"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="101">variables["uploadFileName"]</name>
<stringValue id="102">UploadFileName</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="103" type="java.util.HashSet">
<item id="104" type="com.j2fe.workflow.definition.Transition">
<name id="105">goto-next</name>
<source id="106">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="107">Get Request Type</name>
<nodeHandler>com.j2fe.workflow.handler.impl.ExecuteXPath</nodeHandler>
<nodeHandlerClass id="108">com.j2fe.workflow.handler.impl.ExecuteXPath</nodeHandlerClass>
<parameters id="109" type="java.util.HashSet">
<item id="110" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="111">inputText</name>
<stringValue id="112">VendorRequestString</stringValue>
<type>VARIABLE</type>
</item>
<item id="113" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="114">outputValue</name>
<stringValue id="115">RequestType</stringValue>
<type>VARIABLE</type>
</item>
<item id="116" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="117">xPath</name>
<stringValue id="118">/VendorRequest/Request[1]/RequestType</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="119" type="java.util.HashSet">
<item id="120" type="com.j2fe.workflow.definition.Transition">
<name id="121">goto-next</name>
<source id="122">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="123">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="124">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="125" type="java.util.HashSet"/>
<targets id="126" type="java.util.HashSet">
<item idref="120" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="106"/>
</item>
</sources>
<targets id="127" type="java.util.HashSet">
<item idref="104" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="88"/>
</item>
</sources>
<targets id="128" type="java.util.HashSet">
<item idref="86" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="44"/>
</item>
</sources>
<targets id="129" type="java.util.HashSet">
<item idref="42" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="18"/>
</item>
</sources>
<targets id="130" type="java.util.HashSet">
<item idref="16" type="com.j2fe.workflow.definition.Transition"/>
<item id="131" type="com.j2fe.workflow.definition.Transition">
<name id="132">true</name>
<source idref="18"/>
<target idref="2"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="8"/>
</item>
</sources>
<targets id="133" type="java.util.HashSet">
<item idref="6" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
<item idref="131" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="134" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="135">Custom/Reuters</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="136">CBA_GC_OWN</lastChangeUser>
<lastUpdate id="137">2018-01-17T01:48:03.000+1100</lastUpdate>
<name id="138">RsuReutersUpDownloadRequestReplySFTP</name>
<optimize>true</optimize>
<parameter id="139" type="java.util.HashMap">
<entry>
<key id="140" type="java.lang.String">FilePattern</key>
<value id="141" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="142">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="143">The file pattern used to create the upload file name.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="144" type="java.lang.String">Hours</key>
<value id="145" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="146">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="147">In HH format. Example: 17&#13;
</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="148" type="java.lang.String">InputListName</key>
<value id="149" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="150">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="151">The Reuters Input List Name to use. If not set, it is defaulted to the Request Type Name.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="152" type="java.lang.String">Minutes</key>
<value id="153" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="154">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="155">In MI format. Example: 08&#13;
</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="156" type="java.lang.String">ReportTemplateName</key>
<value id="157" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="158">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="159">The Reuters Report Templae Name to use. If not set, it is defaulted to the Request Type Name.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="160" type="java.lang.String">ScheduleName</key>
<value id="161" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="162">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="163">The Reuters Schedule Name to use. If not set, it is defaulted to the Request Type Name.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="164" type="java.lang.String">VendorRequestString</key>
<value id="165" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="166">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="167">The VendorRequest String Message containing all the Requests the Request is coping with.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="168" type="java.lang.String">XSLTMappingFile</key>
<value id="169" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="170">java.net.URI</className>
<clazz>java.net.URI</clazz>
<description id="171">The XSLT Translation File used to create out of the VendorRequest Message the upload file.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="172" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="122"/>
<status>RELEASED</status>
<variables id="173" type="java.util.HashMap">
<entry>
<key id="174" type="java.lang.String">FilePattern</key>
<value id="175" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="176">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="177">The file pattern used to create the upload file name.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="178" type="java.lang.String">Hours</key>
<value id="179" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="180">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="181">In HH format. Example: 17&#13;
</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="182" type="java.lang.String">InputListName</key>
<value id="183" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="184">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="185">The Reuters Input List Name to use. If not set, it is defaulted to the Request Type Name.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="186" type="java.lang.String">Minutes</key>
<value id="187" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="188">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="189">In MI format. Example: 08&#13;
</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="190" type="java.lang.String">ReportTemplateName</key>
<value id="191" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="192">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="193">The Reuters Report Templae Name to use. If not set, it is defaulted to the Request Type Name.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="194" type="java.lang.String">ScheduleName</key>
<value id="195" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="196">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="197">The Reuters Schedule Name to use. If not set, it is defaulted to the Request Type Name.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="198" type="java.lang.String">VendorRequestString</key>
<value id="199" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="200">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="201">The VendorRequest String Message containing all the Requests the Request is coping with.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="202" type="java.lang.String">XSLTMappingFile</key>
<value id="203" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="204">java.net.URI</className>
<clazz>java.net.URI</clazz>
<description id="205">The XSLT Translation File used to create out of the VendorRequest Message the upload file.</description>
<persistent>false</persistent>
<value id="206" type="java.net.URI">db://resource/mapping/rsu/dss/reuters.xslt</value>
</value>
</entry>
</variables>
<version>4</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
