UPDATE ATTENDANCE SET PUPIL_KEY = -1 WHERE PUPIL_KEY = NULL;

UPDATE ATTENDANCE SET ORIG_ATTENDANCE_TIME = ATTENDANCE_TIME;

UPDATE ATTENDANCE_ARCHIVE SET ORIG_ATTENDANCE_TIME = ATTENDANCE_TIME;

ALTER TABLE EMPLOYEE ADD SHIFT_SENSING DM_BOOLEAN;
