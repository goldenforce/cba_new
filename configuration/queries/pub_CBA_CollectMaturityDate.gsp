<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.15">
<package-comment/>
<businessobject displayString="pub_CBA_CollectMaturityDate" type="com.j2fe.translation.template.QueryDefinition">
<com.j2fe.translation.template.QueryDefinition id="0">
<name id="1">pub_CBA_CollectMaturityDate</name>
<parameters id="2" type="java.util.ArrayList">
<item id="3" type="com.j2fe.translation.template.QueryParameter">
<description id="4">Group Name</description>
<name id="5">p_GRP_NME</name>
<type>12</type>
</item>
<item id="6" type="com.j2fe.translation.template.QueryParameter">
<description id="7">Action</description>
<name id="8">p_ACTION_TYP</name>
<type>12</type>
</item>
<item id="9" type="com.j2fe.translation.template.QueryParameter">
<description id="10">Schedule Name</description>
<name id="11">p_BTH_NME</name>
<type>12</type>
</item>
<item id="12" type="com.j2fe.translation.template.QueryParameter">
<description id="13">Processing Date</description>
<name id="14">p_PROCESSING_DATE</name>
<type>91</type>
</item>
</parameters>
<text id="15">DECLARE&#13;
&#13;
  p_GRP_NME           VARCHAR2(1000);&#13;
  p_ACTION_TYP        VARCHAR2(10);&#13;
  p_BTH_NME           VARCHAR2(1008);&#13;
  p_PROCESSING_DATE DATE;&#13;
BEGIN&#13;
--    p_GRP_NME           := 'SYD_MAT_DSS_1215_INTRDAY';&#13;
--    p_ACTION_TYP        := 'I';&#13;
--    p_BTH_NME           :='GS Schedule Name';&#13;
  &#13;
  p_GRP_NME           :=?;&#13;
  p_ACTION_TYP        :=?;&#13;
  p_BTH_NME           :=?;&#13;
  p_PROCESSING_DATE	  :=?;&#13;
  IF(p_GRP_NME        IS NOT NULL) THEN&#13;
    INSERT&#13;
    --INTO GS_RATE_DATES_RECEIVING_AREAS&#13;
    INTO MRU_GS_RATE_DATES_REC_AREAS&#13;
      (&#13;
       GSRD_ACTION ,&#13;
      GSRD_BATCH_NAME ,&#13;
      GSRD_RATE_CATEGORY_ID ,&#13;
      GSRD_REFERENCE_DATE ,&#13;
      GSRD_MATURITY_DATE ,&#13;
      GSRD_GS_STATUS ,&#13;
      GSRD_ARRIVAL_TIMESTAMP,&#13;
      GSRD_PROCESSING_STATUS,&#13;
      GSRD_PROCESSING_MESSAGE&#13;
      )&#13;
    SELECT DISTINCT p_ACTION_TYP GSRD_ACTION ,p_BTH_NME GSRD_BATCH_NAME ,ISS_ID GSRD_RATE_CATEGORY_ID ,&#13;
     p_PROCESSING_DATE GSRD_REFERENCE_DATE,&#13;
  	TO_DATE( to_char(to_date(ISST.STAT_CHAR_VAL_TXT,'Mon-YY'),'DD/MM/YYYY'),'DD/MM/YYYY')  GSRD_MATURITY_DATE ,&#13;
  	'Z' GSRD_GS_STATUS,SYSDATE GSRD_ARRIVAL_TIMESTAMP,'' GSRD_PROCESSING_STATUS,'' GSRD_PROCESSING_MESSAGE&#13;
      FROM FT_T_ISGR ISGR, FT_t_ISGP ISGP, FT_T_ISST ISST,FT_T_ISID RATECATID&#13;
      WHERE (ISGR.END_TMS IS NULL OR ISGR.END_TMS &gt; SYSDATE)  AND&#13;
       (ISGP.END_TMS IS NULL OR ISGP.END_TMS &gt; SYSDATE) AND&#13;
       (ISST.END_TMS IS NULL OR ISST.END_TMS &gt; SYSDATE) AND&#13;
       (RATECATID.END_TMS IS NULL OR RATECATID.END_TMS &gt; SYSDATE) AND&#13;
        ISGR.GRP_NME=p_GRP_NME AND ISGR.ISS_GRP_OID = ISGP.PRNT_ISS_GRP_OID AND&#13;
         RATECATID.ID_CTXT_TYP='RATE_CAT_ID' AND --AND ISS_USAGE_TYP='MID'&#13;
        RATECATID.INSTR_ID = ISGP.INSTR_ID AND ISGP.ISID_OID = RATECATID.ISID_OID AND&#13;
        ISST.INSTR_ID=RATECATID.INSTR_ID AND ISST.STAT_DEF_ID='MATDATE' --AND TRUNC(ISST.START_TMS) = TRUNC(SYSDATE)&#13;
        ;&#13;
             &#13;
  END IF;&#13;
END;&#13;
</text>
</com.j2fe.translation.template.QueryDefinition>
</businessobject>
</goldensource-package>
