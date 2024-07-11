<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.15">
<package-comment/>
<businessobject displayString="6 - PublishManualPrices" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>true</alwaysPersist>
<clustered>true</clustered>
<comment id="1">PublishManualPrices</comment>
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
<name id="9">Audit</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="10">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="11" type="java.util.HashSet">
<item id="12" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="13">["AUDIT_ID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="14">input["AUDIT_ID"]</name>
<stringValue id="15">PreviousTokenId</stringValue>
<type>VARIABLE</type>
</item>
<item id="16" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="17">["End"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="18">input["End"]</name>
<objectValue id="19" type="java.lang.Boolean">true</objectValue>
<type>CONSTANT</type>
</item>
<item id="20" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="21">["Payload"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="22">input["Payload"]</name>
<stringValue id="23">PayLoad</stringValue>
<type>VARIABLE</type>
</item>
<item id="24" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="25">["auditFlag"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="26">input["auditFlag"]</name>
<objectValue idref="19"/>
<type>CONSTANT</type>
</item>
<item id="27" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="28">["workflowName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="29">input["workflowName"]</name>
<stringValue id="30">Pricing Review And Approval</stringValue>
<type>CONSTANT</type>
</item>
<item id="31" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="32">name</name>
<stringValue id="33">InsertAudit</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="34" type="java.util.HashSet">
<item id="35" type="com.j2fe.workflow.definition.Transition">
<name id="36">goto-next</name>
<source id="37">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="38">Call Subworkflow</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="39">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="40" type="java.util.HashSet">
<item id="41" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="42">["pPreviousTokenId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="43">input["pPreviousTokenId"]</name>
<stringValue id="44">PreviousTokenId</stringValue>
<type>VARIABLE</type>
</item>
<item id="45" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="46">["pQueryName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="47">input["pQueryName"]</name>
<stringValue id="48">pub_CBA_Manual_Golden_Price</stringValue>
<type>CONSTANT</type>
</item>
<item id="49" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="50">name</name>
<stringValue id="51">CbaManualGoldenPricePublish</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="52" type="java.util.HashSet">
<item id="53" type="com.j2fe.workflow.definition.Transition">
<name id="54">completed</name>
<source id="55">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="56">UIA - Approval</name>
<nodeHandler>com.j2fe.workstation.activities.UserInteraction</nodeHandler>
<nodeHandlerClass id="57">com.j2fe.workstation.activities.UserInteraction</nodeHandlerClass>
<parameters id="58" type="java.util.HashSet">
<item id="59" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="60">actionType</name>
<objectValue id="61" type="com.j2fe.workstation.activities.UserInteraction$ActionType">EDITPYLD</objectValue>
<type>CONSTANT</type>
</item>
<item id="62" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="63">assigneeGroupId</name>
<stringValue id="64">assigneeGroupId</stringValue>
<type>VARIABLE</type>
</item>
<item id="65" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="66">assigneeId</name>
<stringValue id="67">assigneeId</stringValue>
<type>VARIABLE</type>
</item>
<item id="68" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="69">comment</name>
<stringValue id="70">Worklist_Comment</stringValue>
<type>VARIABLE</type>
</item>
<item id="71" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="72">createdUserId</name>
<stringValue id="73">createdUserId</stringValue>
<type>VARIABLE</type>
</item>
<item id="74" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="75">entityIdentifiers</name>
<stringValue id="76">EntityId</stringValue>
<type>VARIABLE</type>
</item>
<item id="77" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="78">feature</name>
<stringValue id="79">UIA</stringValue>
<type>CONSTANT</type>
</item>
<item id="80" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="81">group</name>
<stringValue id="82">currentUserRole</stringValue>
<type>VARIABLE</type>
</item>
<item id="83" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="84">instruction</name>
<stringValue id="85">Worklist_Comment</stringValue>
<type>VARIABLE</type>
</item>
<item id="86" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="87">lastChgUsrId</name>
<stringValue id="88">lastChangedUserId</stringValue>
<type>VARIABLE</type>
</item>
<item id="89" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="90">lastChgUsrId</name>
<stringValue id="91">lastChangedUserId</stringValue>
<type>VARIABLE</type>
</item>
<item id="92" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="93">mainCrossRefId</name>
<stringValue id="94">MainCrossRefId</stringValue>
<type>VARIABLE</type>
</item>
<item id="95" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="96">mainEntityId</name>
<stringValue id="97">MainEntityID</stringValue>
<type>VARIABLE</type>
</item>
<item id="98" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="99">mainEntityIdContextType</name>
<stringValue id="100">MainEntityIdCtxtTyp</stringValue>
<type>VARIABLE</type>
</item>
<item id="101" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="102">mainEntityName</name>
<stringValue id="103">MainEntityNme</stringValue>
<type>VARIABLE</type>
</item>
<item id="104" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="105">mainEntityTableId</name>
<stringValue id="106">MainEntityTblID</stringValue>
<type>VARIABLE</type>
</item>
<item id="107" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="108">modelIdentifier</name>
<stringValue id="109">ModelId</stringValue>
<type>VARIABLE</type>
</item>
<item id="110" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="111">payload</name>
<stringValue id="112">PayLoad</stringValue>
<type>VARIABLE</type>
</item>
<item id="113" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="114">payload</name>
<stringValue id="115">PayLoad</stringValue>
<type>VARIABLE</type>
</item>
<item id="116" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="117">previousTokenId</name>
<stringValue id="118">PreviousTokenId</stringValue>
<type>VARIABLE</type>
</item>
<item id="119" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="120">reassignedToUserGroupId</name>
<stringValue id="121">assigneeGroupId</stringValue>
<type>VARIABLE</type>
</item>
<item id="122" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="123">reassignedToUserId</name>
<stringValue id="124">assigneeId</stringValue>
<type>VARIABLE</type>
</item>
<item id="125" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="126">submitAction</name>
<objectValue id="127" type="com.j2fe.workstation.activities.UserInteraction$SubmitAction">ENGINE</objectValue>
<type>CONSTANT</type>
</item>
<item id="128" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="129">suspensible</name>
<objectValue idref="19"/>
<type>CONSTANT</type>
</item>
<item id="130" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="131">taskId</name>
<stringValue id="132">TaskId</stringValue>
<type>VARIABLE</type>
</item>
<item id="133" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="134">tokenId</name>
<stringValue id="135">PreviousTokenId</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="136" type="java.util.HashSet">
<item id="137" type="java.lang.String">PreviousTokenId
0100</item>
</persistentVariables>
<sources id="138" type="java.util.HashSet">
<item id="139" type="com.j2fe.workflow.definition.Transition">
<name id="140">goto-next</name>
<source id="141">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="142">Automatically generated</description>
<directJoin>false</directJoin>
<name id="143">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="144">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="145" type="java.util.HashSet">
<item id="146" type="com.j2fe.workflow.definition.Transition">
<name id="147">goto-next</name>
<source id="148">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="149">Bean Shell Script (Standard)</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="150">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="151" type="java.util.HashSet">
<item id="152" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="153">statements</name>
<stringValue id="154">String assigneeId;



String assigneeGroupId;



String PreviousTokenId;







currentUserRole = UserRole;



lastChangedUserId = UserName;



createdUserId = UserName;



Map entityId = EntityId;</stringValue>
<type>CONSTANT</type>
</item>
<item id="155" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="156">["EntityId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="157">variables["EntityId"]</name>
<stringValue id="158">EntityId</stringValue>
<type>VARIABLE</type>
</item>
<item id="159" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="160">variables["PreviousTokenId"]</name>
<stringValue id="161">PreviousTokenId</stringValue>
<type>VARIABLE</type>
</item>
<item id="162" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="163">["UserName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="164">variables["UserName"]</name>
<stringValue id="165">UserName</stringValue>
<type>VARIABLE</type>
</item>
<item id="166" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="167">["UserRole"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="168">variables["UserRole"]</name>
<stringValue id="169">UserRole</stringValue>
<type>VARIABLE</type>
</item>
<item id="170" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="171">["assigneeGroupId"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="172">variables["assigneeGroupId"]</name>
<stringValue id="173">assigneeGroupId</stringValue>
<type>VARIABLE</type>
</item>
<item id="174" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="175">["assigneeId"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="176">variables["assigneeId"]</name>
<stringValue id="177">assigneeId</stringValue>
<type>VARIABLE</type>
</item>
<item id="178" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="179">["createdUserId"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="180">variables["createdUserId"]</name>
<stringValue id="181">createdUserId</stringValue>
<type>VARIABLE</type>
</item>
<item id="182" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="183">["currentUserRole"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="184">variables["currentUserRole"]</name>
<stringValue id="185">currentUserRole</stringValue>
<type>VARIABLE</type>
</item>
<item id="186" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="187">["entityId"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="188">variables["entityId"]</name>
<stringValue id="189">entityId</stringValue>
<type>VARIABLE</type>
</item>
<item id="190" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="191">["lastChangedUserId"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="192">variables["lastChangedUserId"]</name>
<stringValue id="193">lastChangedUserId</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="194" type="java.util.HashSet">
<item id="195" type="com.j2fe.workflow.definition.Transition">
<name id="196">goto-next</name>
<source id="197">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="198">Update GPCS.UIWA_STAT_IND</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="199">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="200" type="java.util.HashSet">
<item id="201" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="202">database</name>
<stringValue id="203">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="204" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="205">[0]@java/lang/Float@</UITypeHint>
<input>true</input>
<name id="206">indexedParameters[0]</name>
<stringValue id="207">ModifiedUnitPrice</stringValue>
<type>VARIABLE</type>
</item>
<item id="208" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="209">[1]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="210">indexedParameters[1]</name>
<stringValue id="211">CommentText</stringValue>
<type>VARIABLE</type>
</item>
<item id="212" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="213">[2]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="214">indexedParameters[2]</name>
<stringValue id="215">MainCrossRefId</stringValue>
<type>VARIABLE</type>
</item>
<item id="216" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="217">querySQL</name>
<stringValue id="218">update ft_t_gpcs gpcs set gpcs.uiwa_stat_ind = 'Y', gpcs.mod_prc_dtl_txt= ?, gpcs.cmnt_txt = ?,gpcs.last_chg_tms=sysdate where gpcs.gpcs_oid = ?</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="219" type="java.util.HashSet">
<item id="220" type="com.j2fe.workflow.definition.Transition">
<name id="221">goto-next</name>
<source id="222">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="223">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="224">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="225" type="java.util.HashSet"/>
<targets id="226" type="java.util.HashSet">
<item idref="220" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="197"/>
</item>
</sources>
<targets id="227" type="java.util.HashSet">
<item idref="195" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="148"/>
</item>
</sources>
<targets id="228" type="java.util.HashSet">
<item idref="146" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="141"/>
</item>
</sources>
<targets id="229" type="java.util.HashSet">
<item idref="139" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="55"/>
</item>
</sources>
<targets id="230" type="java.util.HashSet">
<item idref="53" type="com.j2fe.workflow.definition.Transition"/>
<item id="231" type="com.j2fe.workflow.definition.Transition">
<name id="232">reassignment</name>
<source idref="55"/>
<target idref="8"/>
</item>
<item id="233" type="com.j2fe.workflow.definition.Transition">
<name id="234">rejected</name>
<source idref="55"/>
<target id="235">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="236">Database Select (Xor Split)</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="237">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="238" type="java.util.HashSet">
<item id="239" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="240">database</name>
<stringValue id="241">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="242" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="243">firstColumnsResult</name>
<stringValue id="244">EmailID</stringValue>
<type>VARIABLE</type>
</item>
<item id="245" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="246">indexedParameters[0]</name>
<stringValue id="247">MainCrossRefId</stringValue>
<type>VARIABLE</type>
</item>
<item id="248" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="249">querySQL</name>
<stringValue id="250">SELECT DISTINCT Nvl(e_mail_addr_txt,alt_e_mail_addr_txt) emaillist &#13;
FROM ft_wf_uiwa uiwa, fT_T_ccrf ccrf, fT_T_adtp adtp ,fT_T_eadr eadr&#13;
WHERE 1=1&#13;
AND main_cross_ref_id=? &#13;
--AND user_instruc_txt IS NULL&#13;
AND asgn_ausr_oid=ccrf.ausr_oid&#13;
AND ccrf.cntl_cross_ref_oid=adtp.cntl_cross_ref_oid&#13;
AND adtp.elec_addr_id=eadr.elec_addr_id&#13;
</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="251" type="java.util.HashSet">
<item idref="233" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="252" type="java.util.HashSet">
<item id="253" type="com.j2fe.workflow.definition.Transition">
<name id="254">nothing-found</name>
<source idref="235"/>
<target id="255">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="256">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="257">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="258" type="java.util.HashSet">
<item id="259" type="com.j2fe.workflow.definition.Transition">
<name id="260">goto-next</name>
<source id="261">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="262">Notify Maker</name>
<nodeHandler>com.j2fe.general.activities.EMAIL</nodeHandler>
<nodeHandlerClass id="263">com.j2fe.general.activities.EMAIL</nodeHandlerClass>
<parameters id="264" type="java.util.HashSet">
<item id="265" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="266">emailText</name>
<stringValue id="267">This is to notify you that the Prices updated by you have been rejected by the authority. &#13;
&#13;
Kindly take the necessary actions.</stringValue>
<type>CONSTANT</type>
</item>
<item id="268" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="269">from</name>
<stringValue id="270">no-reply@thegoldensource.com</stringValue>
<type>CONSTANT</type>
</item>
<item id="271" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="272">recipients</name>
<stringValue id="273">EmailID</stringValue>
<type>VARIABLE</type>
</item>
<item id="274" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="275">session</name>
<stringValue id="276">email/session</stringValue>
<type>REFERENCE</type>
</item>
<item id="277" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="278">subject</name>
<stringValue id="279">REJECTED :Price Updation</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="280" type="java.util.HashSet">
<item id="281" type="com.j2fe.workflow.definition.Transition">
<name id="282">rows-found</name>
<source idref="235"/>
<target idref="261"/>
</item>
</sources>
<targets id="283" type="java.util.HashSet">
<item idref="259" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="255"/>
</item>
<item idref="253" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="284" type="java.util.HashSet">
<item id="285" type="com.j2fe.workflow.definition.Transition">
<name id="286">goto-next</name>
<source idref="255"/>
<target idref="2"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="281" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</target>
</item>
<item id="287" type="com.j2fe.workflow.definition.Transition">
<name id="288">terminated</name>
<source idref="55"/>
<target idref="2"/>
</item>
<item id="289" type="com.j2fe.workflow.definition.Transition">
<name id="290">timeout</name>
<source idref="55"/>
<target idref="2"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="37"/>
</item>
</sources>
<targets id="291" type="java.util.HashSet">
<item idref="35" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="8"/>
</item>
<item idref="231" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="292" type="java.util.HashSet">
<item idref="6" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
<item idref="285" type="com.j2fe.workflow.definition.Transition"/>
<item idref="287" type="com.j2fe.workflow.definition.Transition"/>
<item idref="289" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="293" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="294">Workstation User</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="295">user1</lastChangeUser>
<lastUpdate id="296">2018-04-11T18:31:01.000+1000</lastUpdate>
<name id="297">Pricing Review And Approval</name>
<optimize>true</optimize>
<parameter id="298" type="java.util.HashMap">
<entry>
<key id="299" type="java.lang.String">CommentText</key>
<value id="300" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="301">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="302" type="java.lang.String">DownstreamSystemId</key>
<value id="303" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="304">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="305" type="java.lang.String">EntityId</key>
<value id="306" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="307">java.util.Map</className>
<clazz>java.util.Map</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="308" type="java.lang.String">MainCrossRefId</key>
<value id="309" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="310">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="311" type="java.lang.String">MainEntityID</key>
<value id="312" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="313">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="314" type="java.lang.String">MainEntityIdCtxtTyp</key>
<value id="315" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="316">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="317" type="java.lang.String">MainEntityNme</key>
<value id="318" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="319">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="320" type="java.lang.String">MainEntityTblID</key>
<value id="321" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="322">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="323" type="java.lang.String">ModelId</key>
<value id="324" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="325">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="326" type="java.lang.String">ModifiedUnitPrice</key>
<value id="327" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="328">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="329" type="java.lang.String">PayLoad</key>
<value id="330" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="331">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="332" type="java.lang.String">URL</key>
<value id="333" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="334">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="335" type="java.lang.String">UserAction</key>
<value id="336" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="337">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="338" type="java.lang.String">UserName</key>
<value id="339" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="340">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="341" type="java.lang.String">UserRole</key>
<value id="342" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="343">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="344" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>false</purgeAtEnd>
<retries>0</retries>
<startNode idref="222"/>
<status>RELEASED</status>
<variables id="345" type="java.util.HashMap">
<entry>
<key id="346" type="java.lang.String">CommentText</key>
<value id="347" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="348">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="349" type="java.lang.String">DownstreamSystemId</key>
<value id="350" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="351">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="352" type="java.lang.String">EntityId</key>
<value id="353" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="354">java.util.Map</className>
<clazz>java.util.Map</clazz>
<persistent>true</persistent>
</value>
</entry>
<entry>
<key id="355" type="java.lang.String">MainCrossRefId</key>
<value id="356" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="357">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="358" type="java.lang.String">MainEntityID</key>
<value id="359" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="360">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="361" type="java.lang.String">MainEntityIdCtxtTyp</key>
<value id="362" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="363">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="364" type="java.lang.String">MainEntityNme</key>
<value id="365" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="366">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="367" type="java.lang.String">MainEntityTblID</key>
<value id="368" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="369">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="370" type="java.lang.String">ModelId</key>
<value id="371" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="372">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="373" type="java.lang.String">ModifiedUnitPrice</key>
<value id="374" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="375">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="376" type="java.lang.String">PayLoad</key>
<value id="377" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="378">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="379" type="java.lang.String">TaskId</key>
<value id="380" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="381">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>true</persistent>
<value id="382" type="java.lang.String">PRICE_ASSIGNMENT</value>
</value>
</entry>
<entry>
<key id="383" type="java.lang.String">URL</key>
<value id="384" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="385">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="386" type="java.lang.String">http://&lt;machine_name&gt;:&lt;port&gt;/&lt;context&gt;</value>
</value>
</entry>
<entry>
<key id="387" type="java.lang.String">UserAction</key>
<value id="388" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="389">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="390" type="java.lang.String">UserName</key>
<value id="391" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="392">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="393" type="java.lang.String">UserRole</key>
<value id="394" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="395">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="396" type="java.lang.String">WFEAList</key>
<value id="397" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="398">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<description id="399">WFEAList</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="400" type="java.lang.String">createdUserId</key>
<value id="401" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="402">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="403" type="java.lang.String">currentUserRole</key>
<value id="404" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="405">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="406" type="java.lang.String">entityId</key>
<value id="407" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="408">java.util.Map</className>
<clazz>java.util.Map</clazz>
<persistent>true</persistent>
</value>
</entry>
<entry>
<key id="409" type="java.lang.String">lastChangedUserId</key>
<value id="410" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="411">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>6</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
