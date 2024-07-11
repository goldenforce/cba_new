<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.16">
<package-comment/>
<businessobject displayString="4 - 4" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">4</comment>
<endNode id="2">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="3">Stop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="4">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="5" type="java.util.HashSet">
<item id="6" type="com.j2fe.workflow.definition.Transition">
<name id="7">empty</name>
<source id="8">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="9">List Full File</name>
<nodeHandler>com.j2fe.feeds.activities.ListFiles</nodeHandler>
<nodeHandlerClass id="10">com.j2fe.feeds.activities.ListFiles</nodeHandlerClass>
<parameters id="11" type="java.util.HashSet">
<item id="12" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="13">directory</name>
<stringValue id="14">/reports</stringValue>
<type>CONSTANT</type>
</item>
<item id="15" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="16">fileSystem</name>
<stringValue id="17">filesystem/sftp/reuterssftp/dss</stringValue>
<type>REFERENCE</type>
</item>
<item id="18" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="19">pattern[0]</name>
<stringValue id="20">filePattern</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
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
<name id="30">empty</name>
<source id="31">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="32">List Partial File</name>
<nodeHandler>com.j2fe.feeds.activities.ListFiles</nodeHandler>
<nodeHandlerClass id="33">com.j2fe.feeds.activities.ListFiles</nodeHandlerClass>
<parameters id="34" type="java.util.HashSet">
<item id="35" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="36">directory</name>
<stringValue id="37">/reports</stringValue>
<type>CONSTANT</type>
</item>
<item id="38" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="39">fileSystem</name>
<stringValue id="40">filesystem/sftp/reuterssftp/dss</stringValue>
<type>REFERENCE</type>
</item>
<item id="41" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="42">pattern[0]</name>
<stringValue id="43">filepatternPartial</stringValue>
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
<name id="48">variables</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="49">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="50" type="java.util.HashSet">
<item id="51" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="52">statements</name>
<stringValue id="53">import java.text.SimpleDateFormat;&#13;
&#13;
if(dte==null)&#13;
	dte = new SimpleDateFormat("yyyyMMdd").format(new Date());&#13;
