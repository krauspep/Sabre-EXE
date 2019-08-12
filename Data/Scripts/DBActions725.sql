CREATE TABLE VIP_LEAVE_EXPORT_FILE
(
  COMPANY_CODE DM_SHORT_NAME,
  BATCH_NO DM_CHAR,
  EMPLOYEE_CODE DM_EMPLOYEE_NO,
  VALUE_1 DM_VARCHAR_255,
  VALUE_2 DM_VARCHAR_255,
  VALUE_3 DM_VARCHAR_255,
  VALUE_4 DM_VARCHAR_255,
  VALUE_5 DM_VARCHAR_255,
  VALUE_6 DM_VARCHAR_255,
  VALUE_7 DM_VARCHAR_255,
  VALUE_8 DM_VARCHAR_255,
  VALUE_9 DM_VARCHAR_255,
  VALUE_10 DM_VARCHAR_255,
  VALUE_11 DM_VARCHAR_255,
  VALUE_12 DM_VARCHAR_255,
  VALUE_13 DM_VARCHAR_255,
  VALUE_14 DM_VARCHAR_255,
  VALUE_15 DM_VARCHAR_255,
  OPERATOR_KEY DM_KEY
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
 ON VIP_LEAVE_EXPORT_FILE TO  SYSDBA WITH GRANT OPTION;