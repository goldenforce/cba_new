create or replace PACKAGE body gs_load_work
AS
  PROCEDURE load_prices
  AS
    --  exec gs_load_work.load_prices
    i      NUMBER:=0;
    ins    NUMBER:=0;
    ierr   NUMBER;
    dreq   NUMBER:=0;
    dsucc  NUMBER:=0;
    ureq   NUMBER:=0;
    usucc  NUMBER:=0;
    bfound NUMBER:=0;
    n      NUMBER;
    l_mess GS_PRICES_RECEIVING_AREAS.GSP_PROCESSING_MESSAGE%type;
    l_PROCESSING_STATUS     VARCHAR2(1) := '';
    l_max_ARRIVAL_TIMESTAMP TIMESTAMP;
  BEGIN
    --dbms_output.put_line('----------------------');
    --dbms_output.put_line('test');
    l_startts:=systimestamp;
    -- do all D first
 /*
    FOR a IN
    (SELECT GSP_BATCH_NAME,
      MAX(GSP_ARRIVAL_TIMESTAMP) max_ARRIVAL_TIMESTAMP
    FROM GS_PRICES_RECEIVING_AREAS
    WHERE GSP_ACTION          IN('D','U')
    AND GSP_PROCESSING_STATUS IS NULL
    GROUP BY GSP_BATCH_NAME
    ORDER BY MAX(GSP_ARRIVAL_TIMESTAMP)
    )
    LOOP
      NULL;
      bfound:=bfound+1;
      dbms_output.put_line('------------------------------------------------------------------------------');
      l_subject:='Load '||a.GSP_BATCH_NAME||':';
      dbms_output.put_line('Batch '||a.GSP_BATCH_NAME||', Action=D/U');
      -- process each D/U
      dreq :=0;
      dsucc:=0;
      ureq :=0;
      usucc:=0;
      FOR b IN
      (SELECT GSP_RC_RATE_CATEGORY_ID ,
        TRUNC(GSP_REFERENCE_DATE) GSP_REFERENCE_DATE ,
        GSP_RATE_SOURCE_CODE ,
        GSP_PRICE ,
        GSP_ARRIVAL_TIMESTAMP ,
        GSP_ACTION ,
        rowid
      FROM GS_PRICES_RECEIVING_AREAS
      WHERE GSP_BATCH_NAME       =a.GSP_BATCH_NAME
      AND GSP_ACTION            IN('D','U')
      AND GSP_PROCESSING_STATUS IS NULL
      AND GSP_ARRIVAL_TIMESTAMP <=a.max_ARRIVAL_TIMESTAMP
      ORDER BY GSP_ARRIVAL_TIMESTAMP FOR UPDATE OF GSP_PROCESSING_STATUS,
        GSP_PROCESSING_MESSAGE
      )
      LOOP
        dbms_output.put_line(b.GSP_RC_RATE_CATEGORY_ID||','||b.GSP_REFERENCE_DATE);
        l_mess             :=NULL;
        l_PROCESSING_STATUS:=NULL;
        IF b.GSP_ACTION     ='D' THEN
          dreq             :=dreq+1;
          DELETE
          FROM mru_rate_prices
          WHERE RP_RC_RATE_CATEGORY_ID=b.GSP_RC_RATE_CATEGORY_ID
          AND RP_REFERENCE_DATE_TIME  =b.GSP_REFERENCE_DATE;
          dsucc                      :=dsucc+sql%rowcount;
          l_PROCESSING_STATUS        :='S';
          dbms_output.put_line('del');
        ELSE -- U
          ureq:=ureq+1;
          dbms_output.put_line('u1');
          UPDATE mru_rate_prices
          SET RP_RATE_SOURCE_CODE     =b.GSP_RATE_SOURCE_CODE ,
            RP_RATE_PRICE             =b.GSP_PRICE
          WHERE RP_RC_RATE_CATEGORY_ID=b.GSP_RC_RATE_CATEGORY_ID
          AND RP_REFERENCE_DATE_TIME  =b.GSP_REFERENCE_DATE;
          dbms_output.put_line('u2'||sql%rowcount||'x');
          usucc              :=usucc+sql%rowcount;
          l_PROCESSING_STATUS:='S';
        END IF;
        UPDATE GS_PRICES_RECEIVING_AREAS
        SET GSP_PROCESSING_STATUS=l_PROCESSING_STATUS
        WHERE rowid              =b.rowid;
      END LOOP;
  -- b
      COMMIT;
      dbms_output.put_line('Batch '||a.GSP_BATCH_NAME||', Action=D/U, rows updated/deleted='||(usucc+dsucc));
      IF dreq                                                                                       +ureq-usucc-dsucc = 0 THEN
        l_subject                                                                                                    :=l_subject||' No errors';
      ELSE
        l_subject:=l_subject||' Some records not processed successfully';
      END IF;
      send_email (a.GSP_BATCH_NAME, (usucc+dsucc), (dreq+ureq-usucc-dsucc), l_mess );
    END LOOP;
*/
    -- a
    --BEGIN
    /*
    FOR a IN
    (SELECT GSP_BATCH_NAME,
      MAX(GSP_ARRIVAL_TIMESTAMP) max_ARRIVAL_TIMESTAMP
    FROM GS_PRICES_RECEIVING_AREAS
    WHERE GSP_ACTION           ='I'
    AND GSP_PROCESSING_STATUS IS NULL
    GROUP BY GSP_BATCH_NAME
    ORDER BY GSP_BATCH_NAME
    )
    LOOP
      NULL;
      bfound:=bfound+1;
      */
      --dbms_output.put_line('------------------------------------------------------------------------------');
      -- dbms_output.put_line('Batch '||a.GSP_BATCH_NAME||', Action=I');
      -- process each I
      ins    :=0;
      ierr   :=0;
      l_emess:=NULL;
      FOR b IN
      (SELECT 
      GSP_ACTION,
      GSP_BATCH_NAME,
      GSP_RC_RATE_CATEGORY_ID,
      GSP_REFERENCE_DATE,
      GSP_RATE_SOURCE_CODE,
      GSP_PRICE,
      GSP_GS_STATUS,
      GSP_ARRIVAL_TIMESTAMP,
      GSP_PROCESSING_STATUS,
      GSP_PROCESSING_MESSAGE,
        rowid
      FROM GS_PRICES_RECEIVING_AREAS
      WHERE --GSP_BATCH_NAME       =a.GSP_BATCH_NAME AND 
      GSP_ACTION             ='I'
      AND GSP_PROCESSING_STATUS IS NULL
      --AND GSP_ARRIVAL_TIMESTAMP <=a.max_ARRIVAL_TIMESTAMP 
      AND gsp_batch_name = 'Manual Approved Price'
      FOR UPDATE OF GSP_PROCESSING_STATUS, GSP_PROCESSING_MESSAGE
      )
      LOOP
        l_mess             :=NULL;
        l_PROCESSING_STATUS:=NULL;
        --dbms_output.put_line(b.GSP_RC_RATE_CATEGORY_ID || b.GSP_PRICE);
        -- check for dups
        /*
        SELECT COUNT(*)
        INTO n
        FROM mru_rate_prices
        WHERE RP_RC_RATE_CATEGORY_ID=b.GSP_RC_RATE_CATEGORY_ID
        AND RP_REFERENCE_DATE_TIME  =b.GSP_REFERENCE_DATE;
        IF n                        > 0 THEN
          l_PROCESSING_STATUS      :='F';
          l_mess                   :='Rcat / date already present in mru_rate_prices';
        END IF;
        -- check for missing rcat
        SELECT COUNT(*)
        INTO n
        FROM mru_rate_categories
        WHERE RC_RATE_CATEGORY_ID=b.GSP_RC_RATE_CATEGORY_ID ;
        IF n                     = 0 THEN
          l_PROCESSING_STATUS   :='F';
          l_mess                :='Rcat not present in mru_rate_catregories';
        END IF;
        IF ABS(b.GSP_PRICE)   > 9999999999999999999999.99999999 THEN
          l_PROCESSING_STATUS:='F';
          l_mess             :='price > NUMBER(22,8)';
        END IF;
        */
        IF l_PROCESSING_STATUS IS NULL THEN
          INSERT
          INTO MRU_GS_PRICES_RECEIVING_AREAS
            (
              GSP_ACTION,
              GSP_BATCH_NAME,
              GSP_RC_RATE_CATEGORY_ID,
              GSP_REFERENCE_DATE,
              GSP_RATE_SOURCE_CODE,
              GSP_PRICE,
              GSP_GS_STATUS,
              GSP_ARRIVAL_TIMESTAMP
            )
            VALUES
            (
              b.GSP_ACTION,
              b.GSP_BATCH_NAME,
              b.GSP_RC_RATE_CATEGORY_ID,
              b.GSP_REFERENCE_DATE,
              b.GSP_RATE_SOURCE_CODE,
              b.GSP_PRICE,
              b.GSP_GS_STATUS,
              b.GSP_ARRIVAL_TIMESTAMP            ) ;
          ins                :=ins+1;
          l_PROCESSING_STATUS:='L';
        END IF;
        IF l_PROCESSING_STATUS='F' THEN
          ierr               :=ierr+1;
        END IF;
        
        --dbms_output.put_line(b.GSP_RC_RATE_CATEGORY_ID || b.GSP_PRICE || l_PROCESSING_STATUS);
        
        UPDATE GS_PRICES_RECEIVING_AREAS
        SET GSP_PROCESSING_STATUS=l_PROCESSING_STATUS ,
          GSP_PROCESSING_MESSAGE =l_mess
        WHERE rowid              =b.rowid;
        
      END LOOP;
      --commit;
      /* b*/
      /*
      -- if ora errors then set processing ststus to F
      update GS_PRICES_RECEIVING_AREAS
      set GSP_PROCESSING_STATUS='F', GSP_PROCESSING_MESSAGE='Oracle error - see batch job log'
      where GSP_BATCH_NAME=a.GSP_BATCH_NAME
      and GSP_ACTION='I'
      and GSP_PROCESSING_STATUS is null
      and GSP_ARRIVAL_TIMESTAMP<=a.max_ARRIVAL_TIMESTAMP
      ;
      ierr:=ierr+sql%rowcount;
      */
      --dbms_output.put_line('Batch '||a.GSP_BATCH_NAME||', Action=I, rows inserted='||ins||', errors='||ierr);
      dbms_output.put_line('Batch Action=I, rows inserted='||ins||', errors='||ierr);
      /*
      IF ierr     = 0 THEN
        l_subject:=a.GSP_BATCH_NAME||', '||ins||' rows inserted, no errors';
      ELSE
        l_subject:=a.GSP_BATCH_NAME||', '||ins||' rows inserted, '||ierr||' errors';
        l_emess  :='For errors see view gs_prices_REC_AREAS_errors_v';
      END IF;
      */
      -- send_email (a.GSP_BATCH_NAME, ins, ierr, l_emess );
      /*
    END LOOP;
    */
    /* a */
    dbms_output.put_line('Batches found='||bfound);
    dbms_output.put_line('Completed at '||systimestamp||', elspsed time = '||(systimestamp - l_startts));
    dbms_output.put_line('------------------------------------------------------------------------------');
    --exception
    --when others  then
    --l_PROCESSING_STATUS:='F';
    --l_mess:=substr(sqlerrm,1,50);
    --null;
    --END; /* begin */
  END load_prices;
