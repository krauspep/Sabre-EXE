ALTER TABLE SYSTEM_PARAMETER ADD CUT_OFF_TIME DM_TIME;

UPDATE SYSTEM_PARAMETER SET CUT_OFF_TIME = '03:00:00:000';


