ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD IN_CLOCKING_AMEND_CODE_KEY DM_KEY_N1;

UPDATE EMPLOYEE_ATTENDANCE_DATA SET IN_CLOCKING_AMEND_CODE_KEY = -1;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD OUT_CLOCKING_AMEND_CODE_KEY DM_KEY_N1;

UPDATE EMPLOYEE_ATTENDANCE_DATA SET OUT_CLOCKING_AMEND_CODE_KEY = -1;

ALTER TABLE EMPLOYEE_ATTENDANCE_AMENDED ADD IN_CLOCKING_AMEND_CODE_KEY DM_KEY_N1;

UPDATE EMPLOYEE_ATTENDANCE_AMENDED SET IN_CLOCKING_AMEND_CODE_KEY = -1;

ALTER TABLE EMPLOYEE_ATTENDANCE_AMENDED ADD OUT_CLOCKING_AMEND_CODE_KEY DM_KEY_N1;

UPDATE EMPLOYEE_ATTENDANCE_AMENDED SET OUT_CLOCKING_AMEND_CODE_KEY = -1;