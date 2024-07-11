spool GC_run_issue_groups.log;
--------------------------------------------------------------------
-- Execute sql Scripts - 
-- |----------------------------------------------------------------
-- | Product ID: GSDM
-- | Project: CBA
-- | Requested By: 
-- | Approved By: 
-- | Prepared By: David T
-- |----------------------------------------------------------------
-- | Date: 26-Apr-2018
--------------------------------------------------------------------

SET SCAN OFF;
SET ECHO ON;
SET DEFINE OFF;
--------------------------------------------------------------------

@ISGR_CriticalRates.sql;
@ISGP_CriticalRates.sql;
@ISGR_WSS.sql;
@ISGP_WSS.sql;


spool off;
