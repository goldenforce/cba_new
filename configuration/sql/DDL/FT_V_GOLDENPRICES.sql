--------------------------------------------------------------------
-- |----------------------------------------------------------------
-- | Product ID: GSDM
-- | Project: CBA FRTB EDM 
-- | Date: 26-Apr-2018
-- | Requested By: 
-- | Approved By: 
-- | Prepared By: GoldenSource
-- |----------------------------------------------------------------
-- | Tables Affected: 
-- |----------------------------------------------------------------
-- History     :
---------------------------------------------------------------------
-- S.No.  DefectID             Date       By              Description
-- --------------------------------------------------------------------
-- 1.     


SET SCAN OFF;
SET ECHO ON;
SET DEFINE OFF;

--------------------------------------------------------------------
CREATE OR REPLACE VIEW FT_V_GOLDENPRICES_V1
(
   GPCS_OID,
   GPCS_TYP,
   PRC_TMS,
   PPED_OID,
   INSTR_ID,
   STALE_PRC_PRD_QTY,
   MANUAL_IND,
   START_TMS,
   END_TMS,
   ISS_PRC_ID,
   UNIT_CPRC,
   PRC_SRCE_TYP,
   PRC_CURR_CDE,
   PRC_QT_METH_TYP,
   PRC_TYP,
   PRCNG_METH_TYP,
   PRC_VALID_TYP,
   LAST_CHG_TMS,
   LAST_CHG_USR_ID,
   ADDNL_PRC_QUAL_TYP,
   MKT_OID,
   VENDOR_PRC_CMNT_TXT,
   DATA_STAT_TYP,
   DATA_SRC_ID,
   PRC_MLTPLR_CRTE,
   ISID_OID,
   ADJST_TMS,
   ISPT_OID
)
AS
   SELECT GPCS.GPCS_OID,
          GPCS.GPCS_TYP,
          GPCS.PRC_TMS,
          GPCS.PPED_OID,
          GPCS.INSTR_ID,
          GPCS.STALE_PRC_PRD_QTY,
          GPCS.MANUAL_IND,
          GPCS.START_TMS,
          GPCS.END_TMS,
          ISPC.ISS_PRC_ID,
          NVL (GPCS.UNIT_CPRC, 0) UNIT_CPRC,
          --ISPC.UNIT_CPRC UNIT_CPRC,
          GPCS.PRC_SRCE_TYP,
          GPCS.PRC_CURR_CDE,
          GPCS.PRC_QT_METH_TYP,
          GPCS.PRC_TYP,
          GPCS.PRCNG_METH_TYP,
          ISPC.PRC_VALID_TYP,
          ISPC.LAST_CHG_TMS,
          ISPC.LAST_CHG_USR_ID,
          GPCS.ADDNL_PRC_QUAL_TYP,
          GPCS.MKT_OID,
          ISPC.VENDOR_PRC_CMNT_TXT,
          ISPC.DATA_STAT_TYP,
          ISPC.DATA_SRC_ID,
          ISPC.PRC_MLTPLR_CRTE,
          ISPC.ISID_OID,
          ISPC.ADJST_TMS,
          ISPC.ISPT_OID
     FROM FT_T_ISSU ISSU, FT_T_GPCS GPCS, FT_T_ISPC ISPC
    WHERE     ISSU.INSTR_ID = GPCS.INSTR_ID
          AND GPCS.ISS_PRC_ID = ISPC.ISS_PRC_ID --     AND GPCS.PRC_TMS = TO_DATE( '04/05/2015', 'DD/MM/YYYY')
          AND (gpcs.gprc_ind = 'Y')
          AND GPCS.END_TMS IS NULL
   UNION ALL
   SELECT GPCS.GPCS_OID,
          GPCS.GPCS_TYP,
          GPCS.PRC_TMS,
          GPCS.PPED_OID,
          GPCS.INSTR_ID,
          GPCS.STALE_PRC_PRD_QTY,
          GPCS.MANUAL_IND,
          GPCS.START_TMS,
          GPCS.END_TMS,
          GPCS.ISS_PRC_ID,
          NVL (GPCS.UNIT_CPRC, 0) UNIT_CPRC,
          GPCS.PRC_SRCE_TYP,
          GPCS.PRC_CURR_CDE,
          GPCS.PRC_QT_METH_TYP,
          GPCS.PRC_TYP PRC_TYP,
          GPCS.PRCNG_METH_TYP,
          NULL PRC_VALID_TYP,
          NULL LAST_CHG_TMS,
          NULL LAST_CHG_USR_ID,
          GPCS.ADDNL_PRC_QUAL_TYP,
          GPCS.MKT_OID,
          NULL VENDOR_PRC_CMNT_TXT,
          NULL DATA_STAT_TYP,
          NULL DATA_SRC_ID,
          NULL PRC_MLTPLR_CRTE,
          NULL ISID_OID,
          NULL ADJST_TMS,
          NULL ISPT_OID
     FROM FT_T_GPCS GPCS
    WHERE (GPCS.GPCS_TYP = 'MISSING'
           OR (GPCS_TYP = 'SUSPECT' AND CMNT_REAS_TYP = 'GPRCMISSFAIL'));
           