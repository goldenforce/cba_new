<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.15">
<package-comment/>
<businessobject displayString="13 - Non Clustered" type="com.j2fe.workflow.definition.Workflow">
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
<name id="19">Call Subworkflow</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="20">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="21" type="java.util.HashSet">
<item id="22" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="23">["pActionType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="24">input["pActionType"]</name>
<stringValue id="25">I</stringValue>
<type>CONSTANT</type>
</item>
<item id="26" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="27">["pBatchName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="28">input["pBatchName"]</name>
<stringValue id="29">SYD_MAT_DSS_1215_INTRDAY</stringValue>
<type>CONSTANT</type>
</item>
<item id="30" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="31">["pIssueGroup"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="32">input["pIssueGroup"]</name>
<stringValue id="33">pIssueGroupName</stringValue>
<type>VARIABLE</type>
</item>
<item id="34" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="35">["pProcessingDate"]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="36">input["pProcessingDate"]</name>
<stringValue id="37">ProcDate</stringValue>
<type>VARIABLE</type>
</item>
<item id="38" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="39">["pQueryName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="40">input["pQueryName"]</name>
<stringValue id="41">pub_CBA_CollectMaturityDate</stringValue>
<type>CONSTANT</type>
</item>
<item id="42" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="43">name</name>
<stringValue id="44">CbaMruPublish_MaturityDate</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="45" type="java.util.HashSet">
<item id="46" type="com.j2fe.workflow.definition.Transition">
<name id="47">goto-next</name>
<source id="48">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="49">Trunc Processing DateTrunc Processing Date</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="50">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="51" type="java.util.HashSet">
<item id="52" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="53">database</name>
<stringValue id="54">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="55" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="56">firstColumnsResult[0]</name>
<stringValue id="57">ProcDate</stringValue>
<type>VARIABLE</type>
</item>
<item id="58" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="59">[0]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="60">indexedParameters[0]</name>
<stringValue id="61">ProcDate_UT</stringValue>
<type>VARIABLE</type>
</item>
<item id="62" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="63">indexedParameters[1]</name>
<stringValue id="64">Processing Date Deriving Factor</stringValue>
<type>VARIABLE</type>
</item>
<item id="65" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="66">querySQL</name>
<stringValue id="67">select trunc(?)+(?) from dual</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="68" type="java.util.HashSet">
<item id="69" type="com.j2fe.workflow.definition.Transition">
<name id="70">goto-next</name>
<source id="71">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="72">Bean Shell Script (Standard) #2</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="73">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="74" type="java.util.HashSet">
<item id="75" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="76">statements</name>
<stringValue id="77">import java.util.Date;&#13;
&#13;
if(null==pdate)&#13;
{&#13;
pdate=new Date();&#13;
}&#13;
Date d1=pdate;</stringValue>
<type>CONSTANT</type>
</item>
<item id="78" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="79">variables["d1"]</name>
<stringValue id="80">ProcDate_UT</stringValue>
<type>VARIABLE</type>
</item>
<item id="81" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="82">["pdate"]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="83">variables["pdate"]</name>
<stringValue id="84">Processing Date</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="85" type="java.util.HashSet">
<item id="86" type="com.j2fe.workflow.definition.Transition">
<name id="87">goto-next</name>
<source id="88">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="89">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="90">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="91" type="java.util.HashSet">
<item id="92" type="com.j2fe.workflow.definition.Transition">
<name id="93">rows-found</name>
<source id="94">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="95">Database Select (Xor Split)</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="96">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="97" type="java.util.HashSet">
<item id="98" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="99">database</name>
<stringValue id="100">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="101" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="102">indexedParameters[0]</name>
<stringValue id="103">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="104" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="105">querySQL</name>
<stringValue id="106">&#13;
&#13;
 select trn_id from ft_T_trid  where   job_id in (select job_id from ft_T_jblg where job_id = (select job_id from ft_T_jblg where prnt_job_id =(select job_id from ft_T_jblg where prnt_job_id=?)))&#13;
&#13;
&#13;
</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="107" type="java.util.HashSet">
<item id="108" type="com.j2fe.workflow.definition.Transition">
<name id="109">goto-next</name>
<source id="110">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="111">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="112">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="113" type="java.util.HashSet">
<item id="114" type="com.j2fe.workflow.definition.Transition">
<name id="115">goto-next</name>
<source id="116">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="117">Sent Notifications</name>
<nodeHandler>com.j2fe.general.activities.EMAIL</nodeHandler>
<nodeHandlerClass id="118">com.j2fe.general.activities.EMAIL</nodeHandlerClass>
<parameters id="119" type="java.util.HashSet">
<item id="120" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="121">emailText</name>
<stringValue id="122">emailBody</stringValue>
<type>VARIABLE</type>
</item>
<item id="123" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="124">from</name>
<stringValue id="125">no-reply@thegoldensource.com</stringValue>
<type>CONSTANT</type>
</item>
<item id="126" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="127">recipients</name>
<stringValue id="128">EmailIds</stringValue>
<type>VARIABLE</type>
</item>
<item id="129" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="130">session</name>
<stringValue id="131">email/session</stringValue>
<type>REFERENCE</type>
</item>
<item id="132" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="133">subject</name>
<stringValue id="134">emailSubject</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="135" type="java.util.HashSet">
<item id="136" type="com.j2fe.workflow.definition.Transition">
<name id="137">goto-next</name>
<source id="138">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="139">Email Ids</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="140">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="141" type="java.util.HashSet">
<item id="142" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="143">database</name>
<stringValue id="144">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="145" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="146">firstColumnsResult</name>
<stringValue id="147">EmailIds</stringValue>
<type>VARIABLE</type>
</item>
<item id="148" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="149">indexedParameters[0]</name>
<stringValue id="150">pIssueGroupName</stringValue>
<type>VARIABLE</type>
</item>
<item id="151" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="152">querySQL</name>
<stringValue id="153">select EMAIL_ID from ft_T_isg1 where  ISS_GRP_OID IN (SELECT ISS_GRP_OID FROM FT_t_ISGR WHERE GRP_NME=?)</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="154" type="java.util.HashSet">
<item id="155" type="com.j2fe.workflow.definition.Transition">
<name id="156">goto-next</name>
<source id="157">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="158">Email Contents</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="159">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="160" type="java.util.HashSet">
<item id="161" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="162">statements</name>
<stringValue id="163">String emailBody = new String();&#13;
String emailSubject = new String();&#13;
&#13;
&#13;
//if(Exceptions)&#13;
&#13;
for(int i=0;i&lt;Exceptions.length;i++)&#13;
{   &#13;
&#13;
if(i==0)&#13;
{&#13;
&#13;
emailBody = "File Load Status of  Underlying  Maturity Date for FRA :  " +"\n"+ (String) Exceptions[i] +"\n";&#13;
&#13;
}&#13;
if(i==1)&#13;
{&#13;
&#13;
emailBody =emailBody  + ""+ (String) Exceptions[i]+"" +"\n" +"\n" +"\n"+" Thanks &amp; regards, "+"\n"+"Golden Source";&#13;
&#13;
}&#13;
&#13;
&#13;
&#13;
}&#13;
&#13;
&#13;
emailSubject ="Notification of  Underlying  Maturity Date for FRA file load";</stringValue>
<type>CONSTANT</type>
</item>
<item id="164" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="165">variables["Exceptions"]</name>
<stringValue id="166">ExceptionsWhileFileLoad</stringValue>
<type>VARIABLE</type>
</item>
<item id="167" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="168">variables["emailBody"]</name>
<stringValue id="169">emailBody</stringValue>
<type>VARIABLE</type>
</item>
<item id="170" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="171">variables["emailSubject"]</name>
<stringValue id="172">emailSubject</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="173" type="java.util.HashSet">
<item id="174" type="com.j2fe.workflow.definition.Transition">
<name id="175">goto-next</name>
<source id="176">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="177">Fetch File Load Status</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="178">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="179" type="java.util.HashSet">
<item id="180" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="181">database</name>
<stringValue id="182">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="183" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="184">firstColumnsResult</name>
<stringValue id="185">ExceptionsWhileFileLoad</stringValue>
<type>VARIABLE</type>
</item>
<item id="186" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="187">indexedParameters[0]</name>
<stringValue id="188">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="189" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="190">indexedParameters[1]</name>
<stringValue id="191">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="192" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="193">querySQL</name>
<stringValue id="194">&#13;
&#13;
select 'Number of Records Failed because of missing Maturity Date is : '||''||to_char(count(1)) Count from ft_T_trid where crrnt_severity_cde=50 and  job_id in (select job_id from ft_T_jblg where job_id = (select job_id from ft_T_jblg where prnt_job_id =(select job_id from ft_T_jblg where prnt_job_id=?)))&#13;
union&#13;
select 'File : '||''|| JOB_INPUT_TXT from ft_T_jblg where job_id = (select job_id from ft_T_jblg where prnt_job_id =(select job_id from ft_T_jblg where prnt_job_id=?))&#13;
&#13;
</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="195" type="java.util.HashSet">
<item id="196" type="com.j2fe.workflow.definition.Transition">
<name id="197">rows-found</name>
<source id="198">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="199">Database Select (Xor Split)</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="200">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="201" type="java.util.HashSet">
<item id="202" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="203">database</name>
<stringValue id="204">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="205" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="206">indexedParameters[0]</name>
<stringValue id="207">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="208" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="209">querySQL</name>
<stringValue id="210">&#13;
&#13;
 select trn_id from ft_T_trid  where crrnt_severity_cde=50 and  job_id in (select job_id from ft_T_jblg where job_id = (select job_id from ft_T_jblg where prnt_job_id =(select job_id from ft_T_jblg where prnt_job_id=?)))&#13;
&#13;
&#13;
</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="211" type="java.util.HashSet">
<item id="212" type="com.j2fe.workflow.definition.Transition">
<name id="213">goto-next</name>
<source id="214">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="215">Call Subworkflow</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="216">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="217" type="java.util.HashSet">
<item id="218" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="219">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="220">input["ParentJobID"]</name>
<stringValue id="221">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="222" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="223">["Price Point Event Definition Id"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="224">input["Price Point Event Definition Id"]</name>
<stringValue id="225">PricePointEventDefinitionId</stringValue>
<type>VARIABLE</type>
</item>
<item id="226" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="227">["RTDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="228">input["RTDirectory"]</name>
<stringValue id="229">RTDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="230" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="231">["RTFilePattern"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="232">input["RTFilePattern"]</name>
<stringValue id="233">RTFilePattern</stringValue>
<type>VARIABLE</type>
</item>
<item id="234" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="235">["ReProcessProcessedFiles"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="236">input["ReProcessProcessedFiles"]</name>
<stringValue id="237">ReProcessProcessedFiles</stringValue>
<type>VARIABLE</type>
</item>
<item id="238" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="239">["ReuterBusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="240">input["ReuterBusinessFeed"]</name>
<stringValue id="241">ReuterBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="242" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="243">["ReutersFileSystem"]@com/j2fe/connector/ReutersFileSystemType@</UITypeHint>
<input>true</input>
<name id="244">input["ReutersFileSystem"]</name>
<stringValue id="245">ReutersFileSystem</stringValue>
<type>VARIABLE</type>
</item>
<item id="246" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="247">name</name>
<stringValue id="248">CBA_WF_FileLoad_MaturityDate</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="249" type="java.util.HashSet">
<item id="250" type="com.j2fe.workflow.definition.Transition">
<name id="251">goto-next</name>
<source id="252">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="253">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="254">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="255" type="java.util.HashSet">
<item id="256" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="257">file</name>
<objectValue id="258" type="java.net.URI">CBA_WF_Reuters_Maturitydate</objectValue>
<type>CONSTANT</type>
</item>
<item id="259" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="260">jobId</name>
<stringValue id="261">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="262" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="263">messageType</name>
<stringValue id="264">ReutersDSS_INTRADAY_CBA_MaturityDate</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="265" type="java.util.HashSet">
<item id="266" type="com.j2fe.workflow.definition.Transition">
<name id="267">goto-next</name>
<source id="268">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="269">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="270">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="271" type="java.util.HashSet"/>
<targets id="272" type="java.util.HashSet">
<item idref="266" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="252"/>
</item>
</sources>
<targets id="273" type="java.util.HashSet">
<item idref="250" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="214"/>
</item>
</sources>
<targets id="274" type="java.util.HashSet">
<item idref="212" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="198"/>
</item>
</sources>
<targets id="275" type="java.util.HashSet">
<item id="276" type="com.j2fe.workflow.definition.Transition">
<name id="277">nothing-found</name>
<source idref="198"/>
<target idref="110"/>
</item>
<item idref="196" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="176"/>
</item>
</sources>
<targets id="278" type="java.util.HashSet">
<item idref="174" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="157"/>
</item>
</sources>
<targets id="279" type="java.util.HashSet">
<item idref="155" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="138"/>
</item>
</sources>
<targets id="280" type="java.util.HashSet">
<item idref="136" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="116"/>
</item>
</sources>
<targets id="281" type="java.util.HashSet">
<item idref="114" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="110"/>
</item>
<item idref="276" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="282" type="java.util.HashSet">
<item idref="108" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="94"/>
</item>
</sources>
<targets id="283" type="java.util.HashSet">
<item id="284" type="com.j2fe.workflow.definition.Transition">
<name id="285">nothing-found</name>
<source idref="94"/>
<target idref="8"/>
</item>
<item idref="92" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="88"/>
</item>
</sources>
<targets id="286" type="java.util.HashSet">
<item idref="86" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="71"/>
</item>
</sources>
<targets id="287" type="java.util.HashSet">
<item idref="69" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="48"/>
</item>
</sources>
<targets id="288" type="java.util.HashSet">
<item idref="46" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="18"/>
</item>
</sources>
<targets id="289" type="java.util.HashSet">
<item idref="16" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="8"/>
</item>
<item idref="284" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="290" type="java.util.HashSet">
<item idref="6" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
</sources>
<targets id="291" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="292">CBACustomWorkflows</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="293">user1</lastChangeUser>
<lastUpdate id="294">2018-05-10T20:01:59.000+1000</lastUpdate>
<name id="295">CBA_WF_Reuters_MaturityDate</name>
<optimize>false</optimize>
<parameter id="296" type="java.util.HashMap">
<entry>
<key id="297" type="java.lang.String">PricePointEventDefinitionId</key>
<value id="298" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="299">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="300">PricePointEventDefinitionId PPED_OID from FT_T_PPED table</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="301" type="java.lang.String">Processing Date</key>
<value id="302" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="303">java.util.Date</className>
<clazz>java.util.Date</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="304" type="java.lang.String">Processing Date Deriving Factor</key>
<value id="305" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="306">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="307">The value in this parameter will be added into the processing date encoded will running the WF to derive the actual processing date. The applicable values should be like 1, 2,-1,-2 etc.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="308" type="java.lang.String">RTDirectory</key>
<value id="309" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="310">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="311">Reuter's Directory</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="312" type="java.lang.String">RTFilePattern</key>
<value id="313" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="314">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="315">Reuter's file name</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="316" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="317" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="318">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="319">Allow reprocessing the processed files. Works only in case of Reuters.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="320" type="java.lang.String">ReuterBusinessFeed</key>
<value id="321" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="322">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="323">ReuterBusinessFeed</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="324" type="java.lang.String">ReutersDSSReportTemplateName</key>
<value id="325" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="326">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="327" type="java.lang.String">ReutersFileSystem</key>
<value id="328" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="329">com.j2fe.connector.ReutersFileSystemType</className>
<clazz>com.j2fe.connector.ReutersFileSystemType</clazz>
<description id="330">ReutersFileSystem</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="331" type="java.lang.String">pIssueGroupName</key>
<value id="332" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="333">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="334">The schedule group name. The same group is used for publishing too.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="335" type="java.lang.String">pListInstrName</key>
<value id="336" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="337">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="338" type="java.lang.String">pScheduleName</key>
<value id="339" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="340">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="341" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>1</retries>
<startNode idref="268"/>
<status>RELEASED</status>
<variables id="342" type="java.util.HashMap">
<entry>
<key id="343" type="java.lang.String">PricePointEventDefinitionId</key>
<value id="344" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="345">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="346">PricePointEventDefinitionId PPED_OID from FT_T_PPED table</description>
<persistent>false</persistent>
<value id="347" type="java.lang.String">SNAP====SY</value>
</value>
</entry>
<entry>
<key id="348" type="java.lang.String">Processing Date</key>
<value id="349" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="350">java.util.Date</className>
<clazz>java.util.Date</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="351" type="java.lang.String">Processing Date Deriving Factor</key>
<value id="352" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="353">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="354">The value in this parameter will be added into the processing date encoded will running the WF to derive the actual processing date. The applicable values should be like 1, 2,-1,-2 etc.</description>
<persistent>false</persistent>
<value id="355" type="java.lang.Integer">0</value>
</value>
</entry>
<entry>
<key id="356" type="java.lang.String">RTDirectory</key>
<value id="357" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="358">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="359">Reuter's Directory</description>
<persistent>false</persistent>
<value id="360" type="java.lang.String">/reports</value>
</value>
</entry>
<entry>
<key id="361" type="java.lang.String">RTFilePattern</key>
<value id="362" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="363">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="364">Reuter's file name</description>
<persistent>false</persistent>
<value id="365" type="java.lang.String">CBA_Reuters_Intra_Maturitydate.csv.gz</value>
</value>
</entry>
<entry>
<key id="366" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="367" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="368">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="369">Allow reprocessing the processed files. Works only in case of Reuters.</description>
<persistent>false</persistent>
<value id="370" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="371" type="java.lang.String">ReuterBusinessFeed</key>
<value id="372" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="373">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="374">ReuterBusinessFeed</description>
<persistent>false</persistent>
<value id="375" type="java.lang.String">ReutersDSS_INTRADAY_CBA_MaturityDate</value>
</value>
</entry>
<entry>
<key id="376" type="java.lang.String">ReutersDSSReportTemplateName</key>
<value id="377" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="378">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="379" type="java.lang.String">CBA_ReutersDSS_UnderlyingMaturity</value>
</value>
</entry>
<entry>
<key id="380" type="java.lang.String">ReutersFileSystem</key>
<value id="381" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="382">com.j2fe.connector.ReutersFileSystemType</className>
<clazz>com.j2fe.connector.ReutersFileSystemType</clazz>
<description id="383">ReutersFileSystem</description>
<persistent>false</persistent>
<value id="384" type="com.j2fe.connector.ReutersFileSystemType">SFTP</value>
</value>
</entry>
<entry>
<key id="385" type="java.lang.String">pIssueGroupName</key>
<value id="386" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="387">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="388">The schedule group name. The same group is used for publishing too.</description>
<persistent>false</persistent>
<value id="389" type="java.lang.String">SYD_MAT_DSS_1215_INTRDAY</value>
</value>
</entry>
<entry>
<key id="390" type="java.lang.String">pListInstrName</key>
<value id="391" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="392">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="393" type="java.lang.String">CBA_Maturity_InstrList</value>
</value>
</entry>
<entry>
<key id="394" type="java.lang.String">pScheduleName</key>
<value id="395" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="396">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="397" type="java.lang.String">CBA_ReutersDSS_IntraDay_UnderlyingMaturity</value>
</value>
</entry>
</variables>
<version>13</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
