ALTER TABLE COMPANY ADD USE_AC_CLOCKS DM_BOOLEAN;

COMMIT;

UPDATE COMPANY SET USE_AC_CLOCKS = 0;
