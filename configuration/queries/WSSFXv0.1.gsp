<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.15">
<package-comment/>
<businessobject displayString="WSSFXv0.1" type="com.j2fe.translation.template.QueryDefinition">
<com.j2fe.translation.template.QueryDefinition id="0">
<name id="1">WSSFXv0.1</name>
<parameters id="2" type="java.util.ArrayList">
<item id="3" type="com.j2fe.translation.template.QueryParameter">
<description id="4">WSS Group ID</description>
<name id="5">WSS Group</name>
<type>12</type>
</item>
<item id="6" type="com.j2fe.translation.template.QueryParameter">
<description id="7">Snap Date</description>
<name id="8">Snap Date</name>
<type>12</type>
</item>
<item id="9" type="com.j2fe.translation.template.QueryParameter">
<description id="10">Snap Group</description>
<name id="11">Snap Group</name>
<type>12</type>
</item>
</parameters>
<text id="12">-- ############################################################### WSS FX Query&#13;
-- Testing Groups&#13;
-- #ID          #Name&#13;
-- WSS=ISGR01 - WSS_SYD_FX&#13;
-- WSS=ISGR03 - WSS_NY_FX&#13;
-- WSS=ISGR05 - WSS_LDN_FX&#13;
&#13;
-- Parameter 1: Wallstreet Group&#13;
-- Parameter 2: Snap Date&#13;
-- Parameter 3: Snap Group&#13;
&#13;
-------------------------------------------------------------&#13;
SELECT &#13;
  (Currency&#13;
  || APPSTATIC&#13;
  || TENOR&#13;
  || RATE&#13;
  || MRMFSTATIC&#13;
  || APPLICATIONSTATIC&#13;
  || INTERFACESTATIC&#13;
  || RATE_AREA&#13;
  || MESSAGE_ID) AS WSS&#13;