--===================================================================================================
/*
  PROCEDURE load_rcats
  AS
  
   -- exec DBMS_ERRLOG.CREATE_ERROR_LOG('MRU_RATE_CATEGORIES') creates ERR$mru_rate_categories
   -- exec gs_load_work_dev.load_rcats;
  
    i      NUMBER:=0;
    f      NUMBER:=0;
    u      NUMBER:=0;
    ins    NUMBER:=0;
    ierr   NUMBER;
    dreq   NUMBER:=0;
    dsucc  NUMBER:=0;
    ureq   NUMBER:=0;
    usucc  NUMBER:=0;
    bfound NUMBER:=0;
    n      NUMBER;
    l_mess GS_RCAT_RECEIVING_AREAS.GSrc_PROCESSING_MESSAGE%type;
    l_PROCESSING_STATUS     VARCHAR2(1);
    l_max_ARRIVAL_TIMESTAMP TIMESTAMP;
    pass                    BOOLEAN;
    rcu                     NUMBER;
    rci                     NUMBER;
  BEGIN
    dbms_output.put_line('------------------------------------------------------------------------------');
    dbms_output.put_line('gs_load_work.load_rcats version 1.6');
    l_startts:=systimestamp;
    SELECT MAX(GSRC_ARRIVAL_TIMESTAMP)
    INTO l_max_ARRIVAL_TIMESTAMP
    FROM GS_RCAT_RECEIVING_AREAS;
    -- inserts first
    --delete from ERR$_MRU_RATE_CATEGORIES;
    --dbms_output.put_line(sql%rowcount||' rows deleted from ERR$_MRU_RATE_CATEGORIES');
    SELECT COUNT(*)
    INTO rcu
    FROM GS_RCAT_RECEIVING_AREAS
    WHERE GSrc_ACTION           ='U'
    AND GSRC_ARRIVAL_TIMESTAMP <=l_max_ARRIVAL_TIMESTAMP
    AND GSrc_PROCESSING_STATUS IS NULL;
    SELECT COUNT(*)
    INTO rci
    FROM GS_RCAT_RECEIVING_AREAS
    WHERE GSrc_ACTION           ='I'
    AND GSRC_ARRIVAL_TIMESTAMP <=l_max_ARRIVAL_TIMESTAMP
    AND GSrc_PROCESSING_STATUS IS NULL;
    dbms_output.put_line(rcu||' updates to process');
    dbms_output.put_line(rci||' inserts to process');
    FOR a IN
    (SELECT rowid
    FROM GS_RCAT_RECEIVING_AREAS
    WHERE GSrc_ACTION           ='I'
    AND GSRC_ARRIVAL_TIMESTAMP <=l_max_ARRIVAL_TIMESTAMP
    AND GSrc_PROCESSING_STATUS IS NULL
    )
    LOOP
      BEGIN
        pass:=false;
        INSERT
        INTO mru_rate_categories
          (
            RC_RATE_CATEGORY_ID ,
            RC_RCT_CODE ,
            RC_RPT_CODE ,
            RC_RI_CODE ,
            RC_RI_SUB_CODE ,
            RC_TRM_TERM ,
            RC_TRM_UNIT_INDICATOR ,
            RC_TRM_TERM_FORWARD ,
            RC_TRM_UNIT_INDICATOR_FORWARD ,
            RC_CCY_CODE ,
            RC_CCY_CODE_CROSS ,
            RC_ISS_MATURITY_DATE ,
            RC_ISS_RATE ,
            RC_ISS_BPRTY_CODE ,
            RC_ISS_CCY_CODE ,
            RC_ISS_INST_IDENTIFIER ,
            RC_DESCRIPTION ,
            RC_CONTRACT_NUMBER ,
            RC_MATURITY_DATE ,
            RC_FREQUENCY_INDICATOR ,
            RC_DAYS_BASIS_CONVNTION_CODE ,
            RC_PANORAMA_NAME ,
            RC_RATE_ID_FLAG ,
            RC_LAST_UPDATE_BY ,
            RC_LAST_UPDATE_DATE ,
            RC_LAST_UPDATE_TIME ,
            RC_DAYS_BASIS_SECONDARY ,
            RC_TRM_TERM_PRIMARY_BASIS ,
            RC_TRM_UNIT_IND_PRIMARY_BASIS ,
            RC_TRM_TERM_SECOND_BASIS ,
            RC_TRM_UNIT_IND_SECOND_BASIS ,
            RC_COMPOUNDING_FREQUENCY ,
            RC_COMPOUNDING_TYPE ,
            RC_START_DELAY ,
            RC_PAYMENT_DELAY ,
            RC_COLLATERAL_CCY ,
            RC_RISK_MARKET_CODE ,
            RC_SURFACE_INDEX_VALUE ,
            RC_EXCLUDE_CAPLETS ,
            RC_BUSINESS_DAY_CONV ,
            RC_MUREX_MATURITY_DATE ,
            RC_EXTENDED_DESCRIPTION ,
            RC_ADD_TRM_TERM ,
            RC_ADD_TRM_UNIT_INDICATOR ,
            RC_RATE_SOURCE
          )
        SELECT GSRC_RATE_CATEGORY_ID ,
          GSRC_RCT_CODE ,
          GSRC_RPT_CODE ,
          GSRC_RI_CODE ,
          GSRC_RI_SUB_CODE ,
          GSRC_TRM_TERM ,
          GSRC_TRM_UNIT_INDICATOR ,
          GSRC_TRM_TERM_FWD ,
          GSRC_TRM_UNIT_INDICATOR_FWD ,
          GSRC_CCY_CODE ,
          GSRC_CCY_CODE_CROSS ,
          GSRC_ISS_MATURITY_DATE ,
          GSRC_ISS_RATE ,
          GSRC_ISS_BPRTY_CODE ,
          GSRC_ISS_CCY_CODE ,
          GSRC_ISS_INST_IDENTIFIER ,
          GSRC_DESCRIPTION ,
          GSRC_CONTRACT_NUMBER ,
          GSRC_MATURITY_DATE ,
          GSRC_FREQUENCY_INDICATOR ,
          GSRC_DAYS_BASIS_CONVNTION_CODE ,
          GSRC_PANORAMA_NAME ,
          GSRC_RATE_ID_FLAG ,
          GSRC_LAST_UPDATE_BY ,
          GSRC_LAST_UPDATE_DATE ,
          GSRC_LAST_UPDATE_TIME ,
          GSRC_DAYS_BASIS_SECONDARY ,
          GSRC_TRM_TERM_PRIM_BASIS ,
          GSRC_TRM_UNIT_IND_PRIM_BASIS ,
          GSRC_TRM_TERM_SECOND_BASIS ,
          GSRC_TRM_UNIT_IND_SECOND_BASIS ,
          GSRC_COMPOUNDING_FREQUENCY ,
          GSRC_COMPOUNDING_TYPE ,
          GSRC_START_DELAY ,
          GSRC_PAYMENT_DELAY ,
          GSRC_COLLATERAL_CCY ,
          GSRC_RISK_MARKET_CODE ,
          GSRC_SURFACE_INDEX_VALUE ,
          GSRC_EXCLUDE_CAPLETS ,
          GSRC_BUSINESS_DAY_CONV ,
          GSRC_MUREX_MATURITY_DATE ,
          GSRC_EXTENDED_DESCRIPTION ,
          GSRC_ADD_TRM_TERM ,
          GSRC_ADD_TRM_UNIT_INDICATOR ,
          GSRC_RATE_SOURCE
        FROM GS_RCAT_RECEIVING_AREAS
        WHERE rowid=a.rowid;
        pass      :=true;
        i         :=i+1;
      EXCEPTION
      WHEN OTHERS THEN
        --dbms_output.put_line('sqlerrm='||sqlerrm);
        l_mess:=SUBSTR(sqlerrm,1,500);
        pass  :=false;
      END;
      IF pass = false THEN
        UPDATE GS_RCAT_RECEIVING_AREAS
        SET GSRC_PROCESSING_MESSAGE=l_mess ,
          GSRC_PROCESSING_STATUS   ='F'
        WHERE rowid                =a.rowid;
        f                         :=f+1;
      ELSE
        UPDATE GS_RCAT_RECEIVING_AREAS
        SET GSRC_PROCESSING_STATUS='T'
        WHERE rowid               =a.rowid;
      END IF;
    END LOOP; -- a
    dbms_output.put_line(i||' rows inserted into  mru_rate_categories, '||f||' failures');
    --==============================================================================================================================
    -- updates next
    --delete from ERR$_MRU_RATE_CATEGORIES;
    --dbms_output.put_line(sql%rowcount||' rows deleted from ERR$_MRU_RATE_CATEGORIES');
    f:=0;
    FOR b IN
    (SELECT rowid,
      GSRC_RATE_CATEGORY_ID
    FROM GS_RCAT_RECEIVING_AREAS
    WHERE GSrc_ACTION           ='U'
    AND GSRC_ARRIVAL_TIMESTAMP <=l_max_ARRIVAL_TIMESTAMP
    AND GSrc_PROCESSING_STATUS IS NULL
    )
    LOOP
      BEGIN
        pass:=false;
        UPDATE mru_rate_categories
        SET
          (
            RC_RATE_CATEGORY_ID ,
            RC_RCT_CODE ,
            RC_RPT_CODE ,
            RC_RI_CODE ,
            RC_RI_SUB_CODE ,
            RC_TRM_TERM ,
            RC_TRM_UNIT_INDICATOR ,
            RC_TRM_TERM_FORWARD ,
            RC_TRM_UNIT_INDICATOR_FORWARD ,
            RC_CCY_CODE ,
            RC_CCY_CODE_CROSS ,
            RC_ISS_MATURITY_DATE ,
            RC_ISS_RATE ,
            RC_ISS_BPRTY_CODE ,
            RC_ISS_CCY_CODE ,
            RC_ISS_INST_IDENTIFIER ,
            RC_DESCRIPTION ,
            RC_CONTRACT_NUMBER ,
            RC_MATURITY_DATE ,
            RC_FREQUENCY_INDICATOR ,
            RC_DAYS_BASIS_CONVNTION_CODE ,
            RC_PANORAMA_NAME ,
            RC_RATE_ID_FLAG ,
            RC_LAST_UPDATE_BY ,
            RC_LAST_UPDATE_DATE ,
            RC_LAST_UPDATE_TIME ,
            RC_DAYS_BASIS_SECONDARY ,
            RC_TRM_TERM_PRIMARY_BASIS ,
            RC_TRM_UNIT_IND_PRIMARY_BASIS ,
            RC_TRM_TERM_SECOND_BASIS ,
            RC_TRM_UNIT_IND_SECOND_BASIS ,
            RC_COMPOUNDING_FREQUENCY ,
            RC_COMPOUNDING_TYPE ,
            RC_START_DELAY ,
            RC_PAYMENT_DELAY ,
            RC_COLLATERAL_CCY ,
            RC_RISK_MARKET_CODE ,
            RC_SURFACE_INDEX_VALUE ,
            RC_EXCLUDE_CAPLETS ,
            RC_BUSINESS_DAY_CONV ,
            RC_MUREX_MATURITY_DATE ,
            RC_EXTENDED_DESCRIPTION ,
            RC_ADD_TRM_TERM ,
            RC_ADD_TRM_UNIT_INDICATOR ,
            RC_RATE_SOURCE
          )
          =
          (SELECT GSRC_RATE_CATEGORY_ID ,
            GSRC_RCT_CODE ,
            GSRC_RPT_CODE ,
            GSRC_RI_CODE ,
            GSRC_RI_SUB_CODE ,
            GSRC_TRM_TERM ,
            GSRC_TRM_UNIT_INDICATOR ,
            GSRC_TRM_TERM_FWD ,
            GSRC_TRM_UNIT_INDICATOR_FWD ,
            GSRC_CCY_CODE ,
            GSRC_CCY_CODE_CROSS ,
            GSRC_ISS_MATURITY_DATE ,
            GSRC_ISS_RATE ,
            GSRC_ISS_BPRTY_CODE ,
            GSRC_ISS_CCY_CODE ,
            GSRC_ISS_INST_IDENTIFIER ,
            GSRC_DESCRIPTION ,
            GSRC_CONTRACT_NUMBER ,
            GSRC_MATURITY_DATE ,
            GSRC_FREQUENCY_INDICATOR ,
            GSRC_DAYS_BASIS_CONVNTION_CODE ,
            GSRC_PANORAMA_NAME ,
            GSRC_RATE_ID_FLAG ,
            GSRC_LAST_UPDATE_BY ,
            GSRC_LAST_UPDATE_DATE ,
            GSRC_LAST_UPDATE_TIME ,
            GSRC_DAYS_BASIS_SECONDARY ,
            GSRC_TRM_TERM_PRIM_BASIS ,
            GSRC_TRM_UNIT_IND_PRIM_BASIS ,
            GSRC_TRM_TERM_SECOND_BASIS ,
            GSRC_TRM_UNIT_IND_SECOND_BASIS ,
            GSRC_COMPOUNDING_FREQUENCY ,
            GSRC_COMPOUNDING_TYPE ,
            GSRC_START_DELAY ,
            GSRC_PAYMENT_DELAY ,
            GSRC_COLLATERAL_CCY ,
            GSRC_RISK_MARKET_CODE ,
            GSRC_SURFACE_INDEX_VALUE ,
            GSRC_EXCLUDE_CAPLETS ,
            GSRC_BUSINESS_DAY_CONV ,
            GSRC_MUREX_MATURITY_DATE ,
            GSRC_EXTENDED_DESCRIPTION ,
            GSRC_ADD_TRM_TERM ,
            GSRC_ADD_TRM_UNIT_INDICATOR ,
            GSRC_RATE_SOURCE
          FROM GS_RCAT_RECEIVING_AREAS
          WHERE rowid=b.rowid
          )
        WHERE RC_RATE_CATEGORY_ID=b.GSRC_RATE_CATEGORY_ID;
        IF sql%rowcount          =0 THEN
          pass                  :=false;
          l_mess                :='Rate category not found in mru_rate_categories table';
        ELSE
          pass:=true;
          u   :=u+1;
        END IF;
      EXCEPTION
      WHEN OTHERS THEN
        --dbms_output.put_line('sqlerrm='||sqlerrm);
        l_mess:=SUBSTR(sqlerrm,1,500);
        pass  :=false;
      END;
      IF pass = false THEN
        UPDATE GS_RCAT_RECEIVING_AREAS
        SET GSRC_PROCESSING_MESSAGE=l_mess ,
          GSRC_PROCESSING_STATUS   ='F'
        WHERE rowid                =b.rowid;
        f                         :=f+1;
      ELSE
        UPDATE GS_RCAT_RECEIVING_AREAS
        SET GSRC_PROCESSING_STATUS='T'
        WHERE rowid               =b.rowid;
      END IF;
    END LOOP; -- b
    dbms_output.put_line(u||' rows updated in  mru_rate_categories, '||f||' failures');
    COMMIT;
  END load_rcats;*/
