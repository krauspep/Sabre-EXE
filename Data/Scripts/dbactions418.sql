ALTER TABLE DEVICE_CONFIGURATION ADD SITE_KEY DM_KEY;

UPDATE DEVICE_CONFIGURATION SET SITE_KEY = -1;

ALTER TABLE SYSTEM_PARAMETER ADD DEVICE_LINK_TYPE DM_CHAR;

UPDATE SYSTEM_PARAMETER SET DEVICE_LINK_TYPE = 'C';






