ALTER TABLE COMPANY ADD NO_WPPH_IN_NT DM_BOOLEAN;

COMMIT;

UPDATE COMPANY SET NO_WPPH_IN_NT = 0;