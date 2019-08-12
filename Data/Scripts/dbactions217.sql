INSERT INTO COMPANY_TYPE(COMPANY_TYPE_KEY, COMPANY_TYPE_NAME, DELETED, ACTIVE_RECORD) VALUES(4, 'School', 0, 1);

ALTER TABLE OPERATOR ADD USER_VISIBILITY DM_CHAR;

UPDATE OPERATOR SET USER_VISIBILITY = 'A';

CREATE GENERATOR EMPLOYEE_DEPART_VISIBILITY_GEN;

CREATE TABLE EMPLOYEE_DEPART_VISIBILITY
(
  EMPLOYEE_DEPART_VISIBILITY_KEY DM_KEY,
  OPERATOR_KEY DM_KEY, 
  DEPARTMENT_KEY DM_KEY,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  DELETED DM_BOOLEAN DEFAULT 0,
  PRIMARY KEY (EMPLOYEE_DEPART_VISIBILITY_KEY)
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON EMPLOYEE_DEPART_VISIBILITY TO SYSDBA WITH GRANT OPTION;

CREATE TRIGGER TR_EMPLOYEE_DEPART_VISIBILITY FOR EMPLOYEE_DEPART_VISIBILITY
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.EMPLOYEE_DEPART_VISIBILITY_KEY is null)
  then begin
         new.EMPLOYEE_DEPART_VISIBILITY_KEY = gen_id(EMPLOYEE_DEPART_VISIBILITY_GEN, 1);
       end
end

CREATE GENERATOR EMPLOYEE_CUSTOM_VISIBILITY_GEN;

CREATE TABLE EMPLOYEE_CUSTOM_VISIBILITY
(
  EMPLOYEE_CUSTOM_VISIBILITY_KEY DM_KEY,
  OPERATOR_KEY DM_KEY, 
  GENERIC_KEY DM_KEY,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  DELETED DM_BOOLEAN DEFAULT 0,
  PRIMARY KEY (EMPLOYEE_CUSTOM_VISIBILITY_KEY)
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON EMPLOYEE_CUSTOM_VISIBILITY TO SYSDBA WITH GRANT OPTION;

CREATE TRIGGER TR_EMPLOYEE_CUSTOM_VISIBILITY FOR EMPLOYEE_CUSTOM_VISIBILITY
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.EMPLOYEE_CUSTOM_VISIBILITY_KEY is null)
  then begin
         new.EMPLOYEE_CUSTOM_VISIBILITY_KEY = gen_id(EMPLOYEE_CUSTOM_VISIBILITY_GEN, 1);
       end
end



