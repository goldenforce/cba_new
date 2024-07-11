
SET SCAN OFF;
SET DEFINE OFF;




-- |----------------------------------------------------------------
-- |       ISST
-- |----------------------------------------------------------------

INSERT INTO FT_t_STDF (STAT_DEF_ID,START_TMS,LAST_CHG_TMS,LAST_CHG_USR_ID, STAT_VAL_TYP,STAT_NME,STAT_DESC,DATA_STAT_TYP,DATA_SRC_ID) VALUES
('MATDATE',SYSDATE,SYSDATE,'CBA','CHARACT','Underlying Maturity Date','Underlying Maturity Date','ACTIVE','REUTERS');