CREATE GENERATOR EMPLOYEE_ATT_AMEND_HIGH_GEN;

SET GENERATOR EMPLOYEE_ATT_AMEND_HIGH_GEN TO 100000000;

CREATE GENERATOR EMPLOYEE_ATTENDANCE_ALTER_GEN;

CREATE TABLE EMPLOYEE_ATTENDANCE_ALTER
(
  ATTENDANCE_ALTER_KEY DM_KEY,
  EMPLOYEE_KEY DM_KEY NOT NULL,
  ATTENDANCE_DATE_IN DM_DATE,
  ATTENDANCE_DATE_OUT DM_DATE,
  DELETED DM_BOOLEAN DEFAULT 0,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  MINUTES_NT DM_INTEGER,
  MINUTES_OT1 DM_INTEGER,
  MINUTES_OT2 DM_INTEGER,
  MINUTES_OT3 DM_INTEGER,
  MINUTES_OT4 DM_INTEGER,
  MINUTES_OT5 DM_INTEGER,
  MINUTES_SAT DM_INTEGER,
  MINUTES_SUN DM_INTEGER,
  MINUTES_PUBLIC_HOLIDAY DM_INTEGER,
  MINUTES_NSA DM_INTEGER,
  MINUTES_SA DM_INTEGER,
  SYSTEM_GENERATED_PPH_MINUTES DM_INTEGER,
  APPROVED_MINUTES_NT DM_BOOLEAN DEFAULT 0,
  APPROVED_MINUTES_OT1 DM_BOOLEAN DEFAULT 0,
  APPROVED_MINUTES_OT2 DM_BOOLEAN DEFAULT 0,
  APPROVED_MINUTES_OT3 DM_BOOLEAN DEFAULT 0,
  APPROVED_MINUTES_OT4 DM_BOOLEAN DEFAULT 0,
  APPROVED_MINUTES_OT5 DM_BOOLEAN DEFAULT 0,
  APPROVED_MINUTES_SAT DM_BOOLEAN DEFAULT 0,
  APPROVED_MINUTES_SUN DM_BOOLEAN DEFAULT 0,
  APPROVED_MINUTES_PUBLIC_HOLIDAY DM_BOOLEAN DEFAULT 0,
  APPROVED_MINUTES_NSA DM_BOOLEAN DEFAULT 0,
  APPROVED_MINUTES_SA DM_BOOLEAN DEFAULT 0,
  AMEND_CODES VARCHAR(10),
  ATTENDANCE_KEY DM_KEY,
  PRIMARY KEY (ATTENDANCE_ALTER_KEY)
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
 ON EMPLOYEE_ATTENDANCE_DATA TO  SYSDBA WITH GRANT OPTION;

CREATE INDEX I_EMPLOYEE_ATTENDACE__ALTER_1 ON EMPLOYEE_ATTENDANCE_ALTER (EMPLOYEE_KEY,ATTENDANCE_DATE_IN,DELETED);

CREATE TRIGGER TR_EMPLOYEE_ATTE_ALTER_VALS FOR EMPLOYEE_ATTENDANCE_ALTER ACTIVE
BEFORE INSERT POSITION 0
AS
begin
 new.DELETED = 0;
 new.ACTIVE_RECORD = 1;
end

CREATE TRIGGER TR_EMPLOYEE_ATTE_ALTER FOR EMPLOYEE_ATTENDANCE_ALTER
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.ATTENDANCE_ALTER_KEY is null)
  then begin
         new.ATTENDANCE_ALTER_KEY = gen_id(EMPLOYEE_ATTENDANCE_ALTER_GEN, 1);
       end
end


