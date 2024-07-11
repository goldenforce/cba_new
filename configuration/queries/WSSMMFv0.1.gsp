<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.15">
<package-comment/>
<businessobject displayString="WSSMMFv0.1" type="com.j2fe.translation.template.QueryDefinition">
<com.j2fe.translation.template.QueryDefinition id="0">
<name id="1">WSSMMFv0.1</name>
<parameters id="2" type="java.util.ArrayList">
<item id="3" type="com.j2fe.translation.template.QueryParameter">
<description id="4">WSS Group</description>
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
<text id="12">-- ############################################################### WSS MM - F Query&#13;
-- Testing Groups&#13;
-- #ID          #Name&#13;
-- WSS=ISGR02 - WSS_SYD_MM&#13;
-- WSS=ISGR04 - WSS_NY_MM&#13;
-- WSS=ISGR06 - WSS_LDN_MM&#13;
-- WSS=ISGR07 - WSS_SAL_MM&#13;
&#13;
&#13;
-- Parameter 0: Wallstreet Group&#13;
-- Parameter 1: Snap Date&#13;
-- Parameter 2: Snap Group&#13;
&#13;
-------------------------------------------------------------&#13;
&#13;
SELECT &#13;
  (Currency&#13;
  || TENOR&#13;
  || CURVETYPE&#13;
  || RATE&#13;
  || TSTATIC&#13;
  || APPLICATIONSTATIC&#13;
  || INTERFACESTATIC&#13;
  || RATE_AREA&#13;
  || MESSAGE_ID) AS WSS&#13;