--====================================================================================================
/*
  PROCEDURE send_email(
      p_batch_name   IN VARCHAR2,
      p_loaded_count IN NUMBER,
      p_error_count  IN NUMBER ,
      p_message      IN VARCHAR2 DEFAULT NULL )
  AS
    -- exec gs_load_work.send_email('BATCHLOAD',123,3,'For errors see view gs_prices_REC_AREAS_errors_v' );
    i NUMBER:=0;
    --l_subject varchar2(70);
    l_addressee VARCHAR2(1000);
  BEGIN
    -- always returns at least 1 row
    SELECT listagg(GSE_EMAIL_ADDRESS,',') within GROUP (
    ORDER BY GSE_EMAIL_ADDRESS)
    INTO l_addressee
    FROM GS_EMAIL_ADDRESSES
    WHERE GSE_EMAIL_TYPE=p_batch_name
    AND GSE_ACTIVE      ='Y';
    -- if cannot find for this batch then look for default
    -- 1.5 do not look for default, do not send
    /*
    if l_addressee is null  then
    dbms_output.put_line('no addressees for '||p_batch_name||', use DEFAULT');
    select listagg(GSE_EMAIL_ADDRESS,',') within group (order by GSE_EMAIL_ADDRESS)  into l_addressee
    from GS_EMAIL_ADDRESSES
    where upper(GSE_EMAIL_TYPE)='DEFAULT'
    and GSE_ACTIVE='Y';
    end if;
  --  * /
    IF l_addressee IS NULL THEN
      dbms_output.put_line('no addressees for '||p_batch_name||', no email sent');
      RETURN;
    END IF;
    L_subject:=l_subject||' ('||USER||')';
    Email_Files(from_name =>'MRU_noreply@cba.com.au' ,to_names=> l_addressee ,subject=> l_subject ,MESSAGE=> p_message ,html_message=> '' ,filename1=> '' ,filename2=> '' ,filename3=> '' ,locationstr => '' );
    dbms_output.put_line('email sent to '||l_addressee||', subject '||l_subject);
  END send_email;
  */
END gs_load_work;