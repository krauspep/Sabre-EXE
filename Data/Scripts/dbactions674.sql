ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD RELEASED DM_BOOLEAN;

UPDATE EMPLOYEE_ATTENDANCE_DATA SET RELEASED = 0;

ALTER TABLE EMPLOYEE_ATTENDANCE_AMENDED ADD RELEASED DM_BOOLEAN;

UPDATE EMPLOYEE_ATTENDANCE_AMENDED SET RELEASED = 0;