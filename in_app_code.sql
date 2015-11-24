//dynamic action on page 8
BEGIN
IF :P8_ROLE=0 THEN
:P8_SYS_ADMIN_FLAG:=0;
:P8_LAB_DIR_FLAG:=0;
:P8_CHAIR_FLAG:=0;
:P8_EXE_DIR_FLAG:=0;
END IF;
IF :P8_ROLE=1 THEN
:P8_SYS_ADMIN_FLAG:=0;
:P8_LAB_DIR_FLAG:=1;
:P8_CHAIR_FLAG:=0;
:P8_EXE_DIR_FLAG:=0;
END IF;
IF :P8_ROLE=2 THEN
:P8_SYS_ADMIN_FLAG:=1;
:P8_LAB_DIR_FLAG:=0;
:P8_CHAIR_FLAG:=0;
:P8_EXE_DIR_FLAG:=0;
END IF;
IF :P8_ROLE=3 THEN
:P8_SYS_ADMIN_FLAG:=0;
:P8_LAB_DIR_FLAG:=0;
:P8_CHAIR_FLAG:=1;
:P8_EXE_DIR_FLAG:=0;
END IF;
IF :P8_ROLE=4 THEN
:P8_SYS_ADMIN_FLAG:=0;
:P8_LAB_DIR_FLAG:=0;
:P8_CHAIR_FLAG:=0;
:P8_EXE_DIR_FLAG:=1;
END IF;
END;

//P_show on page 9
DECLARE
    status varchar2(20);
 --   sa_id INTEGER;
    v_count INTEGER;
BEGIN
 --   SELECT sys_admin_id INTO sa_id FROM F15C4_RFE WHERE rfe_id = :RFE_NUM;
    SELECT COUNT(*) INTO v_count FROM F15C4_RFE WHERE :RFE_NUM = rfe_id AND stat_id = 101 AND 

sys_admin_id = :P1_NAME;
    IF v_count > 0 THEN
        RETURN 1;
    END IF;
    
    SELECT COUNT(*) INTO v_count FROM F15C4_RFE WHERE :RFE_NUM = rfe_id AND stat_id = 103 AND 

lab_dir_id = :P1_NAME;
    IF v_count > 0 THEN
        RETURN 1;
    END IF;
    
        SELECT COUNT(*) INTO v_count FROM F15C4_RFE WHERE :RFE_NUM = rfe_id AND stat_id = 104 AND 

exe_dir_id = :P1_NAME;
    IF v_count > 0 THEN
        RETURN 1;
    END IF;
    
        SELECT COUNT(*) INTO v_count FROM F15C4_RFE WHERE :RFE_NUM = rfe_id AND stat_id = 122 AND 

chair_id = :P1_NAME;
    IF v_count > 0 THEN
        RETURN 1;
    END IF;
    
    RETURN 0;
END;

//sysadmin on page 9
DECLARE
    status varchar2(20);
    sa_id INTEGER;
    v_count INTEGER;
BEGIN
    SELECT sys_admin_id INTO sa_id FROM F15C4_RFE WHERE rfe_id = :RFE_NUM;
    SELECT COUNT(*) INTO v_count FROM F15C4_HIST h WHERE :RFE_NUM = rfe_id AND stat_id = 103 AND 

emp_id = sa_id;
    IF v_count > 0 THEN
        RETURN 'APPROVED';
    END IF;
    
    SELECT COUNT(*) INTO v_count FROM F15C4_HIST h WHERE :RFE_NUM = rfe_id AND stat_id = 121;
    
    IF v_count > 0 THEN
        RETURN 'REJECTED';
    END IF;
    
    RETURN 'PENDING';
END;

//lab_dir on page 9
DECLARE
    status varchar2(20);
    sa_id INTEGER;
    v_count INTEGER;
BEGIN
    SELECT lab_dir_id INTO sa_id FROM F15C4_RFE WHERE rfe_id = :RFE_NUM;
    SELECT COUNT(*) INTO v_count FROM F15C4_HIST h WHERE :RFE_NUM = rfe_id AND stat_id = 122 AND 

emp_id = sa_id;
    IF v_count > 0 THEN
        RETURN 'APPROVED';
    END IF;
    
    SELECT COUNT(*) INTO v_count FROM F15C4_HIST h WHERE :RFE_NUM = rfe_id AND stat_id = 121;
    
    IF v_count > 0 THEN
        RETURN 'REJECTED';
    END IF;
    
    RETURN 'PENDING';
END;

//chair on page 9
DECLARE
    status varchar2(20);
    sa_id INTEGER;
    v_count INTEGER;
BEGIN
    SELECT chair_id INTO sa_id FROM F15C4_RFE WHERE rfe_id = :RFE_NUM;
    SELECT COUNT(*) INTO v_count FROM F15C4_HIST h WHERE :RFE_NUM = rfe_id AND stat_id = 104 AND 

emp_id = sa_id;
    IF v_count > 0 THEN
        RETURN 'APPROVED';
    END IF;
    
    SELECT COUNT(*) INTO v_count FROM F15C4_HIST h WHERE :RFE_NUM = rfe_id AND stat_id = 121;
    
    IF v_count > 0 THEN
        RETURN 'REJECTED';
    END IF;
    
    RETURN 'PENDING';
END;

//exe-dir on page 9
DECLARE
    status varchar2(20);
    sa_id INTEGER;
    v_count INTEGER;
BEGIN
    SELECT exe_dir_id INTO sa_id FROM F15C4_RFE WHERE rfe_id = :RFE_NUM;
    SELECT COUNT(*) INTO v_count FROM F15C4_HIST h WHERE :RFE_NUM = rfe_id AND stat_id = 105 AND 

emp_id = sa_id;
    IF v_count > 0 THEN
        RETURN 'APPROVED';
    END IF;
    
    SELECT COUNT(*) INTO v_count FROM F15C4_HIST h WHERE :RFE_NUM = rfe_id AND stat_id = 121;
    
    IF v_count > 0 THEN
        RETURN 'REJECTED';
    END IF;
    
    RETURN 'PENDING';
END;

//
