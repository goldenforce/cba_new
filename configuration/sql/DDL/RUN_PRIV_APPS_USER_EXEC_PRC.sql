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


-- -----------------------------------------------------------------
-- Notes:
-- change the owner user, app user and r/w role before run the script
-- 
-- -----------------------------------------------------------------


DECLARE
  V_error_id  VARCHAR2(20000);
  V_error_msg VARCHAR2 (20000);
BEGIN
  PRIV_APPS_USER_EXEC_PRC('CBA_GC_OWN','CBA_GC_APP','CBA_GC_OWN_RW_RLE',V_error_id,V_error_msg);
END;