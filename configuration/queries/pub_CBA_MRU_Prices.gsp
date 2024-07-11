<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.15">
<package-comment/>
<businessobject displayString="pub_CBA_MRU_Prices" type="com.j2fe.translation.template.QueryDefinition">
<com.j2fe.translation.template.QueryDefinition id="0">
<name id="1">pub_CBA_MRU_Prices</name>
<parameters id="2" type="java.util.ArrayList">
<item id="3" type="com.j2fe.translation.template.QueryParameter">
<name id="4">snap_name</name>
<type>12</type>
</item>
<item id="5" type="com.j2fe.translation.template.QueryParameter">
<name id="6">group_name</name>
<type>12</type>
</item>
<item id="7" type="com.j2fe.translation.template.QueryParameter">
<name id="8">action_type</name>
<type>12</type>
</item>
<item id="9" type="com.j2fe.translation.template.QueryParameter">
<name id="10">price_date</name>
<type>12</type>
</item>
</parameters>
<text id="11">DECLARE&#13;
  p_SNAP_NME          VARCHAR2(1000);&#13;
  p_GRP_NME           VARCHAR2(1000);&#13;
  p_ACTION_TYP        VARCHAR2(10);&#13;
  p_EVALUATION_TO_TMS VARCHAR2(8);&#13;
  v_BTH_NME           VARCHAR2(1008);&#13;
BEGIN&#13;
--    p_SNAP_NME          := 'SY';&#13;
--    p_GRP_NME           := 'SYD_FX_1100';&#13;
--    p_ACTION_TYP        := 'I';&#13;
--    p_EVALUATION_TO_TMS := '20180418';&#13;
  p_SNAP_NME          :=?;&#13;
  p_GRP_NME           :=?;&#13;
  p_ACTION_TYP        :=?;&#13;
  p_EVALUATION_TO_TMS :=?;&#13;
  v_BTH_NME           := p_GRP_NME;&#13;
  IF(p_GRP_NME        IS NOT NULL) THEN&#13;
    INSERT&#13;
    --INTO GS_PRICES_RECEIVING_AREAS&#13;
    --INTO GS_PRICES_RECEIVING_AREAS@MRU_STAGING.CBA.COM.AU&#13;
    INTO MRU_GS_PRICES_RECEIVING_AREAS&#13;
      (&#13;
        GSP_ACTION,&#13;
        GSP_BATCH_NAME,&#13;
        GSP_RC_RATE_CATEGORY_ID,&#13;
        GSP_REFERENCE_DATE,&#13;
        GSP_RATE_SOURCE_CODE,&#13;
        GSP_PRICE,&#13;
        GSP_GS_STATUS,&#13;
        GSP_ARRIVAL_TIMESTAMP,&#13;
        GSP_PROCESSING_STATUS,&#13;
        GSP_PROCESSING_MESSAGE&#13;
      )&#13;
    SELECT DISTINCT p_ACTION_TYP,&#13;
      v_BTH_NME,&#13;
      isid1.iss_id,&#13;
      gpcs1.prc_tms,&#13;
      nvl(isid1.cmnt_txt, isid1.iss_usage_typ),&#13;
      gpcs1.unit_cprc,&#13;
      'Z',&#13;
      SYSDATE,&#13;
      NULL,&#13;
      NULL&#13;
    FROM&#13;
	  (SELECT isid.instr_id,&#13;
	    isid.iss_usage_typ,&#13;
	    isid.iss_id,&#13;
	    gncm.cmnt_txt&#13;
	  FROM ft_t_isid isid,&#13;
	    ft_t_isgp isgp,&#13;
	    ft_t_isgr isgr,&#13;
	    ft_t_isgp childisgp,&#13;
	    ft_t_gncm gncm&#13;
	  WHERE isid.id_ctxt_typ     = 'RATE_CAT_ID'&#13;
	  AND isgr.grp_nme           = p_GRP_NME&#13;
	  AND childisgp.prt_purp_typ = 'PUBLISH'&#13;
	  AND childisgp.instr_id     = isid.instr_id&#13;
	  AND isgr.iss_grp_oid       = isgp.prnt_iss_grp_oid&#13;
	  AND isgp.iss_grp_oid       = childisgp.prnt_iss_grp_oid&#13;
	  AND childisgp.isid_oid     = isid.isid_oid&#13;
	  AND isid.isid_oid          = gncm.cross_ref_id (+)&#13;
	  AND 'RCRCTCDE'             = gncm.comm_reas_mnem (+)&#13;
      ) isid1&#13;
    --LEFT JOIN&#13;
      JOIN&#13;
      (&#13;
      SELECT gpcs.instr_id,&#13;
        gpcs.prc_tms,&#13;
        trim(gpcs.prc_typ) AS prc_typ,&#13;
        gpcs.unit_cprc&#13;
      FROM ft_t_gpcs gpcs,&#13;
        ft_t_pped pped&#13;
      WHERE gpcs.pped_oid       = pped.pped_oid&#13;
      AND pped.prc_point_ev_nme = p_SNAP_NME&#13;
      AND gpcs.gprc_ind         = 'Y'&#13;
      AND gpcs.prc_tms LIKE to_date(p_EVALUATION_TO_TMS, 'YYYYMMDD')&#13;
      ) gpcs1&#13;
    ON isid1.instr_id      = gpcs1.instr_id&#13;
   AND isid1.iss_usage_typ = gpcs1.prc_typ ;&#13;
  END IF;&#13;
END;&#13;
</text>
</com.j2fe.translation.template.QueryDefinition>
</businessobject>
</goldensource-package>
