<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.16">
<package-comment/>
<businessobject displayString="9 - Fixed persistency issue and commit points" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">Fixed persistency issue and commit points</comment>
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
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<directJoin>true</directJoin>
<name id="19">Synchronize</name>
<nodeHandler>com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandler>
<nodeHandlerClass id="20">com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandlerClass>
<sources id="21" type="java.util.HashSet">
<item id="22" type="com.j2fe.workflow.definition.Transition">
<name id="23">goto-next</name>
<source id="24">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="25">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="26">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="27" type="java.util.HashSet">
<item id="28" type="com.j2fe.workflow.definition.Transition">
<name id="29">end-loop</name>
<source id="30">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="31">For Loop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.ForEach</nodeHandler>
<nodeHandlerClass id="32">com.j2fe.workflow.handler.impl.ForEach</nodeHandlerClass>
<parameters id="33" type="java.util.HashSet">
<item id="34" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="35">counter</name>
<stringValue id="36">CriticalCnt</stringValue>
<type>VARIABLE</type>
</item>
<item id="37" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="38">counter</name>
<stringValue id="39">CriticalCnt</stringValue>
<type>VARIABLE</type>
</item>
<item id="40" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="41">input</name>
<stringValue id="42">CriticalNonCriticals</stringValue>
<type>VARIABLE</type>
</item>
<item id="43" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="44">output</name>
<stringValue id="45">CriticalNonCritical</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="46" type="java.util.HashSet">
<item id="47" type="java.lang.String">CriticalCnt
1000</item>
</persistentVariables>
<sources id="48" type="java.util.HashSet">
<item id="49" type="com.j2fe.workflow.definition.Transition">
<name id="50">goto-next</name>
<source id="51">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="52">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="53">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="54" type="java.util.HashSet">
<item id="55" type="com.j2fe.workflow.definition.Transition">
<name id="56">goto-next</name>
<source id="57">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="58">Critical Counter</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="59">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="60" type="java.util.HashSet">
<item id="61" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="62">statements</name>
<stringValue id="63">int Cnt = 0</stringValue>
<type>CONSTANT</type>
</item>
<item id="64" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="65">variables["Cnt"]</name>
<stringValue id="66">CriticalCnt</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="67" type="java.util.HashSet">
<item id="68" type="com.j2fe.workflow.definition.Transition">
<name id="69">goto-next</name>
<source id="70">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="71">Critical, Non Critical Rates</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="72">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="73" type="java.util.HashSet">
<item id="74" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="75">database</name>
<stringValue id="76">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="77" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="78">firstColumnsResult</name>
<stringValue id="79">CriticalNonCriticals</stringValue>
<type>VARIABLE</type>
</item>
<item id="80" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="81">[0]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="82">indexedParameters[0]</name>
<stringValue id="83">ProcDate</stringValue>
<type>VARIABLE</type>
</item>
<item id="84" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="85">indexedParameters[1]</name>
<stringValue id="86">PricePointEventDefinitionId</stringValue>
<type>VARIABLE</type>
</item>
<item id="87" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="88">querySQL</name>
<stringValue id="89">sqlCriticalNon</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="90" type="java.util.HashSet">
<item id="91" type="java.lang.String">CriticalNonCriticals
1000</item>
</persistentVariables>
<sources id="92" type="java.util.HashSet">
<item id="93" type="com.j2fe.workflow.definition.Transition">
<name id="94">rows-found</name>
<source id="95">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="96">Exceptions?</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="97">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="98" type="java.util.HashSet">
<item id="99" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="100">database</name>
<stringValue id="101">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="102" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="103">[0]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="104">indexedParameters[0]</name>
<stringValue id="105">ProcDate</stringValue>
<type>VARIABLE</type>
</item>
<item id="106" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="107">indexedParameters[1]</name>
<stringValue id="108">PricePointEventDefinitionId</stringValue>
<type>VARIABLE</type>
</item>
<item id="109" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="110">querySQL</name>
<stringValue id="111">SqlExp</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="112" type="java.util.HashSet">
<item id="113" type="com.j2fe.workflow.definition.Transition">
<name id="114">goto-next</name>
<source id="115">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<directJoin>true</directJoin>
<name id="116">For Each Split</name>
<nodeHandler>com.j2fe.workflow.handler.impl.GenericSplit</nodeHandler>
<nodeHandlerClass id="117">com.j2fe.workflow.handler.impl.GenericSplit</nodeHandlerClass>
<parameters id="118" type="java.util.HashSet">
<item id="119" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="120">input</name>
<stringValue id="121">pIssueGroupName</stringValue>
<type>VARIABLE</type>
</item>
<item id="122" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="123">output</name>
<stringValue id="124">iss_grp_oid</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="125" type="java.util.HashSet">
<item id="126" type="java.lang.String">iss_grp_oid
1000</item>
</persistentVariables>
<sources id="127" type="java.util.HashSet">
<item id="128" type="com.j2fe.workflow.definition.Transition">
<name id="129">ToSplit</name>
<source id="130">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="131">Automatically generated</description>
<directJoin>false</directJoin>
<name id="132">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="133">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="134" type="java.util.HashSet">
<item id="135" type="com.j2fe.workflow.definition.Transition">
<name id="136">ToSplit</name>
<source id="137">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="138">Automatically generated</description>
<directJoin>false</directJoin>
<name id="139">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="140">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="141" type="java.util.HashSet">
<item id="142" type="com.j2fe.workflow.definition.Transition">
<name id="143">goto-next</name>
<source id="144">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="145">Price Validation Notify</name>
<nodeHandler>com.j2fe.general.activities.EMAIL</nodeHandler>
<nodeHandlerClass id="146">com.j2fe.general.activities.EMAIL</nodeHandlerClass>
<parameters id="147" type="java.util.HashSet">
<item id="148" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="149">emailText</name>
<stringValue id="150">EmailValCon</stringValue>
<type>VARIABLE</type>
</item>
<item id="151" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="152">from</name>
<stringValue id="153">no-reply@thegoldensource.com</stringValue>
<type>CONSTANT</type>
</item>
<item id="154" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="155">recipients</name>
<stringValue id="156">EmailAllValNotify</stringValue>
<type>VARIABLE</type>
</item>
<item id="157" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="158">session</name>
<stringValue id="159">email/session</stringValue>
<type>REFERENCE</type>
</item>
<item id="160" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="161">subject</name>
<stringValue id="162">EmailValSub</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="163" type="java.util.HashSet">
<item id="164" type="com.j2fe.workflow.definition.Transition">
<name id="165">goto-next</name>
<source id="166">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="167">Bean Shell Script (Standard)</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="168">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="169" type="java.util.HashSet">
<item id="170" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="171">statements</name>
<stringValue id="172">import java.util.Date;&#13;
import java.text.DateFormat;&#13;
import java.text.SimpleDateFormat;&#13;
import java.lang.String;&#13;
&#13;
String ValidatedSubject=  "Rates are Derived and Validated: "+IssueGroupName+" group" ;&#13;
&#13;
String ValidatedContent=  "The rates have been derived and validated in EDM for the "+IssueGroupName+" group." ;&#13;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="173" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="174">variables["IssueGroupName"]</name>
<stringValue id="175">pIssueGroupName</stringValue>
<type>VARIABLE</type>
</item>
<item id="176" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="177">variables["ValidatedContent"]</name>
<stringValue id="178">EmailValCon</stringValue>
<type>VARIABLE</type>
</item>
<item id="179" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="180">variables["ValidatedSubject"]</name>
<stringValue id="181">EmailValSub</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="182" type="java.util.HashSet">
<item id="183" type="com.j2fe.workflow.definition.Transition">
<name id="184">goto-next</name>
<source id="185">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="186">Val Notify Email IDs</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="187">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="188" type="java.util.HashSet">
<item id="189" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="190">database</name>
<stringValue id="191">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="192" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="193">firstColumnsResult</name>
<stringValue id="194">EmailAllValNotify</stringValue>
<type>VARIABLE</type>
</item>
<item id="195" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="196">querySQL</name>
<stringValue id="197">SELECT distinct email_id FROM FT_T_ISG1 ISG1 , FT_T_ISGR ISGR&#13;
WHERE ISG1.ISS_GRP_OID =ISGR.ISS_GRP_OID</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="198" type="java.util.HashSet">
<item id="199" type="com.j2fe.workflow.definition.Transition">
<name id="200">goto-next</name>
<source id="201">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="202">Price Validations</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="203">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="204" type="java.util.HashSet">
<item id="205" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="206">["Additional Price Qualification Type"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="207">input["Additional Price Qualification Type"]</name>
<stringValue id="208">Additional Price Qualification Type</stringValue>
<type>VARIABLE</type>
</item>
<item id="209" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="210">["Base Currency"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="211">input["Base Currency"]</name>
<stringValue id="212">Base Currency</stringValue>
<type>VARIABLE</type>
</item>
<item id="213" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="214">["Bulk Size"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="215">input["Bulk Size"]</name>
<stringValue id="216">Bulk Size</stringValue>
<type>VARIABLE</type>
</item>
<item id="217" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="218">["Calculate MID price Options"]@com/j2fe/pricing/MIDCalculationOptions@</UITypeHint>
<input>true</input>
<name id="219">input["Calculate MID price Options"]</name>
<stringValue id="220">Calculate MID price Options</stringValue>
<type>VARIABLE</type>
</item>
<item id="221" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="222">["Calendar"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="223">input["Calendar"]</name>
<stringValue id="224">Calendar</stringValue>
<type>VARIABLE</type>
</item>
<item id="225" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="226">["CleanValidationInstructionCache"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="227">input["CleanValidationInstructionCache"]</name>
<stringValue id="228">CleanValidationInstructionCache</stringValue>
<type>VARIABLE</type>
</item>
<item id="229" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="230">["Consider Calendar Results"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="231">input["Consider Calendar Results"]</name>
<stringValue id="232">Consider Calendar Results</stringValue>
<type>VARIABLE</type>
</item>
<item id="233" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="234">["Consider Negative Prices"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="235">input["Consider Negative Prices"]</name>
<stringValue id="236">Consider Negative Prices</stringValue>
<type>VARIABLE</type>
</item>
<item id="237" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="238">["Country"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="239">input["Country"]</name>
<stringValue id="240">Country</stringValue>
<type>VARIABLE</type>
</item>
<item id="241" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="242">["CreateGPRCOnHoliday"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="243">input["CreateGPRCOnHoliday"]</name>
<stringValue id="244">CreateGPRCOnHoliday</stringValue>
<type>VARIABLE</type>
</item>
<item id="245" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="246">["CreatePriceStatusForGoldenPrice"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="247">input["CreatePriceStatusForGoldenPrice"]</name>
<stringValue id="248">CreatePriceStatusForGoldenPrice</stringValue>
<type>VARIABLE</type>
</item>
<item id="249" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="250">["Derive Golden Price"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="251">input["Derive Golden Price"]</name>
<stringValue id="252">Derive Golden Price</stringValue>
<type>VARIABLE</type>
</item>
<item id="253" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="254">["DiagnosticMode"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="255">input["DiagnosticMode"]</name>
<stringValue id="256">DiagnosticMode</stringValue>
<type>VARIABLE</type>
</item>
<item id="257" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="258">["Do Price Derivation First"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="259">input["Do Price Derivation First"]</name>
<stringValue id="260">Do Price Derivation First</stringValue>
<type>VARIABLE</type>
</item>
<item id="261" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="262">["Donot Consider Issue Maturity"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="263">input["Donot Consider Issue Maturity"]</name>
<stringValue id="264">Donot Consider Issue Maturity</stringValue>
<type>VARIABLE</type>
</item>
<item id="265" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="266">["Downstream System Identifier"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="267">input["Downstream System Identifier"]</name>
<stringValue id="268">Downstream System Identifier</stringValue>
<type>VARIABLE</type>
</item>
<item id="269" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="270">["ExecuteCustomActivityCheck"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="271">input["ExecuteCustomActivityCheck"]</name>
<stringValue id="272">ExecuteCustomActivityCheck</stringValue>
<type>VARIABLE</type>
</item>
<item id="273" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="274">["Extra Configuration Information"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="275">input["Extra Configuration Information"]</name>
<stringValue id="276">Extra Configuration Information</stringValue>
<type>VARIABLE</type>
</item>
<item id="277" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="278">["FXRT Look Back Period"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="279">input["FXRT Look Back Period"]</name>
<stringValue id="280">FXRT Look Back Period</stringValue>
<type>VARIABLE</type>
</item>
<item id="281" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="282">["Foreign Exchange Price Type"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="283">input["Foreign Exchange Price Type"]</name>
<stringValue id="284">Foreign Exchange Price Type</stringValue>
<type>VARIABLE</type>
</item>
<item id="285" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="286">["Foreign Exchange Type"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="287">input["Foreign Exchange Type"]</name>
<stringValue id="288">Foreign Exchange Type</stringValue>
<type>VARIABLE</type>
</item>
<item id="289" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="290">["FundType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="291">input["FundType"]</name>
<stringValue id="292">FundType</stringValue>
<type>VARIABLE</type>
</item>
<item id="293" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="294">["GoldenToleranceToDo"]@com/j2fe/pricing/ToleranceCases@</UITypeHint>
<input>true</input>
<name id="295">input["GoldenToleranceToDo"]</name>
<stringValue id="296">GoldenToleranceToDo</stringValue>
<type>VARIABLE</type>
</item>
<item id="297" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="298">["Ignore Issue MAT_EXP_TMS"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="299">input["Ignore Issue MAT_EXP_TMS"]</name>
<stringValue id="300">Ignore Issue MAT_EXP_TMS</stringValue>
<type>VARIABLE</type>
</item>
<item id="301" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="302">["IgnorePriceValidityForComparison"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="303">input["IgnorePriceValidityForComparison"]</name>
<stringValue id="304">IgnorePriceValidityForComparison</stringValue>
<type>VARIABLE</type>
</item>
<item id="305" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="306">["Instruments"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="307">input["Instruments"]</name>
<stringValue id="308">Instruments</stringValue>
<type>VARIABLE</type>
</item>
<item id="309" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="310">["IsExternalLibrary"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="311">input["IsExternalLibrary"]</name>
<stringValue id="312">IsExternalLibrary</stringValue>
<type>VARIABLE</type>
</item>
<item id="313" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="314">["IsWaterfallModel"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="315">input["IsWaterfallModel"]</name>
<stringValue id="316">IsWaterfallModel</stringValue>
<type>VARIABLE</type>
</item>
<item id="317" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="318">["IssueGroup"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="319">input["IssueGroup"]</name>
<stringValue id="320">ChildIssGrpOid</stringValue>
<type>VARIABLE</type>
</item>
<item id="321" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="322">["IssueType"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="323">input["IssueType"]</name>
<stringValue id="324">IssueType</stringValue>
<type>VARIABLE</type>
</item>
<item id="325" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="326">["IssueTypeGroup"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="327">input["IssueTypeGroup"]</name>
<stringValue id="328">IssueTypeGroup</stringValue>
<type>VARIABLE</type>
</item>
<item id="329" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="330">["JobDefinitionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="331">input["JobDefinitionId"]</name>
<stringValue id="332">JobDefinitionId</stringValue>
<type>VARIABLE</type>
</item>
<item id="333" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="334">["JobIDs"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="335">input["JobIDs"]</name>
<stringValue id="336">JobIDs</stringValue>
<type>VARIABLE</type>
</item>
<item id="337" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="338">["Market"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="339">input["Market"]</name>
<stringValue id="340">Market</stringValue>
<type>VARIABLE</type>
</item>
<item id="341" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="342">["Message Type"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="343">input["Message Type"]</name>
<stringValue id="344">Message Type</stringValue>
<type>VARIABLE</type>
</item>
<item id="345" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="346">["Observation Period"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="347">input["Observation Period"]</name>
<stringValue id="348">Observation Period</stringValue>
<type>VARIABLE</type>
</item>
<item id="349" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="350">["Overwrite Suspect Status"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="351">input["Overwrite Suspect Status"]</name>
<stringValue id="352">Overwrite Suspect Status</stringValue>
<type>VARIABLE</type>
</item>
<item id="353" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="354">["PRVI Hierarchy Enable Switch"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="355">input["PRVI Hierarchy Enable Switch"]</name>
<stringValue id="356">PRVI Hierarchy Enable Switch</stringValue>
<type>VARIABLE</type>
</item>
<item id="357" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="358">["Parent Job ID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="359">input["Parent Job ID"]</name>
<stringValue id="360">Parent Job ID</stringValue>
<type>VARIABLE</type>
</item>
<item id="361" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="362">["Price Day Frequency"]@com/j2fe/pricing/PricingFrequency@</UITypeHint>
<input>true</input>
<name id="363">input["Price Day Frequency"]</name>
<stringValue id="364">Price Day Frequency</stringValue>
<type>VARIABLE</type>
</item>
<item id="365" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="366">["Price Derivation Instruments"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="367">input["Price Derivation Instruments"]</name>
<stringValue id="368">Price Derivation Instruments</stringValue>
<type>VARIABLE</type>
</item>
<item id="369" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="370">["Price Derivation Issue Type"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="371">input["Price Derivation Issue Type"]</name>
<stringValue id="372">Price Derivation Issue Type</stringValue>
<type>VARIABLE</type>
</item>
<item id="373" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="374">["Price Derivation IssueGroup"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="375">input["Price Derivation IssueGroup"]</name>
<stringValue id="376">Price Derivation IssueGroup</stringValue>
<type>VARIABLE</type>
</item>
<item id="377" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="378">["Price Derivation IssueTypeGroup"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="379">input["Price Derivation IssueTypeGroup"]</name>
<stringValue id="380">Price Derivation IssueTypeGroup</stringValue>
<type>VARIABLE</type>
</item>
<item id="381" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="382">["Price Derivation RelType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="383">input["Price Derivation RelType"]</name>
<stringValue id="384">Price Derivation RelType</stringValue>
<type>VARIABLE</type>
</item>
<item id="385" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="386">["Price Method Type"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="387">input["Price Method Type"]</name>
<stringValue id="388">Price Method Type</stringValue>
<type>VARIABLE</type>
</item>
<item id="389" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="390">["Price Quote Method Type"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="391">input["Price Quote Method Type"]</name>
<stringValue id="392">Price Quote Method Type</stringValue>
<type>VARIABLE</type>
</item>
<item id="393" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="394">["Price Source"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="395">input["Price Source"]</name>
<stringValue id="396">Price Source</stringValue>
<type>VARIABLE</type>
</item>
<item id="397" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="398">["Price Type"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="399">input["Price Type"]</name>
<stringValue id="400">Price Type</stringValue>
<type>VARIABLE</type>
</item>
<item id="401" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="402">["PricePointEventDefinitionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="403">input["PricePointEventDefinitionId"]</name>
<stringValue id="404">PricePointEventDefinitionId</stringValue>
<type>VARIABLE</type>
</item>
<item id="405" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="406">["Prior GPRC Observation Count"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="407">input["Prior GPRC Observation Count"]</name>
<stringValue id="408">Prior GPRC Observation Count</stringValue>
<type>VARIABLE</type>
</item>
<item id="409" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="410">["Processing Date"]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="411">input["Processing Date"]</name>
<stringValue id="412">ProcDate</stringValue>
<type>VARIABLE</type>
</item>
<item id="413" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="414">["Processing Mode"]@com/j2fe/pricing/ProcessingMode@</UITypeHint>
<input>true</input>
<name id="415">input["Processing Mode"]</name>
<stringValue id="416">Processing Mode</stringValue>
<type>VARIABLE</type>
</item>
<item id="417" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="418">["PublishingEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="419">input["PublishingEvent"]</name>
<stringValue id="420">PublishingEvent</stringValue>
<type>VARIABLE</type>
</item>
<item id="421" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="422">["PurposeType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="423">input["PurposeType"]</name>
<stringValue id="424">PurposeType</stringValue>
<type>VARIABLE</type>
</item>
<item id="425" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="426">["Qualifying type for Golden Price Check"]@com/j2fe/pricing/QualifyPriceStatus@</UITypeHint>
<input>true</input>
<name id="427">input["Qualifying type for Golden Price Check"]</name>
<stringValue id="428">Qualifying type for Golden Price Check</stringValue>
<type>VARIABLE</type>
</item>
<item id="429" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="430">["ReUse Job Id"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="431">input["ReUse Job Id"]</name>
<stringValue id="432">ReUse Job Id</stringValue>
<type>VARIABLE</type>
</item>
<item id="433" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="434">["Region"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="435">input["Region"]</name>
<stringValue id="436">Region</stringValue>
<type>VARIABLE</type>
</item>
<item id="437" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="438">["RelType OneToMany"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="439">input["RelType OneToMany"]</name>
<stringValue id="440">RelType OneToMany</stringValue>
<type>VARIABLE</type>
</item>
<item id="441" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="442">["RelType Sequence"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="443">input["RelType Sequence"]</name>
<stringValue id="444">RelType Sequence</stringValue>
<type>VARIABLE</type>
</item>
<item id="445" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="446">["Run Rescrub"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="447">input["Run Rescrub"]</name>
<stringValue id="448">Run Rescrub</stringValue>
<type>VARIABLE</type>
</item>
<item id="449" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="450">["RunSameDayProcessing"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="451">input["RunSameDayProcessing"]</name>
<stringValue id="452">RunSameDayProcessing</stringValue>
<type>VARIABLE</type>
</item>
<item id="453" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="454">["Select Prvi For Hierarchy"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="455">input["Select Prvi For Hierarchy"]</name>
<stringValue id="456">Select Prvi For Hierarchy</stringValue>
<type>VARIABLE</type>
</item>
<item id="457" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="458">["Suppress GEN1 Issues for User Ids"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="459">input["Suppress GEN1 Issues for User Ids"]</name>
<stringValue id="460">Suppress GEN1 Issues for User Ids</stringValue>
<type>VARIABLE</type>
</item>
<item id="461" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="462">["Threads In Parallel"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="463">input["Threads In Parallel"]</name>
<stringValue id="464">Threads In Parallel</stringValue>
<type>VARIABLE</type>
</item>
<item id="465" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="466">["ToleranceToDo"]@com/j2fe/pricing/ToleranceCases@</UITypeHint>
<input>true</input>
<name id="467">input["ToleranceToDo"]</name>
<stringValue id="468">ToleranceToDo</stringValue>
<type>VARIABLE</type>
</item>
<item id="469" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="470">["Vendor"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="471">input["Vendor"]</name>
<stringValue id="472">Vendor</stringValue>
<type>VARIABLE</type>
</item>
<item id="473" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="474">["Working Job Id"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="475">input["Working Job Id"]</name>
<stringValue id="476">Working Job Id</stringValue>
<type>VARIABLE</type>
</item>
<item id="477" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="478">["WriteValidStatusRecords"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="479">input["WriteValidStatusRecords"]</name>
<stringValue id="480">WriteValidStatusRecords</stringValue>
<type>VARIABLE</type>
</item>
<item id="481" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="482">name</name>
<stringValue id="483">Price Validation Consolidated</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="484" type="java.util.HashSet">
<item id="485" type="com.j2fe.workflow.definition.Transition">
<name id="486">goto-next</name>
<source id="487">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="488">Create Sqls</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="489">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="490" type="java.util.HashSet">
<item id="491" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="492">statements</name>
<objectValue id="493" type="java.lang.String">      String ChildOid = "";&#13;
      for(int i=0 ; i &lt; ABC.length ; i++)&#13;
{&#13;
ChildOid =ChildOid + "'"+ABC[i]+"',";&#13;
}&#13;
&#13;
&#13;
ChildOid = ChildOid.substring(0, ChildOid.lastIndexOf(","));&#13;
&#13;
ChildOid ="("+ ChildOid +")";&#13;
&#13;
&#13;
String sqlder = "select distinct instr_id from ft_T_pdrv where instr_id in (select instr_id from ft_t_isgp where prnt_iss_grp_oid in" +ChildOid+" ) and pped_oid=?"; &#13;
&#13;
//String sqlexcp = "SELECT gpcs_oid  FROM FT_T_ISGR ISGR, FT_T_ISGP ISGP, FT_T_GPCS GPCS  WHERE ISGR.ISS_GRP_OID=ISGP.ISS_GRP_OID  AND ISGR.iss_grp_oid in " +ChildOid+" AND ISGP.INSTR_ID=GPCS.INSTR_ID  AND Trunc(GPCS.prc_tms)=Trunc(?)  AND UPPER(GPCS.GPCS_TYP) &lt;&gt; 'VALID'  AND GPCS.pped_oid=? "; &#13;
&#13;
String sqlexcp = "SELECT distinct gpcs_oid FROM FT_T_ISGP ISGP, FT_T_GPCS GPCS   where ISGP.prnt_iss_grp_oid in " +ChildOid+"	AND ISGP.INSTR_ID=GPCS.INSTR_ID  	AND Trunc(GPCS.prc_tms)=?  	AND UPPER(GPCS.GPCS_TYP) &lt;&gt; 'VALID'  	AND GPCS.pped_oid=? ";&#13;
&#13;
//String sqlcritnoncrit = " SELECT DISTINCT prnt_iss_grp_oid FROM (	SELECT Nvl2(isgp_critical.prnt_iss_grp_oid,1,0) prnt_iss_grp_oid 	FROM FT_T_ISGR ISGR, FT_T_ISGP ISGP, FT_T_GPCS GPCS,  	( SELECTprnt_iss_grp_oid, instr_id FROM FT_T_ISGP WHERE prnt_iss_grp_oid IN (SELECT ISS_GRP_OID FROM FT_T_ISGR WHERE GRP_PURP_TYP='CRIT_PRC'))ISGP_CRITICAL WHERE ISGR.ISS_GRP_OID=ISGP.ISS_GRP_OID	AND ISGR.iss_grp_oid in " +ChildOid+ " AND ISGP.INSTR_ID=GPCS.INSTR_ID	AND Trunc(GPCS.prc_tms)=Trunc(?) 	AND UPPER(GPCS.GPCS_TYP) &lt;&gt; 'VALID'	ANDGPCS.pped_oid=?	AND gpcs.instr_id=ISGP_CRITICAL.instr_id(+) )";&#13;
&#13;
String sqlcritnoncrit = "SELECT DISTINCT prnt_iss_grp_oid  FROM (	SELECT Nvl2(isgp_critical.prnt_iss_grp_oid,1,0) prnt_iss_grp_oid 	 FROM  FT_T_ISGP ISGP, FT_T_GPCS GPCS, ( SELECT prnt_iss_grp_oid, instr_id FROM FT_T_ISGP WHERE prnt_iss_grp_oid IN ( SELECT ISS_GRP_OID FROM FT_T_ISGR WHERE GRP_PURP_TYP='CRIT_PRC'))ISGP_CRITICAL  WHERE ISGP.prnt_iss_grp_oid in " +ChildOid+ " AND ISGP.INSTR_ID=GPCS.INSTR_ID	 AND Trunc(GPCS.prc_tms)=Trunc(?) 	 AND UPPER(GPCS.GPCS_TYP) &lt;&gt; 'VALID'	 AND GPCS.pped_oid=?	 AND gpcs.instr_id=ISGP_CRITICAL.instr_id(+)  )";&#13;
&#13;
//String sqlThreshold = " SELECT CASE WHEN Count(*) &gt; ? THEN 1 ELSE 0 END Emailflag  FROM FT_T_ISGR ISGR, FT_T_ISGP ISGP, FT_T_GPCS GPCS  WHERE ISGR.ISS_GRP_OID=ISGP.ISS_GRP_OID  AND ISGR.iss_grp_oid in " +ChildOid+ " AND ISGP.INSTR_ID=GPCS.INSTR_ID  AND Trunc(GPCS.prc_tms)=Trunc(?)  AND UPPER(GPCS.GPCS_TYP) &lt;&gt; 'VALID'  AND GPCS.pped_oid=?  AND EXISTS (SELECT * FROM FT_T_ISGP ISGP1 WHERE ISGP1.prnt_iss_grp_oid IN (SELECT ISS_GRP_OID FROM FT_T_ISGR WHERE GRP_PURP_TYP='CRIT_PRC') AND ISGP1.instr_id=GPCS.instr_id)";&#13;
&#13;
String sqlThreshold = " SELECT CASE WHEN Count(*) &gt; ? THEN 1 ELSE 0 END Emailflag  FROM FT_T_ISGP ISGP, FT_T_GPCS GPCS  WHERE ISGP.prnt_iss_grp_oid in " +ChildOid+ " AND ISGP.INSTR_ID=GPCS.INSTR_ID  AND Trunc(GPCS.prc_tms)=Trunc(?)  AND UPPER(GPCS.GPCS_TYP) &lt;&gt; 'VALID'  AND GPCS.pped_oid=?  AND EXISTS (SELECT * FROM FT_T_ISGP ISGP1 WHERE ISGP1.prnt_iss_grp_oid IN (SELECT ISS_GRP_OID FROM FT_T_ISGR WHERE GRP_PURP_TYP='CRIT_PRC') AND ISGP1.instr_id=GPCS.instr_id)";&#13;
&#13;
&#13;
//String sqlemailall = "SELECT email_id FROM FT_T_ISG1 ISG1 , FT_T_ISGR ISGR  WHERE ISG1.ISS_GRP_OID =ISGR.ISS_GRP_OID  AND ISGR.GRP_PURP_TYP not in ('CRIT_PRC')  union all  SELECT email_id FROM FT_T_ISG1 WHERE iss_grp_oid IN (  SELECT DISTINCT prnt_iss_grp_oid  FROM FT_T_ISGP  WHERE instr_id IN (  SELECT GPCS.instr_id  FROM FT_T_ISGR ISGR, FT_T_ISGP ISGP, FT_T_GPCS GPCS  WHERE  ISGR.ISS_GRP_OID=ISGP.ISS_GRP_OID  AND ISGR.iss_grp_oid in " +ChildOid+ " AND ISGP.INSTR_ID=GPCS.INSTR_ID  AND Trunc(GPCS.prc_tms)=Trunc(?)  AND UPPER(GPCS.GPCS_TYP) &lt;&gt; 'VALID'  AND GPCS.pped_oid=?  )  AND EXISTS (SELECT * FROM ft_t_isgr isgr1 WHERE isgr1.iss_grp_oid= prnt_iss_grp_oid AND isgr1.grp_purp_typ='CRIT_PRC' )  )";&#13;
&#13;
String sqlemailall = "SELECT email_id FROM FT_T_ISG1 ISG1 , FT_T_ISGR ISGR  WHERE ISG1.ISS_GRP_OID =ISGR.ISS_GRP_OID  AND ISGR.GRP_PURP_TYP not in ('CRIT_PRC')  union all  SELECT email_id FROM FT_T_ISG1 WHERE iss_grp_oid IN (  SELECT DISTINCT prnt_iss_grp_oid  FROM FT_T_ISGP  WHERE instr_id IN (  SELECT GPCS.instr_id  FROM FT_T_ISGP ISGP, FT_T_GPCS GPCS  WHERE  ISGP.iss_grp_oid in " +ChildOid+ " AND ISGP.INSTR_ID=GPCS.INSTR_ID  AND Trunc(GPCS.prc_tms)=Trunc(?)  AND UPPER(GPCS.GPCS_TYP) &lt;&gt; 'VALID'  AND GPCS.pped_oid=?  )  AND EXISTS (SELECT * FROM ft_t_isgr isgr1 WHERE isgr1.iss_grp_oid= prnt_iss_grp_oid AND isgr1.grp_purp_typ='CRIT_PRC' )  )";&#13;
&#13;
&#13;
//String sqlemailfo = "SELECT email_id FROM FT_T_ISG1 WHERE iss_grp_oid IN (  SELECT DISTINCT prnt_iss_grp_oid  FROM FT_T_ISGP  WHERE instr_id IN (  SELECT GPCS.instr_id  FROM FT_T_ISGR ISGR, FT_T_ISGP ISGP, FT_T_GPCS GPCS  WHERE  ISGR.ISS_GRP_OID=ISGP.iss_grp_oid  AND ISGP.iss_grp_oid in " +ChildOid+ " AND ISGP.INSTR_ID=GPCS.INSTR_ID  AND Trunc(GPCS.prc_tms)=Trunc(?)  AND UPPER(GPCS.GPCS_TYP) &lt;&gt; 'VALID'  AND GPCS.pped_oid=?  )  AND EXISTS (SELECT * FROM ft_t_isgr isgr1 WHERE isgr1.iss_grp_oid= prnt_iss_grp_oid AND isgr1.grp_purp_typ='CRIT_PRC' )  )";&#13;
&#13;
String sqlemailfo = "SELECT email_id FROM FT_T_ISG1 WHERE iss_grp_oid IN (  SELECT DISTINCT prnt_iss_grp_oid  FROM FT_T_ISGP  WHERE instr_id IN (  SELECT GPCS.instr_id  FROM FT_T_ISGP ISGP, FT_T_GPCS GPCS  WHERE ISGP.prnt_iss_grp_oid in " +ChildOid+ " AND ISGP.INSTR_ID=GPCS.INSTR_ID  AND Trunc(GPCS.prc_tms)=Trunc(?)  AND UPPER(GPCS.GPCS_TYP) &lt;&gt; 'VALID'  AND GPCS.pped_oid=?  )  AND EXISTS (SELECT * FROM ft_t_isgr isgr1 WHERE isgr1.iss_grp_oid= prnt_iss_grp_oid AND isgr1.grp_purp_typ='CRIT_PRC' )  )";</objectValue>
<type>CONSTANT</type>
</item>
<item id="494" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="495">variables["ABC"]</name>
<stringValue id="496">ChildIssGrpOid</stringValue>
<type>VARIABLE</type>
</item>
<item id="497" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="498">variables["sqlThreshold"]</name>
<stringValue id="499">SqlThreshold</stringValue>
<type>VARIABLE</type>
</item>
<item id="500" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="501">variables["sqlcritnoncrit"]</name>
<stringValue id="502">sqlCriticalNon</stringValue>
<type>VARIABLE</type>
</item>
<item id="503" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="504">variables["sqlemailall"]</name>
<stringValue id="505">sqlemailidall</stringValue>
<type>VARIABLE</type>
</item>
<item id="506" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="507">variables["sqlemailfo"]</name>
<stringValue id="508">sqlemailidfo</stringValue>
<type>VARIABLE</type>
</item>
<item id="509" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="510">variables["sqlexcp"]</name>
<stringValue id="511">SqlExp</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="512" type="java.util.HashSet">
<item id="513" type="java.lang.String">SqlThreshold
1000</item>
<item id="514" type="java.lang.String">sqlemailidfo
1000</item>
<item id="515" type="java.lang.String">sqlCriticalNon
1000</item>
<item id="516" type="java.lang.String">sqlemailidall
1000</item>
</persistentVariables>
<sources id="517" type="java.util.HashSet">
<item id="518" type="com.j2fe.workflow.definition.Transition">
<name id="519">goto-next</name>
<source id="520">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="521">Extract Child Grp</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="522">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="523" type="java.util.HashSet">
<item id="524" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="525">database</name>
<stringValue id="526">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="527" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="528">firstColumnsResult</name>
<stringValue id="529">ChildIssGrpOid</stringValue>
<type>VARIABLE</type>
</item>
<item id="530" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="531">indexedParameters[0]</name>
<stringValue id="532">pIssueGroupName</stringValue>
<type>VARIABLE</type>
</item>
<item id="533" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="534">querySQL</name>
<stringValue id="535">select distinct trim(isgp.iss_grp_oid) from ft_t_isgr isgr, ft_t_isgp isgp where grp_nme = ? and isgr.iss_grp_oid = isgp.prnt_iss_grp_oid and isgp.iss_grp_oid is not null</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="536" type="java.util.HashSet">
<item id="537" type="com.j2fe.workflow.definition.Transition">
<name id="538">goto-next</name>
<source id="539">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="540">Trunc Processing Date</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="541">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="542" type="java.util.HashSet">
<item id="543" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="544">database</name>
<stringValue id="545">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="546" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="547">firstColumnsResult[0]</name>
<stringValue id="548">ProcDate</stringValue>
<type>VARIABLE</type>
</item>
<item id="549" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="550">[0]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="551">indexedParameters[0]</name>
<stringValue id="552">ProcDate_UT</stringValue>
<type>VARIABLE</type>
</item>
<item id="553" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="554">indexedParameters[1]</name>
<stringValue id="555">Processing Date Deriving Factor</stringValue>
<type>VARIABLE</type>
</item>
<item id="556" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="557">querySQL</name>
<stringValue id="558">select trunc(?)+(?) from dual</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="559" type="java.util.HashSet">
<item id="560" type="com.j2fe.workflow.definition.Transition">
<name id="561">goto-next</name>
<source id="562">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="563">Bean Shell Script (Standard)</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="564">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="565" type="java.util.HashSet">
<item id="566" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="567">statements</name>
<stringValue id="568">import java.util.Date;&#13;
&#13;
if(null==pdate)&#13;
{&#13;
pdate=new Date();&#13;
}&#13;
Date d1=pdate;</stringValue>
<type>CONSTANT</type>
</item>
<item id="569" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="570">variables["d1"]</name>
<stringValue id="571">ProcDate_UT</stringValue>
<type>VARIABLE</type>
</item>
<item id="572" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="573">["pdate"]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="574">variables["pdate"]</name>
<stringValue id="575">Processing Date</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="576" type="java.util.HashSet">
<item id="577" type="com.j2fe.workflow.definition.Transition">
<name id="578">goto-next</name>
<source id="579">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="580">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="581">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="582" type="java.util.HashSet">
<item id="583" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="584">configInfo</name>
<stringValue id="585">pIssueGroupName</stringValue>
<type>VARIABLE</type>
</item>
<item id="586" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="587">file</name>
<objectValue id="588" type="java.net.URI">CBA_WF_ValidatenNotify</objectValue>
<type>CONSTANT</type>
</item>
<item id="589" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="590">jobId</name>
<stringValue id="591">JobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="592" type="java.util.HashSet">
<item id="593" type="com.j2fe.workflow.definition.Transition">
<name id="594">goto-next</name>
<source id="595">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="596">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="597">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="598" type="java.util.HashSet"/>
<targets id="599" type="java.util.HashSet">
<item idref="593" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="579"/>
</item>
</sources>
<targets id="600" type="java.util.HashSet">
<item idref="577" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="562"/>
</item>
</sources>
<targets id="601" type="java.util.HashSet">
<item idref="560" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="539"/>
</item>
</sources>
<targets id="602" type="java.util.HashSet">
<item idref="537" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="520"/>
</item>
</sources>
<targets id="603" type="java.util.HashSet">
<item idref="518" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="487"/>
</item>
</sources>
<targets id="604" type="java.util.HashSet">
<item idref="485" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="201"/>
</item>
</sources>
<targets id="605" type="java.util.HashSet">
<item idref="199" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="185"/>
</item>
</sources>
<targets id="606" type="java.util.HashSet">
<item idref="183" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="166"/>
</item>
</sources>
<targets id="607" type="java.util.HashSet">
<item idref="164" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="144"/>
</item>
</sources>
<targets id="608" type="java.util.HashSet">
<item idref="142" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="137"/>
</item>
</sources>
<targets id="609" type="java.util.HashSet">
<item idref="135" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="130"/>
</item>
</sources>
<targets id="610" type="java.util.HashSet">
<item idref="128" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="115"/>
</item>
</sources>
<targets id="611" type="java.util.HashSet">
<item idref="113" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ANDSPLIT</type>
</source>
<target idref="95"/>
</item>
</sources>
<targets id="612" type="java.util.HashSet">
<item id="613" type="com.j2fe.workflow.definition.Transition">
<name id="614">nothing-found</name>
<source idref="95"/>
<target idref="24"/>
</item>
<item idref="93" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="70"/>
</item>
</sources>
<targets id="615" type="java.util.HashSet">
<item idref="68" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="57"/>
</item>
</sources>
<targets id="616" type="java.util.HashSet">
<item idref="55" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="51"/>
</item>
<item id="617" type="com.j2fe.workflow.definition.Transition">
<name id="618">goto-next</name>
<source id="619">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="620">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="621">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="622" type="java.util.HashSet">
<item id="623" type="com.j2fe.workflow.definition.Transition">
<name id="624">0</name>
<source id="625">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="626">0 - Non Critical 1 - Critical</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="627">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="628" type="java.util.HashSet">
<item id="629" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="630">caseItem</name>
<stringValue id="631">CriticalNonCritical</stringValue>
<type>VARIABLE</type>
</item>
<item id="632" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="633">defaultItem</name>
<stringValue id="634">null</stringValue>
<type>CONSTANT</type>
</item>
<item id="635" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="636">nullTransition</name>
<stringValue id="637">null</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="638" type="java.util.HashSet">
<item id="639" type="com.j2fe.workflow.definition.Transition">
<name id="640">loop</name>
<source idref="30"/>
<target idref="625"/>
</item>
</sources>
<targets id="641" type="java.util.HashSet">
<item idref="623" type="com.j2fe.workflow.definition.Transition"/>
<item id="642" type="com.j2fe.workflow.definition.Transition">
<name id="643">1</name>
<source idref="625"/>
<target id="644">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="645">Critical Rate Exceptions Vs Threshold</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="646">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="647" type="java.util.HashSet">
<item id="648" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="649">database</name>
<stringValue id="650">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="651" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="652">firstColumnsResult</name>
<stringValue id="653">ThresholdBreaches</stringValue>
<type>VARIABLE</type>
</item>
<item id="654" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="655">[0]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="656">indexedParameters[0]</name>
<stringValue id="657">ThresholdValue</stringValue>
<type>VARIABLE</type>
</item>
<item id="658" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="659">[1]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="660">indexedParameters[1]</name>
<stringValue id="661">ProcDate</stringValue>
<type>VARIABLE</type>
</item>
<item id="662" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="663">indexedParameters[2]</name>
<stringValue id="664">PricePointEventDefinitionId</stringValue>
<type>VARIABLE</type>
</item>
<item id="665" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="666">querySQL</name>
<stringValue id="667">SqlThreshold</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="668" type="java.util.HashSet">
<item idref="642" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="669" type="java.util.HashSet">
<item id="670" type="com.j2fe.workflow.definition.Transition">
<name id="671">goto-next</name>
<source idref="644"/>
<target id="672">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="673">Threshold &gt; ?</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="674">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="675" type="java.util.HashSet">
<item id="676" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="677">caseItem</name>
<stringValue id="678">ThresholdBreaches</stringValue>
<type>VARIABLE</type>
<variablePart id="679">[0]</variablePart>
</item>
<item id="680" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="681">defaultItem</name>
<stringValue id="682">null</stringValue>
<type>CONSTANT</type>
</item>
<item id="683" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="684">nullTransition</name>
<stringValue id="685">null</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="686" type="java.util.HashSet">
<item idref="670" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="687" type="java.util.HashSet">
<item id="688" type="com.j2fe.workflow.definition.Transition">
<name id="689">0</name>
<source idref="672"/>
<target id="690">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="691">FO Mail Body</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="692">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="693" type="java.util.HashSet">
<item id="694" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="695">statements</name>
<stringValue id="696">import java.util.Date;&#13;
import java.text.DateFormat;&#13;
import java.text.SimpleDateFormat;&#13;
import java.lang.String;&#13;
&#13;
&#13;
String mailbodyMRU=  "The rates are available; however, there were few Critical exceptions occurred while validating the prices of "+IssueGroupName+" group. Kindly take the necessary actions." ;&#13;
&#13;
String mailSubjectMRU=  IssueGroupName+" : Rate Published with Exceptions in Critical Instruments";&#13;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="697" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="698">["IssueGroupName"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="699">variables["IssueGroupName"]</name>
<stringValue id="700">pIssueGroupName</stringValue>
<type>VARIABLE</type>
</item>
<item id="701" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="702">variables["mailSubjectMRU"]</name>
<stringValue id="703">SubjectFOOnly</stringValue>
<type>VARIABLE</type>
</item>
<item id="704" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="705">variables["mailbodyMRU"]</name>
<stringValue id="706">FOonlyMailContent</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="707" type="java.util.HashSet">
<item idref="688" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="708" type="java.util.HashSet">
<item id="709" type="com.j2fe.workflow.definition.Transition">
<name id="710">goto-next</name>
<source idref="690"/>
<target id="711">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="712">Fetch FO Email ID's</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="713">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="714" type="java.util.HashSet">
<item id="715" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="716">database</name>
<stringValue id="717">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="718" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="719">firstColumnsResult</name>
<stringValue id="720">FO_IDS</stringValue>
<type>VARIABLE</type>
</item>
<item id="721" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="722">[0]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="723">indexedParameters[0]</name>
<stringValue id="724">ProcDate</stringValue>
<type>VARIABLE</type>
</item>
<item id="725" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="726">indexedParameters[1]</name>
<stringValue id="727">PricePointEventDefinitionId</stringValue>
<type>VARIABLE</type>
</item>
<item id="728" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="729">querySQL</name>
<stringValue id="730">sqlemailidfo</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="731" type="java.util.HashSet">
<item idref="709" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="732" type="java.util.HashSet">
<item id="733" type="com.j2fe.workflow.definition.Transition">
<name id="734">goto-next</name>
<source idref="711"/>
<target id="735">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="736">Email to FO</name>
<nodeHandler>com.j2fe.general.activities.EMAIL</nodeHandler>
<nodeHandlerClass id="737">com.j2fe.general.activities.EMAIL</nodeHandlerClass>
<parameters id="738" type="java.util.HashSet">
<item id="739" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="740">emailText</name>
<stringValue id="741">FOonlyMailContent</stringValue>
<type>VARIABLE</type>
</item>
<item id="742" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="743">from</name>
<stringValue id="744">no-reply@thegoldensource.com</stringValue>
<type>CONSTANT</type>
</item>
<item id="745" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="746">recipients</name>
<stringValue id="747">FO_IDS</stringValue>
<type>VARIABLE</type>
</item>
<item id="748" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="749">session</name>
<stringValue id="750">email/session</stringValue>
<type>REFERENCE</type>
</item>
<item id="751" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="752">subject</name>
<stringValue id="753">SubjectFOOnly</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="754" type="java.util.HashSet">
<item idref="733" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="755" type="java.util.HashSet">
<item id="756" type="com.j2fe.workflow.definition.Transition">
<name id="757">goto-next</name>
<source idref="735"/>
<target idref="619"/>
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
<item id="758" type="com.j2fe.workflow.definition.Transition">
<name id="759">1</name>
<source idref="672"/>
<target id="760">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="761">All Mail Body</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="762">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="763" type="java.util.HashSet">
<item id="764" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="765">statements</name>
<stringValue id="766">import java.util.Date;&#13;
import java.text.DateFormat;&#13;
import java.text.SimpleDateFormat;&#13;
import java.lang.String;&#13;
&#13;
&#13;
String mailbodyMRU=  "There would be delay in publishing the rates as there are some major exceptions occurred while validating the prices of "+IssueGroupName+" group." ;&#13;
&#13;
String mailSubjectMRU=  IssueGroupName+" : Urgent: Delay in Rates Publishing";&#13;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="767" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="768">["IssueGroupName"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="769">variables["IssueGroupName"]</name>
<stringValue id="770">pIssueGroupName</stringValue>
<type>VARIABLE</type>
</item>
<item id="771" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="772">variables["mailSubjectMRU"]</name>
<stringValue id="773">SubjectAll</stringValue>
<type>VARIABLE</type>
</item>
<item id="774" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="775">variables["mailbodyMRU"]</name>
<stringValue id="776">AllMailContent</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="777" type="java.util.HashSet">
<item idref="758" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="778" type="java.util.HashSet">
<item id="779" type="com.j2fe.workflow.definition.Transition">
<name id="780">goto-next</name>
<source idref="760"/>
<target id="781">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="782">Fetch All Email ID's</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="783">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="784" type="java.util.HashSet">
<item id="785" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="786">database</name>
<stringValue id="787">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="788" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="789">firstColumnsResult</name>
<stringValue id="790">All_Dept_IDS</stringValue>
<type>VARIABLE</type>
</item>
<item id="791" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="792">[0]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="793">indexedParameters[0]</name>
<stringValue id="794">ProcDate</stringValue>
<type>VARIABLE</type>
</item>
<item id="795" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="796">indexedParameters[1]</name>
<stringValue id="797">PricePointEventDefinitionId</stringValue>
<type>VARIABLE</type>
</item>
<item id="798" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="799">querySQL</name>
<stringValue id="800">sqlemailidall</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="801" type="java.util.HashSet">
<item idref="779" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="802" type="java.util.HashSet">
<item id="803" type="com.j2fe.workflow.definition.Transition">
<name id="804">goto-next</name>
<source idref="781"/>
<target id="805">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="806">Notify Downstream/ OD/ FO/ Market team</name>
<nodeHandler>com.j2fe.general.activities.EMAIL</nodeHandler>
<nodeHandlerClass id="807">com.j2fe.general.activities.EMAIL</nodeHandlerClass>
<parameters id="808" type="java.util.HashSet">
<item id="809" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="810">emailText</name>
<stringValue id="811">AllMailContent</stringValue>
<type>VARIABLE</type>
</item>
<item id="812" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="813">from</name>
<stringValue id="814">no-reply@thegoldensource.com</stringValue>
<type>CONSTANT</type>
</item>
<item id="815" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="816">recipients</name>
<stringValue id="817">All_Dept_IDS</stringValue>
<type>VARIABLE</type>
</item>
<item id="818" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="819">session</name>
<stringValue id="820">email/session</stringValue>
<type>REFERENCE</type>
</item>
<item id="821" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="822">subject</name>
<stringValue id="823">SubjectAll</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="824" type="java.util.HashSet">
<item idref="803" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="825" type="java.util.HashSet">
<item id="826" type="com.j2fe.workflow.definition.Transition">
<name id="827">goto-next</name>
<source idref="805"/>
<target idref="619"/>
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
<item id="828" type="com.j2fe.workflow.definition.Transition">
<name id="829">null</name>
<source idref="672"/>
<target idref="619"/>
</item>
</targets>
<type>XORSPLIT</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item id="830" type="com.j2fe.workflow.definition.Transition">
<name id="831">null</name>
<source idref="625"/>
<target idref="619"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="619"/>
</item>
<item idref="756" type="com.j2fe.workflow.definition.Transition"/>
<item idref="826" type="com.j2fe.workflow.definition.Transition"/>
<item idref="830" type="com.j2fe.workflow.definition.Transition"/>
<item idref="828" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="832" type="java.util.HashSet">
<item idref="617" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="51"/>
</item>
</sources>
<targets id="833" type="java.util.HashSet">
<item idref="49" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="30"/>
</item>
</sources>
<targets id="834" type="java.util.HashSet">
<item idref="28" type="com.j2fe.workflow.definition.Transition"/>
<item idref="639" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="24"/>
</item>
<item idref="613" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="835" type="java.util.HashSet">
<item idref="22" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="18"/>
</item>
</sources>
<targets id="836" type="java.util.HashSet">
<item idref="16" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ANDJOIN</type>
</source>
<target idref="8"/>
</item>
</sources>
<targets id="837" type="java.util.HashSet">
<item idref="6" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
</sources>
<targets id="838" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="839">CBACustomWorkflows</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="840">user1</lastChangeUser>
<lastUpdate id="841">2018-05-14T20:22:59.000+1000</lastUpdate>
<name id="842">CBA_WF_ValidatenNotify</name>
<optimize>true</optimize>
<parameter id="843" type="java.util.HashMap">
<entry>
<key id="844" type="java.lang.String">Additional Price Qualification Type</key>
<value id="845" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="846">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="847">Specifies the Additional Price Qualification Type</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="848" type="java.lang.String">Base Currency</key>
<value id="849" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="850">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="851">Base Currency used for Golden Price Derivation</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="852" type="java.lang.String">Bulk Size</key>
<value id="853" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="854">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="855">Bulk Size</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="856" type="java.lang.String">Calculate MID price Options</key>
<value id="857" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="858">com.j2fe.pricing.MIDCalculationOptions</className>
<clazz>com.j2fe.pricing.MIDCalculationOptions</clazz>
<description id="859">Basic Check will not calculate the mid price if it does not exist</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="860" type="java.lang.String">Calendar</key>
<value id="861" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="862">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="863">Override if a Calendar isn't specified for a market</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="864" type="java.lang.String">CleanValidationInstructionCache</key>
<value id="865" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="866">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="867">Cleans the validation instruction cache</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="868" type="java.lang.String">Consider Calendar Results</key>
<value id="869" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="870">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="871">If true only business days are selected and part of check</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="872" type="java.lang.String">Consider Negative Prices</key>
<value id="873" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="874">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="875">This flag decides whether we have to consider negative prices as 'VALID' or not.If the flag is set to true price with negative value would be consider as VALID.Default value for this flag is false.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="876" type="java.lang.String">Country</key>
<value id="877" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="878">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="879">The country used for filtering the PRVI instructions</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="880" type="java.lang.String">CreateGPRCOnHoliday</key>
<value id="881" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="882">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="883" type="java.lang.String">CreatePriceStatusForGoldenPrice</key>
<value id="884" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="885">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="886">Create ISPS entries for Goldenprice runs</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="887" type="java.lang.String">Derive Golden Price</key>
<value id="888" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="889">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="890">Enable the option to Derive the Golden Price for the Currency specified inthe Base Currency Parameter</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="891" type="java.lang.String">DiagnosticMode</key>
<value id="892" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="893">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="894">If set to true raises Diagnostic Exceptions and records Job Statistics</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="895" type="java.lang.String">Do Price Derivation First</key>
<value id="896" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="897">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="898">If set to true, then Price derivation Rule is run before all other validations.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="899" type="java.lang.String">Donot Consider Issue Maturity</key>
<value id="900" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="901">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="902">The parameter when set to true will pick up matured issues for validation. when set to false matured issues will not be picked for validation.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="903" type="java.lang.String">Downstream System Identifier</key>
<value id="904" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="905">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="906">The downstream system identifier, this is the dwdf_oid value from the ft_t_dwdf table</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="907" type="java.lang.String">ExecuteCustomActivityCheck</key>
<value id="908" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="909">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="910">If Flag is true it will clean the Custom Rule validation Instruction Cache</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="911" type="java.lang.String">Extra Configuration Information</key>
<value id="912" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="913">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="914" type="java.lang.String">FXRT Look Back Period</key>
<value id="915" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="916">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="917">The look back period in Days for Foreign Exchange rate. Note: The value should be greater than or Equal to the Observation period</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="918" type="java.lang.String">Foreign Exchange Price Type</key>
<value id="919" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="920">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="921">The Price Type to be used for filtering the FXRT's</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="922" type="java.lang.String">Foreign Exchange Type</key>
<value id="923" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="924">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="925">The Foreign Exchange Type to be used for filtering the FXRT's</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="926" type="java.lang.String">FundType</key>
<value id="927" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="928">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="929">The fund type, parameter required for Bid Ask Tolerance check</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="930" type="java.lang.String">GoldenToleranceToDo</key>
<value id="931" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="932">com.j2fe.pricing.ToleranceCases</className>
<clazz>com.j2fe.pricing.ToleranceCases</clazz>
<description id="933">The check mode to do for Golden Price Tolerance{GSTOL/GMTOL}.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="934" type="java.lang.String">Ignore Issue MAT_EXP_TMS</key>
<value id="935" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="936">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="937">Ignore Issue Maturity Expiry Date. If set, then ISSU.MAT_EXP_TMS will be ignored and Matured Issues will also be validated</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="938" type="java.lang.String">IgnorePriceValidityForComparison</key>
<value id="939" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="940">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="941" type="java.lang.String">Instruments</key>
<value id="942" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="943">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="944">Used to validate only prices with specific  Instruments</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="945" type="java.lang.String">IsExternalLibrary</key>
<value id="946" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="947">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="948">Set this parameter value as true to run third party library through GSO</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="949" type="java.lang.String">IsWaterfallModel</key>
<value id="950" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="951">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="952">Is Multi-step rule being used?</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="953" type="java.lang.String">IssueType</key>
<value id="954" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="955">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="956">Used to validate only prices with specific  Issue Types</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="957" type="java.lang.String">IssueTypeGroup</key>
<value id="958" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="959">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="960">Used to validate only prices with specific  Issue Type Groups</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="961" type="java.lang.String">JobDefinitionId</key>
<value id="962" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="963">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="964">JobDefinitionId (FT_T_JBDF)</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="965" type="java.lang.String">JobIDs</key>
<value id="966" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="967">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="968" type="java.lang.String">Market</key>
<value id="969" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="970">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="971">Used to validate only prices with specific  Markets</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="972" type="java.lang.String">Message Type</key>
<value id="973" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="974">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="975" type="java.lang.String">Observation Period</key>
<value id="976" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="977">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="978">Limitates result set (e.g 7 days, check only prices between today and last week) (in days, default = yesterday)</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="979" type="java.lang.String">Overwrite Suspect Status</key>
<value id="980" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="981">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="982">This parameter is set to true would overwrite the status in the PCST table.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="983" type="java.lang.String">PRVI Hierarchy Enable Switch</key>
<value id="984" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="985">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="986">Flag to enable PRVI Hierarchy functionality</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="987" type="java.lang.String">Parent Job ID</key>
<value id="988" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="989">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="990" type="java.lang.String">Price Day Frequency</key>
<value id="991" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="992">com.j2fe.pricing.PricingFrequency</className>
<clazz>com.j2fe.pricing.PricingFrequency</clazz>
<description id="993">Please note only supported values are daily, intraday or monthly</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="994" type="java.lang.String">Price Derivation Instruments</key>
<value id="995" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="996">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="997">Instrument for Price Derivation rule</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="998" type="java.lang.String">Price Derivation Issue Type</key>
<value id="999" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1000">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1001">Issue types for running the price derivation rule</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1002" type="java.lang.String">Price Derivation IssueGroup</key>
<value id="1003" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1004">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1005">Issue Group for Price Derivation</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1006" type="java.lang.String">Price Derivation IssueTypeGroup</key>
<value id="1007" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1008">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1009">Issue type group for price derivation rule</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1010" type="java.lang.String">Price Derivation RelType</key>
<value id="1011" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1012">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1013">Relationship type for running the price derviation rule, if provided then only the PriceDerivationRule would run, otherwise not.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1014" type="java.lang.String">Price Method Type</key>
<value id="1015" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1016">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1017">Used to validate only prices with specific Method Types</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1018" type="java.lang.String">Price Quote Method Type</key>
<value id="1019" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1020">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1021">Used to validate prices with specifc Quote Method Types</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1022" type="java.lang.String">Price Source</key>
<value id="1023" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1024">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1025">Used to validate only prices with specific Price Sources</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1026" type="java.lang.String">Price Type</key>
<value id="1027" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1028">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1029">Used to validate only prices with specific Price Types</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1030" type="java.lang.String">PricePointEventDefinitionId</key>
<value id="1031" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1032">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1033">PricePointEventDefinitionId PPED_OID from FT_T_PPED table</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="1034" type="java.lang.String">Prior GPRC Observation Count</key>
<value id="1035" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1036">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="1037">This count will fetch prior Golden prices between dates processing date and (processing date minus this count).&#13;
It should be greate than observation period.Default value should be 0.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1038" type="java.lang.String">Processing Date</key>
<value id="1039" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1040">java.util.Date</className>
<clazz>java.util.Date</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1041" type="java.lang.String">Processing Date Deriving Factor</key>
<value id="1042" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1043">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="1044">The value in this parameter will be added into the processing date encoded will running the WF to derive the actual processing date. The applicable values should be like 1, 2,-1,-2 etc.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="1045" type="java.lang.String">Processing Mode</key>
<value id="1046" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1047">com.j2fe.pricing.ProcessingMode</className>
<clazz>com.j2fe.pricing.ProcessingMode</clazz>
<description id="1048">Indicates if a Golden Price calculation is executed and when ("First" means all validations are only done on Golden Prices)</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1049" type="java.lang.String">PublishingEvent</key>
<value id="1050" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1051">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1052">Event to be raised for publishing VALID Golden prices (GPRC)</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1053" type="java.lang.String">PurposeType</key>
<value id="1054" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1055">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1056" type="java.lang.String">Qualifying type for Golden Price Check</key>
<value id="1057" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1058">com.j2fe.pricing.QualifyPriceStatus</className>
<clazz>com.j2fe.pricing.QualifyPriceStatus</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1059" type="java.lang.String">ReUse Job Id</key>
<value id="1060" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1061">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1062">This flag indicates that the working job id provided in the WF needs to be used instead of creating a new job_id in the ft_o_isjb table. This should only be set to true in case the entries in isjb need to be reused.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1063" type="java.lang.String">Region</key>
<value id="1064" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1065">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1066">The region used for filtering the PRVI instructions</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1067" type="java.lang.String">RelType OneToMany</key>
<value id="1068" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1069">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1070" type="java.lang.String">RelType Sequence</key>
<value id="1071" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1072">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1073" type="java.lang.String">Run Rescrub</key>
<value id="1074" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1075">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1076">If set to true price finalizer will run, otherwise not.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1077" type="java.lang.String">RunSameDayProcessing</key>
<value id="1078" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1079">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1080">If this parameter is set to true, then validate current processing day's prices only.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1081" type="java.lang.String">Select Prvi For Hierarchy</key>
<value id="1082" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1083">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1084" type="java.lang.String">Suppress GEN1 Issues for User Ids</key>
<value id="1085" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1086">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1087">The user Id's mentioned here will not be scrubbed, provided GPRC already exists with these user Id's.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1088" type="java.lang.String">Threads In Parallel</key>
<value id="1089" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1090">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="1091" type="java.lang.String">ThresholdValue</key>
<value id="1092" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1093">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="1094">ThresholdValue</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="1095" type="java.lang.String">ToleranceToDo</key>
<value id="1096" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1097">com.j2fe.pricing.ToleranceCases</className>
<clazz>com.j2fe.pricing.ToleranceCases</clazz>
<description id="1098">ToleranceToDo</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="1099" type="java.lang.String">Vendor</key>
<value id="1100" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1101">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1102">Used to validate only prices with specific Vendors</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1103" type="java.lang.String">Working Job Id</key>
<value id="1104" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1105">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1106">Working job_id is the job_id from the ft_o_isjb table in case it has to be reused and new entries should not be created. It works in conjunction with the reuse job id flag</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1107" type="java.lang.String">WriteValidStatusRecords</key>
<value id="1108" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1109">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1110">If true the check will also write VALID records to the Status table. Default is false. If parameter isn't set the workflow will use the default values set on each individual validation activity. (default false except for tolerance and golden price tolerance the default is true)</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="1111" type="java.lang.String">pIssueGroupName</key>
<value id="1112" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="1113">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1114">The schedule group name. The same group is used for publishing too.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="1115" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>1</retries>
<startNode idref="595"/>
<status>RELEASED</status>
<variables id="1116" type="java.util.HashMap">
<entry>
<key id="1117" type="java.lang.String">Additional Price Qualification Type</key>
<value id="1118" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1119">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1120">Specifies the Additional Price Qualification Type</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1121" type="java.lang.String">Base Currency</key>
<value id="1122" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1123">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1124">Base Currency used for Golden Price Derivation</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1125" type="java.lang.String">Bulk Size</key>
<value id="1126" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1127">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="1128">Bulk Size</description>
<persistent>false</persistent>
<value id="1129" type="java.lang.Integer">100</value>
</value>
</entry>
<entry>
<key id="1130" type="java.lang.String">Calculate MID price Options</key>
<value id="1131" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1132">com.j2fe.pricing.MIDCalculationOptions</className>
<clazz>com.j2fe.pricing.MIDCalculationOptions</clazz>
<description id="1133">Basic Check will not calculate the mid price if it does not exist</description>
<persistent>false</persistent>
<value id="1134" type="com.j2fe.pricing.MIDCalculationOptions">DoNotCalcMIDDoOnlyBasicChecks</value>
</value>
</entry>
<entry>
<key id="1135" type="java.lang.String">Calendar</key>
<value id="1136" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1137">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1138">Override if a Calendar isn't specified for a market</description>
<persistent>false</persistent>
<value id="1139" type="java.lang.String">PRPTUAL</value>
</value>
</entry>
<entry>
<key id="1140" type="java.lang.String">CleanValidationInstructionCache</key>
<value id="1141" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1142">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1143">Cleans the validation instruction cache</description>
<persistent>false</persistent>
<value id="1144" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="1145" type="java.lang.String">Consider Calendar Results</key>
<value id="1146" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1147">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1148">If true only business days are selected and part of check</description>
<persistent>false</persistent>
<value idref="1144"/>
</value>
</entry>
<entry>
<key id="1149" type="java.lang.String">Consider Negative Prices</key>
<value id="1150" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1151">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1152">This flag decides whether we have to consider negative prices as 'VALID' or not.If the flag is set to true price with negative value would be consider as VALID.Default value for this flag is false.</description>
<persistent>false</persistent>
<value idref="1144"/>
</value>
</entry>
<entry>
<key id="1153" type="java.lang.String">Country</key>
<value id="1154" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1155">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1156">The country used for filtering the PRVI instructions</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1157" type="java.lang.String">CreateGPRCOnHoliday</key>
<value id="1158" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1159">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="1144"/>
</value>
</entry>
<entry>
<key id="1160" type="java.lang.String">CreatePriceStatusForGoldenPrice</key>
<value id="1161" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1162">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1163">Create ISPS entries for Goldenprice runs</description>
<persistent>false</persistent>
<value idref="1144"/>
</value>
</entry>
<entry>
<key id="1164" type="java.lang.String">DerivationCounter</key>
<value id="1165" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1166">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="1167">DerivationCounter</description>
<persistent>false</persistent>
<value id="1168" type="java.lang.Integer">0</value>
</value>
</entry>
<entry>
<key id="1169" type="java.lang.String">Derive Golden Price</key>
<value id="1170" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1171">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1172">Enable the option to Derive the Golden Price for the Currency specified inthe Base Currency Parameter</description>
<persistent>false</persistent>
<value idref="1144"/>
</value>
</entry>
<entry>
<key id="1173" type="java.lang.String">DiagnosticMode</key>
<value id="1174" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1175">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1176">If set to true raises Diagnostic Exceptions and records Job Statistics</description>
<persistent>false</persistent>
<value idref="1144"/>
</value>
</entry>
<entry>
<key id="1177" type="java.lang.String">Do Price Derivation First</key>
<value id="1178" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1179">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1180">If set to true, then Price derivation Rule is run before all other validations.</description>
<persistent>false</persistent>
<value idref="1144"/>
</value>
</entry>
<entry>
<key id="1181" type="java.lang.String">Donot Consider Issue Maturity</key>
<value id="1182" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1183">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1184">The parameter when set to true will pick up matured issues for validation. when set to false matured issues will not be picked for validation.</description>
<persistent>false</persistent>
<value idref="1144"/>
</value>
</entry>
<entry>
<key id="1185" type="java.lang.String">Downstream System Identifier</key>
<value id="1186" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1187">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1188">The downstream system identifier, this is the dwdf_oid value from the ft_t_dwdf table</description>
<persistent>false</persistent>
<value id="1189" type="java.lang.String">Default</value>
</value>
</entry>
<entry>
<key id="1190" type="java.lang.String">ExecuteCustomActivityCheck</key>
<value id="1191" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1192">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1193">If Flag is true it will clean the Custom Rule validation Instruction Cache</description>
<persistent>false</persistent>
<value id="1194" type="java.lang.Boolean">true</value>
</value>
</entry>
<entry>
<key id="1195" type="java.lang.String">Extra Configuration Information</key>
<value id="1196" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1197">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="1198" type="java.lang.String">Price Validation Consolidated</value>
</value>
</entry>
<entry>
<key id="1199" type="java.lang.String">FXRT Look Back Period</key>
<value id="1200" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1201">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="1202">The look back period in Days for Foreign Exchange rate. Note: The value should be greater than or Equal to the Observation period</description>
<persistent>false</persistent>
<value id="1203" type="java.lang.Integer">5</value>
</value>
</entry>
<entry>
<key id="1204" type="java.lang.String">Foreign Exchange Price Type</key>
<value id="1205" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1206">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1207">The Price Type to be used for filtering the FXRT's</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1208" type="java.lang.String">Foreign Exchange Type</key>
<value id="1209" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1210">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1211">The Foreign Exchange Type to be used for filtering the FXRT's</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1212" type="java.lang.String">FundType</key>
<value id="1213" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1214">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1215">The fund type, parameter required for Bid Ask Tolerance check</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1216" type="java.lang.String">GoldenToleranceToDo</key>
<value id="1217" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1218">com.j2fe.pricing.ToleranceCases</className>
<clazz>com.j2fe.pricing.ToleranceCases</clazz>
<description id="1219">The check mode to do for Golden Price Tolerance{GSTOL/GMTOL}.</description>
<persistent>false</persistent>
<value id="1220" type="com.j2fe.pricing.ToleranceCases">STOLToDay</value>
</value>
</entry>
<entry>
<key id="1221" type="java.lang.String">Ignore Issue MAT_EXP_TMS</key>
<value id="1222" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1223">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1224">Ignore Issue Maturity Expiry Date. If set, then ISSU.MAT_EXP_TMS will be ignored and Matured Issues will also be validated</description>
<persistent>false</persistent>
<value idref="1144"/>
</value>
</entry>
<entry>
<key id="1225" type="java.lang.String">IgnorePriceValidityForComparison</key>
<value id="1226" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1227">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1228" type="java.lang.String">Instruments</key>
<value id="1229" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1230">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1231">Used to validate only prices with specific  Instruments</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1232" type="java.lang.String">IsExternalLibrary</key>
<value id="1233" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1234">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1235">Set this parameter value as true to run third party library through GSO</description>
<persistent>false</persistent>
<value idref="1144"/>
</value>
</entry>
<entry>
<key id="1236" type="java.lang.String">IsWaterfallModel</key>
<value id="1237" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1238">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1239">Is Multi-step rule being used?</description>
<persistent>false</persistent>
<value idref="1144"/>
</value>
</entry>
<entry>
<key id="1240" type="java.lang.String">IssueType</key>
<value id="1241" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1242">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1243">Used to validate only prices with specific  Issue Types</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1244" type="java.lang.String">IssueTypeGroup</key>
<value id="1245" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1246">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1247">Used to validate only prices with specific  Issue Type Groups</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1248" type="java.lang.String">JobDefinitionId</key>
<value id="1249" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1250">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1251">JobDefinitionId (FT_T_JBDF)</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1252" type="java.lang.String">JobID</key>
<value id="1253" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1254">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1255" type="java.lang.String">JobIDs</key>
<value id="1256" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1257">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1258" type="java.lang.String">Market</key>
<value id="1259" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1260">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1261">Used to validate only prices with specific  Markets</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1262" type="java.lang.String">Message Type</key>
<value id="1263" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1264">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1265" type="java.lang.String">Observation Period</key>
<value id="1266" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1267">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="1268">Limitates result set (e.g 7 days, check only prices between today and last week) (in days, default = yesterday)</description>
<persistent>false</persistent>
<value id="1269" type="java.lang.Integer">1</value>
</value>
</entry>
<entry>
<key id="1270" type="java.lang.String">Overwrite Suspect Status</key>
<value id="1271" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1272">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1273">This parameter is set to true would overwrite the status in the PCST table.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1274" type="java.lang.String">PRVI Hierarchy Enable Switch</key>
<value id="1275" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1276">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1277">Flag to enable PRVI Hierarchy functionality</description>
<persistent>false</persistent>
<value idref="1144"/>
</value>
</entry>
<entry>
<key id="1278" type="java.lang.String">Parent Job ID</key>
<value id="1279" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1280">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1281" type="java.lang.String">Price Day Frequency</key>
<value id="1282" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1283">com.j2fe.pricing.PricingFrequency</className>
<clazz>com.j2fe.pricing.PricingFrequency</clazz>
<description id="1284">Please note only supported values are daily, intraday or monthly</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1285" type="java.lang.String">Price Derivation Instruments</key>
<value id="1286" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1287">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1288">Instrument for Price Derivation rule</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1289" type="java.lang.String">Price Derivation Issue Type</key>
<value id="1290" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1291">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1292">Issue types for running the price derivation rule</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1293" type="java.lang.String">Price Derivation IssueGroup</key>
<value id="1294" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1295">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1296">Issue Group for Price Derivation</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1297" type="java.lang.String">Price Derivation IssueTypeGroup</key>
<value id="1298" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1299">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1300">Issue type group for price derivation rule</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1301" type="java.lang.String">Price Derivation RelType</key>
<value id="1302" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1303">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1304">Relationship type for running the price derviation rule, if provided then only the PriceDerivationRule would run, otherwise not.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1305" type="java.lang.String">Price Method Type</key>
<value id="1306" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1307">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1308">Used to validate only prices with specific Method Types</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1309" type="java.lang.String">Price Quote Method Type</key>
<value id="1310" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1311">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1312">Used to validate prices with specifc Quote Method Types</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1313" type="java.lang.String">Price Source</key>
<value id="1314" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1315">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1316">Used to validate only prices with specific Price Sources</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1317" type="java.lang.String">Price Type</key>
<value id="1318" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1319">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1320">Used to validate only prices with specific Price Types</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1321" type="java.lang.String">PricePointEventDefinitionId</key>
<value id="1322" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1323">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1324">PricePointEventDefinitionId PPED_OID from FT_T_PPED table</description>
<persistent>false</persistent>
<value id="1325" type="java.lang.String">Default</value>
</value>
</entry>
<entry>
<key id="1326" type="java.lang.String">Prior GPRC Observation Count</key>
<value id="1327" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1328">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="1329">This count will fetch prior Golden prices between dates processing date and (processing date minus this count).&#13;
It should be greate than observation period.Default value should be 0.</description>
<persistent>false</persistent>
<value idref="1168"/>
</value>
</entry>
<entry>
<key id="1330" type="java.lang.String">ProcDate</key>
<value id="1331" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1332">java.util.Date</className>
<clazz>java.util.Date</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1333" type="java.lang.String">Processing Date</key>
<value id="1334" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1335">java.util.Date</className>
<clazz>java.util.Date</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1336" type="java.lang.String">Processing Date Deriving Factor</key>
<value id="1337" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1338">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="1339">The value in this parameter will be added into the processing date encoded will running the WF to derive the actual processing date. The applicable values should be like 1, 2,-1,-2 etc.</description>
<persistent>false</persistent>
<value idref="1168"/>
</value>
</entry>
<entry>
<key id="1340" type="java.lang.String">Processing Mode</key>
<value id="1341" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1342">com.j2fe.pricing.ProcessingMode</className>
<clazz>com.j2fe.pricing.ProcessingMode</clazz>
<description id="1343">Indicates if a Golden Price calculation is executed and when ("First" means all validations are only done on Golden Prices)</description>
<persistent>false</persistent>
<value id="1344" type="com.j2fe.pricing.ProcessingMode">DoGoldenPriceCheckLast</value>
</value>
</entry>
<entry>
<key id="1345" type="java.lang.String">PublishingEvent</key>
<value id="1346" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1347">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1348">Event to be raised for publishing VALID Golden prices (GPRC)</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1349" type="java.lang.String">PurposeType</key>
<value id="1350" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1351">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1352" type="java.lang.String">Qualifying type for Golden Price Check</key>
<value id="1353" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1354">com.j2fe.pricing.QualifyPriceStatus</className>
<clazz>com.j2fe.pricing.QualifyPriceStatus</clazz>
<persistent>false</persistent>
<value id="1355" type="com.j2fe.pricing.QualifyPriceStatus">VALIDANDUNVERIFED</value>
</value>
</entry>
<entry>
<key id="1356" type="java.lang.String">ReUse Job Id</key>
<value id="1357" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1358">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1359">This flag indicates that the working job id provided in the WF needs to be used instead of creating a new job_id in the ft_o_isjb table. This should only be set to true in case the entries in isjb need to be reused.</description>
<persistent>false</persistent>
<value idref="1144"/>
</value>
</entry>
<entry>
<key id="1360" type="java.lang.String">Region</key>
<value id="1361" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1362">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1363">The region used for filtering the PRVI instructions</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1364" type="java.lang.String">RelType OneToMany</key>
<value id="1365" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1366">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="1367" type="java.lang.String">ONETOMNY</value>
</value>
</entry>
<entry>
<key id="1368" type="java.lang.String">RelType Sequence</key>
<value id="1369" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1370">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="1371" type="java.lang.String">SEQUENCE</value>
</value>
</entry>
<entry>
<key id="1372" type="java.lang.String">Run Rescrub</key>
<value id="1373" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1374">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1375">If set to true price finalizer will run, otherwise not.</description>
<persistent>false</persistent>
<value idref="1144"/>
</value>
</entry>
<entry>
<key id="1376" type="java.lang.String">RunSameDayProcessing</key>
<value id="1377" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1378">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1379">If this parameter is set to true, then validate current processing day's prices only.</description>
<persistent>false</persistent>
<value idref="1194"/>
</value>
</entry>
<entry>
<key id="1380" type="java.lang.String">Select Prvi For Hierarchy</key>
<value id="1381" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1382">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1383" type="java.lang.String">SqlExp</key>
<value id="1384" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1385">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1386" type="java.lang.String">Suppress GEN1 Issues for User Ids</key>
<value id="1387" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1388">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1389">The user Id's mentioned here will not be scrubbed, provided GPRC already exists with these user Id's.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1390" type="java.lang.String">Threads In Parallel</key>
<value id="1391" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1392">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
<value idref="1203"/>
</value>
</entry>
<entry>
<key id="1393" type="java.lang.String">ThresholdValue</key>
<value id="1394" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1395">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="1396">ThresholdValue</description>
<persistent>false</persistent>
<value id="1397" type="java.lang.Integer">20</value>
</value>
</entry>
<entry>
<key id="1398" type="java.lang.String">ToleranceToDo</key>
<value id="1399" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1400">com.j2fe.pricing.ToleranceCases</className>
<clazz>com.j2fe.pricing.ToleranceCases</clazz>
<description id="1401">ToleranceToDo</description>
<persistent>false</persistent>
<value idref="1220"/>
</value>
</entry>
<entry>
<key id="1402" type="java.lang.String">Vendor</key>
<value id="1403" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1404">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="1405">Used to validate only prices with specific Vendors</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1406" type="java.lang.String">Working Job Id</key>
<value id="1407" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1408">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1409">Working job_id is the job_id from the ft_o_isjb table in case it has to be reused and new entries should not be created. It works in conjunction with the reuse job id flag</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="1410" type="java.lang.String">WriteValidStatusRecords</key>
<value id="1411" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1412">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="1413">If true the check will also write VALID records to the Status table. Default is false. If parameter isn't set the workflow will use the default values set on each individual validation activity. (default false except for tolerance and golden price tolerance the default is true)</description>
<persistent>false</persistent>
<value idref="1194"/>
</value>
</entry>
<entry>
<key id="1414" type="java.lang.String">counter</key>
<value id="1415" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1416">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="1417">counter</description>
<persistent>false</persistent>
<value idref="1168"/>
</value>
</entry>
<entry>
<key id="1418" type="java.lang.String">pIssueGroupName</key>
<value id="1419" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="1420">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="1421">The schedule group name. The same group is used for publishing too.</description>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>9</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
