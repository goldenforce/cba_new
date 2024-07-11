<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.15">
<package-comment/>
<businessobject displayString="4 - 8.7.1.14a" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">8.7.1.14a</comment>
<endNode id="2">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="3">Stop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="4">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="5" type="java.util.HashSet">
<item id="6" type="com.j2fe.workflow.definition.Transition">
<name id="7">false</name>
<source id="8">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="9">Is New File?</name>
<nodeHandler>com.j2fe.feeds.activities.CheckRestart</nodeHandler>
<nodeHandlerClass id="10">com.j2fe.feeds.activities.CheckRestart</nodeHandlerClass>
<parameters id="11" type="java.util.HashSet">
<item id="12" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="13">file</name>
<stringValue id="14">AbsoluteFile</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="15" type="java.util.HashSet">
<item id="16" type="com.j2fe.workflow.definition.Transition">
<name id="17">ToSplit</name>
<source id="18">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="19">Automatically generated</description>
<directJoin>false</directJoin>
<name id="20">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="21">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="22" type="java.util.HashSet">
<item id="23" type="com.j2fe.workflow.definition.Transition">
<name id="24">goto-next</name>
<source id="25">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="26">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="27">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="28" type="java.util.HashSet"/>
<targets id="29" type="java.util.HashSet">
<item idref="23" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="18"/>
</item>
</sources>
<targets id="30" type="java.util.HashSet">
<item idref="16" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="8"/>
</item>
</sources>
<targets id="31" type="java.util.HashSet">
<item idref="6" type="com.j2fe.workflow.definition.Transition"/>
<item id="32" type="com.j2fe.workflow.definition.Transition">
<name id="33">true</name>
<source idref="8"/>
<target id="34">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="35">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="36">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="37" type="java.util.HashSet">
<item id="38" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="39">configInfo</name>
<stringValue id="40">Bloomberg Reply File</stringValue>
<type>CONSTANT</type>
</item>
<item id="41" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="42">file</name>
<stringValue id="43">AbsoluteFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="44" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="45">flushImmediate</name>
<stringValue id="46">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="47" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="48">jobId</name>
<stringValue id="49">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="50" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="51">parentJobId</name>
<stringValue id="52">Parent Job Id</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="53" type="java.util.HashSet">
<item idref="32" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="54" type="java.util.HashSet">
<item id="55" type="com.j2fe.workflow.definition.Transition">
<name id="56">goto-next</name>
<source idref="34"/>
<target id="57">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="58">PPED</name>
<nodeHandler>com.j2fe.general.activities.IsNull</nodeHandler>
<nodeHandlerClass id="59">com.j2fe.general.activities.IsNull</nodeHandlerClass>
<parameters id="60" type="java.util.HashSet">
<item id="61" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="62">input</name>
<stringValue id="63">PricePointEventDefinitionId</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="64" type="java.util.HashSet">
<item idref="55" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="65" type="java.util.HashSet">
<item id="66" type="com.j2fe.workflow.definition.Transition">
<name id="67">false</name>
<source idref="57"/>
<target id="68">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="69">Populate PPJB</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="70">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="71" type="java.util.HashSet">
<item id="72" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="73">database</name>
<stringValue id="74">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="75" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="76">[0]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="77">indexedParameters[0]</name>
<stringValue id="78">PricePointEventDefinitionId</stringValue>
<type>VARIABLE</type>
</item>
<item id="79" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="80">[1]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="81">indexedParameters[1]</name>
<stringValue id="82">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="83" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="84">querySQL</name>
<stringValue id="85">DECLARE&#13;
PPED_OID_PARAM VARCHAR2(1000);&#13;
JOB_ID_PARAM VARCHAR2(1000);&#13;
begin&#13;
PPED_OID_PARAM:=?;&#13;
JOB_ID_PARAM:=?;&#13;
IF(PPED_OID_PARAM is not null) then&#13;
  Insert into FT_O_PPJB(PPED_OID, JOB_ID) Values (PPED_OID_PARAM, JOB_ID_PARAM);&#13;
