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

INSERT INTO ft_t_mtrx (MTRX_OID, MATRIX_TYP, MATRIX_NME, START_TMS, LAST_CHG_TMS, LAST_CHG_USR_ID, DATA_STAT_TYP, DATA_SRC_ID)  SELECT 'CBAMTRX006','CURVE','COMPGEN',Sysdate - 36525,Sysdate,'CBA','ACTIVE','CBA'     FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_mtrx WHERE matrix_typ = 'GENCRV' AND matrix_nme = 'COMPGEN');
INSERT INTO ft_t_mtrx (MTRX_OID, MATRIX_TYP, MATRIX_NME, START_TMS, LAST_CHG_TMS, LAST_CHG_USR_ID, DATA_STAT_TYP, DATA_SRC_ID)  SELECT 'CBAMTRX007','DEPO','DEPOSIT',Sysdate - 36525,Sysdate,'CBA','ACTIVE','CBA'     FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_mtrx WHERE matrix_typ = 'DEPO' AND matrix_nme = 'DEPOSIT');
INSERT INTO ft_t_mtrx (MTRX_OID, MATRIX_TYP, MATRIX_NME, START_TMS, LAST_CHG_TMS, LAST_CHG_USR_ID, DATA_STAT_TYP, DATA_SRC_ID)  SELECT 'CBAMTRX008','FUTURES','FUT-DEP',Sysdate - 36525,Sysdate,'CBA','ACTIVE','CBA'     FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_mtrx WHERE matrix_typ = 'FUTURES' AND matrix_nme = 'FUT-DEP');
INSERT INTO ft_t_mtrx (MTRX_OID, MATRIX_TYP, MATRIX_NME, START_TMS, LAST_CHG_TMS, LAST_CHG_USR_ID, DATA_STAT_TYP, DATA_SRC_ID)  SELECT 'CBAMTRX009','SWAP','SWAP',Sysdate - 36525,Sysdate,'CBA','ACTIVE','CBA'     FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_mtrx WHERE matrix_typ = 'SWAP' AND matrix_nme = 'SWAP');
INSERT INTO ft_t_mtrx (MTRX_OID, MATRIX_TYP, MATRIX_NME, START_TMS, LAST_CHG_TMS, LAST_CHG_USR_ID, DATA_STAT_TYP, DATA_SRC_ID)  SELECT 'CBAMTRX010','FXFWD','FORWARD-FX',Sysdate - 36525,Sysdate,'CBA','ACTIVE','CBA'     FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_mtrx WHERE matrix_typ = 'FXFWD' AND matrix_nme = 'FORWARD-FX');
INSERT INTO ft_t_mtrx (MTRX_OID, MATRIX_TYP, MATRIX_NME, START_TMS, LAST_CHG_TMS, LAST_CHG_USR_ID, DATA_STAT_TYP, DATA_SRC_ID)  SELECT 'CBAMTRX011','FRA','FRA',Sysdate - 36525,Sysdate,'CBA','ACTIVE','CBA'     FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_mtrx WHERE matrix_typ = 'FRA' AND matrix_nme = 'FRA');
INSERT INTO ft_t_mtrx (MTRX_OID, MATRIX_TYP, MATRIX_NME, START_TMS, LAST_CHG_TMS, LAST_CHG_USR_ID, DATA_STAT_TYP, DATA_SRC_ID)  SELECT 'CBAMTRX012','SWAPTION','SWAPTION',Sysdate - 36525,Sysdate,'CBA','ACTIVE','CBA'     FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_mtrx WHERE matrix_typ = 'SWAPTION' AND matrix_nme = 'SWAPTION');
INSERT INTO ft_t_mtrx (MTRX_OID, MATRIX_TYP, MATRIX_NME, START_TMS, LAST_CHG_TMS, LAST_CHG_USR_ID, DATA_STAT_TYP, DATA_SRC_ID)  SELECT 'CBAMTRX013','FRAMAT','FRAMAT',Sysdate - 36525,Sysdate,'CBA','ACTIVE','CBA'     FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_mtrx WHERE matrix_typ = 'FRAMAT' AND matrix_nme = 'FRAMAT');
INSERT INTO ft_t_mtrx (MTRX_OID, MATRIX_TYP, MATRIX_NME, START_TMS, LAST_CHG_TMS, LAST_CHG_USR_ID, DATA_STAT_TYP, DATA_SRC_ID)  SELECT 'CBAMTRX014','FXOPTION','FXOPTION',Sysdate - 36525,Sysdate,'CBA','ACTIVE','CBA'     FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_mtrx WHERE matrix_typ = 'FXOPTION' AND matrix_nme = 'FXOPTION');
INSERT INTO ft_t_mtrx (MTRX_OID, MATRIX_TYP, MATRIX_NME, START_TMS, LAST_CHG_TMS, LAST_CHG_USR_ID, DATA_STAT_TYP, DATA_SRC_ID)  SELECT 'CBAMTRX015','FUTURES','FUTURES',Sysdate - 36525,Sysdate,'CBA','ACTIVE','CBA'     FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_mtrx WHERE matrix_typ = 'FUTURES' AND matrix_nme = 'FUTURES');
