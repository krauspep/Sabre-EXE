ALTER TABLE DEVICE_CONFIGURATION ADD REAL_TIME_DATA DM_BOOLEAN;

UPDATE DEVICE_CONFIGURATION SET REAL_TIME_DATA = 0;