end if;&#13;
end;</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="86" type="java.util.HashSet">
<item idref="66" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="87" type="java.util.HashSet">
<item id="88" type="com.j2fe.workflow.definition.Transition">
<name id="89">goto-next</name>
<source idref="68"/>
<target id="90">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="91">Create Job For Universe Maintenance</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="92">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="93" type="java.util.HashSet">
<item id="94" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="95">configInfo</name>
<stringValue id="96">Universe Maintenance</stringValue>
<type>CONSTANT</type>
</item>
<item id="97" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="98">file</name>
<stringValue id="99">AbsoluteFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="100" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="101">flushImmediate</name>
<objectValue id="102" type="java.lang.Boolean">true</objectValue>
<type>CONSTANT</type>
</item>
<item id="103" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="104">jobId</name>
<stringValue id="105">UniverseJobId</stringValue>
<type>VARIABLE</type>
</item>
<item id="106" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="107">parentJobId</name>
<stringValue id="108">JobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="109" type="java.util.HashSet">
<item id="110" type="java.lang.String">UniverseJobId
1100</item>
</persistentVariables>
<sources id="111" type="java.util.HashSet">
<item idref="88" type="com.j2fe.workflow.definition.Transition"/>
<item id="112" type="com.j2fe.workflow.definition.Transition">
<name id="113">true</name>
<source idref="57"/>
<target idref="90"/>
</item>
</sources>
<targets id="114" type="java.util.HashSet">
<item id="115" type="com.j2fe.workflow.definition.Transition">
<name id="116">goto-next</name>
<source idref="90"/>
<target id="117">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="118">Fetch VREQ ID And Correlation String</name>
<nodeHandler>com.j2fe.feeds.request.FetchVREQ</nodeHandler>
<nodeHandlerClass id="119">com.j2fe.feeds.request.FetchVREQ</nodeHandlerClass>
<parameters id="120" type="java.util.HashSet">
<item id="121" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="122">businessFeedName</name>
<stringValue id="123">BusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="124" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="125">correltionVsVreqMap</name>
<stringValue id="126">CorrelationStringVsVREQIdmap</stringValue>
<type>VARIABLE</type>
</item>
<item id="127" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="128">fileName</name>
<stringValue id="129">ResponseFileName</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="130" type="java.util.HashSet">
<item id="131" type="java.lang.String">BusinessFeed
1000</item>
</persistentVariables>
<sources id="132" type="java.util.HashSet">
<item idref="115" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="133" type="java.util.HashSet">
<item id="134" type="com.j2fe.workflow.definition.Transition">
<name id="135">goto-next</name>
<source idref="117"/>
<target id="136">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="137">Open File</name>
<nodeHandler>com.j2fe.feeds.activities.ReadFile</nodeHandler>
<nodeHandlerClass id="138">com.j2fe.feeds.activities.ReadFile</nodeHandlerClass>
<parameters id="139" type="java.util.HashSet">
<item id="140" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="141">businessFeed</name>
<stringValue id="142">BusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="143" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="144">file</name>
<stringValue id="145">AbsoluteFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="146" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="147">fileConnection</name>
<stringValue id="148">FileStatusObject</stringValue>
<type>VARIABLE</type>
</item>
<item id="149" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="150">jobId</name>
<stringValue id="151">JobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="152" type="java.util.HashSet">
<item id="153" type="java.lang.String">CorrelationStringVsVREQIdmap
1000</item>
<item id="154" type="java.lang.String">FileStatusObject
1000</item>
<item id="155" type="java.lang.String">JobID
1000</item>
</persistentVariables>
<sources id="156" type="java.util.HashSet">
<item idref="134" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="157" type="java.util.HashSet">
<item id="158" type="com.j2fe.workflow.definition.Transition">
<name id="159">goto-next</name>
<source idref="136"/>
<target id="160">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="161">Bean Shell Script (Standard)</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="162">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="163" type="java.util.HashSet">
<item id="164" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="165">statements</name>
<stringValue id="166">import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;

DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        DocumentBuilder builder;
        try
        {
            builder = factory.newDocumentBuilder();
        }
        catch (ParserConfigurationException e)
        {
            // TODO Auto-generated catch block
            logger.error(e);
        }
        
