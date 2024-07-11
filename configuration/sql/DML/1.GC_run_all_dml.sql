spool GC_run_all_dml.log;
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

@AUGR.sql;
@AUSR.sql;
@AUGP.sql;
@ISTY.sql;
@PRVI.sql;
@SRLE.sql;
@SRPP.sql;
@TRAL.sql;
@UTSK.sql;
@VRDT.sql;



spool off;
