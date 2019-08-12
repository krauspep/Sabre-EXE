ALTER TABLE OPERATOR_OPTION_RIGHTS ADD QUICK_SETUP DM_BOOLEAN;

ALTER TABLE OPERATOR_OPTION_RIGHTS ADD QUICK_TABLES DM_BOOLEAN;

ALTER TABLE OPERATOR_OPTION_RIGHTS ADD QUICK_WIZARD DM_BOOLEAN;

ALTER TABLE OPERATOR_OPTION_RIGHTS ADD QUICK_DEVICE_MONITOR DM_BOOLEAN;

ALTER TABLE OPERATOR_OPTION_RIGHTS ADD GROUP_OPTION_RIGHTS_KEY DM_KEY;

ALTER TABLE OPERATOR_OPTION_RIGHTS ADD RIGHTS_TYPE DM_CHAR;

ALTER TABLE OPERATOR_OPTION_RIGHTS ADD COMPANY_KEY DM_KEY;

CREATE GENERATOR GROUP_OPTION_RIGHTS_GEN;

CREATE TABLE GROUP_OPTION_RIGHTS
(
  GROUP_OPTION_RIGHTS_KEY DM_KEY,
  COMPANY_KEY DM_KEY, 
  GROUP_OPTION_RIGHTS_NAME DM_NAME,
  MAIN_MANAGEMENT DM_BOOLEAN,
  MAIN_DEVICE_MANAGEMENT DM_BOOLEAN,
  MAIN_TIME_AND_ATTENDANCE DM_BOOLEAN,
  MAIN_DATA_EXPORT_AND_IMPORT DM_BOOLEAN,
  MAIN_PAYROLL DM_BOOLEAN,
  MAIN_REPORTS DM_BOOLEAN,
  MAIN_TOOLS DM_BOOLEAN,
  QUICK_EMPLOYEE_MANAGEMENT DM_BOOLEAN,
  QUICK_CLOCKING_IMPORT DM_BOOLEAN,
  QUICK_ACCESS_LOG DM_BOOLEAN,
  QUICK_YEAR_CHART DM_BOOLEAN,
  QUICK_EMPLOYEE_DATA DM_BOOLEAN,
  QUICK_CALCULATE_PAYROLL DM_BOOLEAN,
  QUICK_DUTY_CALENDAR DM_BOOLEAN,
  QUICK_SETUP DM_BOOLEAN,
  QUICK_TABLES DM_BOOLEAN,
  QUICK_WIZARD DM_BOOLEAN,
  QUICK_DEVICE_MONITOR DM_BOOLEAN,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  DELETED DM_BOOLEAN DEFAULT 0,
  PRIMARY KEY (GROUP_OPTION_RIGHTS_KEY)
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON OPERATOR_OPTION_RIGHTS TO SYSDBA WITH GRANT OPTION;

CREATE TRIGGER TR_GROUP_OPTION_RIGHTS FOR GROUP_OPTION_RIGHTS
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.GROUP_OPTION_RIGHTS_KEY is null)
  then begin
         new.GROUP_OPTION_RIGHTS_KEY = gen_id(GROUP_OPTION_RIGHTS_GEN, 1);
       end
end

INSERT INTO OPERATOR_OPTION_RIGHTS (OPERATOR_KEY, COMPANY_KEY, MAIN_MANAGEMENT, MAIN_DEVICE_MANAGEMENT, MAIN_TIME_AND_ATTENDANCE, MAIN_DATA_EXPORT_AND_IMPORT, MAIN_PAYROLL, MAIN_REPORTS, MAIN_TOOLS, QUICK_EMPLOYEE_MANAGEMENT, QUICK_CLOCKING_IMPORT, QUICK_ACCESS_LOG, QUICK_YEAR_CHART, QUICK_EMPLOYEE_DATA, QUICK_CALCULATE_PAYROLL, QUICK_DUTY_CALENDAR, ACTIVE_RECORD, DELETED, QUICK_SETUP, QUICK_TABLES, QUICK_WIZARD, QUICK_DEVICE_MONITOR, GROUP_OPTION_RIGHTS_KEY, RIGHTS_TYPE) VALUES (1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 'A');