Document requestMessage = builder.newDocument();</stringValue>
<type>CONSTANT</type>
</item>
<item id="167" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="168">["requestMessage"]@org/w3c/dom/Document@</UITypeHint>
<input>false</input>
<name id="169">variables["requestMessage"]</name>
<stringValue id="170">requestMessage</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="171" type="java.util.HashSet">
<item id="172" type="java.lang.String">requestMessage
1100</item>
</persistentVariables>
<sources id="173" type="java.util.HashSet">
<item idref="158" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="174" type="java.util.HashSet">
<item id="175" type="com.j2fe.workflow.definition.Transition">
<name id="176">goto-next</name>
<source idref="160"/>
<target id="177">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="178">Merge Point</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="179">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="180" type="java.util.HashSet">
<item idref="175" type="com.j2fe.workflow.definition.Transition"/>
<item id="181" type="com.j2fe.workflow.definition.Transition">
<name id="182">goto-next</name>
<source id="183">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="184">Consolidate Universe Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandler>
<nodeHandlerClass id="185">com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandlerClass>
<parameters id="186" type="java.util.HashSet">
<item id="187" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="188">jobId</name>
<stringValue id="189">UniverseJobId</stringValue>
<type>VARIABLE</type>
</item>
<item id="190" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="191">updateTotalCount</name>
<objectValue idref="102"/>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="192" type="java.util.HashSet">
<item id="193" type="com.j2fe.workflow.definition.Transition">
<name id="194">goto-next</name>
<source id="195">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="196">Consolidate Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandler>
<nodeHandlerClass id="197">com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandlerClass>
<parameters id="198" type="java.util.HashSet">
<item id="199" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="200">jobId</name>
<stringValue id="201">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="202" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="203">updateTotalCount</name>
<stringValue id="204">true</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="205" type="java.util.HashSet">
<item id="206" type="com.j2fe.workflow.definition.Transition">
<name id="207">end-loop</name>
<source id="208">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="209">For Loop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.ForEach</nodeHandler>
<nodeHandlerClass id="210">com.j2fe.workflow.handler.impl.ForEach</nodeHandlerClass>
<parameters id="211" type="java.util.HashSet">
<item id="212" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="213">counter</name>
<stringValue id="214">failCounter</stringValue>
<type>VARIABLE</type>
</item>
<item id="215" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="216">counter</name>
<stringValue id="217">failCounter</stringValue>
<type>VARIABLE</type>
</item>
<item id="218" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="219">input</name>
<stringValue id="220">FailedMessages</stringValue>
<type>VARIABLE</type>
</item>
<item id="221" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="222">output</name>
<stringValue id="223">FailedMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="224" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="225">resetOnEnd</name>
<stringValue id="226">true</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="227" type="java.util.HashSet">
<item id="228" type="com.j2fe.workflow.definition.Transition">
<name id="229">goto-next</name>
<source id="230">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="231">Automatically generated</description>
<directJoin>false</directJoin>
<name id="232">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="233">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="234" type="java.util.HashSet">
<item id="235" type="com.j2fe.workflow.definition.Transition">
<name id="236">goto-next</name>
<source id="237">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="238">Call BB Scheduled Report Error</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="239">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="240" type="java.util.HashSet">
<item id="241" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="242">["ApplicationId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="243">input["ApplicationId"]</name>
<stringValue id="244">VENDOR</stringValue>
<type>CONSTANT</type>
</item>
<item id="245" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="246">["ErrorText"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="247">input["ErrorText"]</name>
<stringValue id="248">FailedMessage</stringValue>
<type>VARIABLE</type>
<variablePart id="249">properties.custom["ErrorMessage"]</variablePart>
</item>
<item id="250" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="251">["JobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="252">input["JobID"]</name>
<stringValue id="253">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="254" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="255">["NotificationId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="256">input["NotificationId"]</name>
<stringValue id="257">6</stringValue>
<type>CONSTANT</type>
</item>
<item id="258" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="259">["PartId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="260">input["PartId"]</name>
<stringValue id="261">REQREPLY</stringValue>
<type>CONSTANT</type>
</item>
<item id="262" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="263">["RequestTransaction"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="264">input["RequestTransaction"]</name>
<stringValue id="265">RequestTransaction</stringValue>
<type>VARIABLE</type>
</item>
<item id="266" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="267">["Status"]@com/j2fe/connector/RequestStatus@</UITypeHint>
<input>true</input>
<name id="268">input["Status"]</name>
<stringValue id="269">FailedMessage</stringValue>
<type>VARIABLE</type>
<variablePart id="270">properties.custom["Status"]</variablePart>
</item>
<item id="271" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="272">["VREQOIDS"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="273">input["VREQOIDS"]</name>
<stringValue id="274">FailedMessage</stringValue>
<type>VARIABLE</type>
<variablePart id="275">properties.custom["OIDs"]</variablePart>
</item>
<item id="276" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="277">name</name>
<stringValue id="278">BBScheduledReportError</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="279" type="java.util.HashSet">
<item id="280" type="com.j2fe.workflow.definition.Transition">
<name id="281">loop</name>
<source idref="208"/>
<target idref="237"/>
</item>
</sources>
<targets id="282" type="java.util.HashSet">
<item idref="235" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="230"/>
</item>
<item id="283" type="com.j2fe.workflow.definition.Transition">
<name id="284">report error</name>
<source id="285">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="286">Failed Messages?</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="287">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="288" type="java.util.HashSet">
<item id="289" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="290">caseItem</name>
<stringValue id="291">FailedMessages</stringValue>
<type>VARIABLE</type>
<variablePart id="292">length</variablePart>
</item>
<item id="293" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="294">defaultItem</name>
<stringValue id="295">report error</stringValue>
<type>CONSTANT</type>
</item>
<item id="296" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="297">nullTransition</name>
<stringValue id="298">false</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="299" type="java.util.HashSet">
<item id="300" type="com.j2fe.workflow.definition.Transition">
<name id="301">goto-next</name>
<source id="302">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="303">Automatically generated</description>
<directJoin>false</directJoin>
<name id="304">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="305">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="306" type="java.util.HashSet">
<item id="307" type="com.j2fe.workflow.definition.Transition">
<name id="308">empty</name>
<source id="309">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="310">Correlate Bloomberg Scheduled Response</name>
<nodeHandler>com.j2fe.feeds.request.CorrelateBloombergScheduledResponse</nodeHandler>
<nodeHandlerClass id="311">com.j2fe.feeds.request.CorrelateBloombergScheduledResponse</nodeHandlerClass>
<parameters id="312" type="java.util.HashSet">
<item id="313" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="314">correlationVsVreqMap</name>
<stringValue id="315">CorrelationStringVsVREQIdmap</stringValue>
<type>VARIABLE</type>
</item>
<item id="316" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="317">failedMessages</name>
<stringValue id="318">FailedMessages</stringValue>
<type>VARIABLE</type>
</item>
<item id="319" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="320">fileConnection</name>
<stringValue id="321">FileStatusObject</stringValue>
<type>VARIABLE</type>
</item>
<item id="322" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="323">keySetofMap</name>
<stringValue id="324">KeySetofthemessageTypVsMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="325" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="326">messageTypVsMessage</name>
<stringValue id="327">MapOfMessageTypeandMessages</stringValue>
<type>VARIABLE</type>
</item>
<item id="328" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="329">messages</name>
<stringValue id="330">Messages</stringValue>
<type>VARIABLE</type>
</item>
<item id="331" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="332">messages</name>
<stringValue id="333">ResponseMessages</stringValue>
<type>VARIABLE</type>
</item>
<item id="334" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="335">msfKeyConnectionFactory</name>
<stringValue id="336">msf/KeyGenerator</stringValue>
<type>REFERENCE</type>
</item>
<item id="337" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="338">requestMessage</name>
<stringValue id="339">requestMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="340" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="341">requestMessage</name>
<stringValue id="342">VendorRequest</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="343" type="java.util.HashSet">
<item id="344" type="java.lang.String">requestMessage
1100</item>
<item id="345" type="java.lang.String">CorrelationStringVsVREQIdmap
1100</item>
</persistentVariables>
<sources id="346" type="java.util.HashSet">
<item id="347" type="com.j2fe.workflow.definition.Transition">
<name id="348">ToSplit</name>
<source id="349">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="350">Automatically generated</description>
<directJoin>false</directJoin>
<name id="351">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="352">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="353" type="java.util.HashSet">
<item id="354" type="com.j2fe.workflow.definition.Transition">
<name id="355">has-messages</name>
<source id="356">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="357">File Split</name>
<nodeHandler>com.j2fe.feeds.activities.FileSplitCondition</nodeHandler>
<nodeHandlerClass id="358">com.j2fe.feeds.activities.FileSplitCondition</nodeHandlerClass>
<parameters id="359" type="java.util.HashSet">
<item id="360" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="361">bulk</name>
<stringValue id="362">BulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="363" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="364">businessFeed</name>
<stringValue id="365">BusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="366" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="367">createTransactions</name>
<stringValue id="368">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="369" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="370">fileConnection</name>
<stringValue id="371">FileStatusObject</stringValue>
<type>VARIABLE</type>
</item>
<item id="372" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="373">grouping</name>
<stringValue id="374">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="375" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="376">messages</name>
<stringValue id="377">Messages</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="378" type="java.util.HashSet">
<item id="379" type="java.lang.String">BusinessFeed
1100</item>
</persistentVariables>
<sources id="380" type="java.util.HashSet">
<item id="381" type="com.j2fe.workflow.definition.Transition">
<name id="382">goto-next</name>
<source idref="177"/>
<target idref="356"/>
</item>
</sources>
<targets id="383" type="java.util.HashSet">
<item id="384" type="com.j2fe.workflow.definition.Transition">
<name id="385">end-of-file</name>
<source idref="356"/>
<target id="386">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="387">Check Trid</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="388">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="389" type="java.util.HashSet">
<item id="390" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="391">database</name>
<stringValue id="392">jdbc/configuration</stringValue>
<type>REFERENCE</type>
</item>
<item id="393" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="394">indexedParameters[0]</name>
<stringValue id="395">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="396" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="397">querySQL</name>
<stringValue id="398">SELECT 1 FROM FT_T_TRID WHERE JOB_ID = ?</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="399" type="java.util.HashSet">
<item idref="384" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="400" type="java.util.HashSet">
<item id="401" type="com.j2fe.workflow.definition.Transition">
<name id="402">nothing-found</name>
<source idref="386"/>
<target id="403">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="404">Create Request Transaction</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateTransaction</nodeHandler>
<nodeHandlerClass id="405">com.j2fe.streetlamp.activities.CreateTransaction</nodeHandlerClass>
<parameters id="406" type="java.util.HashSet">
<item id="407" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="408">flushImmediate</name>
<stringValue id="409">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="410" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="411">jobId</name>
<stringValue id="412">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="413" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="414">transactionId</name>
<stringValue id="415">RequestTransaction</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="416" type="java.util.HashSet">
<item idref="401" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="417" type="java.util.HashSet">
<item id="418" type="com.j2fe.workflow.definition.Transition">
<name id="419">goto-next</name>
<source idref="403"/>
<target id="420">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="421">Report Notification</name>
<nodeHandler>com.j2fe.streetlamp.activities.ReportNotification</nodeHandler>
<nodeHandlerClass id="422">com.j2fe.streetlamp.activities.ReportNotification</nodeHandlerClass>
<parameters id="423" type="java.util.HashSet">
<item id="424" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="425">applicationId</name>
<stringValue id="426">VENDOR</stringValue>
<type>CONSTANT</type>
</item>
<item id="427" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="428">flushImmediate</name>
<stringValue id="429">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="430" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="431">notificationId</name>
<objectValue id="432" type="java.lang.Integer">10</objectValue>
<type>CONSTANT</type>
</item>
<item id="433" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="434">["RESFILENME"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="435">parameterValues["RESFILENME"]</name>
<stringValue id="436">ResponseFileName</stringValue>
<type>VARIABLE</type>
</item>
<item id="437" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="438">partId</name>
<stringValue id="439">REQREPLY</stringValue>
<type>CONSTANT</type>
</item>
<item id="440" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="441">transactionId</name>
<stringValue id="442">RequestTransaction</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="443" type="java.util.HashSet">
<item idref="418" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="444" type="java.util.HashSet">
<item id="445" type="com.j2fe.workflow.definition.Transition">
<name id="446">goto-next</name>
<source idref="420"/>
<target id="447">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="448">Close Transaction</name>
<nodeHandler>com.j2fe.streetlamp.activities.CloseTransaction</nodeHandler>
<nodeHandlerClass id="449">com.j2fe.streetlamp.activities.CloseTransaction</nodeHandlerClass>
<parameters id="450" type="java.util.HashSet">
<item id="451" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="452">transactionId</name>
<stringValue id="453">RequestTransaction</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="454" type="java.util.HashSet">
<item idref="445" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="455" type="java.util.HashSet">
<item id="456" type="com.j2fe.workflow.definition.Transition">
<name id="457">goto-next</name>
<source idref="447"/>
<target id="458">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="459">Close Universe Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CloseJob</nodeHandler>
<nodeHandlerClass id="460">com.j2fe.streetlamp.activities.CloseJob</nodeHandlerClass>
<parameters id="461" type="java.util.HashSet">
<item id="462" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="463">jobId</name>
<stringValue id="464">UniverseJobId</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="465" type="java.util.HashSet">
<item idref="456" type="com.j2fe.workflow.definition.Transition"/>
<item id="466" type="com.j2fe.workflow.definition.Transition">
<name id="467">rows-found</name>
<source idref="386"/>
<target idref="458"/>
</item>
</sources>
<targets id="468" type="java.util.HashSet">
<item id="469" type="com.j2fe.workflow.definition.Transition">
<name id="470">goto-next</name>
<source idref="458"/>
<target id="471">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="472">Check PPED</name>
<nodeHandler>com.j2fe.general.activities.IsNull</nodeHandler>
<nodeHandlerClass id="473">com.j2fe.general.activities.IsNull</nodeHandlerClass>
<parameters id="474" type="java.util.HashSet">
<item id="475" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="476">input</name>
<stringValue id="477">PricePointEventDefinitionId</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="478" type="java.util.HashSet">
<item idref="469" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="479" type="java.util.HashSet">
<item id="480" type="com.j2fe.workflow.definition.Transition">
<name id="481">false</name>
<source idref="471"/>
<target id="482">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="483">Clear PPJB</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="484">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="485" type="java.util.HashSet">
<item id="486" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="487">database</name>
<stringValue id="488">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="489" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="490">[0]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="491">indexedParameters[0]</name>
<stringValue id="492">PricePointEventDefinitionId</stringValue>
<type>VARIABLE</type>
</item>
<item id="493" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="494">[1]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="495">indexedParameters[1]</name>
<stringValue id="496">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="497" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="498">querySQL</name>
<stringValue id="499">DECLARE&#13;
PPED_OID_PARAM VARCHAR2(1000);&#13;
JOB_ID_PARAM VARCHAR2(1000);&#13;
begin&#13;
PPED_OID_PARAM:=?;&#13;
JOB_ID_PARAM:=?;&#13;
IF(PPED_OID_PARAM is not null) then&#13;
 delete from FT_O_PPJB where PPED_OID=PPED_OID_PARAM and JOB_ID=JOB_ID_PARAM;&#13;
end if;&#13;
end;</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="500" type="java.util.HashSet">
<item idref="480" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="501" type="java.util.HashSet">
<item id="502" type="com.j2fe.workflow.definition.Transition">
<name id="503">goto-next</name>
<source idref="482"/>
<target id="504">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="505">Close Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CloseJob</nodeHandler>
<nodeHandlerClass id="506">com.j2fe.streetlamp.activities.CloseJob</nodeHandlerClass>
<parameters id="507" type="java.util.HashSet">
<item id="508" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="509">jobId</name>
<stringValue id="510">JobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="511" type="java.util.HashSet">
<item idref="502" type="com.j2fe.workflow.definition.Transition"/>
<item id="512" type="com.j2fe.workflow.definition.Transition">
<name id="513">true</name>
<source idref="471"/>
<target idref="504"/>
</item>
</sources>
<targets id="514" type="java.util.HashSet">
<item id="515" type="com.j2fe.workflow.definition.Transition">
<name id="516">goto-next</name>
<source idref="504"/>
<target id="517">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="518">Close File</name>
<nodeHandler>com.j2fe.feeds.activities.EndFile</nodeHandler>
<nodeHandlerClass id="519">com.j2fe.feeds.activities.EndFile</nodeHandlerClass>
<parameters id="520" type="java.util.HashSet">
<item id="521" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="522">file</name>
<stringValue id="523">AbsoluteFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="524" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="525">successAction</name>
<stringValue id="526">LEAVE</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="527" type="java.util.HashSet">
<item idref="515" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="528" type="java.util.HashSet">
<item id="529" type="com.j2fe.workflow.definition.Transition">
<name id="530">goto-next</name>
<source idref="517"/>
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
<item idref="512" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
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
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="466" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</target>
</item>
<item idref="354" type="com.j2fe.workflow.definition.Transition"/>
<item id="531" type="com.j2fe.workflow.definition.Transition">
<name id="532">has-messages-(keystreaming)</name>
<source idref="356"/>
<target idref="349"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="349"/>
</item>
<item idref="531" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="533" type="java.util.HashSet">
<item idref="347" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="309"/>
</item>
</sources>
<targets id="534" type="java.util.HashSet">
<item idref="307" type="com.j2fe.workflow.definition.Transition"/>
<item id="535" type="com.j2fe.workflow.definition.Transition">
<name id="536">not-empty</name>
<source idref="309"/>
<target id="537">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="538">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="539">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="540" type="java.util.HashSet">
<item id="541" type="com.j2fe.workflow.definition.Transition">
<name id="542">goto-next</name>
<source id="543">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<directJoin>true</directJoin>
<name id="544">Synchronize</name>
<nodeHandler>com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandler>
<nodeHandlerClass id="545">com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandlerClass>
<sources id="546" type="java.util.HashSet">
<item id="547" type="com.j2fe.workflow.definition.Transition">
<name id="548">goto-next</name>
<source id="549">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="550">Prepare Scheduled Message Processing</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="551">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="552" type="java.util.HashSet">
<item id="553" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="554">["JobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="555">input["JobID"]</name>
<stringValue id="556">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="557" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="558">["Message"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="559">input["Message"]</name>
<stringValue id="560">Message</stringValue>
<type>VARIABLE</type>
<variablePart id="561">message</variablePart>
</item>
<item id="562" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="563">["MessageMetaData"]@java/util/Map@</UITypeHint>
<input>true</input>
<name id="564">input["MessageMetaData"]</name>
<stringValue id="565">MessageMetaData</stringValue>
<type>VARIABLE</type>
</item>
<item id="566" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="567">["MessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="568">input["MessageType"]</name>
<stringValue id="569">Message</stringValue>
<type>VARIABLE</type>
<variablePart id="570">properties.messageType</variablePart>
</item>
<item id="571" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="572">["PricePointEventDefinitionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="573">input["PricePointEventDefinitionId"]</name>
<stringValue id="574">PricePointEventDefinitionId</stringValue>
<type>VARIABLE</type>
</item>
<item id="575" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="576">["RecordNumber"]@java/lang/Long@</UITypeHint>
<input>true</input>
<name id="577">input["RecordNumber"]</name>
<stringValue id="578">Message</stringValue>
<type>VARIABLE</type>
<variablePart id="579">properties.jobIndex</variablePart>
</item>
<item id="580" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="581">["RequestTransaction"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="582">input["RequestTransaction"]</name>
<stringValue id="583">RequestTransaction</stringValue>
<type>VARIABLE</type>
</item>
<item id="584" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="585">["UniverseJobId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="586">input["UniverseJobId"]</name>
<stringValue id="587">UniverseJobId</stringValue>
<type>VARIABLE</type>
</item>
<item id="588" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="589">["VreqOID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="590">input["VreqOID"]</name>
<stringValue id="591">Message</stringValue>
<type>VARIABLE</type>
<variablePart id="592">properties.custom["OID"]</variablePart>
</item>
<item id="593" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="594">name</name>
<stringValue id="595">PrepareScheduledMessageProcessing</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="596" type="java.util.HashSet">
<item id="597" type="com.j2fe.workflow.definition.Transition">
<name id="598">goto-next</name>
<source id="599">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="600">Automatically generated</description>
<directJoin>false</directJoin>
<name id="601">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="602">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="603" type="java.util.HashSet">
<item id="604" type="com.j2fe.workflow.definition.Transition">
<name id="605">goto-next</name>
<source id="606">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<directJoin>true</directJoin>
<name id="607">Generic Split</name>
<nodeHandler>com.j2fe.workflow.handler.impl.GenericSplit</nodeHandler>
<nodeHandlerClass id="608">com.j2fe.workflow.handler.impl.GenericSplit</nodeHandlerClass>
<parameters id="609" type="java.util.HashSet">
<item id="610" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="611">input</name>
<stringValue id="612">messageArray</stringValue>
<type>VARIABLE</type>
</item>
<item id="613" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="614">output</name>
<stringValue id="615">Message</stringValue>
<type>VARIABLE</type>
</item>
<item id="616" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="617">output.properties.jobIndex</name>
<stringValue id="618">KeyIndex</stringValue>
<type>VARIABLE</type>
</item>
<item id="619" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="620">output.properties.messageKey</name>
<stringValue id="621">Key</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="622" type="java.util.HashSet">
<item id="623" type="java.lang.String">Message
1100</item>
<item id="624" type="java.lang.String">messageArray
1100</item>
</persistentVariables>
<sources id="625" type="java.util.HashSet">
<item id="626" type="com.j2fe.workflow.definition.Transition">
<name id="627">goto-next</name>
<source id="628">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="629">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="630">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="631" type="java.util.HashSet">
<item id="632" type="com.j2fe.workflow.definition.Transition">
<name id="633">goto-next</name>
<source id="634">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="635">List of Messages to Array</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="636">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="637" type="java.util.HashSet">
<item id="638" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="639">statements</name>
<stringValue id="640">List lst = map.get(output);
Object [] arrMessages = lst.toArray();</stringValue>
<type>CONSTANT</type>
</item>
<item id="641" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="642">variables["arrMessages"]</name>
<stringValue id="643">messageArray</stringValue>
<type>VARIABLE</type>
</item>
<item id="644" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="645">variables["map"]</name>
<stringValue id="646">MapOfMessageTypeandMessages</stringValue>
<type>VARIABLE</type>
</item>
<item id="647" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="648">["output"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="649">variables["output"]</name>
<stringValue id="650">Output</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="651" type="java.util.HashSet">
<item id="652" type="com.j2fe.workflow.definition.Transition">
<name id="653">loop</name>
<source id="654">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="655">For Loop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.ForEach</nodeHandler>
<nodeHandlerClass id="656">com.j2fe.workflow.handler.impl.ForEach</nodeHandlerClass>
<parameters id="657" type="java.util.HashSet">
<item id="658" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="659">counter</name>
<stringValue id="660">loopCounter</stringValue>
<type>VARIABLE</type>
</item>
<item id="661" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="662">counter</name>
<stringValue id="663">loopCounter</stringValue>
<type>VARIABLE</type>
</item>
<item id="664" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="665">input</name>
<stringValue id="666">KeySetofthemessageTypVsMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="667" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="668">output</name>
<stringValue id="669">Output</stringValue>
<type>VARIABLE</type>
</item>
<item id="670" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="671">outputObjects</name>
<stringValue id="672">IncrementedObjects</stringValue>
<type>VARIABLE</type>
</item>
<item id="673" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="674">resetOnEnd</name>
<stringValue id="675">true</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<persistentVariables id="676" type="java.util.HashSet">
<item id="677" type="java.lang.String">loopCounter
1100</item>
<item id="678" type="java.lang.String">KeySetofthemessageTypVsMessage
1100</item>
</persistentVariables>
<sources id="679" type="java.util.HashSet">
<item id="680" type="com.j2fe.workflow.definition.Transition">
<name id="681">goto-next</name>
<source idref="537"/>
<target idref="654"/>
</item>
</sources>
<targets id="682" type="java.util.HashSet">
<item id="683" type="com.j2fe.workflow.definition.Transition">
<name id="684">end-loop</name>
<source idref="654"/>
<target idref="302"/>
</item>
<item idref="652" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="634"/>
</item>
</sources>
<targets id="685" type="java.util.HashSet">
<item idref="632" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="628"/>
</item>
</sources>
<targets id="686" type="java.util.HashSet">
<item idref="626" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="606"/>
</item>
</sources>
<targets id="687" type="java.util.HashSet">
<item idref="604" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ANDSPLIT</type>
</source>
<target idref="599"/>
</item>
</sources>
<targets id="688" type="java.util.HashSet">
<item idref="597" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="549"/>
</item>
</sources>
<targets id="689" type="java.util.HashSet">
<item idref="547" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="543"/>
</item>
</sources>
<targets id="690" type="java.util.HashSet">
<item idref="541" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ANDJOIN</type>
</source>
<target idref="537"/>
</item>
<item idref="535" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="691" type="java.util.HashSet">
<item idref="680" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="302"/>
</item>
<item idref="683" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="692" type="java.util.HashSet">
<item idref="300" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="285"/>
</item>
</sources>
<targets id="693" type="java.util.HashSet">
<item id="694" type="com.j2fe.workflow.definition.Transition">
<name id="695">false</name>
<source idref="285"/>
<target idref="195"/>
</item>
<item idref="283" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="230"/>
</item>
</sources>
<targets id="696" type="java.util.HashSet">
<item idref="228" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="208"/>
</item>
</sources>
<targets id="697" type="java.util.HashSet">
<item idref="206" type="com.j2fe.workflow.definition.Transition"/>
<item idref="280" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="195"/>
</item>
<item idref="694" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="698" type="java.util.HashSet">
<item idref="193" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="183"/>
</item>
</sources>
<targets id="699" type="java.util.HashSet">
<item idref="181" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="177"/>
</item>
</sources>
<targets id="700" type="java.util.HashSet">
<item idref="381" type="com.j2fe.workflow.definition.Transition"/>
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
<item idref="112" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="2"/>
</item>
<item idref="529" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="701" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="702">Request Reply/Bloomberg</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="703">user1</lastChangeUser>
<lastUpdate id="704">2018-05-11T16:26:07.000+1000</lastUpdate>
<name id="705">BBProcessScheduledFiles</name>
<optimize>true</optimize>
<parameter id="706" type="java.util.HashMap">
<entry>
<key id="707" type="java.lang.String">AbsoluteFile</key>
<value id="708" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="709">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<description id="710">Input File to be processed.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="711" type="java.lang.String">BulkSize</key>
<value id="712" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="713">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="714">Bulk Size used for File Spliting.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="715" type="java.lang.String">MessageMetaData</key>
<value id="716" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="717">java.util.Map</className>
<clazz>java.util.Map</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="718" type="java.lang.String">PricePointEventDefinitionId</key>
<value id="719" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="720">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="721">PricePointEventDefinitionId</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="722" type="java.lang.String">RequestTransaction</key>
<value id="723" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="724">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="725">RequestTransaction</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="726" type="java.lang.String">ResponseFileName</key>
<value id="727" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="728">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="729">Response File Name for Scheduled Request.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="730" type="java.util.HashSet"/>
<priority>0</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="25"/>
<status>RELEASED</status>
<variables id="731" type="java.util.HashMap">
<entry>
<key id="732" type="java.lang.String">AbsoluteFile</key>
<value id="733" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="734">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<description id="735">Input File to be processed.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="736" type="java.lang.String">BulkSize</key>
<value id="737" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="738">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="739">Bulk Size used for File Spliting.</description>
<persistent>false</persistent>
<value id="740" type="java.lang.Integer">500</value>
</value>
</entry>
<entry>
<key id="741" type="java.lang.String">FileStatusObject</key>
<value id="742" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="743">com.j2fe.feeds.FileConnection</className>
<clazz>com.j2fe.feeds.FileConnection</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="744" type="java.lang.String">JobID</key>
<value id="745" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="746">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>true</persistent>
</value>
</entry>
<entry>
<key id="747" type="java.lang.String">MessageMetaData</key>
<value id="748" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="749">java.util.Map</className>
<clazz>java.util.Map</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="750" type="java.lang.String">PricePointEventDefinitionId</key>
<value id="751" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="752">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="753">PricePointEventDefinitionId</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="754" type="java.lang.String">RequestTransaction</key>
<value id="755" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="756">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="757">RequestTransaction</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="758" type="java.lang.String">ResponseFileName</key>
<value id="759" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="760">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="761">Response File Name for Scheduled Request.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="762" type="java.lang.String">failCounter</key>
<value id="763" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="764">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="765">failCounter</description>
<persistent>false</persistent>
<value id="766" type="java.lang.Integer">0</value>
</value>
</entry>
<entry>
<key id="767" type="java.lang.String">loopCounter</key>
<value id="768" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="769">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="770">loopCounter</description>
<persistent>false</persistent>
<value idref="766"/>
</value>
</entry>
<entry>
<key id="771" type="java.lang.String">messageArray</key>
<value id="772" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="773">[Ljava.lang.Object;</className>
<clazz>[Ljava.lang.Object;</clazz>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>4</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
