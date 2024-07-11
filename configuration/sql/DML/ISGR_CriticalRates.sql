--------------------------------------------------------------------
-- |----------------------------------------------------------------
-- | Product ID: GSDM
-- | Project: CBA FRTB EDM 
-- | Date: 10-May-2018
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

Insert into FT_T_ISGR (ISS_GRP_OID, ISS_GRP_ID, LAST_CHG_TMS, LAST_CHG_USR_ID, GRP_PURP_TYP, START_TMS, GRP_NME, GRP_DESC, DATA_STAT_TYP, DATA_SRC_ID, DWDF_OID) Values ('CRT=ISGR08', 'CBATST010', sysdate, 'CBA', 'CRIT_PRC', sysdate, 'CRITICAL_RATES', 'Critical Rates Group', 'ACTIVE', 'CBA', 'CBA====MRU');
