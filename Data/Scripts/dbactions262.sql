ALTER TABLE EMPLOYEE ADD SELECTED DM_BOOLEAN;

UPDATE EMPLOYEE SET SELECTED = 0;

UPDATE EMPLOYEE SET AWAY_MESSAGE = '- No Message - ' WHERE AWAY_MESSAGE IS NULL;

CREATE GENERATOR EMAIL_IN_OUT_GEN;

CREATE TABLE EMAIL_IN_OUT
(
  EMAIL_IN_OUT_KEY DM_KEY NOT NULL,
  EMAIL_ADDRESS DM_EMAIL_ADDRESS,
  EMAIL_DATE DM_DATE,
  EMAIL_TIME DM_TIME,
  EMAIL_REPORT_TYPE DM_CHAR,
  EMAIL_SUBJECT DM_NAME_NULL, 
  TRACKER_ID_NO DM_CODE,
  DELETED DM_BOOLEAN DEFAULT 0,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  PRIMARY KEY (EMAIL_IN_OUT_KEY)
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON EMAIL_IN_OUT TO SYSDBA WITH GRANT OPTION;

CREATE TRIGGER TR_EMAIL_IN_OUT FOR EMAIL_IN_OUT ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.EMAIL_IN_OUT_KEY is null)
  then begin
         new.EMAIL_IN_OUT_KEY = gen_id(EMAIL_IN_OUT_GEN, 1);
       end
end




