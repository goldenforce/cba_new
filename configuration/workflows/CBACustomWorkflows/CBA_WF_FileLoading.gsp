<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.16">
<package-comment/>
<businessobject displayString="23 - async" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">async</comment>
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
<name id="25">BB File Load</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="26">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="27" type="java.util.HashSet">
<item id="28" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="29">["DownloadDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="30">input["DownloadDirectory"]</name>
<stringValue id="31">BBDownloadDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="32" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="33">["PricePointEventDefinitionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="34">input["PricePointEventDefinitionId"]</name>
<stringValue id="35">Price Point Event Definition Id</stringValue>
<type>VARIABLE</type>
</item>
<item id="36" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="37">["ProcessingDate"]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="38">input["ProcessingDate"]</name>
<stringValue id="39">Processing Date</stringValue>
<type>VARIABLE</type>
</item>
<item id="40" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="41">["ResponseFileName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="42">input["ResponseFileName"]</name>
<stringValue id="43">BBResponseFileName</stringValue>
<type>VARIABLE</type>
</item>
<item id="44" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="45">name</name>
<stringValue id="46">BloombergScheduledResonseProcessing</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="47" type="java.util.HashSet">
<item id="48" type="com.j2fe.workflow.definition.Transition">
<name id="49">false</name>
<source id="50">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="51">BB File Process Check</name>
<nodeHandler>com.j2fe.general.activities.IsNull</nodeHandler>
<nodeHandlerClass id="52">com.j2fe.general.activities.IsNull</nodeHandlerClass>
<parameters id="53" type="java.util.HashSet">
<item id="54" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="55">input</name>
<stringValue id="56">BBResponseFileName</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="57" type="java.util.HashSet">
<item id="58" type="com.j2fe.workflow.definition.Transition">
<name id="59">ToSplit</name>
<source id="60">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="61">Automatically generated</description>
<directJoin>false</directJoin>
<name id="62">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="63">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="64" type="java.util.HashSet">
<item id="65" type="com.j2fe.workflow.definition.Transition">
<name id="66">false</name>
<source id="67">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="68">Load BB File from Local</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="69">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="70" type="java.util.HashSet">
<item id="71" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="72">caseItem</name>
<stringValue id="73">LoadFromLocalBB</stringValue>
<type>VARIABLE</type>
</item>
<item id="74" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="75">defaultItem</name>
<stringValue id="76">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="77" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="78">nullTransition</name>
<stringValue id="79">false</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="80" type="java.util.HashSet">
<item id="81" type="com.j2fe.workflow.definition.Transition">
<name id="82">goto-next</name>
<source id="83">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="84">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="85">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="86" type="java.util.HashSet">
<item id="87" type="com.j2fe.workflow.definition.Transition">
<name id="88">goto-next</name>
<source id="89">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="90">Reuter's File Load with Business Feed</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="91">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="92" type="java.util.HashSet">
<item id="93" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="94">["BusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="95">input["BusinessFeed"]</name>
<stringValue id="96">ReuterBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="97" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="98">["Directory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="99">input["Directory"]</name>
<stringValue id="100">RTDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="101" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="102">["FileLoadEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="103">input["FileLoadEvent"]</name>
<stringValue id="104">StandardFileLoad</stringValue>
<type>CONSTANT</type>
</item>
<item id="105" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="106">["FilePatterns"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="107">input["FilePatterns"]</name>
<stringValue id="108">RTFilePattern</stringValue>
<type>VARIABLE</type>
</item>
<item id="109" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="110">["IncludeFilePatternNBusinessFeed"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="111">input["IncludeFilePatternNBusinessFeed"]</name>
<stringValue id="112">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="113" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="114">["MessageBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="115">input["MessageBulkSize"]</name>
<stringValue id="116">500</stringValue>
<type>CONSTANT</type>
</item>
<item id="117" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="118">["MessageProcessingEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="119">input["MessageProcessingEvent"]</name>
<stringValue id="120">ProcessFeedMessage</stringValue>
<type>CONSTANT</type>
</item>
<item id="121" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="122">["NrOfFilesParallel"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="123">input["NrOfFilesParallel"]</name>
<stringValue id="124">2</stringValue>
<type>CONSTANT</type>
</item>
<item id="125" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="126">["ParallelBranches"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="127">input["ParallelBranches"]</name>
<stringValue id="128">2</stringValue>
<type>CONSTANT</type>
</item>
<item id="129" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="130">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="131">input["ParentJobID"]</name>
<stringValue id="132">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="133" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="134">["PricePointEventDefinitionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="135">input["PricePointEventDefinitionId"]</name>
<stringValue id="136">Price Point Event Definition Id</stringValue>
<type>VARIABLE</type>
</item>
<item id="137" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="138">["ProcessingDate"]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="139">input["ProcessingDate"]</name>
<stringValue id="140">Processing Date</stringValue>
<type>VARIABLE</type>
</item>
<item id="141" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="142">["ReProcessProcessedFiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="143">input["ReProcessProcessedFiles"]</name>
<stringValue id="144">ReProcessProcessedFiles</stringValue>
<type>VARIABLE</type>
</item>
<item id="145" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="146">["RecursiveSearch"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="147">input["RecursiveSearch"]</name>
<stringValue id="148">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="149" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="150">["ReutersFileSystem"]@com/j2fe/connector/ReutersFileSystemType@</UITypeHint>
<input>true</input>
<name id="151">input["ReutersFileSystem"]</name>
<stringValue id="152">ReutersFileSystem</stringValue>
<type>VARIABLE</type>
</item>
<item id="153" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="154">["SortAscending"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="155">input["SortAscending"]</name>
<stringValue id="156">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="157" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="158">["SortOrder"]@com/j2fe/feeds/activities/ListFiles$Sort@</UITypeHint>
<input>true</input>
<name id="159">input["SortOrder"]</name>
<stringValue id="160">NATURAL</stringValue>
<type>CONSTANT</type>
</item>
<item id="161" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="162">["SuccessAction"]@com/j2fe/feeds/SuccessAction@</UITypeHint>
<input>true</input>
<name id="163">input["SuccessAction"]</name>
<stringValue id="164">LEAVE</stringValue>
<type>CONSTANT</type>
</item>
<item id="165" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="166">["VendorDefinition"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="167">input["VendorDefinition"]</name>
<stringValue id="168">REUTERS</stringValue>
<type>CONSTANT</type>
</item>
<item id="169" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="170">name</name>
<stringValue id="171">Reuters DataScope Select</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="172" type="java.util.HashSet">
<item id="173" type="com.j2fe.workflow.definition.Transition">
<name id="174">false</name>
<source id="175">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="176">RT Business Feed Check</name>
<nodeHandler>com.j2fe.general.activities.IsNull</nodeHandler>
<nodeHandlerClass id="177">com.j2fe.general.activities.IsNull</nodeHandlerClass>
<parameters id="178" type="java.util.HashSet">
<item id="179" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="180">input</name>
<stringValue id="181">ReuterBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="182" type="java.util.HashSet">
<item id="183" type="com.j2fe.workflow.definition.Transition">
<name id="184">true</name>
<source id="185">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="186">RT File Name Check</name>
<nodeHandler>com.j2fe.general.activities.IsNull</nodeHandler>
<nodeHandlerClass id="187">com.j2fe.general.activities.IsNull</nodeHandlerClass>
<parameters id="188" type="java.util.HashSet">
<item id="189" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="190">input</name>
<stringValue id="191">RTFilePattern</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="192" type="java.util.HashSet">
<item id="193" type="com.j2fe.workflow.definition.Transition">
<name id="194">ToSplit</name>
<source id="195">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="196">Automatically generated</description>
<directJoin>false</directJoin>
<name id="197">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="198">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="199" type="java.util.HashSet">
<item id="200" type="com.j2fe.workflow.definition.Transition">
<name id="201">false</name>
<source id="202">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="203">Load RT Files from Local</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="204">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="205" type="java.util.HashSet">
<item id="206" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="207">caseItem</name>
<stringValue id="208">LoadFromLocalRT</stringValue>
<type>VARIABLE</type>
</item>
<item id="209" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="210">defaultItem</name>
<stringValue id="211">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="212" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="213">nullTransition</name>
<stringValue id="214">false</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="215" type="java.util.HashSet">
<item id="216" type="com.j2fe.workflow.definition.Transition">
<name id="217">ToSplit</name>
<source id="218">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="219">Automatically generated</description>
<directJoin>false</directJoin>
<name id="220">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="221">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="222" type="java.util.HashSet">
<item id="223" type="com.j2fe.workflow.definition.Transition">
<name id="224">false</name>
<source id="225">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="226">Load Elektron Files from Local</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="227">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="228" type="java.util.HashSet">
<item id="229" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="230">caseItem</name>
<stringValue id="231">LoadFromLocalElektron</stringValue>
<type>VARIABLE</type>
</item>
<item id="232" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="233">defaultItem</name>
<stringValue id="234">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="235" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="236">nullTransition</name>
<stringValue id="237">false</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="238" type="java.util.HashSet">
<item id="239" type="com.j2fe.workflow.definition.Transition">
<name id="240">goto-next</name>
<source id="241">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="242">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="243">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="244" type="java.util.HashSet">
<item id="245" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="246">file</name>
<objectValue id="247" type="java.net.URI">CBA_WF_FileLoading</objectValue>
<type>CONSTANT</type>
</item>
<item id="248" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="249">jobId</name>
<stringValue id="250">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="251" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="252">parentJobId</name>
<stringValue id="253">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="254" type="java.util.HashSet">
<item id="255" type="com.j2fe.workflow.definition.Transition">
<name id="256">goto-next</name>
<source id="257">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="258">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="259">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="260" type="java.util.HashSet"/>
<targets id="261" type="java.util.HashSet">
<item idref="255" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="241"/>
</item>
</sources>
<targets id="262" type="java.util.HashSet">
<item idref="239" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="225"/>
</item>
</sources>
<targets id="263" type="java.util.HashSet">
<item idref="223" type="com.j2fe.workflow.definition.Transition"/>
<item id="264" type="com.j2fe.workflow.definition.Transition">
<name id="265">true</name>
<source idref="225"/>
<target id="266">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="267">List Files</name>
<nodeHandler>com.j2fe.feeds.activities.ListFiles</nodeHandler>
<nodeHandlerClass id="268">com.j2fe.feeds.activities.ListFiles</nodeHandlerClass>
<parameters id="269" type="java.util.HashSet">
<item id="270" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="271">businessFeedFilter</name>
<stringValue id="272">ElectronBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="273" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="274">directory</name>
<stringValue id="275">ElectronLocalDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="276" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="277">fileSystem</name>
<stringValue id="278">filesystem/local</stringValue>
<type>REFERENCE</type>
</item>
<item id="279" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="280">includeBoth</name>
<objectValue id="281" type="java.lang.Boolean">true</objectValue>
<type>CONSTANT</type>
</item>
<item id="282" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="283">pattern</name>
<stringValue id="284">ElectronFilePattern</stringValue>
<type>VARIABLE</type>
</item>
<item id="285" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="286">uris</name>
<stringValue id="287">ElectronFileURL</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="288" type="java.util.HashSet">
<item id="289" type="java.lang.String">ElectronFileURL
1000</item>
</persistentVariables>
<sources id="290" type="java.util.HashSet">
<item idref="264" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="291" type="java.util.HashSet">
<item id="292" type="com.j2fe.workflow.definition.Transition">
<name id="293">empty</name>
<source idref="266"/>
<target id="294">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="295">Sync</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="296">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="297" type="java.util.HashSet">
<item idref="292" type="com.j2fe.workflow.definition.Transition"/>
<item id="298" type="com.j2fe.workflow.definition.Transition">
<name id="299">end-loop</name>
<source id="300">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="301">For Loop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.ForEach</nodeHandler>
<nodeHandlerClass id="302">com.j2fe.workflow.handler.impl.ForEach</nodeHandlerClass>
<parameters id="303" type="java.util.HashSet">
<item id="304" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="305">counter</name>
<stringValue id="306">Counter1</stringValue>
<type>VARIABLE</type>
</item>
<item id="307" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="308">counter</name>
<stringValue id="309">Counter1</stringValue>
<type>VARIABLE</type>
</item>
<item id="310" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="311">input</name>
<stringValue id="312">ElectronFileURL</stringValue>
<type>VARIABLE</type>
</item>
<item id="313" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="314">output</name>
<stringValue id="315">SingleElectronFileURL</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="316" type="java.util.HashSet">
<item id="317" type="com.j2fe.workflow.definition.Transition">
<name id="318">goto-next</name>
<source id="319">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="320">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="321">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="322" type="java.util.HashSet">
<item id="323" type="com.j2fe.workflow.definition.Transition">
<name id="324">goto-next</name>
<source id="325">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="326">Load Elektron Files (SFL)</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="327">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="328" type="java.util.HashSet">
<item id="329" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="330">["BusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="331">input["BusinessFeed"]</name>
<stringValue id="332">ElectronBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="333" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="334">["File"]@java/net/URI@</UITypeHint>
<input>true</input>
<name id="335">input["File"]</name>
<stringValue id="336">SingleElectronFileURL</stringValue>
<type>VARIABLE</type>
</item>
<item id="337" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="338">["MessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="339">input["MessageType"]</name>
<stringValue id="340">RMDS</stringValue>
<type>CONSTANT</type>
</item>
<item id="341" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="342">["PricePointEventDefinitionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="343">input["PricePointEventDefinitionId"]</name>
<stringValue id="344">Price Point Event Definition Id</stringValue>
<type>VARIABLE</type>
</item>
<item id="345" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="346">["ProcessingDate"]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="347">input["ProcessingDate"]</name>
<stringValue id="348">Processing Date</stringValue>
<type>VARIABLE</type>
</item>
<item id="349" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="350">name</name>
<stringValue id="351">Standard File Load</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="352" type="java.util.HashSet">
<item id="353" type="com.j2fe.workflow.definition.Transition">
<name id="354">loop</name>
<source idref="300"/>
<target idref="325"/>
</item>
</sources>
<targets id="355" type="java.util.HashSet">
<item idref="323" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="319"/>
</item>
<item id="356" type="com.j2fe.workflow.definition.Transition">
<name id="357">not-empty</name>
<source idref="266"/>
<target idref="319"/>
</item>
</sources>
<targets id="358" type="java.util.HashSet">
<item idref="317" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="300"/>
</item>
</sources>
<targets id="359" type="java.util.HashSet">
<item idref="298" type="com.j2fe.workflow.definition.Transition"/>
<item idref="353" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="294"/>
</item>
</sources>
<targets id="360" type="java.util.HashSet">
<item id="361" type="com.j2fe.workflow.definition.Transition">
<name id="362">goto-next</name>
<source idref="294"/>
<target idref="218"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="356" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="218"/>
</item>
<item idref="361" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="363" type="java.util.HashSet">
<item idref="216" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="202"/>
</item>
</sources>
<targets id="364" type="java.util.HashSet">
<item idref="200" type="com.j2fe.workflow.definition.Transition"/>
<item id="365" type="com.j2fe.workflow.definition.Transition">
<name id="366">true</name>
<source idref="202"/>
<target id="367">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="368">List Files</name>
<nodeHandler>com.j2fe.feeds.activities.ListFiles</nodeHandler>
<nodeHandlerClass id="369">com.j2fe.feeds.activities.ListFiles</nodeHandlerClass>
<parameters id="370" type="java.util.HashSet">
<item id="371" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="372">businessFeedFilter</name>
<stringValue id="373">ReutersBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="374" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="375">directory</name>
<stringValue id="376">ReutersLocalDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="377" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="378">fileSystem</name>
<stringValue id="379">filesystem/local</stringValue>
<type>REFERENCE</type>
</item>
<item id="380" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="381">pattern</name>
<stringValue id="382">ReutersFilePattern</stringValue>
<type>VARIABLE</type>
</item>
<item id="383" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="384">uris</name>
<stringValue id="385">ReutersFileURL</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="386" type="java.util.HashSet">
<item id="387" type="java.lang.String">ReutersFileURL
1000</item>
</persistentVariables>
<sources id="388" type="java.util.HashSet">
<item idref="365" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="389" type="java.util.HashSet">
<item id="390" type="com.j2fe.workflow.definition.Transition">
<name id="391">empty</name>
<source idref="367"/>
<target id="392">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="393">Sync</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="394">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="395" type="java.util.HashSet">
<item idref="390" type="com.j2fe.workflow.definition.Transition"/>
<item id="396" type="com.j2fe.workflow.definition.Transition">
<name id="397">end-loop</name>
<source id="398">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="399">For Loop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.ForEach</nodeHandler>
<nodeHandlerClass id="400">com.j2fe.workflow.handler.impl.ForEach</nodeHandlerClass>
<parameters id="401" type="java.util.HashSet">
<item id="402" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="403">counter</name>
<stringValue id="404">Counter2</stringValue>
<type>VARIABLE</type>
</item>
<item id="405" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="406">counter</name>
<stringValue id="407">Counter2</stringValue>
<type>VARIABLE</type>
</item>
<item id="408" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="409">input</name>
<stringValue id="410">ReutersFileURL</stringValue>
<type>VARIABLE</type>
</item>
<item id="411" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="412">output</name>
<stringValue id="413">SingleReutersFileURL</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="414" type="java.util.HashSet">
<item id="415" type="com.j2fe.workflow.definition.Transition">
<name id="416">goto-next</name>
<source id="417">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="418">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="419">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="420" type="java.util.HashSet">
<item id="421" type="com.j2fe.workflow.definition.Transition">
<name id="422">goto-next</name>
<source id="423">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="424">Load Reuters Files (SFL)</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="425">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="426" type="java.util.HashSet">
<item id="427" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="428">["File"]@java/net/URI@</UITypeHint>
<input>true</input>
<name id="429">input["File"]</name>
<stringValue id="430">SingleReutersFileURL</stringValue>
<type>VARIABLE</type>
</item>
<item id="431" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="432">["MessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="433">input["MessageType"]</name>
<stringValue id="434">ReutersDssPrices</stringValue>
<type>CONSTANT</type>
</item>
<item id="435" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="436">["PricePointEventDefinitionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="437">input["PricePointEventDefinitionId"]</name>
<stringValue id="438">Price Point Event Definition Id</stringValue>
<type>VARIABLE</type>
</item>
<item id="439" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="440">["ProcessingDate"]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="441">input["ProcessingDate"]</name>
<stringValue id="442">Processing Date</stringValue>
<type>VARIABLE</type>
</item>
<item id="443" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="444">name</name>
<stringValue id="445">Standard File Load</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="446" type="java.util.HashSet">
<item id="447" type="com.j2fe.workflow.definition.Transition">
<name id="448">loop</name>
<source idref="398"/>
<target idref="423"/>
</item>
</sources>
<targets id="449" type="java.util.HashSet">
<item idref="421" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="417"/>
</item>
<item id="450" type="com.j2fe.workflow.definition.Transition">
<name id="451">not-empty</name>
<source idref="367"/>
<target idref="417"/>
</item>
</sources>
<targets id="452" type="java.util.HashSet">
<item idref="415" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="398"/>
</item>
</sources>
<targets id="453" type="java.util.HashSet">
<item idref="396" type="com.j2fe.workflow.definition.Transition"/>
<item idref="447" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="392"/>
</item>
</sources>
<targets id="454" type="java.util.HashSet">
<item id="455" type="com.j2fe.workflow.definition.Transition">
<name id="456">goto-next</name>
<source idref="392"/>
<target idref="195"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="450" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="195"/>
</item>
<item idref="455" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="457" type="java.util.HashSet">
<item idref="193" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="185"/>
</item>
</sources>
<targets id="458" type="java.util.HashSet">
<item id="459" type="com.j2fe.workflow.definition.Transition">
<name id="460">false</name>
<source idref="185"/>
<target id="461">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="462">Reuter's File Load with File Name</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="463">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="464" type="java.util.HashSet">
<item id="465" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="466">["BusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="467">input["BusinessFeed"]</name>
<stringValue id="468">ReuterBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="469" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="470">["Directory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="471">input["Directory"]</name>
<stringValue id="472">RTDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="473" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="474">["FileLoadEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="475">input["FileLoadEvent"]</name>
<stringValue id="476">StandardFileLoad</stringValue>
<type>CONSTANT</type>
</item>
<item id="477" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="478">["FilePatterns"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="479">input["FilePatterns"]</name>
<stringValue id="480">RTFilePattern</stringValue>
<type>VARIABLE</type>
</item>
<item id="481" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="482">["IncludeFilePatternNBusinessFeed"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="483">input["IncludeFilePatternNBusinessFeed"]</name>
<objectValue id="484" type="java.lang.Boolean">false</objectValue>
<type>CONSTANT</type>
</item>
<item id="485" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="486">["MessageBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="487">input["MessageBulkSize"]</name>
<objectValue id="488" type="java.lang.Integer">500</objectValue>
<type>CONSTANT</type>
</item>
<item id="489" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="490">["MessageProcessingEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="491">input["MessageProcessingEvent"]</name>
<stringValue id="492">ProcessFeedMessage</stringValue>
<type>CONSTANT</type>
</item>
<item id="493" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="494">["NrOfFilesParallel"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="495">input["NrOfFilesParallel"]</name>
<objectValue id="496" type="java.lang.Integer">2</objectValue>
<type>CONSTANT</type>
</item>
<item id="497" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="498">["ParallelBranches"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="499">input["ParallelBranches"]</name>
<objectValue idref="496"/>
<type>CONSTANT</type>
</item>
<item id="500" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="501">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="502">input["ParentJobID"]</name>
<stringValue id="503">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="504" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="505">["PricePointEventDefinitionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="506">input["PricePointEventDefinitionId"]</name>
<stringValue id="507">Price Point Event Definition Id</stringValue>
<type>VARIABLE</type>
</item>
<item id="508" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="509">["ProcessingDate"]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="510">input["ProcessingDate"]</name>
<stringValue id="511">Processing Date</stringValue>
<type>VARIABLE</type>
</item>
<item id="512" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="513">["ReProcessProcessedFiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="514">input["ReProcessProcessedFiles"]</name>
<stringValue id="515">ReProcessProcessedFiles</stringValue>
<type>VARIABLE</type>
</item>
<item id="516" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="517">["RecursiveSearch"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="518">input["RecursiveSearch"]</name>
<objectValue idref="484"/>
<type>CONSTANT</type>
</item>
<item id="519" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="520">["ReutersFileSystem"]@com/j2fe/connector/ReutersFileSystemType@</UITypeHint>
<input>true</input>
<name id="521">input["ReutersFileSystem"]</name>
<stringValue id="522">ReutersFileSystem</stringValue>
<type>VARIABLE</type>
</item>
<item id="523" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="524">["SortAscending"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="525">input["SortAscending"]</name>
<objectValue idref="281"/>
<type>CONSTANT</type>
</item>
<item id="526" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="527">["SortOrder"]@com/j2fe/feeds/activities/ListFiles$Sort@</UITypeHint>
<input>true</input>
<name id="528">input["SortOrder"]</name>
<objectValue id="529" type="com.j2fe.feeds.activities.ListFiles$Sort">NATURAL</objectValue>
<type>CONSTANT</type>
</item>
<item id="530" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="531">["SuccessAction"]@com/j2fe/feeds/SuccessAction@</UITypeHint>
<input>true</input>
<name id="532">input["SuccessAction"]</name>
<objectValue id="533" type="com.j2fe.feeds.SuccessAction">LEAVE</objectValue>
<type>CONSTANT</type>
</item>
<item id="534" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="535">["VendorDefinition"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="536">input["VendorDefinition"]</name>
<stringValue id="537">REUTERS</stringValue>
<type>CONSTANT</type>
</item>
<item id="538" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="539">name</name>
<stringValue id="540">Reuters DataScope Select</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="541" type="java.util.HashSet">
<item idref="459" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="542" type="java.util.HashSet">
<item id="543" type="com.j2fe.workflow.definition.Transition">
<name id="544">goto-next</name>
<source idref="461"/>
<target idref="83"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="183" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="175"/>
</item>
</sources>
<targets id="545" type="java.util.HashSet">
<item idref="173" type="com.j2fe.workflow.definition.Transition"/>
<item id="546" type="com.j2fe.workflow.definition.Transition">
<name id="547">true</name>
<source idref="175"/>
<target idref="83"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="89"/>
</item>
</sources>
<targets id="548" type="java.util.HashSet">
<item idref="87" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="83"/>
</item>
<item idref="543" type="com.j2fe.workflow.definition.Transition"/>
<item idref="546" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="549" type="java.util.HashSet">
<item idref="81" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="67"/>
</item>
</sources>
<targets id="550" type="java.util.HashSet">
<item idref="65" type="com.j2fe.workflow.definition.Transition"/>
<item id="551" type="com.j2fe.workflow.definition.Transition">
<name id="552">true</name>
<source idref="67"/>
<target id="553">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="554">List Files</name>
<nodeHandler>com.j2fe.feeds.activities.ListFiles</nodeHandler>
<nodeHandlerClass id="555">com.j2fe.feeds.activities.ListFiles</nodeHandlerClass>
<parameters id="556" type="java.util.HashSet">
<item id="557" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="558">businessFeedFilter</name>
<stringValue id="559">BBBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="560" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="561">directory</name>
<stringValue id="562">BBLocalDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="563" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="564">fileSystem</name>
<stringValue id="565">filesystem/local</stringValue>
<type>REFERENCE</type>
</item>
<item id="566" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="567">pattern</name>
<stringValue id="568">BBFilePattern</stringValue>
<type>VARIABLE</type>
</item>
<item id="569" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="570">uris</name>
<stringValue id="571">BBFileURL</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="572" type="java.util.HashSet">
<item id="573" type="java.lang.String">BBFileURL
1000</item>
</persistentVariables>
<sources id="574" type="java.util.HashSet">
<item idref="551" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="575" type="java.util.HashSet">
<item id="576" type="com.j2fe.workflow.definition.Transition">
<name id="577">empty</name>
<source idref="553"/>
<target id="578">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="579">Sync</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="580">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="581" type="java.util.HashSet">
<item idref="576" type="com.j2fe.workflow.definition.Transition"/>
<item id="582" type="com.j2fe.workflow.definition.Transition">
<name id="583">end-loop</name>
<source id="584">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="585">For Loop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.ForEach</nodeHandler>
<nodeHandlerClass id="586">com.j2fe.workflow.handler.impl.ForEach</nodeHandlerClass>
<parameters id="587" type="java.util.HashSet">
<item id="588" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="589">counter</name>
<stringValue id="590">Counter3</stringValue>
<type>VARIABLE</type>
</item>
<item id="591" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="592">counter</name>
<stringValue id="593">Counter3</stringValue>
<type>VARIABLE</type>
</item>
<item id="594" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="595">input</name>
<stringValue id="596">BBFileURL</stringValue>
<type>VARIABLE</type>
</item>
<item id="597" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="598">output</name>
<stringValue id="599">SingleBBFileURL</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="600" type="java.util.HashSet">
<item id="601" type="com.j2fe.workflow.definition.Transition">
<name id="602">goto-next</name>
<source id="603">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="604">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="605">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="606" type="java.util.HashSet">
<item id="607" type="com.j2fe.workflow.definition.Transition">
<name id="608">goto-next</name>
<source id="609">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="610">Load BB Files (SFL)</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="611">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="612" type="java.util.HashSet">
<item id="613" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="614">["File"]@java/net/URI@</UITypeHint>
<input>true</input>
<name id="615">input["File"]</name>
<stringValue id="616">SingleBBFileURL</stringValue>
<type>VARIABLE</type>
</item>
<item id="617" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="618">["MessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="619">input["MessageType"]</name>
<stringValue id="620">CBA_Bloomberg_Currency</stringValue>
<type>CONSTANT</type>
</item>
<item id="621" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="622">["PricePointEventDefinitionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="623">input["PricePointEventDefinitionId"]</name>
<stringValue id="624">Price Point Event Definition Id</stringValue>
<type>VARIABLE</type>
</item>
<item id="625" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="626">["ProcessingDate"]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="627">input["ProcessingDate"]</name>
<stringValue id="628">Processing Date</stringValue>
<type>VARIABLE</type>
</item>
<item id="629" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="630">name</name>
<stringValue id="631">Standard File Load</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="632" type="java.util.HashSet">
<item id="633" type="com.j2fe.workflow.definition.Transition">
<name id="634">loop</name>
<source idref="584"/>
<target idref="609"/>
</item>
</sources>
<targets id="635" type="java.util.HashSet">
<item idref="607" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="603"/>
</item>
<item id="636" type="com.j2fe.workflow.definition.Transition">
<name id="637">not-empty</name>
<source idref="553"/>
<target idref="603"/>
</item>
</sources>
<targets id="638" type="java.util.HashSet">
<item idref="601" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="584"/>
</item>
</sources>
<targets id="639" type="java.util.HashSet">
<item idref="582" type="com.j2fe.workflow.definition.Transition"/>
<item idref="633" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="578"/>
</item>
</sources>
<targets id="640" type="java.util.HashSet">
<item id="641" type="com.j2fe.workflow.definition.Transition">
<name id="642">goto-next</name>
<source idref="578"/>
<target idref="60"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="636" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="60"/>
</item>
<item idref="641" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="643" type="java.util.HashSet">
<item idref="58" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="50"/>
</item>
</sources>
<targets id="644" type="java.util.HashSet">
<item idref="48" type="com.j2fe.workflow.definition.Transition"/>
<item id="645" type="com.j2fe.workflow.definition.Transition">
<name id="646">true</name>
<source idref="50"/>
<target idref="18"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="24"/>
</item>
</sources>
<targets id="647" type="java.util.HashSet">
<item idref="22" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="18"/>
</item>
<item idref="645" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="648" type="java.util.HashSet">
<item idref="16" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="8"/>
</item>
</sources>
<targets id="649" type="java.util.HashSet">
<item idref="6" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
</sources>
<targets id="650" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="651">CBACustomWorkflows</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="652">user1</lastChangeUser>
<lastUpdate id="653">2018-05-16T21:15:52.000+1000</lastUpdate>
<name id="654">CBA_WF_FileLoading</name>
<optimize>true</optimize>
<parameter id="655" type="java.util.HashMap">
<entry>
<key id="656" type="java.lang.String">BBBusinessFeed</key>
<value id="657" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="658">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="659" type="java.lang.String">BBDownloadDirectory</key>
<value id="660" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="661">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="662">Bloomberg Download Directory</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="663" type="java.lang.String">BBFilePattern</key>
<value id="664" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="665">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="666" type="java.lang.String">BBLocalDirectory</key>
<value id="667" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="668">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="669" type="java.lang.String">BBResponseFileName</key>
<value id="670" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="671">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="672">Bloomberg Response File Name</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="673" type="java.lang.String">ElectronBusinessFeed</key>
<value id="674" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="675">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="676" type="java.lang.String">ElectronFilePattern</key>
<value id="677" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="678">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="679" type="java.lang.String">ElectronLocalDirectory</key>
<value id="680" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="681">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="682" type="java.lang.String">LoadFromLocalBB</key>
<value id="683" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="684">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="685" type="java.lang.String">LoadFromLocalElektron</key>
<value id="686" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="687">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="688" type="java.lang.String">LoadFromLocalRT</key>
<value id="689" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="690">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="691" type="java.lang.String">Parallel File Load Sub</key>
<value id="692" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="693">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="694" type="java.lang.String">ParentJobID</key>
<value id="695" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="696">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="697">ParentJobID</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="698" type="java.lang.String">Price Point Event Definition Id</key>
<value id="699" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="700">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="701">Price Point Event Definition Id</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="702" type="java.lang.String">Processing Date</key>
<value id="703" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="704">java.util.Date</className>
<clazz>java.util.Date</clazz>
<description id="705">Processing Date</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="706" type="java.lang.String">RTDirectory</key>
<value id="707" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="708">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="709">Reuter's Directory</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="710" type="java.lang.String">RTFilePattern</key>
<value id="711" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="712">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="713">Reuters file names which need to be loaded.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="714" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="715" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="716">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="717">Allow reprocessing the processed files.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="718" type="java.lang.String">ReuterBusinessFeed</key>
<value id="719" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="720">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="721">ReuterBusinessFeed such as  ReutersDSS_IntraDay_Pricing</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="722" type="java.lang.String">ReutersBusinessFeed</key>
<value id="723" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="724">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="725" type="java.lang.String">ReutersFilePattern</key>
<value id="726" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="727">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="728" type="java.lang.String">ReutersFileSystem</key>
<value id="729" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="730">com.j2fe.connector.ReutersFileSystemType</className>
<clazz>com.j2fe.connector.ReutersFileSystemType</clazz>
<description id="731">ReutersFileSystem</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="732" type="java.lang.String">ReutersLocalDirectory</key>
<value id="733" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="734">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="735" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="257"/>
<status>RELEASED</status>
<variables id="736" type="java.util.HashMap">
<entry>
<key id="737" type="java.lang.String">BBBusinessFeed</key>
<value id="738" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="739">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="740" type="java.lang.String">CBA_Bloomberg</value>
</value>
</entry>
<entry>
<key id="741" type="java.lang.String">BBDownloadDirectory</key>
<value id="742" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="743">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="744">Bloomberg Download Directory</description>
<persistent>false</persistent>
<value id="745" type="java.lang.String">/</value>
</value>
</entry>
<entry>
<key id="746" type="java.lang.String">BBFilePattern</key>
<value id="747" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="748">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="749" type="java.lang.String">BBLocalDirectory</key>
<value id="750" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="751">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="752" type="java.lang.String">/share/gs/InputFiles/local/bb</value>
</value>
</entry>
<entry>
<key id="753" type="java.lang.String">BBResponseFileName</key>
<value id="754" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="755">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="756">Bloomberg Response File Name</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="757" type="java.lang.String">Counter1</key>
<value id="758" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="759">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
<value id="760" type="java.lang.Integer">0</value>
</value>
</entry>
<entry>
<key id="761" type="java.lang.String">Counter2</key>
<value id="762" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="763">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
<value idref="760"/>
</value>
</entry>
<entry>
<key id="764" type="java.lang.String">Counter3</key>
<value id="765" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="766">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
<value idref="760"/>
</value>
</entry>
<entry>
<key id="767" type="java.lang.String">ElectronBusinessFeed</key>
<value id="768" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="769">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="770" type="java.lang.String">RMDS</value>
</value>
</entry>
<entry>
<key id="771" type="java.lang.String">ElectronFilePattern</key>
<value id="772" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="773">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="774" type="java.lang.String">ElectronLocalDirectory</key>
<value id="775" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="776">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="777" type="java.lang.String">/share/gs/InputFiles/local/reuters</value>
</value>
</entry>
<entry>
<key id="778" type="java.lang.String">JobID</key>
<value id="779" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="780">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="781" type="java.lang.String">LoadFromLocalBB</key>
<value id="782" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="783">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="484"/>
</value>
</entry>
<entry>
<key id="784" type="java.lang.String">LoadFromLocalElektron</key>
<value id="785" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="786">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="484"/>
</value>
</entry>
<entry>
<key id="787" type="java.lang.String">LoadFromLocalRT</key>
<value id="788" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="789">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="484"/>
</value>
</entry>
<entry>
<key id="790" type="java.lang.String">Parallel File Load Sub</key>
<value id="791" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="792">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>true</persistent>
<value id="793" type="java.lang.String">Parallel File Load Sub</value>
</value>
</entry>
<entry>
<key id="794" type="java.lang.String">ParentJobID</key>
<value id="795" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="796">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="797">ParentJobID</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="798" type="java.lang.String">Price Point Event Definition Id</key>
<value id="799" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="800">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="801">Price Point Event Definition Id</description>
<persistent>false</persistent>
<value id="802" type="java.lang.String">Default</value>
</value>
</entry>
<entry>
<key id="803" type="java.lang.String">Processing Date</key>
<value id="804" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="805">java.util.Date</className>
<clazz>java.util.Date</clazz>
<description id="806">Processing Date</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="807" type="java.lang.String">RTDirectory</key>
<value id="808" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="809">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="810">Reuter's Directory</description>
<persistent>false</persistent>
<value id="811" type="java.lang.String">/reports</value>
</value>
</entry>
<entry>
<key id="812" type="java.lang.String">RTFilePattern</key>
<value id="813" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="814">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="815">Reuters file names which need to be loaded.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="816" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="817" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="818">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="819">Allow reprocessing the processed files.</description>
<persistent>false</persistent>
<value idref="281"/>
</value>
</entry>
<entry>
<key id="820" type="java.lang.String">ReuterBusinessFeed</key>
<value id="821" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="822">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="823">ReuterBusinessFeed such as  ReutersDSS_IntraDay_Pricing</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="824" type="java.lang.String">ReutersBusinessFeed</key>
<value id="825" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="826">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="827" type="java.lang.String">REUTERS</value>
</value>
</entry>
<entry>
<key id="828" type="java.lang.String">ReutersFilePattern</key>
<value id="829" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="830">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="831" type="java.lang.String">ReutersFileSystem</key>
<value id="832" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="833">com.j2fe.connector.ReutersFileSystemType</className>
<clazz>com.j2fe.connector.ReutersFileSystemType</clazz>
<description id="834">ReutersFileSystem</description>
<persistent>false</persistent>
<value id="835" type="com.j2fe.connector.ReutersFileSystemType">SFTP</value>
</value>
</entry>
<entry>
<key id="836" type="java.lang.String">ReutersLocalDirectory</key>
<value id="837" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="838">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="839" type="java.lang.String">/share/gs/InputFiles/local/reuters</value>
</value>
</entry>
</variables>
<version>23</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
