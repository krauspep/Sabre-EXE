ALTER TABLE LEAVE_TYPE ADD COMPANY_KEY DM_KEY_N1;

UPDATE LEAVE_TYPE SET COMPANY_KEY = -1;

