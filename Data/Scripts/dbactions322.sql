ALTER TABLE TERMINAL ADD DEVICE_CATEGORY DM_CHAR;

UPDATE TERMINAL SET DEVICE_CATEGORY = 'D';

ALTER TABLE DEVICE_CONFIGURATION ADD LPR_CAMERA_LINK DM_BOOLEAN;

UPDATE DEVICE_CONFIGURATION SET LPR_CAMERA_LINK = 0;

ALTER TABLE DEVICE_CONFIGURATION ADD CAMERA_CONFIGURATION_KEY  DM_KEY_N1;

UPDATE DEVICE_CONFIGURATION SET CAMERA_CONFIGURATION_KEY = -1;