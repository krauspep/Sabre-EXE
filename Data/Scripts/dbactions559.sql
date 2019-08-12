CREATE GENERATOR EXPIRY_GEN;

CREATE TABLE EXPIRY
(
  EXPIRY_KEY DM_KEY NOT NULL,
  EXPIRY_NAME DM_NAME,
  DELETED DM_BOOLEAN DEFAULT 0,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  PRIMARY KEY (EXPIRY_KEY)
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
 ON EXPIRY TO  SYSDBA WITH GRANT OPTION;
 
CREATE TRIGGER TR_EXPIRY FOR EXPIRY BEFORE INSERT POSITION 0
AS
begin
  if (new.EXPIRY_KEY is null)
  then begin
         new.EXPIRY_KEY = gen_id(EXPIRY_GEN, 1);
       end
end

CREATE GENERATOR EMPLOYEE_EXPIRY_GEN;
 
CREATE TABLE EMPLOYEE_EXPIRY
(
  EMPLOYEE_EXPIRY_KEY DM_KEY NOT NULL,
  EMPLOYEE_KEY DM_KEY NOT NULL,
  EXPIRY_KEY DM_KEY NOT NULL,
  EXPIRY_ENABLED SmallInt,
  EXPIRY_DATE Date,
  EXPIRY_TIME Time,
  EXPIRY_UNASSIGN SmallInt,
  EXPIRY_HANDLED SmallInt,
  EXPIRY_COMMENT VARCHAR(30),
  EXPIRY_DOC VARCHAR(80),
  DELETED DM_BOOLEAN DEFAULT 0,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  PRIMARY KEY (EMPLOYEE_EXPIRY_KEY)
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
 ON EMPLOYEE_EXPIRY TO  SYSDBA WITH GRANT OPTION;

CREATE TRIGGER TR_EMPLOYEE_EXPIRY FOR EMPLOYEE_EXPIRY BEFORE INSERT POSITION 0
AS
begin
  if (new.EMPLOYEE_EXPIRY_KEY is null)
  then begin
         new.EMPLOYEE_EXPIRY_KEY = gen_id(EMPLOYEE_EXPIRY_GEN, 1);
       end
end