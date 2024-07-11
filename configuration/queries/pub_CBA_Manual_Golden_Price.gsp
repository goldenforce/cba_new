<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.15">
<package-comment/>
<businessobject displayString="pub_CBA_Manual_Golden_Price" type="com.j2fe.translation.template.QueryDefinition">
<com.j2fe.translation.template.QueryDefinition id="0">
<name id="1">pub_CBA_Manual_Golden_Price</name>
<parameters id="2" type="java.util.ArrayList">
<item id="3" type="com.j2fe.translation.template.QueryParameter">
<name id="4">pPreviousTokenId</name>
<type>12</type>
</item>
</parameters>
<text id="5">DECLARE&#13;
  p_PREVIOUS_TOKEN_ID VARCHAR2(16);&#13;
BEGIN&#13;
  p_PREVIOUS_TOKEN_ID    :=?;&#13;
  IF(p_PREVIOUS_TOKEN_ID IS NOT NULL) THEN&#13;
    INSERT&#13;
    INTO GS_PRICES_RECEIVING_AREAS&#13;
    --INTO GS_PRICES_RECEIVING_AREAS@MRU_STAGING.CBA.COM.AU&#13;
    --INTO MRU_GS_PRICES_RECEIVING_AREAS&#13;
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
    SELECT 'I',&#13;
      'Manual Approved Price',&#13;
      isid.iss_id,&#13;
      gpcs.prc_tms,&#13;
      NVL(rcrct.cmnt_txt, gpcs.prc_typ),&#13;
      gpcs.unit_cprc,&#13;
      'Z',&#13;
      SYSDATE,&#13;
      NULL,&#13;
      NULL&#13;
      -- , gncm.cmnt_txt&#13;
      -- , gpcs.pped_oid&#13;
      -- , gpcs.gpcs_oid&#13;
    FROM ft_t_gpcs gpcs,&#13;
      ft_t_isid isid,&#13;
      ft_t_ispc ispc,&#13;
      ft_t_gncm gncm,&#13;
      ft_t_gncm rcrct&#13;
    WHERE ispc.iss_prc_id           = gpcs.iss_prc_id&#13;
    AND isid.instr_id               = ispc.instr_id&#13;
    AND isid.iss_usage_typ          = trim(gpcs.prc_typ)&#13;
    AND 'RCRCTCDE'                  = rcrct.comm_reas_mnem (+)&#13;
    AND isid.isid_oid               = rcrct.cross_ref_id (+)&#13;
    AND 'IDSNPUSG'                  = gncm.comm_reas_mnem&#13;
    AND isid.isid_oid               = gncm.cross_ref_id&#13;
    AND SUBSTR(gpcs.pped_oid, 9, 2) = SUBSTR(gncm.cmnt_txt, 0, 2)&#13;
    AND gpcs.gpcs_oid&#13;
      --  in (select gpcs_oid from ft_t_gpcs where manual_ind = 'Y')&#13;
      IN&#13;
      (SELECT main_cross_ref_id&#13;
      FROM ft_wf_uiwa&#13;
      WHERE token_id = p_PREVIOUS_TOKEN_ID&#13;
      ) ;&#13;
  END IF;&#13;
END;</text>
</com.j2fe.translation.template.QueryDefinition>
</businessobject>
</goldensource-package>
