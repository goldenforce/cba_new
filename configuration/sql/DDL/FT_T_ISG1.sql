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


SET SCAN OFF;
SET ECHO ON;
SET DEFINE OFF;

--------------------------------------------------------------------
-- Notes:
-- Please check the table space and schema read/write role, and change
-- accourdingly before running below scripts
--------------------------------------------------------------------
CREATE TABLE ft_t_isg1 (
  iss_grp_oid     CHAR(10)       NOT NULL,
  start_tms       DATE           NOT NULL,
  last_chg_tms    DATE           NOT NULL,
  last_chg_usr_id VARCHAR2(256)  NOT NULL,
  email_id        VARCHAR2(4000) NULL,
  purp_typ        VARCHAR2(8)    NULL,
  end_tms         DATE           NULL,
  data_src_id     VARCHAR2(40)   NULL,
  isg1_oid        CHAR(10)       NOT NULL
)
  STORAGE (
    NEXT       1024 K
  )
;

ALTER TABLE ft_t_isg1
  ADD CONSTRAINT ft_t_isg1_pk PRIMARY KEY (
    isg1_oid
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
;

ALTER TABLE ft_t_isg1
  ADD CONSTRAINT isg1f003 FOREIGN KEY (
    iss_grp_oid
  ) REFERENCES ft_t_isgr (
    iss_grp_oid
  )
;

GRANT DELETE,INSERT,SELECT,UPDATE ON ft_t_isg1 TO CBA_GC_OWN_rw_rle;
