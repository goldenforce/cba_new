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


Insert into FT_T_ISGr (ISS_GRP_OID,ORG_ID,SUBDIV_ID,ISS_GRP_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,GRP_PURP_TYP,START_TMS,END_TMS,CROSS_REF_ID,GRP_NME,GRP_DESC,INSTR_ID,DATA_STAT_TYP,DATA_SRC_ID,SUBD_ORG_ID,DWDF_OID,DIM_SET_TXT,DIM_HEADER_TXT,SUBD_OID) values ('DOWNSTREAM',null,null,'DOWNSTREAM',to_date('02/APR/18','DD/MON/RR'),'CBA','DOWNSTRM',to_date('02/APR/18','DD/MON/RR'),null,null,'DOWNSTREAM SYSTEMS',null,null,null,null,null,'Default',null,null,null);
Insert into FT_T_ISGr (ISS_GRP_OID,ORG_ID,SUBDIV_ID,ISS_GRP_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,GRP_PURP_TYP,START_TMS,END_TMS,CROSS_REF_ID,GRP_NME,GRP_DESC,INSTR_ID,DATA_STAT_TYP,DATA_SRC_ID,SUBD_ORG_ID,DWDF_OID,DIM_SET_TXT,DIM_HEADER_TXT,SUBD_OID) values ('SUPPORTEAM',null,null,'SUPPORTEAM',to_date('02/APR/18','DD/MON/RR'),'CBA','SUPPORT ',to_date('02/APR/18','DD/MON/RR'),null,null,'SUPPORT TEAM',null,null,null,null,null,'Default',null,null,null);
Insert into FT_T_ISGr (ISS_GRP_OID,ORG_ID,SUBDIV_ID,ISS_GRP_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,GRP_PURP_TYP,START_TMS,END_TMS,CROSS_REF_ID,GRP_NME,GRP_DESC,INSTR_ID,DATA_STAT_TYP,DATA_SRC_ID,SUBD_ORG_ID,DWDF_OID,DIM_SET_TXT,DIM_HEADER_TXT,SUBD_OID) values ('MRUTEAM   ',null,null,'MRUTEAM',to_date('02/APR/18','DD/MON/RR'),'CBA','MRU     ',to_date('02/APR/18','DD/MON/RR'),null,null,'MRU TEAM',null,null,null,null,null,'Default',null,null,null);
Insert into FT_T_ISGr (ISS_GRP_OID,ORG_ID,SUBDIV_ID,ISS_GRP_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,GRP_PURP_TYP,START_TMS,END_TMS,CROSS_REF_ID,GRP_NME,GRP_DESC,INSTR_ID,DATA_STAT_TYP,DATA_SRC_ID,SUBD_ORG_ID,DWDF_OID,DIM_SET_TXT,DIM_HEADER_TXT,SUBD_OID) values ('RCVA==1665',null,null,'1665',to_date('04/MAY/18','DD/MON/RR'),'CBA','REQUEST ',to_date('04/MAY/18','DD/MON/RR'),null,null,'SYD_MAT_DSS_1215_INTRDAY','SYD_MAT_DSS_1215_INTRDAY',null,'ACTIVE','CBA',null,'Default',null,null,null);
Insert into FT_T_ISGr (ISS_GRP_OID,ORG_ID,SUBDIV_ID,ISS_GRP_ID,LAST_CHG_TMS,LAST_CHG_USR_ID,GRP_PURP_TYP,START_TMS,END_TMS,CROSS_REF_ID,GRP_NME,GRP_DESC,INSTR_ID,DATA_STAT_TYP,DATA_SRC_ID,SUBD_ORG_ID,DWDF_OID,DIM_SET_TXT,DIM_HEADER_TXT,SUBD_OID) values ('MAKERUSER ',null,null,'MAKERUSER',to_date('12/APR/18','DD/MON/RR'),'CBA','MAKER   ',to_date('01/JAN/00','DD/MON/RR'),null,null,'MAKERUSER','Maker User Email Id',null,null,null,null,'Default',null,null,null);


