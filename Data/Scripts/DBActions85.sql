ALTER TABLE ATTENDANCE ADD DEVICE_TYPE_KEY DM_KEY;

UPDATE ATTENDANCE SET DEVICE_TYPE_KEY = 2;

ALTER TABLE ATTENDANCE_ARCHIVE ADD DEVICE_TYPE_KEY DM_KEY;

UPDATE ATTENDANCE_ARCHIVE SET DEVICE_TYPE_KEY = 2;

ALTER TABLE ATTENDANCE ADD DEVICE_LOCATION_KEY DM_KEY;

UPDATE ATTENDANCE SET DEVICE_LOCATION_KEY = 1;

ALTER TABLE ATTENDANCE_ARCHIVE ADD DEVICE_LOCATION_KEY DM_KEY;

UPDATE ATTENDANCE_ARCHIVE SET DEVICE_LOCATION_KEY = 1;







