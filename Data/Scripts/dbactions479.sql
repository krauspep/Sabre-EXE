ALTER TABLE ABSENT_DATA ADD DEDUCT_SET_BREAK DM_BOOLEAN;

UPDATE ABSENT_DATA SET DEDUCT_SET_BREAK = 1;

ALTER TABLE ABSENT_DATA ADD INCLUDE_SAT DM_BOOLEAN;

UPDATE ABSENT_DATA SET INCLUDE_SAT = 0;

ALTER TABLE ABSENT_DATA ADD INCLUDE_SUN DM_BOOLEAN;

UPDATE ABSENT_DATA SET INCLUDE_SUN = 0;





