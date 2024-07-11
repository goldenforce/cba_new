<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.15">
<package-comment/>
<businessobject displayString="6 - Non Clustered Release" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>false</clustered>
<comment id="1">Non Clustered Release</comment>
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
<name id="19">Consolidate Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandler>
<nodeHandlerClass id="20">com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandlerClass>
<parameters id="21" type="java.util.HashSet">
<item id="22" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="23">jobId</name>
<stringValue id="24">JobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="25" type="java.util.HashSet">
<item id="26" type="com.j2fe.workflow.definition.Transition">
<name id="27">end-loop</name>
<source id="28">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="29">For Loop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.ForEach</nodeHandler>
<nodeHandlerClass id="30">com.j2fe.workflow.handler.impl.ForEach</nodeHandlerClass>
<parameters id="31" type="java.util.HashSet">
<item id="32" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="33">counter</name>
<stringValue id="34">Counter</stringValue>
<type>VARIABLE</type>
</item>
<item id="35" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="36">counter</name>
<stringValue id="37">Counter</stringValue>
<type>VARIABLE</type>
</item>
<item id="38" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="39">input</name>
<stringValue id="40">InputMessageArray</stringValue>
<type>VARIABLE</type>
</item>
<item id="41" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="42">output</name>
<stringValue id="43">Output</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="44" type="java.util.HashSet">
<item id="45" type="com.j2fe.workflow.definition.Transition">
<name id="46">ToSplit</name>
<source id="47">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="48">Automatically generated</description>
<directJoin>false</directJoin>
<name id="49">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="50">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="51" type="java.util.HashSet">
<item id="52" type="com.j2fe.workflow.definition.Transition">
<name id="53">goto-next</name>
<source id="54">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="55">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="56">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="57" type="java.util.HashSet">
<item id="58" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="59">configInfo</name>
<stringValue id="60">TriggerDeleteFUT1BB</stringValue>
<type>CONSTANT</type>
</item>
<item id="61" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="62">jobId</name>
<stringValue id="63">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="64" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="65">messageType</name>
<stringValue id="66">MessageType</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="67" type="java.util.HashSet">
<item id="68" type="com.j2fe.workflow.definition.Transition">
<name id="69">rows-found</name>
<source id="70">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="71">Fetch Tickers and Create Streerref</name>
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
<stringValue id="79">InputMessageArray</stringValue>
<type>VARIABLE</type>
</item>
<item id="80" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="81">querySQL</name>
<stringValue id="82">queryForStreetRef</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="83" type="java.util.HashSet">
<item id="84" type="com.j2fe.workflow.definition.Transition">
<name id="85">goto-next</name>
<source id="86">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="87">Create Sql for StreetRef</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="88">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="89" type="java.util.HashSet">
<item id="90" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="91">statements</name>
<objectValue id="92" type="java.lang.String">&#13;
String ticvaluesinselect = new String();&#13;
&#13;
//List ricsSplitted = new ArrayList();&#13;
&#13;
if(!(null == ticIds || ticIds.isEmpty()))&#13;
{&#13;
ticvaluesinselect = ticIds.trim();&#13;
&#13;
//ricsSplitted  = Arrays.asList(ticvaluesinselect.split(","));&#13;
}&#13;
&#13;
List ricsSplitted = Arrays.asList(ticvaluesinselect.split(","));&#13;
		String queryForStreetRef =  " SELECT  '&lt;?xml version=\"1.0\" encoding=\"UTF-8\"?&gt; "&#13;
				+" &lt;!DOCTYPE STREET_REF SYSTEM \"fti://repository/dtd/STREET_REF\"&gt;' || "&#13;
				        +" XMLElement(NAME \"STREET_REF\", "&#13;
				            +" XMLAttributes( 10000000 AS \"MESSAGE_ID\",'ISSU' AS \"MESSAGECONDITION\",'false' AS \"TRACE\",'GUEST' AS \"USERID\"), "&#13;
				            +" XMLElement(NAME \"HEADER\", "&#13;
				               +"  XMLElement(\"DATASOURCE\" ,XMLAttributes('BB' AS \"VALUE\")), "&#13;
				                +" XMLElement(\"MAIN_ENTITY_TBL_TYP\",XMLAttributes( 'ISSU' AS \"VALUE\")), "&#13;
				               +" XMLElement(\"MSGCLASSIFICATION\",XMLAttributes('BBRRPRC' AS \"VALUE\")), "&#13;
				               +" XMLElement(\"USERID\",XMLAttributes( 'BB' AS \"VALUE\")), "&#13;
				               +" XMLElement(\"MAIN_ENTITY_ID_CTXT_TYP\",XMLAttributes( 'TICKER' AS \"VALUE\")), "&#13;
				               +" XMLElement(\"MAIN_ENTITY_ID\",XMLAttributes(TRIM(Substr(A.FUT_CHAIN,0, Instr(A.FUT_CHAIN, ' '))) AS \"VALUE\")) "&#13;
				                  +"     ), "&#13;
				               +" XMLElement(\"SEGMENT\", "&#13;
				+"                            XMLAttributes( 'Issue' AS \"TYPE\",'REFERENCE' AS \"ACTION\"), "&#13;
				   +"                         XMLElement(\"Issue\", "&#13;
				      +"                         XMLElement(\"INSTRID\",XMLAttributes( B.INSTR_ID AS \"VALUE\")) "&#13;
				         +"                             ) "&#13;
				            +"              ),     "&#13;
				+"                XMLElement(\"SEGMENT\", "&#13;
				   +"                         XMLAttributes( 'IssueIdentifier' AS \"TYPE\",'REFERENCE' AS \"ACTION\"), "&#13;
				      +"                      XMLElement(\"IssueIdentifier\", "&#13;
				         +"                      XMLElement(\"INSTRID\",XMLAttributes( B.INSTR_ID AS \"VALUE\")), "&#13;
				            +"                   XMLElement(\"IDCTXTTYP\",XMLAttributes( B.ID_CTXT_TYP AS \"VALUE\")), "&#13;
				               +"                XMLElement(\"ISSID\",XMLAttributes( B.ISS_ID AS \"VALUE\"))                              "&#13;
				                  +"                    ) "&#13;
				                     +"     ),  "&#13;
				+"              XMLElement(\"SEGMENT\", "&#13;
				   +"                         XMLAttributes( 'FutureComodityFieldOfinterest' AS \"TYPE\",'DELETE' AS \"ACTION\"), "&#13;
				      +"                      XMLElement(\"FutureComodityFieldOfinterest\", "&#13;
				         +"                      XMLElement(\"TICKERID\",XMLAttributes( A.TICKER_ID AS \"VALUE\")), "&#13;
				            +"                   XMLElement(\"FUTCHAIN\",XMLAttributes( A.FUT_CHAIN AS \"VALUE\")) "&#13;
				               +"                       ) "&#13;
				                  +"        ) "&#13;
				+" )  "&#13;
				+" FROM FT_t_FUT1 A , FT_t_ISID B WHERE (A.END_TMS &gt; SYSDATE OR A.END_TMS IS NULL)  "&#13;
				+" AND (B.END_TMS &gt; SYSDATE OR B.END_TMS IS NULL) AND B.ID_CTXT_TYP='TICKER' "&#13;
				+" AND TRIM(Substr(A.FUT_CHAIN,0, Instr(A.FUT_CHAIN, ' '))) = B.ISS_ID AND A.TICKER_ID  in ("+ticvaluesinselect+")";</objectValue>
