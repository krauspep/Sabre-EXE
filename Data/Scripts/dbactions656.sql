ALTER TABLE COMPANY ADD NO_SGPPH_ON_WORK_DAY DM_BOOLEAN;

COMMIT;

UPDATE COMPANY SET NO_SGPPH_ON_WORK_DAY = 0;
