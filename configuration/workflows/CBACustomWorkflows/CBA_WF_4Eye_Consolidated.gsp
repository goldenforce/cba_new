<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.16">
<package-comment/>
<businessobject displayString="29 - async" type="com.j2fe.workflow.definition.Workflow">
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
<name id="17">false</name>
<source id="18">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="19">Switch Case</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="20">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="21" type="java.util.HashSet">
<item id="22" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="23">caseItem</name>
<stringValue id="24">pPublishFlag</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="25" type="java.util.HashSet">
<item id="26" type="com.j2fe.workflow.definition.Transition">
<name id="27">goto-next</name>
<source id="28">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="29">Call Subworkflow</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="30">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="31" type="java.util.HashSet">
<item id="32" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="33">["Additional Price Qualification Type"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="34">input["Additional Price Qualification Type"]</name>
<stringValue id="35">Additional Price Qualification Type</stringValue>
<type>VARIABLE</type>
</item>
<item id="36" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="37">["Base Currency"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="38">input["Base Currency"]</name>
<stringValue id="39">Base Currency</stringValue>
<type>VARIABLE</type>
</item>
<item id="40" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="41">["Bulk Size"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="42">input["Bulk Size"]</name>
<stringValue id="43">Bulk Size</stringValue>
<type>VARIABLE</type>
</item>
<item id="44" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="45">["Calculate MID price Options"]@com/j2fe/pricing/MIDCalculationOptions@</UITypeHint>
<input>true</input>
<name id="46">input["Calculate MID price Options"]</name>
<stringValue id="47">Calculate MID price Options</stringValue>
<type>VARIABLE</type>
</item>
<item id="48" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="49">["Calendar"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="50">input["Calendar"]</name>
<stringValue id="51">Calendar</stringValue>
<type>VARIABLE</type>
</item>
<item id="52" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="53">["CleanValidationInstructionCache"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="54">input["CleanValidationInstructionCache"]</name>
<stringValue id="55">CleanValidationInstructionCache</stringValue>
<type>VARIABLE</type>
</item>
<item id="56" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="57">["Consider Calendar Results"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="58">input["Consider Calendar Results"]</name>
<stringValue id="59">Consider Calendar Results</stringValue>
<type>VARIABLE</type>
</item>
<item id="60" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="61">["Consider Negative Prices"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="62">input["Consider Negative Prices"]</name>
<stringValue id="63">Consider Negative Prices</stringValue>
<type>VARIABLE</type>
</item>
<item id="64" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="65">["Country"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="66">input["Country"]</name>
<stringValue id="67">Country</stringValue>
<type>VARIABLE</type>
</item>
<item id="68" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="69">["CreateGPRCOnHoliday"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="70">input["CreateGPRCOnHoliday"]</name>
<stringValue id="71">CreateGPRCOnHoliday</stringValue>
<type>VARIABLE</type>
</item>
<item id="72" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="73">["CreatePriceStatusForGoldenPrice"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="74">input["CreatePriceStatusForGoldenPrice"]</name>
<stringValue id="75">CreatePriceStatusForGoldenPrice</stringValue>
<type>VARIABLE</type>
</item>
<item id="76" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="77">["Derive Golden Price"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="78">input["Derive Golden Price"]</name>
<stringValue id="79">Derive Golden Price</stringValue>
<type>VARIABLE</type>
</item>
<item id="80" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="81">["DiagnosticMode"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="82">input["DiagnosticMode"]</name>
<stringValue id="83">DiagnosticMode</stringValue>
<type>VARIABLE</type>
</item>
<item id="84" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="85">["Do Price Derivation First"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="86">input["Do Price Derivation First"]</name>
<stringValue id="87">Do Price Derivation First</stringValue>
<type>VARIABLE</type>
</item>
<item id="88" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="89">["Donot Consider Issue Maturity"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="90">input["Donot Consider Issue Maturity"]</name>
<stringValue id="91">Donot Consider Issue Maturity</stringValue>
<type>VARIABLE</type>
</item>
<item id="92" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="93">["Downstream System Identifier"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="94">input["Downstream System Identifier"]</name>
<stringValue id="95">Downstream System Identifier</stringValue>
<type>VARIABLE</type>
</item>
<item id="96" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="97">["ExecuteCustomActivityCheck"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="98">input["ExecuteCustomActivityCheck"]</name>
<stringValue id="99">ExecuteCustomActivityCheck</stringValue>
<type>VARIABLE</type>
</item>
<item id="100" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="101">["Extra Configuration Information"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="102">input["Extra Configuration Information"]</name>
<stringValue id="103">Extra Configuration Information</stringValue>
<type>VARIABLE</type>
</item>
<item id="104" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="105">["FXRT Look Back Period"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="106">input["FXRT Look Back Period"]</name>
<stringValue id="107">FXRT Look Back Period</stringValue>
<type>VARIABLE</type>
</item>
<item id="108" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="109">["Foreign Exchange Price Type"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="110">input["Foreign Exchange Price Type"]</name>
<stringValue id="111">Foreign Exchange Price Type</stringValue>
<type>VARIABLE</type>
</item>
<item id="112" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="113">["Foreign Exchange Type"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="114">input["Foreign Exchange Type"]</name>
<stringValue id="115">Foreign Exchange Type</stringValue>
<type>VARIABLE</type>
</item>
<item id="116" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="117">["FundType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="118">input["FundType"]</name>
<stringValue id="119">FundType</stringValue>
<type>VARIABLE</type>
</item>
<item id="120" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="121">["GoldenToleranceToDo"]@com/j2fe/pricing/ToleranceCases@</UITypeHint>
<input>true</input>
<name id="122">input["GoldenToleranceToDo"]</name>
<stringValue id="123">GoldenToleranceToDo</stringValue>
<type>VARIABLE</type>
</item>
<item id="124" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="125">["Ignore Issue MAT_EXP_TMS"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="126">input["Ignore Issue MAT_EXP_TMS"]</name>
<stringValue id="127">Ignore Issue MAT_EXP_TMS</stringValue>
<type>VARIABLE</type>
</item>
<item id="128" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="129">["IgnorePriceValidityForComparison"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="130">input["IgnorePriceValidityForComparison"]</name>
<stringValue id="131">IgnorePriceValidityForComparison</stringValue>
<type>VARIABLE</type>
</item>
<item id="132" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="133">["Instruments"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="134">input["Instruments"]</name>
<stringValue id="135">Instruments</stringValue>
<type>VARIABLE</type>
</item>
<item id="136" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="137">["IsExternalLibrary"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="138">input["IsExternalLibrary"]</name>
<stringValue id="139">IsExternalLibrary</stringValue>
<type>VARIABLE</type>
</item>
<item id="140" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="141">["IsWaterfallModel"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="142">input["IsWaterfallModel"]</name>
<stringValue id="143">IsWaterfallModel</stringValue>
<type>VARIABLE</type>
</item>
<item id="144" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="145">["IssueType"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="146">input["IssueType"]</name>
<stringValue id="147">IssueType</stringValue>
<type>VARIABLE</type>
</item>
<item id="148" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="149">["IssueTypeGroup"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="150">input["IssueTypeGroup"]</name>
<stringValue id="151">IssueTypeGroup</stringValue>
<type>VARIABLE</type>
</item>
<item id="152" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="153">["JobDefinitionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="154">input["JobDefinitionId"]</name>
<stringValue id="155">JobDefinitionId</stringValue>
<type>VARIABLE</type>
</item>
<item id="156" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="157">["JobIDs"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="158">input["JobIDs"]</name>
<stringValue id="159">JobIDs</stringValue>
<type>VARIABLE</type>
</item>
<item id="160" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="161">["Market"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="162">input["Market"]</name>
<stringValue id="163">Market</stringValue>
<type>VARIABLE</type>
</item>
<item id="164" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="165">["Message Type"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="166">input["Message Type"]</name>
<stringValue id="167">Message Type</stringValue>
<type>VARIABLE</type>
</item>
<item id="168" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="169">["Observation Period"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="170">input["Observation Period"]</name>
<stringValue id="171">Observation Period</stringValue>
<type>VARIABLE</type>
</item>
<item id="172" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="173">["Overwrite Suspect Status"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="174">input["Overwrite Suspect Status"]</name>
<stringValue id="175">Overwrite Suspect Status</stringValue>
<type>VARIABLE</type>
</item>
<item id="176" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="177">["PRVI Hierarchy Enable Switch"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="178">input["PRVI Hierarchy Enable Switch"]</name>
<stringValue id="179">PRVI Hierarchy Enable Switch</stringValue>
<type>VARIABLE</type>
</item>
<item id="180" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="181">["Parent Job ID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="182">input["Parent Job ID"]</name>
<stringValue id="183">Parent Job ID</stringValue>
<type>VARIABLE</type>
</item>
<item id="184" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="185">["Price Day Frequency"]@com/j2fe/pricing/PricingFrequency@</UITypeHint>
<input>true</input>
<name id="186">input["Price Day Frequency"]</name>
<stringValue id="187">Price Day Frequency</stringValue>
<type>VARIABLE</type>
</item>
<item id="188" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="189">["Price Derivation Instruments"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="190">input["Price Derivation Instruments"]</name>
<stringValue id="191">Price Derivation Instruments</stringValue>
<type>VARIABLE</type>
</item>
<item id="192" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="193">["Price Derivation Issue Type"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="194">input["Price Derivation Issue Type"]</name>
<stringValue id="195">Price Derivation Issue Type</stringValue>
<type>VARIABLE</type>
</item>
<item id="196" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="197">["Price Derivation IssueGroup"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="198">input["Price Derivation IssueGroup"]</name>
<stringValue id="199">Price Derivation IssueGroup</stringValue>
<type>VARIABLE</type>
</item>
<item id="200" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="201">["Price Derivation IssueTypeGroup"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="202">input["Price Derivation IssueTypeGroup"]</name>
<stringValue id="203">Price Derivation IssueTypeGroup</stringValue>
<type>VARIABLE</type>
</item>
<item id="204" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="205">["Price Derivation RelType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="206">input["Price Derivation RelType"]</name>
<stringValue id="207">Price Derivation RelType</stringValue>
<type>VARIABLE</type>
</item>
<item id="208" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="209">["Price Method Type"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="210">input["Price Method Type"]</name>
<stringValue id="211">Price Method Type</stringValue>
<type>VARIABLE</type>
</item>
<item id="212" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="213">["Price Quote Method Type"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="214">input["Price Quote Method Type"]</name>
<stringValue id="215">Price Quote Method Type</stringValue>
<type>VARIABLE</type>
</item>
<item id="216" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="217">["Price Source"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="218">input["Price Source"]</name>
<stringValue id="219">Price Source</stringValue>
<type>VARIABLE</type>
</item>
<item id="220" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="221">["Price Type"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="222">input["Price Type"]</name>
<stringValue id="223">Price Type</stringValue>
<type>VARIABLE</type>
</item>
<item id="224" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="225">["PricePointEventDefinitionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="226">input["PricePointEventDefinitionId"]</name>
<stringValue id="227">PricePointEventDefinitionId</stringValue>
<type>VARIABLE</type>
</item>
<item id="228" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="229">["Prior GPRC Observation Count"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="230">input["Prior GPRC Observation Count"]</name>
<stringValue id="231">Prior GPRC Observation Count</stringValue>
<type>VARIABLE</type>
</item>
<item id="232" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="233">["Processing Date Deriving Factor"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="234">input["Processing Date Deriving Factor"]</name>
<stringValue id="235">Processing Date Deriving Factor</stringValue>
<type>VARIABLE</type>
</item>
<item id="236" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="237">["Processing Date"]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="238">input["Processing Date"]</name>
<stringValue id="239">Processing Date</stringValue>
<type>VARIABLE</type>
</item>
<item id="240" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="241">["Processing Mode"]@com/j2fe/pricing/ProcessingMode@</UITypeHint>
<input>true</input>
<name id="242">input["Processing Mode"]</name>
<stringValue id="243">Processing Mode</stringValue>
<type>VARIABLE</type>
</item>
<item id="244" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="245">["PublishingEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="246">input["PublishingEvent"]</name>
<stringValue id="247">PublishingEvent</stringValue>
<type>VARIABLE</type>
</item>
<item id="248" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="249">["PurposeType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="250">input["PurposeType"]</name>
<stringValue id="251">PurposeType</stringValue>
<type>VARIABLE</type>
</item>
<item id="252" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="253">["Qualifying type for Golden Price Check"]@com/j2fe/pricing/QualifyPriceStatus@</UITypeHint>
<input>true</input>
<name id="254">input["Qualifying type for Golden Price Check"]</name>
<stringValue id="255">Qualifying type for Golden Price Check</stringValue>
<type>VARIABLE</type>
</item>
<item id="256" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="257">["ReUse Job Id"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="258">input["ReUse Job Id"]</name>
<stringValue id="259">ReUse Job Id</stringValue>
<type>VARIABLE</type>
</item>
<item id="260" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="261">["Region"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="262">input["Region"]</name>
<stringValue id="263">Region</stringValue>
<type>VARIABLE</type>
</item>
<item id="264" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="265">["RelType OneToMany"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="266">input["RelType OneToMany"]</name>
<stringValue id="267">RelType OneToMany</stringValue>
<type>VARIABLE</type>
</item>
<item id="268" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="269">["RelType Sequence"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="270">input["RelType Sequence"]</name>
<stringValue id="271">RelType Sequence</stringValue>
<type>VARIABLE</type>
</item>
<item id="272" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="273">["Run Rescrub"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="274">input["Run Rescrub"]</name>
<stringValue id="275">Run Rescrub</stringValue>
<type>VARIABLE</type>
</item>
<item id="276" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="277">["RunSameDayProcessing"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="278">input["RunSameDayProcessing"]</name>
<stringValue id="279">RunSameDayProcessing</stringValue>
<type>VARIABLE</type>
</item>
<item id="280" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="281">["Select Prvi For Hierarchy"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="282">input["Select Prvi For Hierarchy"]</name>
<stringValue id="283">Select Prvi For Hierarchy</stringValue>
<type>VARIABLE</type>
</item>
<item id="284" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="285">["Suppress GEN1 Issues for User Ids"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="286">input["Suppress GEN1 Issues for User Ids"]</name>
<stringValue id="287">Suppress GEN1 Issues for User Ids</stringValue>
<type>VARIABLE</type>
</item>
<item id="288" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="289">["Threads In Parallel"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="290">input["Threads In Parallel"]</name>
<stringValue id="291">Threads In Parallel</stringValue>
<type>VARIABLE</type>
</item>
<item id="292" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="293">["ThresholdValue"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="294">input["ThresholdValue"]</name>
<stringValue id="295">ThresholdValue</stringValue>
<type>VARIABLE</type>
</item>
<item id="296" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="297">["ToleranceToDo"]@com/j2fe/pricing/ToleranceCases@</UITypeHint>
<input>true</input>
<name id="298">input["ToleranceToDo"]</name>
<stringValue id="299">ToleranceToDo</stringValue>
<type>VARIABLE</type>
</item>
<item id="300" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="301">["Vendor"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="302">input["Vendor"]</name>
<stringValue id="303">Vendor</stringValue>
<type>VARIABLE</type>
</item>
<item id="304" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="305">["Working Job Id"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="306">input["Working Job Id"]</name>
<stringValue id="307">Working Job Id</stringValue>
<type>VARIABLE</type>
</item>
<item id="308" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="309">["WriteValidStatusRecords"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="310">input["WriteValidStatusRecords"]</name>
<stringValue id="311">WriteValidStatusRecords</stringValue>
<type>VARIABLE</type>
</item>
<item id="312" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="313">["pIssueGroupName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="314">input["pIssueGroupName"]</name>
<stringValue id="315">pIssueGroupName</stringValue>
<type>VARIABLE</type>
</item>
<item id="316" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="317">name</name>
<stringValue id="318">CBA_WF_ValidatenNotify</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="319" type="java.util.HashSet">
<item id="320" type="com.j2fe.workflow.definition.Transition">
<name id="321">goto-next</name>
<source id="322">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="323">File Load Notification</name>
<nodeHandler>com.j2fe.general.activities.EMAIL</nodeHandler>
<nodeHandlerClass id="324">com.j2fe.general.activities.EMAIL</nodeHandlerClass>
<parameters id="325" type="java.util.HashSet">
<item id="326" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="327">emailText</name>
<stringValue id="328">EmailPrcLoadCon</stringValue>
<type>VARIABLE</type>
</item>
<item id="329" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="330">from</name>
<stringValue id="331">no-reply@thegoldensource.com</stringValue>
<type>CONSTANT</type>
</item>
<item id="332" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="333">recipients</name>
<stringValue id="334">AllEmailId</stringValue>
<type>VARIABLE</type>
</item>
<item id="335" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="336">session</name>
<stringValue id="337">email/session</stringValue>
<type>REFERENCE</type>
</item>
<item id="338" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="339">subject</name>
<stringValue id="340">EmailPrcLoadSub</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="341" type="java.util.HashSet">
<item id="342" type="com.j2fe.workflow.definition.Transition">
<name id="343">goto-next</name>
<source id="344">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="345">Bean Shell Script (Standard) #2</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="346">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="347" type="java.util.HashSet">
<item id="348" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="349">statements</name>
<stringValue id="350">import java.util.Date;&#13;
import java.text.DateFormat;&#13;
import java.text.SimpleDateFormat;&#13;
import java.lang.String;&#13;
&#13;
&#13;
//String PriceLoadSubject=  "Rates are Uploaded: "+IssueGroupName+" group" ;&#13;
String PriceLoadSubject=  "Raw Prices Loaded for "+IssueGroupName+" group" ;&#13;
&#13;
String PriceLoadContent=  "The raw prices have been uploaded in EDM for the "+IssueGroupName+" group." ;&#13;
&#13;
//String PublishedSubject=  "Rates are published: "+IssueGroupName+" group" ;&#13;
String PublishedSubject=  "Validated Prices Published to MRU for "+IssueGroupName+" group" ;&#13;
&#13;
String PublishedContent=  "The validated prices have been published to MRU in EDM for the "+IssueGroupName+" group." ;&#13;
&#13;
String[] allEmailIds = Arrays.copyOf(emailIds, emailIds.length, String[].class);&#13;
&#13;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="351" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="352">variables["IssueGroupName"]</name>
<stringValue id="353">pIssueGroupName</stringValue>
<type>VARIABLE</type>
</item>
<item id="354" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="355">variables["PriceLoadContent"]</name>
<stringValue id="356">EmailPrcLoadCon</stringValue>
<type>VARIABLE</type>
</item>
<item id="357" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="358">variables["PriceLoadSubject"]</name>
<stringValue id="359">EmailPrcLoadSub</stringValue>
<type>VARIABLE</type>
</item>
<item id="360" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="361">variables["PublishedContent"]</name>
<stringValue id="362">EmailPubCon</stringValue>
<type>VARIABLE</type>
</item>
<item id="363" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="364">variables["PublishedSubject"]</name>
<stringValue id="365">EmailPubSub</stringValue>
<type>VARIABLE</type>
</item>
<item id="366" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="367">variables["allEmailIds"]</name>
<stringValue id="368">AllEmailId</stringValue>
<type>VARIABLE</type>
</item>
<item id="369" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="370">variables["emailIds"]</name>
<stringValue id="371">emailIds</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="372" type="java.util.HashSet">
<item id="373" type="com.j2fe.workflow.definition.Transition">
<name id="374">goto-next</name>
<source id="375">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="376">Fetch Email Id's</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="377">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="378" type="java.util.HashSet">
<item id="379" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="380">database</name>
<stringValue id="381">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="382" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="383">firstColumnsResult</name>
<stringValue id="384">emailIds</stringValue>
<type>VARIABLE</type>
</item>
<item id="385" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="386">querySQL</name>
<stringValue id="387">SELECT distinct email_id FROM FT_T_ISG1 ISG1 , FT_T_ISGR ISGR&#13;
WHERE ISG1.ISS_GRP_OID =ISGR.ISS_GRP_OID</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="388" type="java.util.HashSet">
<item id="389" type="com.j2fe.workflow.definition.Transition">
<name id="390">goto-next</name>
<source id="391">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="392">Wait</name>
<nodeHandler>com.j2fe.scheduling.activities.Wait</nodeHandler>
<nodeHandlerClass id="393">com.j2fe.scheduling.activities.Wait</nodeHandlerClass>
<parameters id="394" type="java.util.HashSet">
<item id="395" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="396">secondsToWait</name>
<objectValue id="397" type="java.lang.Integer">10</objectValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="398" type="java.util.HashSet">
<item id="399" type="com.j2fe.workflow.definition.Transition">
<name id="400">goto-next</name>
<source id="401">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="402">Call Subworkflow</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="403">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="404" type="java.util.HashSet">
<item id="405" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="406">["BBBusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="407">input["BBBusinessFeed"]</name>
<stringValue id="408">BBBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="409" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="410">["BBDownloadDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="411">input["BBDownloadDirectory"]</name>
<stringValue id="412">BBDownloadDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="413" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="414">["BBLocalDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="415">input["BBLocalDirectory"]</name>
<stringValue id="416">BBLocalDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="417" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="418">["BBResponseFileName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="419">input["BBResponseFileName"]</name>
<stringValue id="420">BBResponseFileName</stringValue>
<type>VARIABLE</type>
</item>
<item id="421" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="422">["ElectronBusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="423">input["ElectronBusinessFeed"]</name>
<stringValue id="424">ElectronBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="425" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="426">["ElectronLocalDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="427">input["ElectronLocalDirectory"]</name>
<stringValue id="428">ElectronLocalDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="429" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="430">["LoadFromLocalBB"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="431">input["LoadFromLocalBB"]</name>
<stringValue id="432">LoadFromLocalBB</stringValue>
<type>VARIABLE</type>
</item>
<item id="433" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="434">["LoadFromLocalElektron"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="435">input["LoadFromLocalElektron"]</name>
<stringValue id="436">LoadFromLocalElektron</stringValue>
<type>VARIABLE</type>
</item>
<item id="437" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="438">["LoadFromLocalRT"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="439">input["LoadFromLocalRT"]</name>
<stringValue id="440">LoadFromLocalRT</stringValue>
<type>VARIABLE</type>
</item>
<item id="441" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="442">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="443">input["ParentJobID"]</name>
<stringValue id="444">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="445" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="446">["Price Point Event Definition Id"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="447">input["Price Point Event Definition Id"]</name>
<stringValue id="448">PricePointEventDefinitionId</stringValue>
<type>VARIABLE</type>
</item>
<item id="449" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="450">input["Processing Date Deriving Factor"]</name>
<stringValue id="451">Processing Date Deriving Factor</stringValue>
<type>VARIABLE</type>
</item>
<item id="452" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="453">["Processing Date"]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="454">input["Processing Date"]</name>
<stringValue id="455">ProcDate</stringValue>
<type>VARIABLE</type>
</item>
<item id="456" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="457">["RTDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="458">input["RTDirectory"]</name>
<stringValue id="459">RTDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="460" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="461">["RTFilePattern"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="462">input["RTFilePattern"]</name>
<stringValue id="463">RTFilePattern</stringValue>
<type>VARIABLE</type>
</item>
<item id="464" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="465">["ReProcessProcessedFiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="466">input["ReProcessProcessedFiles"]</name>
<stringValue id="467">ReProcessProcessedFiles</stringValue>
<type>VARIABLE</type>
</item>
<item id="468" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="469">["ReuterBusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="470">input["ReuterBusinessFeed"]</name>
<stringValue id="471">ReuterBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="472" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="473">["ReutersBusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="474">input["ReutersBusinessFeed"]</name>
<stringValue id="475">ReutersBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="476" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="477">["ReutersFileSystem"]@com/j2fe/connector/ReutersFileSystemType@</UITypeHint>
<input>true</input>
<name id="478">input["ReutersFileSystem"]</name>
<stringValue id="479">ReutersFileSystem</stringValue>
<type>VARIABLE</type>
</item>
<item id="480" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="481">["ReutersLocalDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="482">input["ReutersLocalDirectory"]</name>
<stringValue id="483">ReutersLocalDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="484" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="485">name</name>
<stringValue id="486">CBA_WF_FileLoading</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="487" type="java.util.HashSet">
<item id="488" type="com.j2fe.workflow.definition.Transition">
<name id="489">goto-next</name>
<source id="490">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="491">Wait</name>
<nodeHandler>com.j2fe.scheduling.activities.Wait</nodeHandler>
<nodeHandlerClass id="492">com.j2fe.scheduling.activities.Wait</nodeHandlerClass>
<parameters id="493" type="java.util.HashSet">
<item id="494" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="495">secondsToWait</name>
<objectValue idref="397"/>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="496" type="java.util.HashSet">
<item id="497" type="com.j2fe.workflow.definition.Transition">
<name id="498">false</name>
<source id="499">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="500">Switch Case</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="501">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="502" type="java.util.HashSet">
<item id="503" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="504">caseItem</name>
<stringValue id="505">pDoElecktronFlag</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="506" type="java.util.HashSet">
<item id="507" type="com.j2fe.workflow.definition.Transition">
<name id="508">goto-next</name>
<source id="509">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="510">Trunc Processing DateTrunc Processing Date</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="511">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="512" type="java.util.HashSet">
<item id="513" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="514">database</name>
<stringValue id="515">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="516" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="517">firstColumnsResult[0]</name>
<stringValue id="518">ProcDate</stringValue>
<type>VARIABLE</type>
</item>
<item id="519" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="520">[0]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="521">indexedParameters[0]</name>
<stringValue id="522">ProcDate_UT</stringValue>
<type>VARIABLE</type>
</item>
<item id="523" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="524">indexedParameters[1]</name>
<stringValue id="525">Processing Date Deriving Factor</stringValue>
<type>VARIABLE</type>
</item>
<item id="526" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="527">querySQL</name>
<stringValue id="528">select trunc(?)+(?) from dual</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="529" type="java.util.HashSet">
<item id="530" type="com.j2fe.workflow.definition.Transition">
<name id="531">goto-next</name>
<source id="532">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="533">Bean Shell Script (Standard) #3</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="534">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="535" type="java.util.HashSet">
<item id="536" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="537">statements</name>
<stringValue id="538">import java.util.Date;&#13;
&#13;
if(null==pdate)&#13;
{&#13;
pdate=new Date();&#13;
}&#13;
Date d1=pdate;</stringValue>
<type>CONSTANT</type>
</item>
<item id="539" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="540">variables["d1"]</name>
<stringValue id="541">ProcDate_UT</stringValue>
<type>VARIABLE</type>
</item>
<item id="542" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="543">["pdate"]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="544">variables["pdate"]</name>
<stringValue id="545">Processing Date</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="546" type="java.util.HashSet">
<item id="547" type="com.j2fe.workflow.definition.Transition">
<name id="548">goto-next</name>
<source id="549">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="550">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="551">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="552" type="java.util.HashSet">
<item id="553" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="554">configInfo</name>
<stringValue id="555">pIssueGroupName</stringValue>
<type>VARIABLE</type>
</item>
<item id="556" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="557">file</name>
<objectValue id="558" type="java.net.URI">CBA_WF_4Eye_Consolidated</objectValue>
<type>CONSTANT</type>
</item>
<item id="559" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="560">jobId</name>
<stringValue id="561">JobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="562" type="java.util.HashSet">
<item id="563" type="com.j2fe.workflow.definition.Transition">
<name id="564">goto-next</name>
<source id="565">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="566">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="567">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="568" type="java.util.HashSet"/>
<targets id="569" type="java.util.HashSet">
<item idref="563" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="549"/>
</item>
</sources>
<targets id="570" type="java.util.HashSet">
<item idref="547" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="532"/>
</item>
</sources>
<targets id="571" type="java.util.HashSet">
<item idref="530" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="509"/>
</item>
</sources>
<targets id="572" type="java.util.HashSet">
<item idref="507" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="499"/>
</item>
</sources>
<targets id="573" type="java.util.HashSet">
<item idref="497" type="com.j2fe.workflow.definition.Transition"/>
<item id="574" type="com.j2fe.workflow.definition.Transition">
<name id="575">true</name>
<source idref="499"/>
<target id="576">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="577">Database Select (Standard)</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="578">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="579" type="java.util.HashSet">
<item id="580" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="581">database</name>
<stringValue id="582">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="583" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="584">firstColumnsResult[0]</name>
<stringValue id="585">vEtronGrpNme</stringValue>
<type>VARIABLE</type>
</item>
<item id="586" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="587">indexedParameters[0]</name>
<stringValue id="588">pIssueGroupName</stringValue>
<type>VARIABLE</type>
</item>
<item id="589" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="590">querySQL</name>
<stringValue id="591">select chdisgr.grp_nme from ft_t_isgr isgr, ft_t_isgp isgp, ft_t_isgr chdisgr where isgr.grp_nme = ? and isgr.iss_grp_oid = isgp.prnt_iss_grp_oid and isgp.prt_purp_typ = 'ETRON' and chdisgr.iss_grp_oid = isgp.iss_grp_oid</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="592" type="java.util.HashSet">
<item idref="574" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="593" type="java.util.HashSet">
<item id="594" type="com.j2fe.workflow.definition.Transition">
<name id="595">goto-next</name>
<source idref="576"/>
<target id="596">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="597">Call Subworkflow</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="598">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="599" type="java.util.HashSet">
<item id="600" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="601">["pGroupName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="602">input["pGroupName"]</name>
<stringValue id="603">vEtronGrpNme</stringValue>
<type>VARIABLE</type>
</item>
<item id="604" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="605">["pPPEDOid"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="606">input["pPPEDOid"]</name>
<stringValue id="607">PricePointEventDefinitionId</stringValue>
<type>VARIABLE</type>
</item>
<item id="608" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="609">["pProcessingDate"]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="610">input["pProcessingDate"]</name>
<stringValue id="611">ProcDate</stringValue>
<type>VARIABLE</type>
</item>
<item id="612" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="613">["pRegion"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="614">input["pRegion"]</name>
<stringValue id="615">pSnapName</stringValue>
<type>VARIABLE</type>
</item>
<item id="616" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="617">["pRequestType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="618">input["pRequestType"]</name>
<stringValue id="619">MARKET_PRICE</stringValue>
<type>CONSTANT</type>
</item>
<item id="620" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="621">name</name>
<stringValue id="622">CbaRmdsRequestReply</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="623" type="java.util.HashSet">
<item idref="594" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="624" type="java.util.HashSet">
<item id="625" type="com.j2fe.workflow.definition.Transition">
<name id="626">goto-next</name>
<source idref="596"/>
<target idref="490"/>
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
</source>
<target idref="490"/>
</item>
<item idref="625" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="627" type="java.util.HashSet">
<item idref="488" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="401"/>
</item>
</sources>
<targets id="628" type="java.util.HashSet">
<item idref="399" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="391"/>
</item>
</sources>
<targets id="629" type="java.util.HashSet">
<item idref="389" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="375"/>
</item>
</sources>
<targets id="630" type="java.util.HashSet">
<item idref="373" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="344"/>
</item>
</sources>
<targets id="631" type="java.util.HashSet">
<item idref="342" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="322"/>
</item>
</sources>
<targets id="632" type="java.util.HashSet">
<item idref="320" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="28"/>
</item>
</sources>
<targets id="633" type="java.util.HashSet">
<item idref="26" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="18"/>
</item>
</sources>
<targets id="634" type="java.util.HashSet">
<item idref="16" type="com.j2fe.workflow.definition.Transition"/>
<item id="635" type="com.j2fe.workflow.definition.Transition">
<name id="636">true</name>
<source idref="18"/>
<target id="637">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="638">Database Select (Standard) #2</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="639">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="640" type="java.util.HashSet">
<item id="641" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="642">database</name>
<stringValue id="643">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="644" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="645">firstColumnsResult[0]</name>
<stringValue id="646">DerPriceDate</stringValue>
<type>VARIABLE</type>
</item>
<item id="647" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="648">[0]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="649">indexedParameters[0]</name>
<stringValue id="650">ProcDate</stringValue>
<type>VARIABLE</type>
</item>
<item id="651" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="652">querySQL</name>
<stringValue id="653">SELECT To_char(To_Date(trunc(?)),'yyyyMMdd') FROM dual</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="654" type="java.util.HashSet">
<item idref="635" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="655" type="java.util.HashSet">
<item id="656" type="com.j2fe.workflow.definition.Transition">
<name id="657">goto-next</name>
<source idref="637"/>
<target id="658">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="659">Call Subworkflow</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="660">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="661" type="java.util.HashSet">
<item id="662" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="663">["pIssueGroup"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="664">input["pIssueGroup"]</name>
<stringValue id="665">pIssueGroupName</stringValue>
<type>VARIABLE</type>
</item>
<item id="666" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="667">["pPriceDate"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="668">input["pPriceDate"]</name>
<stringValue id="669">DerPriceDate</stringValue>
<type>VARIABLE</type>
</item>
<item id="670" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="671">["pQueryName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="672">input["pQueryName"]</name>
<stringValue id="673">pub_CBA_MRU_Prices</stringValue>
<type>CONSTANT</type>
</item>
<item id="674" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="675">["pSnapName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="676">input["pSnapName"]</name>
<stringValue id="677">pSnapName</stringValue>
<type>VARIABLE</type>
</item>
<item id="678" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="679">name</name>
<stringValue id="680">CbaMruPublish_SelectInsert</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="681" type="java.util.HashSet">
<item idref="656" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="682" type="java.util.HashSet">
<item id="683" type="com.j2fe.workflow.definition.Transition">
<name id="684">goto-next</name>
<source idref="658"/>
<target id="685">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="686">Publishing Notification</name>
<nodeHandler>com.j2fe.general.activities.EMAIL</nodeHandler>
<nodeHandlerClass id="687">com.j2fe.general.activities.EMAIL</nodeHandlerClass>
<parameters id="688" type="java.util.HashSet">
<item id="689" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="690">emailText</name>
<stringValue id="691">EmailPubCon</stringValue>
<type>VARIABLE</type>
</item>
<item id="692" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="693">from</name>
<stringValue id="694">no-reply@thegoldensource.com</stringValue>
<type>CONSTANT</type>
</item>
<item id="695" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="696">recipients</name>
<stringValue id="697">AllEmailId</stringValue>
<type>VARIABLE</type>
</item>
<item id="698" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="699">session</name>
<stringValue id="700">email/session</stringValue>
<type>REFERENCE</type>
</item>
<item id="701" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="702">subject</name>
<stringValue id="703">EmailPubSub</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="704" type="java.util.HashSet">
<item idref="683" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="705" type="java.util.HashSet">
<item id="706" type="com.j2fe.workflow.definition.Transition">
<name id="707">goto-next</name>
<source idref="685"/>
<target idref="8"/>
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
</source>
<target idref="8"/>
</item>
<item idref="706" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="708" type="java.util.HashSet">
<item idref="6" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
</sources>
<targets id="709" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="710">CBACustomWorkflows</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="711">user1</lastChangeUser>
<lastUpdate id="712">2018-05-16T21:13:04.000+1000</lastUpdate>
<name id="713">CBA_WF_4Eye_Consolidated</name>
<optimize>true</optimize>
<parameter id="714" type="java.util.HashMap">
<entry>
<key id="715" type="java.lang.String">Additional Price Qualification Type</key>
<value id="716" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="717">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="718">Specifies the Additional Price Qualification Type</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="719" type="java.lang.String">BBBusinessFeed</key>
<value id="720" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="721">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="722" type="java.lang.String">BBDownloadDirectory</key>
<value id="723" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="724">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="725">Bloomberg Download Directory</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="726" type="java.lang.String">BBLocalDirectory</key>
<value id="727" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="728">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="729" type="java.lang.String">BBResponseFileName</key>
<value id="730" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="731">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="732">Bloomberg Response File Name</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="733" type="java.lang.String">Base Currency</key>
<value id="734" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="735">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="736">Base Currency used for Golden Price Derivation</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="737" type="java.lang.String">Bulk Size</key>
<value id="738" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="739">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="740">Bulk Size</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="741" type="java.lang.String">Calculate MID price Options</key>
<value id="742" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="743">com.j2fe.pricing.MIDCalculationOptions</className>
<clazz>com.j2fe.pricing.MIDCalculationOptions</clazz>
<description id="744">Basic Check will not calculate the mid price if it does not exist</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="745" type="java.lang.String">Calendar</key>
<value id="746" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="747">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="748">Override if a Calendar isn't specified for a market</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="749" type="java.lang.String">CleanValidationInstructionCache</key>
<value id="750" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="751">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="752">Cleans the validation instruction cache</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="753" type="java.lang.String">Consider Calendar Results</key>
<value id="754" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="755">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="756">If true only business days are selected and part of check</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="757" type="java.lang.String">Consider Negative Prices</key>
<value id="758" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="759">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="760">This flag decides whether we have to consider negative prices as 'VALID' or not.If the flag is set to true price with negative value would be consider as VALID.Default value for this flag is false.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="761" type="java.lang.String">Country</key>
<value id="762" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="763">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="764">The country used for filtering the PRVI instructions</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="765" type="java.lang.String">CreateGPRCOnHoliday</key>
<value id="766" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="767">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="768" type="java.lang.String">CreatePriceStatusForGoldenPrice</key>
<value id="769" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="770">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="771">Create ISPS entries for Goldenprice runs</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="772" type="java.lang.String">Derive Golden Price</key>
<value id="773" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="774">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="775">Enable the option to Derive the Golden Price for the Currency specified inthe Base Currency Parameter</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="776" type="java.lang.String">DiagnosticMode</key>
<value id="777" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="778">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="779">If set to true raises Diagnostic Exceptions and records Job Statistics&#13;
</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="780" type="java.lang.String">Do Price Derivation First</key>
<value id="781" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="782">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="783">If set to true, then Price derivation Rule is run before all other validations.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="784" type="java.lang.String">Donot Consider Issue Maturity</key>
<value id="785" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="786">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="787">The parameter when set to true will pick up matured issues for validation. when set to false matured issues will not be picked for validation.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="788" type="java.lang.String">Downstream System Identifier</key>
<value id="789" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="790">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="791">The downstream system identifier, this is the dwdf_oid value from the ft_t_dwdf table</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="792" type="java.lang.String">ElectronBusinessFeed</key>
<value id="793" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="794">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="795" type="java.lang.String">ElectronLocalDirectory</key>
<value id="796" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="797">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="798" type="java.lang.String">EmailPubSub</key>
<value id="799" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="800">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="801" type="java.lang.String">Extra Configuration Information</key>
<value id="802" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="803">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="804" type="java.lang.String">FXRT Look Back Period</key>
<value id="805" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="806">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="807">The look back period in Days for Foreign Exchange rate. Note: The value should be greater than or Equal to the Observation period</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="808" type="java.lang.String">Foreign Exchange Price Type</key>
<value id="809" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="810">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="811">The Price Type to be used for filtering the FXRT's</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="812" type="java.lang.String">Foreign Exchange Type</key>
<value id="813" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="814">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="815">The Foreign Exchange Type to be used for filtering the FXRT's</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="816" type="java.lang.String">FundType</key>
<value id="817" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="818">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="819">The fund type, parameter required for Bid Ask Tolerance check</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="820" type="java.lang.String">GoldenToleranceToDo</key>
<value id="821" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="822">com.j2fe.pricing.ToleranceCases</className>
<clazz>com.j2fe.pricing.ToleranceCases</clazz>
<description id="823">The check mode to do for Golden Price Tolerance{GSTOL/GMTOL}.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="824" type="java.lang.String">Ignore Issue MAT_EXP_TMS</key>
<value id="825" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="826">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="827">Ignore Issue Maturity Expiry Date. If set, then ISSU.MAT_EXP_TMS will be ignored and Matured Issues will also be validated</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="828" type="java.lang.String">IgnorePriceValidityForComparison</key>
<value id="829" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="830">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="831" type="java.lang.String">Instruments</key>
<value id="832" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="833">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="834">Used to validate only prices with specific  Instruments</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="835" type="java.lang.String">IsExternalLibrary</key>
<value id="836" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="837">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="838">Set this parameter value as true to run third party library through GSO</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="839" type="java.lang.String">IsWaterfallModel</key>
<value id="840" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="841">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="842">Is Multi-step rule being used?</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="843" type="java.lang.String">IssueType</key>
<value id="844" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="845">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="846">Used to validate only prices with specific  Issue Types</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="847" type="java.lang.String">IssueTypeGroup</key>
<value id="848" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="849">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="850">Used to validate only prices with specific  Issue Type Groups</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="851" type="java.lang.String">JobDefinitionId</key>
<value id="852" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="853">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="854">JobDefinitionId (FT_T_JBDF)</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="855" type="java.lang.String">JobIDs</key>
<value id="856" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="857">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="858" type="java.lang.String">LoadFromLocalBB</key>
<value id="859" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="860">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="861" type="java.lang.String">LoadFromLocalElektron</key>
<value id="862" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="863">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="864" type="java.lang.String">LoadFromLocalRT</key>
<value id="865" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="866">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="867" type="java.lang.String">Market</key>
<value id="868" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="869">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="870">Used to validate only prices with specific  Markets</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="871" type="java.lang.String">Message Type</key>
<value id="872" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="873">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="874" type="java.lang.String">Observation Period</key>
<value id="875" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="876">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="877">Limitates result set (e.g 7 days, check only prices between today and last week) (in days, default = yesterday)</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="878" type="java.lang.String">Overwrite Suspect Status</key>
<value id="879" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="880">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="881">This parameter is set to true would overwrite the status in the PCST table.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="882" type="java.lang.String">PRVI Hierarchy Enable Switch</key>
<value id="883" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="884">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="885">Flag to enable PRVI Hierarchy functionality</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="886" type="java.lang.String">Parent Job ID</key>
<value id="887" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="888">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="889" type="java.lang.String">ParentJobID</key>
<value id="890" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="891">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="892">ParentJobID</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="893" type="java.lang.String">Price Day Frequency</key>
<value id="894" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="895">com.j2fe.pricing.PricingFrequency</className>
<clazz>com.j2fe.pricing.PricingFrequency</clazz>
<description id="896">Please note only supported values are daily, intraday or monthly</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="897" type="java.lang.String">Price Derivation Instruments</key>
<value id="898" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="899">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="900">Instrument for Price Derivation rule</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="901" type="java.lang.String">Price Derivation Issue Type</key>
<value id="902" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="903">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="904">Issue types for running the price derivation rule</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="905" type="java.lang.String">Price Derivation IssueGroup</key>
<value id="906" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="907">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="908">Issue Group for Price Derivation</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="909" type="java.lang.String">Price Derivation IssueTypeGroup</key>
<value id="910" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="911">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="912">Issue type group for price derivation rule</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="913" type="java.lang.String">Price Derivation RelType</key>
<value id="914" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="915">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="916">Relationship type for running the price derviation rule, if provided then only the PriceDerivationRule would run, otherwise not.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="917" type="java.lang.String">Price Method Type</key>
<value id="918" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="919">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="920">Used to validate only prices with specific Method Types</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="921" type="java.lang.String">Price Quote Method Type</key>
<value id="922" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="923">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="924">Used to validate prices with specifc Quote Method Types</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="925" type="java.lang.String">Price Source</key>
<value id="926" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="927">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="928">Used to validate only prices with specific Price Sources</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="929" type="java.lang.String">Price Type</key>
<value id="930" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="931">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="932">Used to validate only prices with specific Price Types</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="933" type="java.lang.String">PricePointEventDefinitionId</key>
<value id="934" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="935">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="936">PricePointEventDefinitionId PPED_OID from FT_T_PPED table</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="937" type="java.lang.String">Prior GPRC Observation Count</key>
<value id="938" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="939">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="940">This count will fetch prior Golden prices between dates processing date and (processing date minus this count).&#13;
It should be greate than observation period.Default value should be 0.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="941" type="java.lang.String">Processing Date</key>
<value id="942" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="943">java.util.Date</className>
<clazz>java.util.Date</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="944" type="java.lang.String">Processing Date Deriving Factor</key>
<value id="945" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="946">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="947">The value in this parameter will be added into the processing date encoded will running the WF to derive the actual processing date. The applicable values should be like 1, 2,-1,-2 etc.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="948" type="java.lang.String">Processing Mode</key>
<value id="949" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="950">com.j2fe.pricing.ProcessingMode</className>
<clazz>com.j2fe.pricing.ProcessingMode</clazz>
<description id="951">Indicates if a Golden Price calculation is executed and when ("First" means all validations are only done on Golden Prices)</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="952" type="java.lang.String">PublishingEvent</key>
<value id="953" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="954">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="955">Event to be raised for publishing VALID Golden prices (GPRC)</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="956" type="java.lang.String">PurposeType</key>
<value id="957" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="958">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="959" type="java.lang.String">Qualifying type for Golden Price Check</key>
<value id="960" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="961">com.j2fe.pricing.QualifyPriceStatus</className>
<clazz>com.j2fe.pricing.QualifyPriceStatus</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="962" type="java.lang.String">RTDirectory</key>
<value id="963" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="964">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="965">Reuter's Directory</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="966" type="java.lang.String">RTFilePattern</key>
<value id="967" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="968">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="969">Reuter's file name</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="970" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="971" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="972">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="973">Allow reprocessing the processed files. Works only in case of Reuters.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="974" type="java.lang.String">ReUse Job Id</key>
<value id="975" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="976">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="977">This flag indicates that the working job id provided in the WF needs to be used instead of creating a new job_id in the ft_o_isjb table. This should only be set to true in case the entries in isjb need to be reused.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="978" type="java.lang.String">Region</key>
<value id="979" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="980">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="981">The region used for filtering the PRVI instructions</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="982" type="java.lang.String">RelType OneToMany</key>
<value id="983" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="984">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="985" type="java.lang.String">RelType Sequence</key>
<value id="986" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="987">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="988" type="java.lang.String">ReuterBusinessFeed</key>
<value id="989" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="990">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="991">ReuterBusinessFeed</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="992" type="java.lang.String">ReutersBusinessFeed</key>
<value id="993" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="994">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="995" type="java.lang.String">ReutersFileSystem</key>
<value id="996" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="997">com.j2fe.connector.ReutersFileSystemType</className>
<clazz>com.j2fe.connector.ReutersFileSystemType</clazz>
<description id="998">ReutersFileSystem</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="999" type="java.lang.String">ReutersLocalDirectory</key>
<value id="1000" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1001">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1002" type="java.lang.String">Run Rescrub</key>
<value id="1003" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1004">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1005">If set to true price finalizer will run, otherwise not.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1006" type="java.lang.String">RunSameDayProcessing</key>
<value id="1007" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1008">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1009">If this parameter is set to true, then validate current processing day's prices only.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1010" type="java.lang.String">Select Prvi For Hierarchy</key>
<value id="1011" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1012">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1013" type="java.lang.String">Suppress GEN1 Issues for User Ids</key>
<value id="1014" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1015">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1016">The user Id's mentioned here will not be scrubbed, provided GPRC already exists with these user Id's.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1017" type="java.lang.String">Threads In Parallel</key>
<value id="1018" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1019">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="1020" type="java.lang.String">ThresholdValue</key>
<value id="1021" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1022">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="1023">ThresholdValue</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="1024" type="java.lang.String">ToleranceToDo</key>
<value id="1025" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1026">com.j2fe.pricing.ToleranceCases</className>
<clazz>com.j2fe.pricing.ToleranceCases</clazz>
<description id="1027">ToleranceToDo</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="1028" type="java.lang.String">Vendor</key>
<value id="1029" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1030">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1031">Used to validate only prices with specific Vendors</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1032" type="java.lang.String">Working Job Id</key>
<value id="1033" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1034">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1035">Working job_id is the job_id from the ft_o_isjb table in case it has to be reused and new entries should not be created. It works in conjunction with the reuse job id flag</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1036" type="java.lang.String">WriteValidStatusRecords</key>
<value id="1037" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1038">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1039">If true the check will also write VALID records to the Status table. Default is false. If parameter isn't set the workflow will use the default values set on each individual validation activity. (default false except for tolerance and golden price tolerance the default is true)</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1040" type="java.lang.String">pDoElecktronFlag</key>
<value id="1041" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1042">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="1043" type="java.lang.String">pIssueGroupName</key>
<value id="1044" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1045">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1046">The schedule group name. The same group is used for publishing too.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="1047" type="java.lang.String">pPublishFlag</key>
<value id="1048" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1049">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="1050" type="java.lang.String">pSnapName</key>
<value id="1051" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1052">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="1053" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="565"/>
<status>RELEASED</status>
<variables id="1054" type="java.util.HashMap">
<entry>
<key id="1055" type="java.lang.String">Additional Price Qualification Type</key>
<value id="1056" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1057">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1058">Specifies the Additional Price Qualification Type</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1059" type="java.lang.String">AllEmailId</key>
<value id="1060" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1061">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1062" type="java.lang.String">BBBusinessFeed</key>
<value id="1063" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1064">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1065" type="java.lang.String">BBDownloadDirectory</key>
<value id="1066" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1067">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1068">Bloomberg Download Directory</description>
<persistent>false</persistent>
<value id="1069" type="java.lang.String">/</value>
</value>
</entry>
<entry>
<key id="1070" type="java.lang.String">BBLocalDirectory</key>
<value id="1071" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1072">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1073" type="java.lang.String">BBResponseFileName</key>
<value id="1074" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1075">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1076">Bloomberg Response File Name</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1077" type="java.lang.String">Base Currency</key>
<value id="1078" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1079">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1080">Base Currency used for Golden Price Derivation</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1081" type="java.lang.String">Bulk Size</key>
<value id="1082" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1083">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="1084">Bulk Size</description>
<persistent>false</persistent>
<value id="1085" type="java.lang.Integer">100</value>
</value>
</entry>
<entry>
<key id="1086" type="java.lang.String">Calculate MID price Options</key>
<value id="1087" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1088">com.j2fe.pricing.MIDCalculationOptions</className>
<clazz>com.j2fe.pricing.MIDCalculationOptions</clazz>
<description id="1089">Basic Check will not calculate the mid price if it does not exist</description>
<persistent>false</persistent>
<value id="1090" type="com.j2fe.pricing.MIDCalculationOptions">DoNotCalcMIDDoOnlyBasicChecks</value>
</value>
</entry>
<entry>
<key id="1091" type="java.lang.String">Calendar</key>
<value id="1092" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1093">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1094">Override if a Calendar isn't specified for a market</description>
<persistent>false</persistent>
<value id="1095" type="java.lang.String">PRPTUAL</value>
</value>
</entry>
<entry>
<key id="1096" type="java.lang.String">CleanValidationInstructionCache</key>
<value id="1097" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1098">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1099">Cleans the validation instruction cache</description>
<persistent>false</persistent>
<value id="1100" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="1101" type="java.lang.String">Consider Calendar Results</key>
<value id="1102" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1103">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1104">If true only business days are selected and part of check</description>
<persistent>false</persistent>
<value idref="1100"/>
</value>
</entry>
<entry>
<key id="1105" type="java.lang.String">Consider Negative Prices</key>
<value id="1106" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1107">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1108">This flag decides whether we have to consider negative prices as 'VALID' or not.If the flag is set to true price with negative value would be consider as VALID.Default value for this flag is false.</description>
<persistent>false</persistent>
<value idref="1100"/>
</value>
</entry>
<entry>
<key id="1109" type="java.lang.String">Country</key>
<value id="1110" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1111">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1112">The country used for filtering the PRVI instructions</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1113" type="java.lang.String">CreateGPRCOnHoliday</key>
<value id="1114" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1115">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="1100"/>
</value>
</entry>
<entry>
<key id="1116" type="java.lang.String">CreatePriceStatusForGoldenPrice</key>
<value id="1117" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1118">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1119">Create ISPS entries for Goldenprice runs</description>
<persistent>false</persistent>
<value idref="1100"/>
</value>
</entry>
<entry>
<key id="1120" type="java.lang.String">Derive Golden Price</key>
<value id="1121" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1122">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1123">Enable the option to Derive the Golden Price for the Currency specified inthe Base Currency Parameter</description>
<persistent>false</persistent>
<value idref="1100"/>
</value>
</entry>
<entry>
<key id="1124" type="java.lang.String">DiagnosticMode</key>
<value id="1125" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1126">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1127">If set to true raises Diagnostic Exceptions and records Job Statistics&#13;
</description>
<persistent>false</persistent>
<value idref="1100"/>
</value>
</entry>
<entry>
<key id="1128" type="java.lang.String">Do Price Derivation First</key>
<value id="1129" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1130">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1131">If set to true, then Price derivation Rule is run before all other validations.</description>
<persistent>false</persistent>
<value idref="1100"/>
</value>
</entry>
<entry>
<key id="1132" type="java.lang.String">Donot Consider Issue Maturity</key>
<value id="1133" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1134">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1135">The parameter when set to true will pick up matured issues for validation. when set to false matured issues will not be picked for validation.</description>
<persistent>false</persistent>
<value idref="1100"/>
</value>
</entry>
<entry>
<key id="1136" type="java.lang.String">Downstream System Identifier</key>
<value id="1137" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1138">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1139">The downstream system identifier, this is the dwdf_oid value from the ft_t_dwdf table</description>
<persistent>false</persistent>
<value id="1140" type="java.lang.String">Default</value>
</value>
</entry>
<entry>
<key id="1141" type="java.lang.String">ElectronBusinessFeed</key>
<value id="1142" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1143">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1144" type="java.lang.String">ElectronLocalDirectory</key>
<value id="1145" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1146">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1147" type="java.lang.String">EmailPrcLoadCon</key>
<value id="1148" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1149">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1150" type="java.lang.String">EmailPrcLoadSub</key>
<value id="1151" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1152">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1153" type="java.lang.String">EmailPubCon</key>
<value id="1154" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1155">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1156" type="java.lang.String">EmailPubSub</key>
<value id="1157" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1158">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1159" type="java.lang.String">ExecuteCustomActivityCheck</key>
<value id="1160" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1161">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1162">If Flag is true it will clean the Custom Rule validation Instruction Cache</description>
<persistent>false</persistent>
<value id="1163" type="java.lang.Boolean">true</value>
</value>
</entry>
<entry>
<key id="1164" type="java.lang.String">Extra Configuration Information</key>
<value id="1165" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1166">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="1167" type="java.lang.String">Price Validation Consolidated</value>
</value>
</entry>
<entry>
<key id="1168" type="java.lang.String">FXRT Look Back Period</key>
<value id="1169" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1170">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="1171">The look back period in Days for Foreign Exchange rate. Note: The value should be greater than or Equal to the Observation period</description>
<persistent>false</persistent>
<value id="1172" type="java.lang.Integer">5</value>
</value>
</entry>
<entry>
<key id="1173" type="java.lang.String">Foreign Exchange Price Type</key>
<value id="1174" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1175">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1176">The Price Type to be used for filtering the FXRT's</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1177" type="java.lang.String">Foreign Exchange Type</key>
<value id="1178" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1179">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1180">The Foreign Exchange Type to be used for filtering the FXRT's</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1181" type="java.lang.String">FundType</key>
<value id="1182" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1183">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1184">The fund type, parameter required for Bid Ask Tolerance check</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1185" type="java.lang.String">GoldenToleranceToDo</key>
<value id="1186" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1187">com.j2fe.pricing.ToleranceCases</className>
<clazz>com.j2fe.pricing.ToleranceCases</clazz>
<description id="1188">The check mode to do for Golden Price Tolerance{GSTOL/GMTOL}.</description>
<persistent>false</persistent>
<value id="1189" type="com.j2fe.pricing.ToleranceCases">STOLToDay</value>
</value>
</entry>
<entry>
<key id="1190" type="java.lang.String">Ignore Issue MAT_EXP_TMS</key>
<value id="1191" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1192">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1193">Ignore Issue Maturity Expiry Date. If set, then ISSU.MAT_EXP_TMS will be ignored and Matured Issues will also be validated</description>
<persistent>false</persistent>
<value idref="1100"/>
</value>
</entry>
<entry>
<key id="1194" type="java.lang.String">IgnorePriceValidityForComparison</key>
<value id="1195" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1196">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1197" type="java.lang.String">Instruments</key>
<value id="1198" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1199">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1200">Used to validate only prices with specific  Instruments</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1201" type="java.lang.String">IsExternalLibrary</key>
<value id="1202" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1203">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1204">Set this parameter value as true to run third party library through GSO</description>
<persistent>false</persistent>
<value idref="1100"/>
</value>
</entry>
<entry>
<key id="1205" type="java.lang.String">IsWaterfallModel</key>
<value id="1206" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1207">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1208">Is Multi-step rule being used?</description>
<persistent>false</persistent>
<value idref="1100"/>
</value>
</entry>
<entry>
<key id="1209" type="java.lang.String">IssueType</key>
<value id="1210" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1211">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1212">Used to validate only prices with specific  Issue Types</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1213" type="java.lang.String">IssueTypeGroup</key>
<value id="1214" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1215">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1216">Used to validate only prices with specific  Issue Type Groups</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1217" type="java.lang.String">JobDefinitionId</key>
<value id="1218" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1219">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1220">JobDefinitionId (FT_T_JBDF)</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1221" type="java.lang.String">JobID</key>
<value id="1222" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1223">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1224" type="java.lang.String">JobIDs</key>
<value id="1225" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1226">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1227" type="java.lang.String">LoadFromLocalBB</key>
<value id="1228" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1229">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1230" type="java.lang.String">LoadFromLocalElektron</key>
<value id="1231" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1232">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1233" type="java.lang.String">LoadFromLocalRT</key>
<value id="1234" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1235">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1236" type="java.lang.String">Market</key>
<value id="1237" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1238">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1239">Used to validate only prices with specific  Markets</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1240" type="java.lang.String">Message Type</key>
<value id="1241" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1242">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1243" type="java.lang.String">Observation Period</key>
<value id="1244" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1245">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="1246">Limitates result set (e.g 7 days, check only prices between today and last week) (in days, default = yesterday)</description>
<persistent>false</persistent>
<value id="1247" type="java.lang.Integer">1</value>
</value>
</entry>
<entry>
<key id="1248" type="java.lang.String">Overwrite Suspect Status</key>
<value id="1249" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1250">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1251">This parameter is set to true would overwrite the status in the PCST table.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1252" type="java.lang.String">PRVI Hierarchy Enable Switch</key>
<value id="1253" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1254">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1255">Flag to enable PRVI Hierarchy functionality</description>
<persistent>false</persistent>
<value idref="1100"/>
</value>
</entry>
<entry>
<key id="1256" type="java.lang.String">Parent Job ID</key>
<value id="1257" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1258">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1259" type="java.lang.String">ParentJobID</key>
<value id="1260" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1261">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1262">ParentJobID</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1263" type="java.lang.String">Price Day Frequency</key>
<value id="1264" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1265">com.j2fe.pricing.PricingFrequency</className>
<clazz>com.j2fe.pricing.PricingFrequency</clazz>
<description id="1266">Please note only supported values are daily, intraday or monthly</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1267" type="java.lang.String">Price Derivation Instruments</key>
<value id="1268" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1269">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1270">Instrument for Price Derivation rule</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1271" type="java.lang.String">Price Derivation Issue Type</key>
<value id="1272" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1273">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1274">Issue types for running the price derivation rule</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1275" type="java.lang.String">Price Derivation IssueGroup</key>
<value id="1276" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1277">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1278">Issue Group for Price Derivation</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1279" type="java.lang.String">Price Derivation IssueTypeGroup</key>
<value id="1280" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1281">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1282">Issue type group for price derivation rule</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1283" type="java.lang.String">Price Derivation RelType</key>
<value id="1284" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1285">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1286">Relationship type for running the price derviation rule, if provided then only the PriceDerivationRule would run, otherwise not.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1287" type="java.lang.String">Price Method Type</key>
<value id="1288" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1289">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1290">Used to validate only prices with specific Method Types</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1291" type="java.lang.String">Price Quote Method Type</key>
<value id="1292" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1293">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1294">Used to validate prices with specifc Quote Method Types</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1295" type="java.lang.String">Price Source</key>
<value id="1296" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1297">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1298">Used to validate only prices with specific Price Sources</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1299" type="java.lang.String">Price Type</key>
<value id="1300" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1301">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1302">Used to validate only prices with specific Price Types</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1303" type="java.lang.String">PricePointEventDefinitionId</key>
<value id="1304" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1305">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1306">PricePointEventDefinitionId PPED_OID from FT_T_PPED table</description>
<persistent>false</persistent>
<value id="1307" type="java.lang.String">Default</value>
</value>
</entry>
<entry>
<key id="1308" type="java.lang.String">Prior GPRC Observation Count</key>
<value id="1309" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1310">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="1311">This count will fetch prior Golden prices between dates processing date and (processing date minus this count).&#13;
It should be greate than observation period.Default value should be 0.</description>
<persistent>false</persistent>
<value id="1312" type="java.lang.Integer">0</value>
</value>
</entry>
<entry>
<key id="1313" type="java.lang.String">ProcDate</key>
<value id="1314" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1315">java.util.Date</className>
<clazz>java.util.Date</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1316" type="java.lang.String">Processing Date</key>
<value id="1317" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1318">java.util.Date</className>
<clazz>java.util.Date</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1319" type="java.lang.String">Processing Date Deriving Factor</key>
<value id="1320" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1321">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="1322">The value in this parameter will be added into the processing date encoded will running the WF to derive the actual processing date. The applicable values should be like 1, 2,-1,-2 etc.</description>
<persistent>false</persistent>
<value idref="1312"/>
</value>
</entry>
<entry>
<key id="1323" type="java.lang.String">Processing Mode</key>
<value id="1324" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1325">com.j2fe.pricing.ProcessingMode</className>
<clazz>com.j2fe.pricing.ProcessingMode</clazz>
<description id="1326">Indicates if a Golden Price calculation is executed and when ("First" means all validations are only done on Golden Prices)</description>
<persistent>false</persistent>
<value id="1327" type="com.j2fe.pricing.ProcessingMode">DoGoldenPriceCheckFirst</value>
</value>
</entry>
<entry>
<key id="1328" type="java.lang.String">PublishingEvent</key>
<value id="1329" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1330">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1331">Event to be raised for publishing VALID Golden prices (GPRC)</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1332" type="java.lang.String">PurposeType</key>
<value id="1333" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1334">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1335" type="java.lang.String">Qualifying type for Golden Price Check</key>
<value id="1336" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1337">com.j2fe.pricing.QualifyPriceStatus</className>
<clazz>com.j2fe.pricing.QualifyPriceStatus</clazz>
<persistent>false</persistent>
<value id="1338" type="com.j2fe.pricing.QualifyPriceStatus">VALIDANDUNVERIFED</value>
</value>
</entry>
<entry>
<key id="1339" type="java.lang.String">RTDirectory</key>
<value id="1340" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1341">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1342">Reuter's Directory</description>
<persistent>false</persistent>
<value id="1343" type="java.lang.String">/reports</value>
</value>
</entry>
<entry>
<key id="1344" type="java.lang.String">RTFilePattern</key>
<value id="1345" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1346">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1347">Reuter's file name</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1348" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="1349" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1350">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1351">Allow reprocessing the processed files. Works only in case of Reuters.</description>
<persistent>false</persistent>
<value idref="1163"/>
</value>
</entry>
<entry>
<key id="1352" type="java.lang.String">ReUse Job Id</key>
<value id="1353" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1354">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1355">This flag indicates that the working job id provided in the WF needs to be used instead of creating a new job_id in the ft_o_isjb table. This should only be set to true in case the entries in isjb need to be reused.</description>
<persistent>false</persistent>
<value idref="1100"/>
</value>
</entry>
<entry>
<key id="1356" type="java.lang.String">Region</key>
<value id="1357" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1358">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1359">The region used for filtering the PRVI instructions</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1360" type="java.lang.String">RelType OneToMany</key>
<value id="1361" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1362">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="1363" type="java.lang.String">ONETOMNY</value>
</value>
</entry>
<entry>
<key id="1364" type="java.lang.String">RelType Sequence</key>
<value id="1365" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1366">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="1367" type="java.lang.String">SEQUENCE</value>
</value>
</entry>
<entry>
<key id="1368" type="java.lang.String">ReuterBusinessFeed</key>
<value id="1369" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1370">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1371">ReuterBusinessFeed</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1372" type="java.lang.String">ReutersBusinessFeed</key>
<value id="1373" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1374">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1375" type="java.lang.String">ReutersFileSystem</key>
<value id="1376" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1377">com.j2fe.connector.ReutersFileSystemType</className>
<clazz>com.j2fe.connector.ReutersFileSystemType</clazz>
<description id="1378">ReutersFileSystem</description>
<persistent>false</persistent>
<value id="1379" type="com.j2fe.connector.ReutersFileSystemType">SFTP</value>
</value>
</entry>
<entry>
<key id="1380" type="java.lang.String">ReutersLocalDirectory</key>
<value id="1381" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1382">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1383" type="java.lang.String">Run Rescrub</key>
<value id="1384" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1385">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1386">If set to true price finalizer will run, otherwise not.</description>
<persistent>false</persistent>
<value idref="1100"/>
</value>
</entry>
<entry>
<key id="1387" type="java.lang.String">RunSameDayProcessing</key>
<value id="1388" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1389">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1390">If this parameter is set to true, then validate current processing day's prices only.</description>
<persistent>false</persistent>
<value idref="1163"/>
</value>
</entry>
<entry>
<key id="1391" type="java.lang.String">Select Prvi For Hierarchy</key>
<value id="1392" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1393">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1394" type="java.lang.String">Suppress GEN1 Issues for User Ids</key>
<value id="1395" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1396">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1397">The user Id's mentioned here will not be scrubbed, provided GPRC already exists with these user Id's.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1398" type="java.lang.String">Threads In Parallel</key>
<value id="1399" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1400">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
<value idref="1172"/>
</value>
</entry>
<entry>
<key id="1401" type="java.lang.String">ThresholdValue</key>
<value id="1402" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1403">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="1404">ThresholdValue</description>
<persistent>false</persistent>
<value id="1405" type="java.lang.Integer">20</value>
</value>
</entry>
<entry>
<key id="1406" type="java.lang.String">ToleranceToDo</key>
<value id="1407" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1408">com.j2fe.pricing.ToleranceCases</className>
<clazz>com.j2fe.pricing.ToleranceCases</clazz>
<description id="1409">ToleranceToDo</description>
<persistent>false</persistent>
<value idref="1189"/>
</value>
</entry>
<entry>
<key id="1410" type="java.lang.String">Vendor</key>
<value id="1411" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1412">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1413">Used to validate only prices with specific Vendors</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1414" type="java.lang.String">Working Job Id</key>
<value id="1415" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1416">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1417">Working job_id is the job_id from the ft_o_isjb table in case it has to be reused and new entries should not be created. It works in conjunction with the reuse job id flag</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1418" type="java.lang.String">WriteValidStatusRecords</key>
<value id="1419" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1420">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1421">If true the check will also write VALID records to the Status table. Default is false. If parameter isn't set the workflow will use the default values set on each individual validation activity. (default false except for tolerance and golden price tolerance the default is true)</description>
<persistent>false</persistent>
<value idref="1163"/>
</value>
</entry>
<entry>
<key id="1422" type="java.lang.String">pDoElecktronFlag</key>
<value id="1423" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1424">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="1100"/>
</value>
</entry>
<entry>
<key id="1425" type="java.lang.String">pIssueGroupName</key>
<value id="1426" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1427">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1428">The schedule group name. The same group is used for publishing too.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1429" type="java.lang.String">pPublishFlag</key>
<value id="1430" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1431">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="1163"/>
</value>
</entry>
<entry>
<key id="1432" type="java.lang.String">pSnapName</key>
<value id="1433" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1434">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="1435" type="java.lang.String">SY</value>
</value>
</entry>
</variables>
<version>29</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
