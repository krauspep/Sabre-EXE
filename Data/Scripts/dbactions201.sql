CREATE DOMAIN DM_VARCHAR_11 AS VARCHAR(11);

CREATE DOMAIN DM_VARCHAR_8 AS VARCHAR(11);

CREATE TABLE VIP_EXPORT_FILE_PREMIER
(
  COMPANY_CODE DM_SHORT_NAME,
  BATCH_NO DM_CHAR,
  EMPLOYEE_CODE DM_EMPLOYEE_NO,
  VALUE_1 DM_VARCHAR_11,
  SIGN_1 DM_CHAR,
  VALUE_2 DM_VARCHAR_11,
  SIGN_2 DM_CHAR,
  VALUE_3 DM_VARCHAR_11,
  SIGN_3 DM_CHAR,
  VALUE_4 DM_VARCHAR_11,
  SIGN_4 DM_CHAR,
  VALUE_5 DM_VARCHAR_11,
  SIGN_5 DM_CHAR,
  VALUE_6 DM_VARCHAR_11,
  SIGN_6 DM_CHAR,
  OPERATOR_KEY DM_KEY
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON VIP_EXPORT_FILE_PREMIER TO  SYSDBA WITH GRANT OPTION;

CREATE TABLE VIP_EXPORT_FILE_CLASSIC
(
  COMPANY_CODE DM_SHORT_NAME,
  LAYOUT_CODE DM_CHAR,
  EMPLOYEE_CODE DM_EMPLOYEE_NO,
  VALUE_1 DM_VARCHAR_8,
  SIGN_1 DM_CHAR,
  VALUE_2 DM_VARCHAR_8,
  SIGN_2 DM_CHAR,
  VALUE_3 DM_VARCHAR_8,
  SIGN_3 DM_CHAR,
  VALUE_4 DM_VARCHAR_8,
  SIGN_4 DM_CHAR,
  VALUE_5 DM_VARCHAR_8,
  SIGN_5 DM_CHAR,
  VALUE_6 DM_VARCHAR_8,
  SIGN_6 DM_CHAR,
  OPERATOR_KEY DM_KEY
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON VIP_EXPORT_FILE_CLASSIC TO  SYSDBA WITH GRANT OPTION;





