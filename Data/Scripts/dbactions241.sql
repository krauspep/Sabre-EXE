ALTER TABLE EMPLOYEE ADD TOTAL_IN DM_INTEGER;

UPDATE EMPLOYEE SET TOTAL_IN = 0;

ALTER TABLE EMPLOYEE ADD TOTAL_OUT DM_INTEGER;

UPDATE EMPLOYEE SET TOTAL_OUT = 0;