<type>CONSTANT</type>
</item>
<item id="93" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="94">variables["queryForStreetRef"]</name>
<stringValue id="95">queryForStreetRef</stringValue>
<type>VARIABLE</type>
</item>
<item id="96" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="97">variables["ticIds"]</name>
<stringValue id="98">TicIds</stringValue>
<type>VARIABLE</type>
</item>
<item id="99" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="100">variables["ticvaluesinselect"]</name>
<stringValue id="101">ticvaluesinselect</stringValue>
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
<target idref="86"/>
</item>
</sources>
<targets id="110" type="java.util.HashSet">
<item idref="84" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="70"/>
</item>
</sources>
<targets id="111" type="java.util.HashSet">
<item id="112" type="com.j2fe.workflow.definition.Transition">
<name id="113">nothing-found</name>
<source idref="70"/>
<target idref="2"/>
</item>
<item idref="68" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="54"/>
</item>
</sources>
<targets id="114" type="java.util.HashSet">
<item idref="52" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="47"/>
</item>
<item id="115" type="com.j2fe.workflow.definition.Transition">
<name id="116">goto-next</name>
<source id="117">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="118">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="119">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="120" type="java.util.HashSet">
<item id="121" type="com.j2fe.workflow.definition.Transition">
<name id="122">goto-next</name>
<source id="123">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="124">Call Subworkflow</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="125">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="126" type="java.util.HashSet">
<item id="127" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="128">["Message"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="129">input["Message"]</name>
<stringValue id="130">Output</stringValue>
<type>VARIABLE</type>
</item>
<item id="131" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="132">["MessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="133">input["MessageType"]</name>
<stringValue id="134">MessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="135" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="136">["TransactionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="137">input["TransactionId"]</name>
<stringValue id="138">TransactionID</stringValue>
<type>VARIABLE</type>
</item>
<item id="139" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="140">name</name>
<stringValue id="141">Basic Message Processing</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="142" type="java.util.HashSet">
<item id="143" type="com.j2fe.workflow.definition.Transition">
<name id="144">goto-next</name>
<source id="145">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="146">Create Transaction</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateTransaction</nodeHandler>
<nodeHandlerClass id="147">com.j2fe.streetlamp.activities.CreateTransaction</nodeHandlerClass>
<parameters id="148" type="java.util.HashSet">
<item id="149" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="150">jobId</name>
<stringValue id="151">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="152" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="153">messageType</name>
<stringValue id="154">MessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="155" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="156">transactionId</name>
<stringValue id="157">TransactionID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="158" type="java.util.HashSet">
<item id="159" type="com.j2fe.workflow.definition.Transition">
<name id="160">loop</name>
<source idref="28"/>
<target idref="145"/>
</item>
</sources>
<targets id="161" type="java.util.HashSet">
<item idref="143" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="123"/>
</item>
</sources>
<targets id="162" type="java.util.HashSet">
<item idref="121" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="117"/>
</item>
</sources>
<targets id="163" type="java.util.HashSet">
<item idref="115" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="47"/>
</item>
</sources>
<targets id="164" type="java.util.HashSet">
<item idref="45" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="28"/>
</item>
</sources>
<targets id="165" type="java.util.HashSet">
<item idref="26" type="com.j2fe.workflow.definition.Transition"/>
<item idref="159" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="18"/>
</item>
</sources>
<targets id="166" type="java.util.HashSet">
<item idref="16" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="8"/>
</item>
</sources>
<targets id="167" type="java.util.HashSet">
<item idref="6" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
<item idref="112" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="168" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="169">Cba/FutureRolling</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="170">user1</lastChangeUser>
<lastUpdate id="171">2018-05-08T14:20:04.000+1000</lastUpdate>
<name id="172">CBACustom_WF_DeleteFUT1BB</name>
<optimize>true</optimize>
<parameter id="173" type="java.util.HashMap">
<entry>
<key id="174" type="java.lang.String">MessageType</key>
<value id="175" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="176">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="177" type="java.lang.String">TicIds</key>
<value id="178" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="179">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="180" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="105"/>
<status>RELEASED</status>
<variables id="181" type="java.util.HashMap">
<entry>
<key id="182" type="java.lang.String">BulkSize</key>
<value id="183" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="184">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
<value id="185" type="java.lang.Integer">500</value>
</value>
</entry>
<entry>
<key id="186" type="java.lang.String">Counter</key>
<value id="187" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="188">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
<value id="189" type="java.lang.Integer">0</value>
</value>
</entry>
<entry>
<key id="190" type="java.lang.String">JobID</key>
<value id="191" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="192">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="193" type="java.lang.String">MessageType</key>
<value id="194" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="195">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="196" type="java.lang.String">REAL</value>
</value>
</entry>
<entry>
<key id="197" type="java.lang.String">TicIds</key>
<value id="198" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="199">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>6</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
