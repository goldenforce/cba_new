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
--------------------------------------------------------------------
-- S.No.  DefectID             Date       By              Description
-- -----------------------------------------------------------------
-- 1. 

-- -----------------------------------------------------------------
-- Create 'staging area' in GS, it has the same table strcture with 'MRU staging area'
-- -----------------------------------------------------------------
CREATE TABLE GS_PRICES_RECEIVING_AREAS
(
   "GSP_ACTION"                VARCHAR2 (1 BYTE) NOT NULL ENABLE,
   "GSP_BATCH_NAME"            VARCHAR2 (50 BYTE) NOT NULL ENABLE,
   "GSP_RC_RATE_CATEGORY_ID"   VARCHAR2 (20 BYTE) NOT NULL ENABLE,
   "GSP_REFERENCE_DATE"        DATE NOT NULL ENABLE,
   "GSP_RATE_SOURCE_CODE"      VARCHAR2 (22 BYTE) NOT NULL ENABLE,
   "GSP_PRICE"                 NUMBER NOT NULL ENABLE,
   "GSP_GS_STATUS"             VARCHAR2 (1 BYTE) NOT NULL ENABLE,
   "GSP_ARRIVAL_TIMESTAMP"     TIMESTAMP (6) NOT NULL ENABLE,
   "GSP_PROCESSING_STATUS"     VARCHAR2 (1 BYTE),
   "GSP_PROCESSING_MESSAGE"    VARCHAR2 (50 BYTE),
   CONSTRAINT "GSP_ACTION_CHECK" CHECK (gsp_action IN ('I', 'U', 'D')) ENABLE,
   CONSTRAINT "GSP_PROCESSING_STATUS_CHECK" CHECK
      (gsp_processing_status IN ('L', 'F'))
      ENABLE
)
SEGMENT CREATION IMMEDIATE
PCTFREE 10
PCTUSED 40
INITRANS 1
MAXTRANS 255
NOCOMPRESS
LOGGING
STORAGE (INITIAL 65536
         NEXT 1048576
         MINEXTENTS 1
         MAXEXTENTS 2147483645
         PCTINCREASE 0
         FREELISTS 1
         FREELIST GROUPS 1
         BUFFER_POOL DEFAULT
         FLASH_CACHE DEFAULT
         CELL_FLASH_CACHE DEFAULT)
;

