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
-- create SYNONYM for the DB link of 'MRU staging area', so that the same SYNONYM name used across environments
-- !!! please check and change the db link name before run below sql
-- -----------------------------------------------------------------
CREATE SYNONYM MRU_GS_PRICES_RECEIVING_AREAS FOR GS_PRICES_RECEIVING_AREAS@MRU_STAGING.CBA.COM.AU;
