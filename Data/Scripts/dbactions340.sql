ALTER TABLE DEPARTMENT ADD NIGHT_SHIFT_CUT_OFF_TIME DM_TIME;

ALTER TABLE DEPARTMENT ADD USE_NIGHT_SHIFT_CUT_OFF_TIME DM_BOOLEAN;

UPDATE DEPARTMENT SET USE_NIGHT_SHIFT_CUT_OFF_TIME  = 0;
