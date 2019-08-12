alter table employee
add deduct_free_minutes dm_smallint;
commit;

CREATE DOMAIN "DM_DAY" AS VARCHAR(10);
CREATE DOMAIN "DM_TIME_IN_OUT" AS VARCHAR(8);

CREATE TABLE ATTENDANCE_TEMP_PRINT
(
TEMP_DATE              DM_DATE,
TEMP_DAY               DM_DAY, 
TEMP_EMPLOYEE_KEY      DM_KEY,
TEMP_DEVICE_LOCATION   DM_NAME,
TEMP_TIME_IN           DM_TIME_IN_OUT,
TEMP_TIME_OUT          DM_TIME_IN_OUT, 
OPERATOR_KEY           DM_KEY
);

COMMIT;
