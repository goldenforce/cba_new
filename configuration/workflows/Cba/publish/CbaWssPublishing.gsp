<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.16">
<package-comment/>
<businessobject displayString="4 - 1.0.0.0" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">1.0.0.0</comment>
<endNode id="2">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="3">Stop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="4">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="5" type="java.util.HashSet">
<item id="6" type="com.j2fe.workflow.definition.Transition">
<name id="7">end-loop</name>
<source id="8">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="9">For Loop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.ForEach</nodeHandler>
<nodeHandlerClass id="10">com.j2fe.workflow.handler.impl.ForEach</nodeHandlerClass>
<parameters id="11" type="java.util.HashSet">
<item id="12" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="13">counter</name>
<stringValue id="14">counter</stringValue>
<type>VARIABLE</type>
</item>
<item id="15" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="16">counter</name>
<stringValue id="17">counter</stringValue>
<type>VARIABLE</type>
</item>
<item id="18" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="19">incrementValue</name>
<stringValue id="20">bulksize</stringValue>
<type>VARIABLE</type>
</item>
<item id="21" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="22">input</name>
<stringValue id="23">insertsqlarr</stringValue>
<type>VARIABLE</type>
</item>
<item id="24" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="25">outputObjects</name>
<stringValue id="26">sqls</stringValue>
<type>VARIABLE</type>
</item>
<item id="27" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="28">resetOnEnd</name>
<objectValue id="29" type="java.lang.Boolean">true</objectValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="30" type="java.util.HashSet">
<item id="31" type="com.j2fe.workflow.definition.Transition">
<name id="32">goto-next</name>
<source id="33">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="34">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="35">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="36" type="java.util.HashSet">
<item id="37" type="com.j2fe.workflow.definition.Transition">
<name id="38">goto-next</name>
<source id="39">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<directJoin>true</directJoin>
<name id="40">Synchronize</name>
<nodeHandler>com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandler>
<nodeHandlerClass id="41">com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandlerClass>
<sources id="42" type="java.util.HashSet">
<item id="43" type="com.j2fe.workflow.definition.Transition">
<name id="44">goto-next</name>
<source id="45">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="46">Write File</name>
<nodeHandler>com.j2fe.general.activities.File</nodeHandler>
<nodeHandlerClass id="47">com.j2fe.general.activities.File</nodeHandlerClass>
<parameters id="48" type="java.util.HashSet">
<item id="49" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="50">append</name>
<stringValue id="51">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="52" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="53">appendEOFLine</name>
<stringValue id="54">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="55" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="56">directory</name>
<stringValue id="57">/tmp</stringValue>
<type>CONSTANT</type>
</item>
<item id="58" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="59">fileName</name>
<stringValue id="60">insert.sql</stringValue>
<type>CONSTANT</type>
</item>
<item id="61" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="62">text</name>
<stringValue id="63">insert</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="64" type="java.util.HashSet">
<item id="65" type="com.j2fe.workflow.definition.Transition">
<name id="66">goto-next</name>
<source id="67">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<directJoin>true</directJoin>
<name id="68">For Each Split</name>
<nodeHandler>com.j2fe.workflow.handler.impl.GenericSplit</nodeHandler>
<nodeHandlerClass id="69">com.j2fe.workflow.handler.impl.GenericSplit</nodeHandlerClass>
<parameters id="70" type="java.util.HashSet">
<item id="71" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="72">input</name>
<stringValue id="73">sqls</stringValue>
<type>VARIABLE</type>
</item>
<item id="74" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="75">output</name>
<stringValue id="76">insert</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="77" type="java.util.HashSet">
<item id="78" type="com.j2fe.workflow.definition.Transition">
<name id="79">loop</name>
<source idref="8"/>
<target idref="67"/>
</item>
</sources>
<targets id="80" type="java.util.HashSet">
<item idref="65" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ANDSPLIT</type>
</source>
<target idref="45"/>
</item>
</sources>
<targets id="81" type="java.util.HashSet">
<item idref="43" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="39"/>
</item>
</sources>
<targets id="82" type="java.util.HashSet">
<item idref="37" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ANDJOIN</type>
</source>
<target idref="33"/>
</item>
<item id="83" type="com.j2fe.workflow.definition.Transition">
<name id="84">rows-found</name>
<source id="85">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="86">Database Select (Xor Split)</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="87">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="88" type="java.util.HashSet">
<item id="89" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="90">database</name>
<stringValue id="91">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="92" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="93">firstColumnsResult</name>
<stringValue id="94">insertsqlarr</stringValue>
<type>VARIABLE</type>
</item>
<item id="95" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="96">querySQL</name>
<objectValue id="97" type="java.lang.String">select &#13;
'Insert into MRU_RATE_CATEGORIES&#13;
   (RC_RATE_CATEGORY_ID, RC_RCT_CODE, RC_RPT_CODE, RC_RI_CODE, RC_RI_SUB_CODE, RC_TRM_TERM, RC_TRM_UNIT_INDICATOR, RC_TRM_TERM_FORWARD, RC_TRM_UNIT_INDICATOR_FORWARD, RC_ISS_MATURITY_DATE, RC_ISS_RATE)&#13;
