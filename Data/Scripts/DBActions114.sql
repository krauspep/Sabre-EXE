ALTER TABLE TRACKING_TEMP_PRINT ADD TRACK_DATE_OUT DM_DATE;

ALTER TABLE TRACKING_TEMP_PRINT ADD TRACK_DAY_OUT DM_DAY;

ALTER TABLE ATTENDANCE_ARCHIVE ADD ARCHIVE DM_BOOLEAN;

UPDATE ATTENDANCE_ARCHIVE SET ARCHIVE = 1;