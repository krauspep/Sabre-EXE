ALTER TABLE WORK_SCHEDULE ADD MANUAL_FIX DM_BOOLEAN;

UPDATE WORK_SCHEDULE SET MANUAL_FIX = 0;