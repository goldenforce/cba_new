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

Insert into ft_cfg_vrdt (VND_RQST_TYP,VND_RQST_DATA_TYP) Select 'CBA_BB_Currency','CBA_BB_CurrencyDT' from dual where not exists (select 1 from ft_cfg_vrdt where VND_RQST_TYP = 'CBA_BB_Currency' and VND_RQST_DATA_TYP = 'CBA_BB_CurrencyDT');
Insert into ft_cfg_vrdt (VND_RQST_TYP,VND_RQST_DATA_TYP) Select 'DssPrices','BASIC' from dual where not exists (select 1 from ft_cfg_vrdt where VND_RQST_TYP = 'DssPrices' and VND_RQST_DATA_TYP = 'BASIC');
Insert into ft_cfg_vrdt (VND_RQST_TYP,VND_RQST_DATA_TYP) Select 'Generic','BASIC' from dual where not exists (select 1 from ft_cfg_vrdt where VND_RQST_TYP = 'Generic' and VND_RQST_DATA_TYP = 'BASIC');
Insert into ft_cfg_vrdt (VND_RQST_TYP,VND_RQST_DATA_TYP) Select 'Generic','SECMASTER' from dual where not exists (select 1 from ft_cfg_vrdt where VND_RQST_TYP = 'Generic' and VND_RQST_DATA_TYP = 'SECMASTER');
Insert into ft_cfg_vrdt (VND_RQST_TYP,VND_RQST_DATA_TYP) Select 'RMDS','MARKET_PRICE' from dual where not exists (select 1 from ft_cfg_vrdt where VND_RQST_TYP = 'RMDS' and VND_RQST_DATA_TYP = 'MARKET_PRICE');