values (''' || &#13;
rownum || ''', ''' ||&#13;
trim(ispc.prc_typ) || ''', ''' ||&#13;
isst.stat_char_val_txt || ''', ''' ||&#13;
       cbaast.cl_value || ''', ''' ||&#13;
       CBAISSUB.cl_value || ''', ' ||   &#13;
       'null, null, null, null'  || ', to_date(''' ||&#13;
       to_char(ispc.prc_tms, 'yyyy-mm-dd hh24:mi:ss')  || ''',''yyyy-mm-dd hh24:mi:ss''), ' ||&#13;
       ispc.unit_cprc || ')'&#13;
  FROM ft_t_isid isid,&#13;
       ft_t_gncm gncm,&#13;
       ft_t_iscl cbaast,&#13;
       ft_t_iscl CBAISSUB,&#13;
       ft_t_isgp isgp,&#13;
       ft_t_isgr isgr,&#13;
       ft_t_ispc ispc,&#13;
       ft_t_gpcs gpcs,&#13;
       ft_t_isst isst&#13;
 WHERE     &#13;
       isid.id_ctxt_typ = 'RATE_CAT_ID'&#13;
       AND isid.isid_oid = gncm.cross_ref_id&#13;
       AND gncm.comm_reas_mnem = 'IDPRCTYP'&#13;
--       AND isid.iss_id LIKE 'LN%'&#13;
       AND ispc.pped_oid = 'PPED==0001'&#13;
       AND isid.instr_id = cbaast.instr_id(+)&#13;
       AND 'CBAISS' = cbaast.INDUS_CL_SET_ID(+)&#13;
       AND isid.isid_oid = cbaast.isid_oid(+)&#13;
       AND isid.instr_id = CBAISSUB.instr_id(+)&#13;
       AND 'CBAISS' = CBAISSUB.INDUS_CL_SET_ID(+)&#13;
       AND isid.isid_oid = CBAISSUB.isid_oid(+)&#13;
--       and isgp.instr_id = isid.instr_id&#13;
       and ISGR.ISS_GRP_OID = isgp.prnt_iss_grp_oid&#13;
       and isgr.grp_nme = 'CBA Security Group for Testing'&#13;
       and isid.instr_id = ispc.instr_id&#13;
--       and ispc.prc_tms like sysdate - 6&#13;
--       and ispc.prc_typ in ('ASKED', 'BID', 'MID')&#13;
--       and ispc.addnl_prc_qual_typ = '1'&#13;
--       and trim(ispc.prc_typ) = gncm.cmnt_txt&#13;
--       and gncm.cmnt_txt in ('', '', 'MID')&#13;
       and prc_valid_typ &lt;&gt; 'IGNORE'&#13;
       and ispc.iss_prc_id = gpcs.iss_prc_id&#13;
       and ispc.instr_id = gpcs.instr_id&#13;
       --and isid.instr_id = 'uE9y33r8m1'&#13;
       and isid.instr_id = isst.instr_id (+)&#13;
       and 'RCPRCTYP' = isst.stat_def_id (+)</objectValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="98" type="java.util.HashSet">
<item id="99" type="com.j2fe.workflow.definition.Transition">
<name id="100">goto-next</name>
<source id="101">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<directJoin>false</directJoin>
<name id="102">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="103">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="104" type="java.util.HashSet"/>
<targets id="105" type="java.util.HashSet">
<item idref="99" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="85"/>
</item>
</sources>
<targets id="106" type="java.util.HashSet">
<item id="107" type="com.j2fe.workflow.definition.Transition">
<name id="108">nothing-found</name>
<source idref="85"/>
<target idref="2"/>
</item>
<item idref="83" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="33"/>
</item>
</sources>
<targets id="109" type="java.util.HashSet">
<item idref="31" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="8"/>
</item>
</sources>
<targets id="110" type="java.util.HashSet">
<item idref="6" type="com.j2fe.workflow.definition.Transition"/>
<item idref="78" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="2"/>
</item>
<item idref="107" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="111" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="112">Cba/publish</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="113">CBA_GC_OWN</lastChangeUser>
<lastUpdate id="114">2018-02-15T16:15:23.000+1100</lastUpdate>
<name id="115">CbaWssPublishing</name>
<optimize>true</optimize>
<parameter id="116" type="java.util.HashMap">
<entry>
<key id="117" type="java.lang.String">bulksize</key>
<value id="118" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="119">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="120" type="java.lang.String">pIssueGroupName</key>
<value id="121" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="122">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="123" type="java.lang.String">pPriceTms</key>
<value id="124" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="125">java.util.Date</className>
<clazz>java.util.Date</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="126" type="java.lang.String">pSnapName</key>
<value id="127" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="128">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="129" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="101"/>
<status>RELEASED</status>
<variables id="130" type="java.util.HashMap">
<entry>
<key id="131" type="java.lang.String">bulksize</key>
<value id="132" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="133">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
<value id="134" type="java.lang.Integer">500</value>
</value>
</entry>
<entry>
<key id="135" type="java.lang.String">counter</key>
<value id="136" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="137">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
<value id="138" type="java.lang.Integer">0</value>
</value>
</entry>
<entry>
<key id="139" type="java.lang.String">pIssueGroupName</key>
<value id="140" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="141">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="142" type="java.lang.String">pPriceTms</key>
<value id="143" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="144">java.util.Date</className>
<clazz>java.util.Date</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="145" type="java.lang.String">pSnapName</key>
<value id="146" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="147">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>4</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
