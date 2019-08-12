CREATE TABLE ALLOCATE_SHIFT_TO_DAY_TEMP
(
  EMPLOYEE_KEY DM_KEY,
  WORK_SCHEDULE_KEY DM_KEY_N1,
  OPERATOR_KEY DM_KEY
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON ALLOCATE_SHIFT_TO_DAY_TEMP TO SYSDBA WITH GRANT OPTION;
