ALTER TABLE COMPANY ADD CARD_LAYOUT DM_CHAR;

COMMIT;

UPDATE COMPANY SET CARD_LAYOUT = '1';