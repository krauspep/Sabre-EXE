CREATE TABLE ORPHANED_CLOCKS
(
  EMPLOYEE_KEY DM_KEY,
  ATTENDANCE_KEY DM_KEY_N1,
  OPERATOR_KEY DM_KEY_N1);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON ORPHANED_CLOCKS TO "SYSDBA" WITH GRANT OPTION;