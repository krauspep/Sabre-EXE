ALTER TABLE DEVICE_CONFIGURATION ADD RELAY_DELAY DM_INTEGER;

UPDATE DEVICE_CONFIGURATION SET RELAY_DELAY = 100;