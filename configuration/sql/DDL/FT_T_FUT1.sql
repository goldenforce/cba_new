--{$$-STATEMENT-$$}
DECLARE
    v_str_tname VARCHAR2(100);
BEGIN
    BEGIN

        SELECT table_name INTO v_str_tname FROM user_tables WHERE table_name = 'FT_T_FUT1';
      
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                v_str_tname := NULL;
    END;
    IF v_str_tname IS NULL THEN
        DBMS_OUTPUT.PUT_LINE('Creating table FT_T_FUT1');
        EXECUTE IMMEDIATE('CREATE TABLE FT_T_FUT1 ( TICKER_ID 		VARCHAR2(100) NOT NULL,
													ID_BB_UNIQUE 	VARCHAR2(100) ,
													SEC_NAME 		VARCHAR2(50) ,
													FUT_CHAIN 		VARCHAR2(100) NOT NULL,
													ID_BB_GLOBAL 	VARCHAR2(100) ,
													SECURITY_TYP 	VARCHAR2(100) ,
													CURRENT_STATUS 	CHAR(3),
													STATUS_DESC 	VARCHAR2(256),
													START_TMS 		DATE,
													END_TMS 		DATE,
													LAST_CHG_TMS 	DATE,
													LAST_CHG_USR_ID VARCHAR(256))');
        EXECUTE IMMEDIATE('ALTER TABLE FT_T_FUT1 ADD (CONSTRAINT FT_T_FUT1_PK PRIMARY KEY (FUT_CHAIN))');
		EXECUTE IMMEDIATE('CREATE INDEX FT_X_FUT1_I001 ON FT_T_FUT1 (TICKER_ID)');
        
    ELSE
        DBMS_OUTPUT.PUT_LINE('Table FT_T_FUT1 Already Exists');
    END IF;
END;
/