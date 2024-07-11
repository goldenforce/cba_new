set define off;
set scan off;

-- |----------------------------------------------------------------
-- |       TBDF entry for FUT1
-- |----------------------------------------------------------------

INSERT INTO ft_t_tbdf (tbl_id, tbl_ddl_nme, last_chg_tms, last_chg_usr_id, tbl_nme, tbl_desc, tbl_clsf_typ, tbl_view_nme)
   SELECT 'FUT1', 'FT_T_FUT1', SYSDATE, 'CBA:CSTM', 'Future Comodity Field Of interest', 'Future Comodity Field Of interest', 'X', NULL
     FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_tbdf WHERE tbl_id = 'FUT1');



-- |----------------------------------------------------------------
-- |       FLDF entry for FUT1
-- |----------------------------------------------------------------	 
INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 40100631, SYSDATE, 'CBA:CSTM', 'DATATYP2', NULL, 'TICKER_ID', 'L', 'T', 'TICKERID', 'TICKER_ID'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'TICKER_ID');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 40100632, SYSDATE, 'CBA:CSTM', 'DATATYP2', NULL, 'ID_BB_UNIQUE', 'L', 'T', 'IDBBUNIQUE', 'ID_BB_UNIQUE'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'ID_BB_UNIQUE');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 40100633, SYSDATE, 'CBA:CSTM', 'DATATYP2', NULL, 'SEC_NAME', 'L', 'T', 'SECNAME', 'SEC_NAME'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'SEC_NAME');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 40100634, SYSDATE, 'CBA:CSTM', 'OID', NULL, 'FUT_CHAIN', 'L', 'T', 'FUTCHAIN', 'FUT_CHAIN'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'FUT_CHAIN');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 40100635, SYSDATE, 'CBA:CSTM', 'DATATYP2', NULL, 'SECURITY_TYP', 'L', 'T', 'SECURITYTYP', 'SECURITY_TYP'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'SECURITY_TYP');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 40100636, SYSDATE, 'CBA:CSTM', 'DATATYP2', NULL, 'CURRENT_STATUS', 'L', 'T', 'Current Status', 'Current Status'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'CURRENT_STATUS');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 40100637, SYSDATE, 'CBA:CSTM', 'DATATYP2', NULL, 'STATUS_DESC', 'L', 'T', 'Status Description', 'Status Description'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'STATUS_DESC');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 00007490, SYSDATE, 'CBA:CSTM', 'DATETIME', NULL, 'START_TMS', 'L', 'T', 'Start Date/Time', 'This field specifies the date and time from which the table occurrence is active.  In conjunction with the End Date/Time field, it determines the period when the table occurrence is active.'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'START_TMS');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 00007450, SYSDATE, 'CBA:CSTM', 'DATETIME', NULL, 'END_TMS', 'L', 'T', 'End Date/Time', 'This field specifies the date and time after which the table occurrence is no longer active.  A value of null in this field indicates that an End Date/Time is not given and that the table occurrence is active.  The End Date/Time is used in conjunction w'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'END_TMS');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 00003320, SYSDATE, 'CBA:CSTM', 'LSTCHGDT', NULL, 'LAST_CHG_TMS', 'L', 'T', 'Last Change Date/Time', 'This field contains the latest date and time that the values of the table occurrence on which this field resides were changed.'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'LAST_CHG_TMS');

INSERT INTO ft_t_fldf (fld_id,last_chg_tms,last_chg_usr_id,fld_data_cl_id,prnt_fld_id,ddl_nme,just_typ,fld_used_by_typ,fld_nme,fld_desc)
    SELECT 00003325, SYSDATE, 'CBA:CSTM', 'USER', NULL, 'LAST_CHG_USR_ID', 'L', 'T', 'Last Change User ID', 'This field contains the identifier of the last person or application that changed the values of the table occurrence on which this field resides.'
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_fldf WHERE ddl_nme = 'LAST_CHG_USR_ID');


