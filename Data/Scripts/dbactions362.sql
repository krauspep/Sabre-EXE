ALTER TABLE EMPLOYEE ADD ANTI_PASS_BACK DM_BOOLEAN;

UPDATE EMPLOYEE SET ANTI_PASS_BACK = 0;

ALTER TABLE RESIDENT ADD ANTI_PASS_BACK DM_BOOLEAN;

UPDATE RESIDENT SET ANTI_PASS_BACK = 0;

ALTER TABLE MEMBER ADD ANTI_PASS_BACK DM_BOOLEAN;

UPDATE MEMBER SET ANTI_PASS_BACK = 0;

ALTER TABLE PUPIL ADD ANTI_PASS_BACK DM_BOOLEAN;

UPDATE PUPIL SET ANTI_PASS_BACK = 0;

ALTER TABLE PUPIL_PARENT ADD ANTI_PASS_BACK DM_BOOLEAN;

UPDATE PUPIL_PARENT SET ANTI_PASS_BACK = 0;



