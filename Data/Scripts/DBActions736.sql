ALTER TABLE EMPLOYEE ADD STATUS_NEW DM_BOOLEAN;

COMMIT;

UPDATE EMPLOYEE SET STATUS_NEW = 0;