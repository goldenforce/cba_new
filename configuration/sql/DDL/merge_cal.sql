create or replace procedure merge_cal (current_yr IN boolean )
is

cursor cur_cal_id(v_yr in varchar2) is 
select cal_id from FT_T_CADP where extract(YEAR FROM greg_dte)=v_yr group by cal_id having count(greg_dte)<50;

v_cal_id cur_cal_id%rowtype;
v_cur_year varchar2(10);
v_dte date;
v_nxt_year varchar2(10);
flag boolean;

begin

select trunc(sysdate) into v_dte from dual;

select extract(YEAR from v_dte) into v_cur_year from dual;
    
    if current_yr then 
         v_nxt_year:=v_cur_year;
        -- flag:=false;
        
       for v_cal_id in cur_cal_id(v_nxt_year)
       loop
           /* if flag then    
                update FT_T_CADP set end_tms= sysdate where cal_id = v_cal_id.cal_id and extract(YEAR from greg_dte)=v_cur_year;     
            end if;
            */

            merge into FT_T_CADP cadp
            Using(
            select * from FT_T_CADP where cal_id='PRPTUAL' and extract( YEAR from greg_dte) = v_nxt_year)prptual
            on(prptual.greg_dte=cadp.greg_dte and cadp.cal_id = v_cal_id.cal_id)
            WHEN NOT MATCHED then
            INSERT (CAL_ID,GREG_DTE,BUS_DTE_IND,WK_END_IND,MTH_END_IND,QRTR_END_IND,YR_END_IND,VAL_DTE_IND,HALF_YR_END_IND,LAST_CHG_TMS,LAST_CHG_USR_ID,START_TMS,CADP_OID)
            VALUES
            (v_cal_id.cal_id,prptual.GREG_DTE,prptual.BUS_DTE_IND,prptual.WK_END_IND,prptual.MTH_END_IND,prptual.QRTR_END_IND,prptual.YR_END_IND,prptual.VAL_DTE_IND,prptual.HALF_YR_END_IND,prptual.LAST_CHG_TMS,'CBA_CUSTOM',prptual.START_TMS,new_oid);

       end loop;
        
    else    
         v_nxt_year:=v_cur_year+1;
       --  flag:=true;
       
       for v_cal_id in cur_cal_id(v_nxt_year)
       loop
           /* if flag then    
                update FT_T_CADP set end_tms= sysdate where cal_id = v_cal_id.cal_id and extract(YEAR from greg_dte)=v_cur_year;     
            end if;
            */

            merge into FT_T_CADP cadp
            Using(
            select * from FT_T_CADP where cal_id='PRPTUAL' and extract( YEAR from greg_dte) = v_nxt_year)prptual
            on(prptual.greg_dte=cadp.greg_dte and cadp.cal_id = v_cal_id.cal_id)
            WHEN NOT MATCHED then
            INSERT (CAL_ID,GREG_DTE,BUS_DTE_IND,WK_END_IND,MTH_END_IND,QRTR_END_IND,YR_END_IND,VAL_DTE_IND,HALF_YR_END_IND,LAST_CHG_TMS,LAST_CHG_USR_ID,START_TMS,CADP_OID)
            VALUES
            (v_cal_id.cal_id,prptual.GREG_DTE,prptual.BUS_DTE_IND,prptual.WK_END_IND,prptual.MTH_END_IND,prptual.QRTR_END_IND,prptual.YR_END_IND,prptual.VAL_DTE_IND,prptual.HALF_YR_END_IND,prptual.LAST_CHG_TMS,'CBA_CUSTOM',prptual.START_TMS,new_oid);

       end loop;
    end if;    
    
end;