ALTER TABLE COMPANY ADD SHORTFALL_THRESHOLD_MIN DM_INTEGER;

UPDATE COMPANY SET SHORTFALL_THRESHOLD_MIN = 0;