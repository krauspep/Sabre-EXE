ALTER TABLE COMPANY ADD VIP_LEAVE_FILE_NAME DM_VARCHAR_255;

ALTER TABLE COMPANY ADD VIP_LEAVE_FILE_PATH DM_VARCHAR_255;

ALTER TABLE COMPANY ADD CREATE_VIP_LEAVE_FILE DM_BOOLEAN;

COMMIT;

UPDATE COMPANY SET CREATE_VIP_LEAVE_FILE = 0;