ALTER TABLE DEVICE_CONFIGURATION ADD LAST_DOWNLOAD_DATE DM_DATE;

UPDATE DEVICE_CONFIGURATION SET LAST_DOWNLOAD_DATE = '2019/06/18';