CREATE GENERATOR STANDBY_SCHEDULE_GEN;

CREATE TABLE STANDBY_SCHEDULE
(
  STANDBY_SCHEDULE_KEY DM_KEY,
  EMPLOYEE_KEY DM_KEY,
  STANDBY_DATE_YEAR DM_SMALLINT,
  STANDBY_DATE DM_DATE,
  DELETED DM_BOOLEAN DEFAULT 0,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  PRIMARY KEY (STANDBY_SCHEDULE_KEY)
);

CREATE INDEX I_STANDBY_SCHEDULE_1 ON STANDBY_SCHEDULE (STANDBY_DATE_YEAR, STANDBY_DATE, DELETED);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON STANDBY_SCHEDULE TO  "SYSDBA" WITH GRANT OPTION;

CREATE TRIGGER TR_STANDBY_SCHEDULE FOR STANDBY_SCHEDULE BEFORE INSERT POSITION 0
AS
begin
  if (new.STANDBY_SCHEDULE_KEY is null)
  then begin
         new.STANDBY_SCHEDULE_KEY = gen_id(STANDBY_SCHEDULE_GEN, 1);
       end
end