FROM&#13;
  (SELECT&#13;
    --Need to determine logic for Nondeliverables&#13;
    CASE&#13;
      WHEN FXCH.TRGT_CURR_CDE = 'RUB'&#13;
      AND ISCL1.CL_VALUE      = 'FORWARD-FX'&#13;
      AND ISCL2.CL_VALUE      = 'ND FWD'&#13;
      THEN 'NRB'&#13;
      WHEN FXCH.TRGT_CURR_CDE = 'RUB'&#13;
      AND ISCL1.CL_VALUE      = 'FORWARD-FX'&#13;
      AND ISCL2.CL_VALUE      = 'DELIVERABLE'&#13;
      THEN FXCH.TRGT_CURR_CDE&#13;
      WHEN FXCH.SRCE_CURR_CDE = 'SBD'&#13;
      AND ISCL1.CL_VALUE      = 'SPOT FX'&#13;
      AND ISCL2.CL_VALUE      = 'NA'&#13;
      THEN FXCH.SRCE_CURR_CDE&#13;
      WHEN FXCH.SRCE_CURR_CDE = 'USD'&#13;
      AND FXCH.TRGT_CURR_CDE IN ('NPH','NVN','NTH','NTW','NIN')&#13;
      THEN FT_T_GPCS.PRC_CURR_CDE&#13;
      WHEN FXCH.SRCE_CURR_CDE = 'USD'&#13;
      THEN FXCH.TRGT_CURR_CDE&#13;
      ELSE RPAD(FT_T_GPCS.PRC_CURR_CDE,3)&#13;
    END          AS Currency,&#13;
    RPAD('FX',2) AS APPSTATIC,&#13;
    CASE&#13;
      WHEN MAT_EXP_TMS  &lt;&gt; NULL&#13;
      AND ISCL1.CL_VALUE = 'FUTURES'&#13;
      THEN&#13;
        --LOGIC - Checks future maturity NEEDS TO BE TESTED&#13;
        CASE EXTRACT(MONTH FROM MAT_EXP_TMS)&#13;
          WHEN 3&#13;
          THEN RPAD(('M'&#13;
            || TO_CHAR(MAT_EXP_TMS, 'YY')),5)&#13;
          WHEN 6&#13;
          THEN RPAD(('J'&#13;
            || TO_CHAR(MAT_EXP_TMS, 'YY')),5)&#13;
          WHEN 9&#13;
          THEN RPAD(('S'&#13;
            || TO_CHAR(MAT_EXP_TMS, 'YY')),5)&#13;
          WHEN 12&#13;
          THEN RPAD(('D'&#13;
            || TO_CHAR(MAT_EXP_TMS, 'YY')),5)&#13;
        END&#13;
      WHEN ISCL1.CL_VALUE = 'SWAP'&#13;
      THEN --NOT NEED FOR SYDNEY&#13;
        --LOGIC - Check if swap is BBSW 3M/6M NEEDS TO BE COMPLETED&#13;
        CASE TO_CHAR(EXTRACT(MONTH FROM MAT_EXP_TMS))&#13;
          WHEN 'BBSW-3M'&#13;
          THEN RPAD('SQ',5)&#13;
          WHEN 'BBSW-6M'&#13;
          THEN RPAD('SW',5)&#13;
          WHEN 'OFFER'&#13;
          THEN RPAD('RV',5)&#13;
          ELSE RPAD('SW',5)&#13;
        END&#13;
      WHEN ISCL1.CL_VALUE = 'FXSPOT'&#13;
      THEN RPAD('S',5)--NOT NEED FOR SYDNEY&#13;
      ELSE&#13;
        CASE SUBSTR(FT_T_ISSU.ISS_TENOR_TYP,-4) --This will handle tenors if not a future&#13;
          WHEN 'SPOT'&#13;
          THEN RPAD('S',5)&#13;
          WHEN 'DAYS'&#13;
          THEN&#13;
            CASE&#13;
              WHEN TO_CHAR(LTRIM(SUBSTR(FT_T_ISSU.ISS_TENOR_TYP,1,3))) &gt; 7&#13;
              THEN RPAD(CONCAT(TO_NUMBER(LTRIM(SUBSTR(FT_T_ISSU.ISS_TENOR_TYP,1,3),'0'))/7,'W'),5) --This will handle 7 days = 1 week&#13;
              WHEN TO_CHAR(LTRIM(SUBSTR(FT_T_ISSU.ISS_TENOR_TYP,1,3))) = 3&#13;
              THEN RPAD('SN',5) --This will handle SPOT NEXT&#13;
              WHEN TO_CHAR(LTRIM(SUBSTR(FT_T_ISSU.ISS_TENOR_TYP,1,3))) = 2&#13;
              THEN RPAD('T',5)&#13;
              WHEN TO_CHAR(LTRIM(SUBSTR(FT_T_ISSU.ISS_TENOR_TYP,1,3))) = 1&#13;
              THEN RPAD('O',5)&#13;
            END&#13;
          WHEN 'WEEK'&#13;
          THEN RPAD(CONCAT(LTRIM(SUBSTR(FT_T_ISSU.ISS_TENOR_TYP,1,3),'0'),'W'),5)&#13;
          WHEN 'MNTH'&#13;
          THEN&#13;
            CASE&#13;
              WHEN TO_CHAR(LTRIM(SUBSTR(FT_T_ISSU.ISS_TENOR_TYP,1,3))) = 12&#13;
              THEN RPAD('1Y',5)&#13;
              ELSE RPAD(CONCAT(LTRIM(SUBSTR(FT_T_ISSU.ISS_TENOR_TYP,1,3),'0'),'M'),5)&#13;
            END&#13;
          WHEN 'YEAR'&#13;
          THEN RPAD(CONCAT(LTRIM(SUBSTR(FT_T_ISSU.ISS_TENOR_TYP,1,3),'0'),'Y'),5)&#13;
          ELSE&#13;
            CASE&#13;
              WHEN ISCL1.CL_VALUE = 'SPOT FX'&#13;
              THEN RPAD('S',5)&#13;
              ELSE RPAD('!',5)&#13;
            END --For testing show value in tenor&#13;
        END&#13;
    END AS TENOR,&#13;
    CASE&#13;
      WHEN SUBSTR(FT_T_GPCS.UNIT_CPRC,1,1) = '.'&#13;
      THEN ( RPAD('0'&#13;
        || FT_T_GPCS.UNIT_CPRC,20))&#13;
      WHEN SUBSTR(FT_T_GPCS.UNIT_CPRC,1,2) = '-.'&#13;
      THEN RPAD(('-0.'&#13;
        || SUBSTR(FT_T_GPCS.UNIT_CPRC,3)),20)&#13;
      WHEN FT_T_GPCS.UNIT_CPRC = '0'&#13;
      THEN RPAD('P',20)&#13;
      ELSE RPAD(FT_T_GPCS.UNIT_CPRC,20)&#13;
    END AS RATE, --Need to clarify the decimal accuracy&#13;
    --LOGIC - Check if tenor is Spot price&#13;
    CASE ISCL1.CL_VALUE&#13;
      WHEN 'SPOT FX'&#13;
      THEN RPAD('MR',720)&#13;
      ELSE RPAD('MF',720)&#13;
    END                 AS MRMFSTATIC,&#13;
    RPAD('FX',2)        AS APPLICATIONSTATIC, --FIXED&#13;
    RPAD('ANALYSTS',22) AS INTERFACESTATIC,   --FIXED&#13;
    --LOGIC - Checks PPED_OID field for snap time&#13;
    CASE FT_T_GPCS.PPED_OID&#13;
      WHEN 'SNAP====SY'&#13;
      THEN RPAD('SYDREF',6)&#13;
      WHEN 'SNAP====NY'&#13;
      THEN RPAD('NYREF',6)&#13;
      WHEN 'SNAP====LN'&#13;
      THEN RPAD('LDNREF',6)&#13;
      ELSE RPAD('!',6)&#13;
    END AS RATE_AREA,&#13;
    RPAD(('FXRAT'&#13;
    ||TO_CHAR(50000000 + ROWNUM)),14) AS MESSAGE_ID, --checked WSS VB Script and copied their use&#13;
    FT_T_ISID.ISS_ID                  AS ISSID,&#13;
    ISCL1.CL_VALUE                    AS RI_CODE,&#13;
    ISCL2.CL_VALUE                    AS RI_SUBCODE,&#13;
    FT_T_GPCS.PPED_OID                AS Locale&#13;
  FROM FT_T_GPCS&#13;
  JOIN FT_T_ISSU&#13;
  ON FT_T_GPCS.INSTR_ID = FT_T_ISSU.INSTR_ID&#13;
  JOIN FT_T_ISID&#13;
  ON FT_T_ISID.INSTR_ID = FT_T_GPCS.INSTR_ID&#13;
    AND FT_T_ISID.ISS_ID       IN&#13;
    (&#13;
    --SUB Query pulls all rate cat's from ISS_ID Table&#13;
    SELECT ISS_ID&#13;
    FROM FT_T_ISID&#13;
    WHERE ISID_OID IN&#13;
      (SELECT ISID_OID&#13;
      FROM FT_T_ISGP&#13;
      WHERE FT_T_ISGP.PRNT_ISS_GRP_OID = ?&#13;
      )&#13;
    )&#13;
  JOIN FT_T_ISCL ISCL1&#13;
  ON FT_T_GPCS.INSTR_ID     = ISCL1.INSTR_ID&#13;
  AND ISCL1.indus_cl_set_id = 'CBAISS'&#13;
  AND ISCL1.ISID_OID                         = FT_T_ISID.ISID_OID --Removes duplicates from ISCL&#13;
  JOIN FT_T_ISCL ISCL2&#13;
  ON FT_T_GPCS.INSTR_ID     = ISCL2.INSTR_ID&#13;
  AND ISCL2.indus_cl_set_id = 'CBAISSUB'&#13;
  AND ISCL2.ISID_OID                         = FT_T_ISID.ISID_OID --Removes duplicates from ISCL&#13;
  JOIN FT_T_FXCH FXCH&#13;
  ON FXCH.INSTR_ID            = FT_T_GPCS.INSTR_ID&#13;
  WHERE 1                     =1&#13;
  AND FT_T_GPCS.PRC_TYP      IN ('MID','003') --Returns on MID prices&#13;
  AND FT_T_GPCS.PRC_CURR_CDE IS NOT NULL      --Removes prices that have failed to load&#13;
  AND FT_T_GPCS.END_TMS                     IS NULL&#13;
  AND TO_DATE(FT_T_GPCS.PRC_TMS, 'DD/MM/YY') = ?&#13;
  AND FT_T_GPCS.GPRC_IND                     = 'Y'&#13;
  AND FT_T_GPCS.PPED_OID = ?&#13;
  ORDER BY 1 ASC&#13;
  ) </text>
</com.j2fe.translation.template.QueryDefinition>
</businessobject>
</goldensource-package>