&#13;
pttrn = pttrn.replace("%D.csv",dte+".csv");&#13;
&#13;
filepatternPartial = pttrn.replace(".csv",".partial.csv");</stringValue>
<type>CONSTANT</type>
</item>
<item id="54" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="55">variables["dte"]</name>
<stringValue id="56">Date</stringValue>
<type>VARIABLE</type>
</item>
<item id="57" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="58">variables["filepatternPartial"]</name>
<stringValue id="59">filepatternPartial</stringValue>
<type>VARIABLE</type>
</item>
<item id="60" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="61">variables["pttrn"]</name>
<stringValue id="62">filePattern</stringValue>
<type>VARIABLE</type>
</item>
<item id="63" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="64">variables["pttrn"]</name>
<stringValue id="65">filePattern</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="66" type="java.util.HashSet">
<item id="67" type="com.j2fe.workflow.definition.Transition">
<name id="68">goto-next</name>
<source id="69">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="70">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="71">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="72" type="java.util.HashSet"/>
<targets id="73" type="java.util.HashSet">
<item idref="67" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="47"/>
</item>
</sources>
<targets id="74" type="java.util.HashSet">
<item idref="45" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="31"/>
</item>
</sources>
<targets id="75" type="java.util.HashSet">
<item idref="29" type="com.j2fe.workflow.definition.Transition"/>
<item id="76" type="com.j2fe.workflow.definition.Transition">
<name id="77">not-empty</name>
<source idref="31"/>
<target id="78">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="79">List Partial File</name>
<nodeHandler>com.j2fe.feeds.activities.ListFiles</nodeHandler>
<nodeHandlerClass id="80">com.j2fe.feeds.activities.ListFiles</nodeHandlerClass>
<parameters id="81" type="java.util.HashSet">
<item id="82" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="83">directory</name>
<stringValue id="84">/reports</stringValue>
<type>CONSTANT</type>
</item>
<item id="85" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="86">fileSystem</name>
<stringValue id="87">filesystem/sftp/reuterssftp/dss</stringValue>
<type>REFERENCE</type>
</item>
<item id="88" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="89">list</name>
<stringValue id="90">FilesPartial</stringValue>
<type>VARIABLE</type>
</item>
<item id="91" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="92">pattern[0]</name>
<stringValue id="93">filepatternPartial</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="94" type="java.util.HashSet">
<item idref="76" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="95" type="java.util.HashSet">
<item id="96" type="com.j2fe.workflow.definition.Transition">
<name id="97">empty</name>
<source idref="78"/>
<target idref="24"/>
</item>
<item id="98" type="com.j2fe.workflow.definition.Transition">
<name id="99">not-empty</name>
<source idref="78"/>
<target id="100">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="101">Bean Shell Script (Standard)</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="102">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="103" type="java.util.HashSet">
<item id="104" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="105">statements</name>
<stringValue id="106">String flName = fullPath[0].name.replace("/reports/","");</stringValue>
<type>CONSTANT</type>
</item>
<item id="107" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="108">variables["flName"]</name>
<stringValue id="109">flName</stringValue>
<type>VARIABLE</type>
</item>
<item id="110" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="111">variables["fullPath"]</name>
<stringValue id="112">FilesPartial</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="113" type="java.util.HashSet">
<item idref="98" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="114" type="java.util.HashSet">
<item id="115" type="com.j2fe.workflow.definition.Transition">
<name id="116">goto-next</name>
<source idref="100"/>
<target id="117">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="118">Copy From SFTP</name>
<nodeHandler>com.j2fe.general.activities.FileOperator</nodeHandler>
<nodeHandlerClass id="119">com.j2fe.general.activities.FileOperator</nodeHandlerClass>
<parameters id="120" type="java.util.HashSet">
<item id="121" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="122">operationToPerform</name>
<objectValue id="123" type="com.j2fe.general.activities.FileOperator$Operation">Copy</objectValue>
<type>CONSTANT</type>
</item>
<item id="124" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="125">sourceDirectory</name>
<stringValue id="126">/reports</stringValue>
<type>CONSTANT</type>
</item>
<item id="127" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="128">sourceFileName</name>
<stringValue id="129">flName</stringValue>
<type>VARIABLE</type>
</item>
<item id="130" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="131">sourceFileSystem</name>
<stringValue id="132">filesystem/sftp/reuterssftp/dss</stringValue>
<type>REFERENCE</type>
</item>
<item id="133" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="134">targetDirectory</name>
<stringValue id="135">/tmp/vendor/reuters/dss</stringValue>
<type>CONSTANT</type>
</item>
<item id="136" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="137">targetFileName</name>
<stringValue id="138">flName</stringValue>
<type>VARIABLE</type>
</item>
<item id="139" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="140">targetFileSystem</name>
<stringValue id="141">filesystem/local</stringValue>
<type>REFERENCE</type>
</item>
</parameters>
<sources id="142" type="java.util.HashSet">
<item idref="115" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="143" type="java.util.HashSet">
<item id="144" type="com.j2fe.workflow.definition.Transition">
<name id="145">goto-next</name>
<source idref="117"/>
<target id="146">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="147">Load Partial</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="148">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="149" type="java.util.HashSet">
<item id="150" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="151">["Directory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="152">input["Directory"]</name>
<stringValue id="153">/home/rsu/files/input/reuters</stringValue>
<type>CONSTANT</type>
</item>
<item id="154" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="155">["FileLoadEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="156">input["FileLoadEvent"]</name>
<stringValue id="157">StandardFileLoad</stringValue>
<type>CONSTANT</type>
</item>
<item id="158" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="159">["FilePatterns"]@[Ljava/lang/String;@[0]</UITypeHint>
<input>true</input>
<name id="160">input["FilePatterns"][0]</name>
<stringValue id="161">filepatternPartial</stringValue>
<type>VARIABLE</type>
</item>
<item id="162" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="163">["MessageBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="164">input["MessageBulkSize"]</name>
<stringValue id="165">500</stringValue>
<type>CONSTANT</type>
</item>
<item id="166" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="167">["MessageProcessingEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="168">input["MessageProcessingEvent"]</name>
<stringValue id="169">ProcessFeedMessage</stringValue>
<type>CONSTANT</type>
</item>
<item id="170" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="171">["MessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="172">input["MessageType"]</name>
<stringValue id="173">ReutersDssPrices_Schedule_Partial</stringValue>
<type>CONSTANT</type>
</item>
<item id="174" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="175">["OutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="176">input["OutputDirectory"]</name>
<stringValue id="177">/home/rsu/files/output/reuters</stringValue>
<type>CONSTANT</type>
</item>
<item id="178" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="179">["ParallelBranches"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="180">input["ParallelBranches"]</name>
<stringValue id="181">2</stringValue>
<type>CONSTANT</type>
</item>
<item id="182" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="183">["ReProcessProcessedFiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="184">input["ReProcessProcessedFiles"]</name>
<stringValue id="185">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="186" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="187">["SuccessAction"]@com/j2fe/feeds/SuccessAction@</UITypeHint>
<input>true</input>
<name id="188">input["SuccessAction"]</name>
<stringValue id="189">MOVE</stringValue>
<type>CONSTANT</type>
</item>
<item id="190" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="191">name</name>
<stringValue id="192">Process Files in Directory</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="193" type="java.util.HashSet">
<item idref="144" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="194" type="java.util.HashSet">
<item id="195" type="com.j2fe.workflow.definition.Transition">
<name id="196">goto-next</name>
<source idref="146"/>
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
<type>XORSPLIT</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="24"/>
</item>
<item idref="96" type="com.j2fe.workflow.definition.Transition"/>
<item idref="195" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="197" type="java.util.HashSet">
<item idref="22" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="8"/>
</item>
</sources>
<targets id="198" type="java.util.HashSet">
<item idref="6" type="com.j2fe.workflow.definition.Transition"/>
<item id="199" type="com.j2fe.workflow.definition.Transition">
<name id="200">not-empty</name>
<source idref="8"/>
<target id="201">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="202">List Full File</name>
<nodeHandler>com.j2fe.feeds.activities.ListFiles</nodeHandler>
<nodeHandlerClass id="203">com.j2fe.feeds.activities.ListFiles</nodeHandlerClass>
<parameters id="204" type="java.util.HashSet">
<item id="205" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="206">directory</name>
<stringValue id="207">/reports</stringValue>
<type>CONSTANT</type>
</item>
<item id="208" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="209">fileSystem</name>
<stringValue id="210">filesystem/sftp/reuterssftp/dss</stringValue>
<type>REFERENCE</type>
</item>
<item id="211" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="212">list</name>
<stringValue id="213">Files</stringValue>
<type>VARIABLE</type>
</item>
<item id="214" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="215">pattern[0]</name>
<stringValue id="216">filePattern</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="217" type="java.util.HashSet">
<item idref="199" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="218" type="java.util.HashSet">
<item id="219" type="com.j2fe.workflow.definition.Transition">
<name id="220">not-empty</name>
<source idref="201"/>
<target id="221">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="222">Bean Shell Script (Standard)</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="223">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="224" type="java.util.HashSet">
<item id="225" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="226">statements</name>
<stringValue id="227">String flName = fullPath[0].name.replace("/reports/","");</stringValue>
<type>CONSTANT</type>
</item>
<item id="228" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="229">variables["flName"]</name>
<stringValue id="230">flName</stringValue>
<type>VARIABLE</type>
</item>
<item id="231" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="232">variables["fullPath"]</name>
<stringValue id="233">Files</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="234" type="java.util.HashSet">
<item idref="219" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="235" type="java.util.HashSet">
<item id="236" type="com.j2fe.workflow.definition.Transition">
<name id="237">goto-next</name>
<source idref="221"/>
<target id="238">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="239">Copy From SFTP</name>
<nodeHandler>com.j2fe.general.activities.FileOperator</nodeHandler>
<nodeHandlerClass id="240">com.j2fe.general.activities.FileOperator</nodeHandlerClass>
<parameters id="241" type="java.util.HashSet">
<item id="242" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="243">operationToPerform</name>
<objectValue idref="123"/>
<type>CONSTANT</type>
</item>
<item id="244" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="245">sourceDirectory</name>
<stringValue id="246">/reports</stringValue>
<type>CONSTANT</type>
</item>
<item id="247" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="248">sourceFileName</name>
<stringValue id="249">flName</stringValue>
<type>VARIABLE</type>
</item>
<item id="250" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="251">sourceFileSystem</name>
<stringValue id="252">filesystem/sftp/reuterssftp/dss</stringValue>
<type>REFERENCE</type>
</item>
<item id="253" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="254">targetDirectory</name>
<stringValue id="255">/tmp/vendor/reuters/dss</stringValue>
<type>CONSTANT</type>
</item>
<item id="256" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="257">targetFileName</name>
<stringValue id="258">flName</stringValue>
<type>VARIABLE</type>
</item>
<item id="259" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="260">targetFileSystem</name>
<stringValue id="261">filesystem/local</stringValue>
<type>REFERENCE</type>
</item>
</parameters>
<sources id="262" type="java.util.HashSet">
<item idref="236" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="263" type="java.util.HashSet">
<item id="264" type="com.j2fe.workflow.definition.Transition">
<name id="265">goto-next</name>
<source idref="238"/>
<target id="266">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="267">Load Full</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="268">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="269" type="java.util.HashSet">
<item id="270" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="271">["Directory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="272">input["Directory"]</name>
<stringValue id="273">/home/rsu/files/input/reuters</stringValue>
<type>CONSTANT</type>
</item>
<item id="274" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="275">["FileLoadEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="276">input["FileLoadEvent"]</name>
<stringValue id="277">StandardFileLoad</stringValue>
<type>CONSTANT</type>
</item>
<item id="278" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="279">["FilePatterns"]@[Ljava/lang/String;@[0]</UITypeHint>
<input>true</input>
<name id="280">input["FilePatterns"][0]</name>
<stringValue id="281">filePattern</stringValue>
<type>VARIABLE</type>
</item>
<item id="282" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="283">["MessageBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="284">input["MessageBulkSize"]</name>
<objectValue id="285" type="java.lang.Integer">500</objectValue>
<type>CONSTANT</type>
</item>
<item id="286" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="287">["MessageProcessingEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="288">input["MessageProcessingEvent"]</name>
<stringValue id="289">ProcessFeedMessage</stringValue>
<type>CONSTANT</type>
</item>
<item id="290" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="291">["MessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="292">input["MessageType"]</name>
<stringValue id="293">ReutersDssPrices_Schedule_Full</stringValue>
<type>CONSTANT</type>
</item>
<item id="294" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="295">["OutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="296">input["OutputDirectory"]</name>
<stringValue id="297">/home/rsu/files/output/reuters</stringValue>
<type>CONSTANT</type>
</item>
<item id="298" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="299">["ParallelBranches"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="300">input["ParallelBranches"]</name>
<objectValue id="301" type="java.lang.Integer">2</objectValue>
<type>CONSTANT</type>
</item>
<item id="302" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="303">["ReProcessProcessedFiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="304">input["ReProcessProcessedFiles"]</name>
<objectValue id="305" type="java.lang.Boolean">true</objectValue>
<type>CONSTANT</type>
</item>
<item id="306" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="307">["SuccessAction"]@com/j2fe/feeds/SuccessAction@</UITypeHint>
<input>true</input>
<name id="308">input["SuccessAction"]</name>
<objectValue id="309" type="com.j2fe.feeds.SuccessAction">MOVE</objectValue>
<type>CONSTANT</type>
</item>
<item id="310" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="311">name</name>
<stringValue id="312">Process Files in Directory</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="313" type="java.util.HashSet">
<item idref="264" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="314" type="java.util.HashSet">
<item id="315" type="com.j2fe.workflow.definition.Transition">
<name id="316">goto-next</name>
<source idref="266"/>
<target idref="2"/>
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
<type>XORSPLIT</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="2"/>
</item>
<item idref="315" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="317" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="318">Custom/Reuters</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="319">CBA_GC_OWN</lastChangeUser>
<lastUpdate id="320">2018-02-21T01:15:27.000+1100</lastUpdate>
<name id="321">RSU Reuters Wait Files</name>
<optimize>true</optimize>
<parameter id="322" type="java.util.HashMap">
<entry>
<key id="323" type="java.lang.String">Date</key>
<value id="324" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="325">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="326">yyyymmdd</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="327" type="java.lang.String">MessageType</key>
<value id="328" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="329">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="330" type="java.lang.String">filePattern</key>
<value id="331" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="332">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="333" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="69"/>
<status>RELEASED</status>
<variables id="334" type="java.util.HashMap">
<entry>
<key id="335" type="java.lang.String">Date</key>
<value id="336" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="337">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="338">yyyymmdd</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="339" type="java.lang.String">MessageType</key>
<value id="340" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="341">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="342" type="java.lang.String">ReutersDssPrices_Schedule</value>
</value>
</entry>
<entry>
<key id="343" type="java.lang.String">filePattern</key>
<value id="344" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="345">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>4</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
