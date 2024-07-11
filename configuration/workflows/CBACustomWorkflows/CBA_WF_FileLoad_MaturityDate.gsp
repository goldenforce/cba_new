<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.15">
<package-comment/>
<businessobject displayString="4 - Non Clustered" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>false</clustered>
<comment id="1">Non Clustered</comment>
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
<name id="19">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="20">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="21" type="java.util.HashSet">
<item id="22" type="com.j2fe.workflow.definition.Transition">
<name id="23">goto-next</name>
<source id="24">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="25">Call Subworkflow</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="26">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="27" type="java.util.HashSet">
<item id="28" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="29">["BusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="30">input["BusinessFeed"]</name>
<stringValue id="31">ReuterBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="32" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="33">["Directory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="34">input["Directory"]</name>
<stringValue id="35">RTDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="36" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="37">["FileLoadEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="38">input["FileLoadEvent"]</name>
<stringValue id="39">StandardFileLoad</stringValue>
<type>CONSTANT</type>
</item>
<item id="40" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="41">["FilePatterns"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="42">input["FilePatterns"]</name>
<stringValue id="43">RTFilePattern</stringValue>
<type>VARIABLE</type>
</item>
<item id="44" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="45">["IncludeFilePatternNBusinessFeed"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="46">input["IncludeFilePatternNBusinessFeed"]</name>
<objectValue id="47" type="java.lang.Boolean">false</objectValue>
<type>CONSTANT</type>
</item>
<item id="48" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="49">["MessageBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="50">input["MessageBulkSize"]</name>
<objectValue id="51" type="java.lang.Integer">500</objectValue>
<type>CONSTANT</type>
</item>
<item id="52" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="53">["MessageProcessingEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="54">input["MessageProcessingEvent"]</name>
<stringValue id="55">ProcessFeedMessage</stringValue>
<type>CONSTANT</type>
</item>
<item id="56" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="57">["NrOfFilesParallel"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="58">input["NrOfFilesParallel"]</name>
<objectValue id="59" type="java.lang.Integer">2</objectValue>
<type>CONSTANT</type>
</item>
<item id="60" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="61">["ParallelBranches"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="62">input["ParallelBranches"]</name>
<objectValue idref="59"/>
<type>CONSTANT</type>
</item>
<item id="63" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="64">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="65">input["ParentJobID"]</name>
<stringValue id="66">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="67" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="68">["PricePointEventDefinitionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="69">input["PricePointEventDefinitionId"]</name>
<stringValue id="70">Price Point Event Definition Id</stringValue>
<type>VARIABLE</type>
</item>
<item id="71" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="72">["ReProcessProcessedFiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="73">input["ReProcessProcessedFiles"]</name>
<stringValue id="74">ReProcessProcessedFiles</stringValue>
<type>VARIABLE</type>
</item>
<item id="75" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="76">["RecursiveSearch"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="77">input["RecursiveSearch"]</name>
<objectValue idref="47"/>
<type>CONSTANT</type>
</item>
<item id="78" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="79">["ReutersFileSystem"]@com/j2fe/connector/ReutersFileSystemType@</UITypeHint>
<input>true</input>
<name id="80">input["ReutersFileSystem"]</name>
<stringValue id="81">ReutersFileSystem</stringValue>
<type>VARIABLE</type>
</item>
<item id="82" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="83">["SortAscending"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="84">input["SortAscending"]</name>
<objectValue id="85" type="java.lang.Boolean">true</objectValue>
<type>CONSTANT</type>
</item>
<item id="86" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="87">["SortOrder"]@com/j2fe/feeds/activities/ListFiles$Sort@</UITypeHint>
<input>true</input>
<name id="88">input["SortOrder"]</name>
<objectValue id="89" type="com.j2fe.feeds.activities.ListFiles$Sort">NATURAL</objectValue>
<type>CONSTANT</type>
</item>
<item id="90" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="91">["SuccessAction"]@com/j2fe/feeds/SuccessAction@</UITypeHint>
<input>true</input>
<name id="92">input["SuccessAction"]</name>
<objectValue id="93" type="com.j2fe.feeds.SuccessAction">LEAVE</objectValue>
<type>CONSTANT</type>
</item>
<item id="94" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="95">["VendorDefinition"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="96">input["VendorDefinition"]</name>
<stringValue id="97">REUTERS</stringValue>
<type>CONSTANT</type>
</item>
<item id="98" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="99">name</name>
<stringValue id="100">Reuters DataScope Select</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="101" type="java.util.HashSet">
<item id="102" type="com.j2fe.workflow.definition.Transition">
<name id="103">false</name>
<source id="104">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="105">RT File Name Check</name>
<nodeHandler>com.j2fe.general.activities.IsNull</nodeHandler>
<nodeHandlerClass id="106">com.j2fe.general.activities.IsNull</nodeHandlerClass>
<parameters id="107" type="java.util.HashSet">
<item id="108" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="109">input</name>
<stringValue id="110">RTFilePattern</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="111" type="java.util.HashSet">
<item id="112" type="com.j2fe.workflow.definition.Transition">
<name id="113">goto-next</name>
<source id="114">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="115">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="116">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="117" type="java.util.HashSet">
<item id="118" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="119">file</name>
<objectValue id="120" type="java.net.URI">CBA_WF_FileLoad_MaturityDate</objectValue>
<type>CONSTANT</type>
</item>
<item id="121" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="122">jobId</name>
<stringValue id="123">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="124" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="125">parentJobId</name>
<stringValue id="126">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="127" type="java.util.HashSet">
<item id="128" type="com.j2fe.workflow.definition.Transition">
<name id="129">goto-next</name>
<source id="130">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="131">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="132">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="133" type="java.util.HashSet"/>
<targets id="134" type="java.util.HashSet">
<item idref="128" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="114"/>
</item>
</sources>
<targets id="135" type="java.util.HashSet">
<item idref="112" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="104"/>
</item>
</sources>
<targets id="136" type="java.util.HashSet">
<item idref="102" type="com.j2fe.workflow.definition.Transition"/>
<item id="137" type="com.j2fe.workflow.definition.Transition">
<name id="138">true</name>
<source idref="104"/>
<target id="139">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="140">RT Business Feed check</name>
<nodeHandler>com.j2fe.general.activities.IsNull</nodeHandler>
<nodeHandlerClass id="141">com.j2fe.general.activities.IsNull</nodeHandlerClass>
<parameters id="142" type="java.util.HashSet">
<item id="143" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="144">input</name>
<stringValue id="145">ReuterBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="146" type="java.util.HashSet">
<item idref="137" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="147" type="java.util.HashSet">
<item id="148" type="com.j2fe.workflow.definition.Transition">
<name id="149">false</name>
<source idref="139"/>
<target id="150">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="151">Call Subworkflow</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="152">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="153" type="java.util.HashSet">
<item id="154" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="155">["BusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="156">input["BusinessFeed"]</name>
<stringValue id="157">ReuterBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="158" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="159">["Directory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="160">input["Directory"]</name>
<stringValue id="161">RTDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="162" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="163">["FileLoadEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="164">input["FileLoadEvent"]</name>
<stringValue id="165">StandardFileLoad</stringValue>
<type>CONSTANT</type>
</item>
<item id="166" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="167">["FilePatterns"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="168">input["FilePatterns"]</name>
<stringValue id="169">RTFilePattern</stringValue>
<type>VARIABLE</type>
</item>
<item id="170" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="171">["IncludeFilePatternNBusinessFeed"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="172">input["IncludeFilePatternNBusinessFeed"]</name>
<objectValue idref="47"/>
<type>CONSTANT</type>
</item>
<item id="173" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="174">["MessageBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="175">input["MessageBulkSize"]</name>
<objectValue id="176" type="java.lang.Integer">500</objectValue>
<type>CONSTANT</type>
</item>
<item id="177" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="178">["MessageProcessingEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="179">input["MessageProcessingEvent"]</name>
<stringValue id="180">ProcessFeedMessage</stringValue>
<type>CONSTANT</type>
</item>
<item id="181" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="182">["NrOfFilesParallel"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="183">input["NrOfFilesParallel"]</name>
<objectValue idref="59"/>
<type>CONSTANT</type>
</item>
<item id="184" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="185">["ParallelBranches"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="186">input["ParallelBranches"]</name>
<objectValue idref="59"/>
<type>CONSTANT</type>
</item>
<item id="187" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="188">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="189">input["ParentJobID"]</name>
<stringValue id="190">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="191" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="192">["PricePointEventDefinitionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="193">input["PricePointEventDefinitionId"]</name>
<stringValue id="194">Price Point Event Definition Id</stringValue>
<type>VARIABLE</type>
</item>
<item id="195" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="196">["ReProcessProcessedFiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="197">input["ReProcessProcessedFiles"]</name>
<stringValue id="198">ReProcessProcessedFiles</stringValue>
<type>VARIABLE</type>
</item>
<item id="199" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="200">["RecursiveSearch"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="201">input["RecursiveSearch"]</name>
<objectValue idref="47"/>
<type>CONSTANT</type>
</item>
<item id="202" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="203">["ReutersFileSystem"]@com/j2fe/connector/ReutersFileSystemType@</UITypeHint>
<input>true</input>
<name id="204">input["ReutersFileSystem"]</name>
<stringValue id="205">ReutersFileSystem</stringValue>
<type>VARIABLE</type>
</item>
<item id="206" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="207">["SortAscending"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="208">input["SortAscending"]</name>
<objectValue idref="85"/>
<type>CONSTANT</type>
</item>
<item id="209" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="210">["SortOrder"]@com/j2fe/feeds/activities/ListFiles$Sort@</UITypeHint>
<input>true</input>
<name id="211">input["SortOrder"]</name>
<objectValue idref="89"/>
<type>CONSTANT</type>
</item>
<item id="212" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="213">["SuccessAction"]@com/j2fe/feeds/SuccessAction@</UITypeHint>
<input>true</input>
<name id="214">input["SuccessAction"]</name>
<objectValue idref="93"/>
<type>CONSTANT</type>
</item>
<item id="215" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="216">["VendorDefinition"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="217">input["VendorDefinition"]</name>
<stringValue id="218">REUTERS</stringValue>
<type>CONSTANT</type>
</item>
<item id="219" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="220">name</name>
<stringValue id="221">Reuters DataScope Select</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="222" type="java.util.HashSet">
<item idref="148" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="223" type="java.util.HashSet">
<item id="224" type="com.j2fe.workflow.definition.Transition">
<name id="225">goto-next</name>
<source idref="150"/>
<target idref="18"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item id="226" type="com.j2fe.workflow.definition.Transition">
<name id="227">true</name>
<source idref="139"/>
<target idref="18"/>
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
</sources>
<targets id="228" type="java.util.HashSet">
<item idref="22" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="18"/>
</item>
<item idref="224" type="com.j2fe.workflow.definition.Transition"/>
<item idref="226" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="229" type="java.util.HashSet">
<item idref="16" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="8"/>
</item>
</sources>
<targets id="230" type="java.util.HashSet">
<item idref="6" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
</sources>
<targets id="231" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="232">CBACustomWorkflows</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="233">user1</lastChangeUser>
<lastUpdate id="234">2018-05-02T20:05:44.000+1000</lastUpdate>
<name id="235">CBA_WF_FileLoad_MaturityDate</name>
<optimize>true</optimize>
<parameter id="236" type="java.util.HashMap">
<entry>
<key id="237" type="java.lang.String">ParentJobID</key>
<value id="238" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="239">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="240">ParentJobID</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="241" type="java.lang.String">Price Point Event Definition Id</key>
<value id="242" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="243">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="244">Price Point Event Definition Id</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="245" type="java.lang.String">RTDirectory</key>
<value id="246" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="247">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="248">Reuter's Directory</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="249" type="java.lang.String">RTFilePattern</key>
<value id="250" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="251">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="252">Reuters file names which need to be loaded.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="253" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="254" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="255">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="256">Allow reprocessing the processed files.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="257" type="java.lang.String">ReuterBusinessFeed</key>
<value id="258" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="259">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="260">ReuterBusinessFeed such as  ReutersDSS_IntraDay_Pricing</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="261" type="java.lang.String">ReutersFileSystem</key>
<value id="262" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="263">com.j2fe.connector.ReutersFileSystemType</className>
<clazz>com.j2fe.connector.ReutersFileSystemType</clazz>
<description id="264">ReutersFileSystem</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="265" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="130"/>
<status>RELEASED</status>
<variables id="266" type="java.util.HashMap">
<entry>
<key id="267" type="java.lang.String">ParentJobID</key>
<value id="268" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="269">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="270">ParentJobID</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="271" type="java.lang.String">Price Point Event Definition Id</key>
<value id="272" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="273">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="274">Price Point Event Definition Id</description>
<persistent>false</persistent>
<value id="275" type="java.lang.String">Default</value>
</value>
</entry>
<entry>
<key id="276" type="java.lang.String">RTDirectory</key>
<value id="277" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="278">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="279">Reuter's Directory</description>
<persistent>false</persistent>
<value id="280" type="java.lang.String">/reports</value>
</value>
</entry>
<entry>
<key id="281" type="java.lang.String">RTFilePattern</key>
<value id="282" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="283">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="284">Reuters file names which need to be loaded.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="285" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="286" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="287">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="288">Allow reprocessing the processed files.</description>
<persistent>false</persistent>
<value id="289" type="java.lang.String">true</value>
</value>
</entry>
<entry>
<key id="290" type="java.lang.String">ReuterBusinessFeed</key>
<value id="291" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="292">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="293">ReuterBusinessFeed such as  ReutersDSS_IntraDay_Pricing</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="294" type="java.lang.String">ReutersFileSystem</key>
<value id="295" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="296">com.j2fe.connector.ReutersFileSystemType</className>
<clazz>com.j2fe.connector.ReutersFileSystemType</clazz>
<description id="297">ReutersFileSystem</description>
<persistent>false</persistent>
<value id="298" type="com.j2fe.connector.ReutersFileSystemType">SFTP</value>
</value>
</entry>
</variables>
<version>4</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