Insert into FT_T_ISG1 (ISS_GRP_OID,START_TMS,LAST_CHG_TMS,LAST_CHG_USR_ID,EMAIL_ID,PURP_TYP,END_TMS,DATA_SRC_ID,ISG1_OID) values ('DOWNSTREAM',to_date('10/APR/18','DD/MON/RR'),to_date('10/APR/18','DD/MON/RR'),'CBA','Tushar.Agarwal1@cba.com.au','EMAIL',null,null,(select new_oid() from dual));
Insert into FT_T_ISG1 (ISS_GRP_OID,START_TMS,LAST_CHG_TMS,LAST_CHG_USR_ID,EMAIL_ID,PURP_TYP,END_TMS,DATA_SRC_ID,ISG1_OID) values ('DOWNSTREAM',to_date('10/APR/18','DD/MON/RR'),to_date('10/APR/18','DD/MON/RR'),'CBA','David.Tao2@cba.com.au','EMAIL',null,null,(select new_oid() from dual));
Insert into FT_T_ISG1 (ISS_GRP_OID,START_TMS,LAST_CHG_TMS,LAST_CHG_USR_ID,EMAIL_ID,PURP_TYP,END_TMS,DATA_SRC_ID,ISG1_OID) values ('DOWNSTREAM',to_date('21/MAR/18','DD/MON/RR'),to_date('21/MAR/18','DD/MON/RR'),'CBA','Binu.John@cba.com.au','EMAIL',null,null,(select new_oid() from dual));
Insert into FT_T_ISG1 (ISS_GRP_OID,START_TMS,LAST_CHG_TMS,LAST_CHG_USR_ID,EMAIL_ID,PURP_TYP,END_TMS,DATA_SRC_ID,ISG1_OID) values ('DOWNSTREAM',to_date('10/APR/18','DD/MON/RR'),to_date('10/APR/18','DD/MON/RR'),'CBA','Harpreet.Kaur1@cba.com.au','EMAIL',null,null,(select new_oid() from dual));
Insert into FT_T_ISG1 (ISS_GRP_OID,START_TMS,LAST_CHG_TMS,LAST_CHG_USR_ID,EMAIL_ID,PURP_TYP,END_TMS,DATA_SRC_ID,ISG1_OID) values ('MAKERUSER ',to_date('01/JAN/00','DD/MON/RR'),to_date('12/APR/18','DD/MON/RR'),'CBA','Harpreet.Kaur1@cba.com.au','EMAIL',null,null,(select new_oid() from dual));
Insert into FT_T_ISG1 (ISS_GRP_OID,START_TMS,LAST_CHG_TMS,LAST_CHG_USR_ID,EMAIL_ID,PURP_TYP,END_TMS,DATA_SRC_ID,ISG1_OID) values ('MAKERUSER ',to_date('01/JAN/00','DD/MON/RR'),to_date('12/APR/18','DD/MON/RR'),'CBA','David.Tao2@cba.com.au','EMAIL',null,null,(select new_oid() from dual));
Insert into FT_T_ISG1 (ISS_GRP_OID,START_TMS,LAST_CHG_TMS,LAST_CHG_USR_ID,EMAIL_ID,PURP_TYP,END_TMS,DATA_SRC_ID,ISG1_OID) values ('MRUTEAM   ',to_date('10/APR/18','DD/MON/RR'),to_date('10/APR/18','DD/MON/RR'),'CBA','David.Tao2@cba.com.au','EMAIL',null,null,(select new_oid() from dual));
Insert into FT_T_ISG1 (ISS_GRP_OID,START_TMS,LAST_CHG_TMS,LAST_CHG_USR_ID,EMAIL_ID,PURP_TYP,END_TMS,DATA_SRC_ID,ISG1_OID) values ('MRUTEAM   ',to_date('10/APR/18','DD/MON/RR'),to_date('10/APR/18','DD/MON/RR'),'CBA','Harpreet.Kaur1@cba.com.au','EMAIL',null,null,(select new_oid() from dual));
Insert into FT_T_ISG1 (ISS_GRP_OID,START_TMS,LAST_CHG_TMS,LAST_CHG_USR_ID,EMAIL_ID,PURP_TYP,END_TMS,DATA_SRC_ID,ISG1_OID) values ('MRUTEAM   ',to_date('21/MAR/18','DD/MON/RR'),to_date('21/MAR/18','DD/MON/RR'),'CBA','Binu.John@cba.com.au','EMAIL',null,null,(select new_oid() from dual));
Insert into FT_T_ISG1 (ISS_GRP_OID,START_TMS,LAST_CHG_TMS,LAST_CHG_USR_ID,EMAIL_ID,PURP_TYP,END_TMS,DATA_SRC_ID,ISG1_OID) values ('MRUTEAM   ',to_date('10/APR/18','DD/MON/RR'),to_date('10/APR/18','DD/MON/RR'),'CBA','Tushar.Agarwal1@cba.com.au','EMAIL',null,null,(select new_oid() from dual));
Insert into FT_T_ISG1 (ISS_GRP_OID,START_TMS,LAST_CHG_TMS,LAST_CHG_USR_ID,EMAIL_ID,PURP_TYP,END_TMS,DATA_SRC_ID,ISG1_OID) values ('RCVA==1665',to_date('04/MAY/18','DD/MON/RR'),to_date('04/MAY/18','DD/MON/RR'),'CBA','ssahay@thegoldensource.com','EMAIL',null,null,(select new_oid() from dual));
Insert into FT_T_ISG1 (ISS_GRP_OID,START_TMS,LAST_CHG_TMS,LAST_CHG_USR_ID,EMAIL_ID,PURP_TYP,END_TMS,DATA_SRC_ID,ISG1_OID) values ('SUPPORTEAM',to_date('21/MAR/18','DD/MON/RR'),to_date('21/MAR/18','DD/MON/RR'),'CBA','Jayesh.Kakaiya@cba.com.au','EMAIL',null,null,(select new_oid() from dual));
Insert into FT_T_ISG1 (ISS_GRP_OID,START_TMS,LAST_CHG_TMS,LAST_CHG_USR_ID,EMAIL_ID,PURP_TYP,END_TMS,DATA_SRC_ID,ISG1_OID) values ('SUPPORTEAM',to_date('10/APR/18','DD/MON/RR'),to_date('10/APR/18','DD/MON/RR'),'CBA','David.Tao2@cba.com.au','EMAIL',null,null,(select new_oid() from dual));
Insert into FT_T_ISG1 (ISS_GRP_OID,START_TMS,LAST_CHG_TMS,LAST_CHG_USR_ID,EMAIL_ID,PURP_TYP,END_TMS,DATA_SRC_ID,ISG1_OID) values ('SUPPORTEAM',to_date('10/APR/18','DD/MON/RR'),to_date('10/APR/18','DD/MON/RR'),'CBA','Binu.John@cba.com.au','EMAIL',null,null,(select new_oid() from dual));
Insert into FT_T_ISG1 (ISS_GRP_OID,START_TMS,LAST_CHG_TMS,LAST_CHG_USR_ID,EMAIL_ID,PURP_TYP,END_TMS,DATA_SRC_ID,ISG1_OID) values ('SUPPORTEAM',to_date('10/APR/18','DD/MON/RR'),to_date('10/APR/18','DD/MON/RR'),'CBA','Harpreet.Kaur1@cba.com.au','EMAIL',null,null,(select new_oid() from dual));