-- |----------------------------------------------------------------
-- |       CLDF entries for FUT1
-- |----------------------------------------------------------------

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'FUT1', 'TICKER_ID', '40100631', NULL, NULL, 'Y', 'VARCHAR2(100)', 1, SYSDATE, 'CBA:CSTM', 'Y', 'TICKERID', 'TICKER_ID', 'VARCHAR2', 100, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'FUT1' AND col_nme = 'TICKER_ID');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'FUT1', 'ID_BB_UNIQUE', '40100632', NULL, NULL, 'N', 'VARCHAR2(100)', 2, SYSDATE, 'CBA:CSTM', 'Y', 'IDBBUNIQUE', 'ID_BB_UNIQUE', 'VARCHAR2', 100, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'FUT1' AND col_nme = 'ID_BB_UNIQUE');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'FUT1', 'SEC_NAME', '40100633', NULL, NULL, 'N', 'VARCHAR2(100)', 3, SYSDATE, 'CBA:CSTM', 'Y', 'SECNAME', 'SEC_NAME', 'VARCHAR2', 100, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'FUT1' AND col_nme = 'SEC_NAME');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'FUT1', 'FUT_CHAIN', '40100634', NULL, NULL, 'Y', 'VARCHAR2(100)', 4, SYSDATE, 'CBA:CSTM', 'Y', 'FUTCHAIN', 'FUT_CHAIN', 'VARCHAR2', 100, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'FUT1' AND col_nme = 'FUT_CHAIN');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'FUT1', 'SECURITY_TYP', '40100635', NULL, NULL, 'N', 'VARCHAR2(100)', 5, SYSDATE, 'CBA:CSTM', 'Y', 'SECURITYTYP', 'SECURITY_TYP', 'VARCHAR2', 100, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'FUT1' AND col_nme = 'SECURITY_TYP');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'FUT1', 'CURRENT_STATUS', '40100636', NULL, NULL, 'N', 'CHAR(3)', 6, SYSDATE, 'CBA:CSTM', 'Y', 'Current Status', 'Current Status', 'CHAR', 3, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'FUT1' AND col_nme = 'CURRENT_STATUS');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'FUT1', 'STATUS_DESC', '40100637', NULL, NULL, 'N', 'VARCHAR2(256)', 7, SYSDATE, 'CBA:CSTM', 'Y', 'Status Description', 'Status Description', 'VARCHAR2', 256, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'FUT1' AND col_nme = 'STATUS_DESC');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'FUT1', 'START_TMS', '00007490', NULL, NULL, 'Y', 'DATE', 8, SYSDATE, 'CBA:CSTM', 'Y', 'Start Date/Time', 'This field specifies the date and time from which the table occurrence is active.  In conjunction with the End Date/Time field, it determines the period when the table occurrence is active.', 'DATE', NULL, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'FUT1' AND col_nme = 'START_TMS');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'FUT1', 'END_TMS', '00007450', NULL, NULL, 'N', 'DATE', 9, SYSDATE, 'CBA:CSTM', 'Y', 'End Date/Time', 'This field specifies the date and time after which the table occurrence is no longer active.  A value of null in this field indicates that an End Date/Time is not given and that the table occurrence is active.  The End Date/Time is used in conjunction w', 'DATE', NULL, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'FUT1' AND col_nme = 'END_TMS');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'FUT1', 'LAST_CHG_TMS', '00003320', NULL, NULL, 'Y', 'DATE', 10, SYSDATE, 'CBA:CSTM', 'Y', 'Last Change Date/Time', 'This field contains the latest date and time that the values of the table occurrence on which this field resides were changed.', 'DATE', NULL, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'FUT1' AND col_nme = 'LAST_CHG_TMS');

INSERT INTO ft_t_cldf (tbl_id,col_nme,fld_id,prnt_tbl_id,prnt_col_nme,col_req_ind,ddl_data_typ,col_sq_num,last_chg_tms,last_chg_usr_id,native_col_ind,logl_nme,col_desc,ddl_base_data_typ,ddl_data_len, ddl_data_prec_num, ddl_data_scale_num)
    SELECT 'FUT1', 'LAST_CHG_USR_ID', '00003325', NULL, NULL, 'Y', 'VARCHAR2(256)', 11, SYSDATE, 'CBA:CSTM', 'Y', 'Last Change User ID', 'This field contains the identifier of the last person or application that changed the values of the table occurrence on which this field resides.', 'VARCHAR2', 256, NULL, NULL
      FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_cldf WHERE tbl_id = 'FUT1' AND col_nme = 'LAST_CHG_USR_ID');




-- |----------------------------------------------------------------
-- |       XSEG entry for FUT1
-- |----------------------------------------------------------------

INSERT INTO ft_t_xseg (segment_id, start_tms, last_chg_tms, last_chg_usr_id, segment_nme, segment_desc)
   SELECT '10000111', SYSDATE, SYSDATE, 'CBA:CSTM', 'FutureComodityFieldOfinterest', 'FUT1' 
     FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_xseg WHERE segment_Id = '10000111');

-- |----------------------------------------------------------------
-- |       XSTO entry for FUT1
-- |----------------------------------------------------------------

INSERT INTO ft_t_xsto (segment_id, tbl_id, prnt_tbl_id, tbl_clsf_typ, last_chg_tms, last_chg_usr_id)
  SELECT 10000111, 'FUT1', 'ISSU', 'P', SYSDATE, 'CBA:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_xsto WHERE segment_id = '10000111');



-- |----------------------------------------------------------------
-- |       XELM entry for FUT1
-- |----------------------------------------------------------------

INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '10000111', 'FUT1', 'TICKERID', 'TICKERID', SYSDATE, 'CBA:CSTM', 'TICKER_ID' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 10000111 AND TBL_ID = 'FUT1' AND ELEMENT_XML_TAG = 'TICKERID');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '10000111', 'FUT1', 'IDBBUNIQUE', 'IDBBUNIQUE', SYSDATE, 'CBA:CSTM', 'ID_BB_UNIQUE' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 10000111 AND TBL_ID = 'FUT1' AND ELEMENT_XML_TAG = 'IDBBUNIQUE');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '10000111', 'FUT1', 'SECNAME', 'SECNAME', SYSDATE, 'CBA:CSTM', 'SEC_NAME' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 10000111 AND TBL_ID = 'FUT1' AND ELEMENT_XML_TAG = 'SECNAME');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '10000111', 'FUT1', 'FUTCHAIN', 'FUTCHAIN', SYSDATE, 'CBA:CSTM', 'FUT_CHAIN' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 10000111 AND TBL_ID = 'FUT1' AND ELEMENT_XML_TAG = 'FUTCHAIN');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '10000111', 'FUT1', 'SECURITYTYP', 'SECURITYTYP', SYSDATE, 'CBA:CSTM', 'SECURITY_TYP' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 10000111 AND TBL_ID = 'FUT1' AND ELEMENT_XML_TAG = 'SECURITYTYP');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '10000111', 'FUT1', 'CURRENTSTATUS', 'Current Status', SYSDATE, 'CBA:CSTM', 'CURRENT_STATUS' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 10000111 AND TBL_ID = 'FUT1' AND ELEMENT_XML_TAG = 'CURRENTSTATUS');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '10000111', 'FUT1', 'STATUSDESC', 'Status Description', SYSDATE, 'CBA:CSTM', 'STATUS_DESC' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 10000111 AND TBL_ID = 'FUT1' AND ELEMENT_XML_TAG = 'STATUSDESC');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '10000111', 'FUT1', 'STARTTMS', 'Start Date/Time', SYSDATE, 'CBA:CSTM', 'START_TMS' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 10000111 AND TBL_ID = 'FUT1' AND ELEMENT_XML_TAG = 'STARTTMS');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '10000111', 'FUT1', 'ENDTMS', 'End Date/Time', SYSDATE, 'CBA:CSTM', 'END_TMS' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 10000111 AND TBL_ID = 'FUT1' AND ELEMENT_XML_TAG = 'ENDTMS');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '10000111', 'FUT1', 'LASTCHGTMS', 'Last Change Date/Time', SYSDATE, 'CBA:CSTM', 'LAST_CHG_TMS' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 10000111 AND TBL_ID = 'FUT1' AND ELEMENT_XML_TAG = 'LASTCHGTMS');
INSERT INTO FT_T_XELM (SEGMENT_ID, TBL_ID, ELEMENT_XML_TAG, ELEMENT_NME, LAST_CHG_TMS, LAST_CHG_USR_ID, COL_NME)  SELECT '10000111', 'FUT1', 'LASTCHGUSRID', 'Last Change User ID', SYSDATE, 'CBA:CSTM', 'LAST_CHG_USR_ID' FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM FT_T_XELM WHERE SEGMENT_ID = 10000111 AND TBL_ID = 'FUT1' AND ELEMENT_XML_TAG = 'LASTCHGUSRID');


-- |----------------------------------------------------------------
-- |       TIDX entry for FUT1
-- |----------------------------------------------------------------

INSERT INTO ft_t_tidx (tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id)
   SELECT 'FUT1P001==', 'FUT1', 'FT_T_FUT1_PK', 'P', SYSDATE, 'CBA:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidX WHERE TIDX_OID = 'FUT1P001==');


INSERT INTO ft_t_tidx (tidx_oid, tbl_id, tbl_index_nme, tbl_index_typ, last_chg_tms, last_chg_usr_id)
   SELECT 'FUT1I001==', 'FUT1', 'FT_X_FUT1_I001', 'I', SYSDATE, 'CBA:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidX WHERE TIDX_OID = 'FUT1I001==');


-- |----------------------------------------------------------------
-- |       TIDC entry for FUT1
-- |----------------------------------------------------------------
	 
	 INSERT INTO ft_t_tidc (tidc_oid, tidx_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
   SELECT 'FUT1P00101', 'FUT1P001==', 'FUT1', 'FUT_CHAIN',1, SYSDATE, 'CBA:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidc WHERE tidc_OID = 'FUT1P00101');

INSERT INTO ft_t_tidc (tidc_oid, tidx_oid, tbl_id, col_nme, col_sq_num, last_chg_tms, last_chg_usr_id)
   SELECT 'FUT1U00101', 'FUT1I001==', 'FUT1', 'TICKER_ID',1, SYSDATE, 'CBA:CSTM'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_tidc WHERE tidc_OID = 'FUT1U00101');