FROM&#13;
  (SELECT&#13;
    --Need to determine logic for Nondeliverables&#13;
    RPAD(FT_T_GPCS.PRC_CURR_CDE,5) AS Currency,&#13;
    CASE&#13;
      WHEN TRIM(ISCL1.CL_VALUE) = 'FRA'&#13;
      THEN &#13;
        RPAD(&#13;
               ( &#13;
                 (SUBSTR(ISST.STAT_CHAR_VAL_TXT,5,3) -  SUBSTR(FT_T_GPCS.PRC_TMS,8,2)) * 12 + TRUNC((to_date(CONCAT('01-',ISST.STAT_CHAR_VAL_TXT),'DD/MM/YY')- FT_T_GPCS.PRC_TMS)/28) ||&#13;
                 'I' || &#13;
                 to_number((SUBSTR(ISST.STAT_CHAR_VAL_TXT,5,3) -  SUBSTR(FT_T_GPCS.PRC_TMS,8,2)) * 12 + TRUNC((to_date(CONCAT('01-',ISST.STAT_CHAR_VAL_TXT),'DD/MM/YY')- FT_T_GPCS.PRC_TMS)/28)+3)&#13;
               ),&#13;
               5&#13;
            )&#13;
      WHEN ISCL1.CL_VALUE = 'FUT-DEP' AND MAT_EXP_TMS IS NOT NULL&#13;
      THEN&#13;
        --LOGIC - Checks future maturity NEEDS TO BE TESTED&#13;
        CASE SUBSTR(ISID.ISS_ID,3,1)&#13;
          WHEN 'H'&#13;
          THEN RPAD(('M'&#13;
           || TO_CHAR(MAT_EXP_TMS, 'YY')),5)&#13;
          WHEN 'M'&#13;
          THEN RPAD(('J'&#13;
          || TO_CHAR(MAT_EXP_TMS, 'YY')),5)&#13;
          WHEN 'U'&#13;
          THEN RPAD(('S'&#13;
          || TO_CHAR(MAT_EXP_TMS, 'YY')),5)&#13;
          WHEN 'Z'&#13;
          THEN RPAD(('D'&#13;
          || TO_CHAR(MAT_EXP_TMS, 'YY')),5)&#13;
      END&#13;
      ELSE&#13;
        CASE SUBSTR(FT_T_ISSU.ISS_TENOR_TYP,-4) --This will handle tenors if not a future&#13;
          WHEN 'SPOT'&#13;
          THEN RPAD('S',5)&#13;
          WHEN 'DAYS'&#13;
          THEN&#13;
            CASE&#13;
              WHEN TO_CHAR(LTRIM(SUBSTR(FT_T_ISSU.ISS_TENOR_TYP,1,3))) &gt;= 7&#13;
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
          ELSE RPAD(FT_T_ISSU.ISS_TENOR_TYP,5) --For testing show value in tenor&#13;
        END&#13;
    END AS TENOR,&#13;
    CASE ISCL1.CL_VALUE&#13;
      WHEN 'FUT-DEP'&#13;
      THEN RPAD('FF',2)&#13;
      WHEN 'DEPOSIT'&#13;
      THEN RPAD('RF',2)&#13;
      WHEN 'SWAP'&#13;
      THEN&#13;
        --LOGIC - Check if swap is BBSW 3M/6M NEEDS TO BE COMPLETED&#13;
        CASE ISCL2.CL_VALUE --Check the RI SUBCODE&#13;
          WHEN 'BBSW-3M'&#13;
          THEN RPAD('3F',2)&#13;
          WHEN 'BBSW-6M'&#13;
          THEN RPAD('6F',2)&#13;
          WHEN 'OFFER'&#13;
          THEN RPAD('RF',2)&#13;
          ELSE RPAD('1F',2)&#13;
        END&#13;
      WHEN 'FRA'&#13;
      THEN 'FR'&#13;
      ELSE 'TS'&#13;
    END AS CURVETYPE,&#13;
    CASE&#13;
      WHEN SUBSTR(FT_T_GPCS.UNIT_CPRC,1,1) = '.'&#13;
      THEN ( RPAD('0'&#13;
        || FT_T_GPCS.UNIT_CPRC,30))&#13;
      WHEN SUBSTR(FT_T_GPCS.UNIT_CPRC,1,2) = '-.'&#13;
      THEN RPAD(('-0.'&#13;
        || SUBSTR(FT_T_GPCS.UNIT_CPRC,3)),30)&#13;
      ELSE RPAD(FT_T_GPCS.UNIT_CPRC,30)&#13;
    END AS RATE, --Need to clarify the decimal accuracy&#13;
    --STATIC FIELDS&#13;
    RPAD('T',708)       AS TSTATIC,&#13;
    RPAD('MM',2)        AS APPLICATIONSTATIC,&#13;
    RPAD('ANALYSTS',22) AS INTERFACESTATIC,&#13;
    --LOGIC - Checks PPED_OID field for snap time&#13;
    CASE FT_T_GPCS.PPED_OID&#13;
      WHEN 'SNAP====SY'&#13;
      THEN RPAD('SYDREF',6)&#13;
      WHEN 'SNAP====NY'&#13;
      THEN RPAD('NYREF',6)&#13;
      WHEN 'SNAP====LN'&#13;
      THEN RPAD('LDNREF',6)&#13;
      ELSE RPAD('ERROR',2)&#13;
    END AS RATE_AREA,&#13;
    RPAD(('MMRAT'&#13;
    ||TO_CHAR(43006999 + ROWNUM)),14) AS MESSAGE_ID, --checked WSS VB Script and copied their use&#13;
    FT_T_ISID.ISS_ID                  AS ISSID,&#13;
    ISCL1.CL_VALUE                    AS RI_CODE,&#13;
    ISCL2.CL_VALUE                    AS RI_SUBCODE,&#13;
    FT_T_GPCS.PPED_OID                AS Locale,&#13;
    FT_T_ISSU.ISS_TENOR_TYP           AS tTenor&#13;
  FROM FT_T_GPCS&#13;
  JOIN FT_T_ISSU&#13;
  ON FT_T_GPCS.INSTR_ID = FT_T_ISSU.INSTR_ID&#13;
  JOIN FT_T_ISID&#13;
  ON FT_T_ISID.INSTR_ID = FT_T_GPCS.INSTR_ID &#13;
    AND TRIM(FT_T_ISID.ISS_USAGE_TYP)=TRIM(FT_T_GPCS.PRC_TYP) --Price Type filter gets MID's &#13;
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
  JOIN FT_T_ISCL ISCL1 --This is used for RI Code&#13;
  ON FT_T_GPCS.INSTR_ID     = ISCL1.INSTR_ID&#13;
    AND ISCL1.indus_cl_set_id = 'CBAISS'  &#13;
    AND ISCL1.ISID_OID        = FT_T_ISID.ISID_OID   --Removes duplicates from ISCL&#13;
  JOIN FT_T_ISCL ISCL2 --This is used for RI SUB Code&#13;
  ON FT_T_GPCS.INSTR_ID      = ISCL2.INSTR_ID&#13;
    AND ISCL2.indus_cl_set_id = 'CBAISSUB'   &#13;
    AND ISCL2.ISID_OID       = FT_T_ISID.ISID_OID --Removes duplicates from ISCL&#13;
  LEFT OUTER JOIN FT_T_ISST ISST --This is used to get the FRA's Mat Date&#13;
    ON ISST.INSTR_ID = FT_T_GPCS.INSTR_ID &#13;
    AND ISST.stat_def_id = 'MATDATE' &#13;
    AND ISST.end_tms IS NULL&#13;
   JOIN FT_T_ISPC ISPC --This is used to get the &#13;
    ON ISPC.ISS_PRC_ID = FT_T_GPCS.ISS_PRC_ID&#13;
   LEFT JOIN FT_T_ISID ISID&#13;
    ON ISID.ISID_OID = ISPC.ISID_OID &#13;
  WHERE 1                     =1&#13;
  AND FT_T_GPCS.PRC_CURR_CDE IS NOT NULL      --Removes prices that have failed to load&#13;
  AND FT_T_GPCS.END_TMS                     IS NULL&#13;
  AND TO_DATE(FT_T_GPCS.PRC_TMS, 'DD/MM/YY') = ?&#13;
  AND FT_T_GPCS.GPRC_IND                     = 'Y'&#13;
  AND FT_T_GPCS.PPED_OID = ?&#13;
  AND (SUBSTR(ISID.ISS_ID,3,1) NOT IN ('F','J','K','N','Q','V','X') OR MAT_EXP_TMS IS NULL) &#13;
  ) &#13;
  &#13;
--####################################################--####################################################</text>
</com.j2fe.translation.template.QueryDefinition>
</businessobject>
</goldensource-package>
