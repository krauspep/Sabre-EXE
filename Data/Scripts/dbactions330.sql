DROP INDEX I_ATTENDANCE_1;

DROP INDEX I_ATTENDANCE_2;

DROP INDEX I_ATTENDANCE_3;

DROP INDEX I_ATTENDANCE_4;

DROP INDEX I_ATTENDANCE_5;

DROP INDEX I_ATTENDANCE_6;

DROP INDEX I_ATTENDANCE_7;

DROP INDEX I_ATTENDANCE_ARCHIVE_1;

DROP INDEX I_ATTENDANCE_ARCHIVE_2;

DROP INDEX I_ATTENDANCE_ARCHIVE_3;

DROP INDEX I_ATTENDANCE_ARCHIVE_4;

DROP INDEX I_ATTENDANCE_ARCHIVE_5;

DROP INDEX I_ATTENDANCE_ARCHIVE_6;

DROP INDEX I_ATTENDANCE_ARCHIVE_7;

CREATE INDEX I_ATTENDANCE_1 ON ATTENDANCE (EMPLOYEE_KEY, COMPANY_KEY, ATTENDANCE_DATE,ATTENDANCE_TIME,TERMINAL_KEY, DEPARTMENT_KEY, DEVICE_LOCATION_KEY, EVENT_KEY, DELETED);

CREATE INDEX I_ATTENDANCE_ARCHIVE_1 ON ATTENDANCE_ARCHIVE (EMPLOYEE_KEY, COMPANY_KEY, ATTENDANCE_DATE,ATTENDANCE_TIME,TERMINAL_KEY, DEPARTMENT_KEY, DEVICE_LOCATION_KEY, EVENT_KEY, DELETED);