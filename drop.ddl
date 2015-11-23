DROP SEQUENCE F15C4_Auth_seq ; 

DROP TRIGGER F15C4_Auth_PK_trig 
; 


DROP SEQUENCE F15C4_Doc_seq ; 

DROP TRIGGER F15C4_Doc_PK_trig 
; 



DROP SEQUENCE F15C4_Emp_seq ; 

DROP TRIGGER F15C4_Emp_PK_trig 
; 

-- Table F15C4_Fyi has a compound primary key so no sequence or trigger was created for it.
DROP SEQUENCE F15C4_Hist_seq ; 

DROP TRIGGER F15C4_Hist_PK_trig 
; 


DROP SEQUENCE F15C4_Lab_seq ; 

DROP TRIGGER F15C4_Lab_PK_trig 
; 

DROP SEQUENCE F15C4_Rfe_seq ; 

DROP TRIGGER F15C4_Rfe_PK_trig 
; 


DROP SEQUENCE F15C4_Stat_seq ; 

DROP TRIGGER F15C4_Stat_PK_trig 
; 


DROP SEQUENCE F15C4_Task_seq ; 

DROP TRIGGER F15C4_Task_PK_trig 
; 


DROP SEQUENCE F15C4_comment_seq ; 

DROP TRIGGER F15C4_comment_PK_trig 
; 


DROP INDEX rfe_id_FK_0 ;
DROP INDEX emp_id_FK_1 ;

DROP INDEX stat_id_FK_2 ;

DROP INDEX emp_id_FK_3 ;

DROP INDEX lab_dir_id_FK_4 ;

DROP INDEX exe_dir_id_FK_5 ;

DROP INDEX sys_admin_id_FK_6 ;

DROP INDEX emp_id_FK_7 ;
DROP INDEX emp_id_FK_8 ;
DROP INDEX lab_id_FK_9 ;
DROP INDEX emp_id_FK_10 ;
DROP INDEX rfe_id_FK_11 ;
DROP INDEX rfe_id_FK_12 ;
DROP INDEX hist_id_FK_13 ;
DROP INDEX auth_id_FK_14 ;
DROP INDEX chair_id_FK_15 ;
DROP INDEX emp_id_FK_16 ;
DROP INDEX rfe_id_FK_17 ;
DROP INDEX stat_id_FK_18 ;
DROP INDEX rfe_id_FK_19 ;
