spool GC_run_curve_definition.log;
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

@MTRX.sql;
@MTFD.sql;
@MTFC.sql;
@MTDI.sql;
@MTDC.sql;
@MTGD.sql;

spool off;
