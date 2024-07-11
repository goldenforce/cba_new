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

create or replace FUNCTION cba_rmdsreqrep (
   p_grp_nme   VARCHAR2,
   p_reqtyp    VARCHAR2,
   p_reg       VARCHAR2 DEFAULT NULL
)
   RETURN XMLTYPE
IS
   xml   XMLTYPE;
BEGIN
   SELECT XMLELEMENT
                 ("VendorRequest",
                  XMLFOREST ('CBA-' || NVL (p_grp_nme, 'ALL') AS "Requestor",
                             'CBA' AS "User",
                             'REQUEST-IMMEDIATE' AS "Action",
                             'RMDS' AS "Vendor",
                             p_grp_nme || TO_CHAR (SYSDATE, 'MM-DD-HH24.MI.SS') AS "UserRequestID"
                            ),
                  (SELECT XMLAGG (XMLELEMENT ("Request",
                                              XMLFOREST (p_reqtyp AS "DataType",
                                                         'ISSU' AS "TableType",
                                                         RTRIM (crtick.iss_id) AS "Identifier",
                                                         RTRIM ('RIC') AS "IDContext"
                                                        )
                                             )
                                 )
                     FROM ft_t_issu issu,
                          ft_t_isid crtick,
                          ft_t_isgr isgr,
                          ft_t_isgp isgp
                    WHERE issu.instr_id = crtick.instr_id
                      AND crtick.id_ctxt_typ = 'RIC'
                      AND crtick.start_tms < SYSDATE
                      AND NVL (crtick.end_tms, TO_DATE ('99991231', 'YYYYMMDD')) > SYSDATE
                      AND issu.instr_id = isgp.instr_id
                      AND isgp.prnt_iss_grp_oid = isgr.iss_grp_oid
                      AND isgr.grp_nme = p_grp_nme
                      AND isgp.isid_oid = crtick.isid_oid
                      )
                 )
     INTO xml
     FROM DUAL;

   RETURN xml;
END;