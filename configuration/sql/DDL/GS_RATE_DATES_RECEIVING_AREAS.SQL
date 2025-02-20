
 CREATE TABLE "GS_RATE_DATES_RECEIVING_AREAS" (
 "GSRD_ACTION"	VARCHAR2(1 BYTE) NOT NULL ENABLE,
 "GSRD_BATCH_NAME" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
 "GSRD_RATE_CATEGORY_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
 "GSRD_REFERENCE_DATE"	DATE ,
 "GSRD_MATURITY_DATE"	DATE ,
 "GSRD_GS_STATUS"	VARCHAR2(1 BYTE) ,
 "GSRD_ARRIVAL_TIMESTAMP"	TIMESTAMP(6) ,
 "GSRD_PROCESSING_STATUS"	VARCHAR2(1 BYTE) ,
 "GSRD_PROCESSING_MESSAGE"  VARCHAR2(50 BYTE)
 
 ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
--  TABLESPACE "GOLDENSOURCE_MRU_DATA" 
;
  
  
  CREATE INDEX "GS_RT_DTS_RECEIVING_AREAS_I1" ON "GS_RATE_DATES_RECEIVING_AREAS" ("GSRD_BATCH_NAME", "GSRD_PROCESSING_STATUS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
--  TABLESPACE "GOLDENSOURCE_MRU_DATA" 
;



  CREATE OR REPLACE EDITIONABLE TRIGGER "TRIG_GS_RT_DT_RECEIVING_AREAS"
BEFORE INSERT
-- need a trigger to get indiv arrival timestamps
ON GS_RATE_DATES_RECEIVING_AREAS
REFERENCING NEW AS NEW
FOR EACH ROW
BEGIN
:new.GSRD_ARRIVAL_TIMESTAMP:=systimestamp;
END trig_gs_rt_dt_receiving_areas;
/

ALTER TRIGGER "TRIG_GS_RT_DT_RECEIVING_AREAS" ENABLE;

