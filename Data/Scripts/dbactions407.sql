ALTER TABLE ATTENDANCE_ARCHIVE ADD CONSOLIDATED DM_BOOLEAN;

UPDATE ATTENDANCE_ARCHIVE SET CONSOLIDATED = 1;

