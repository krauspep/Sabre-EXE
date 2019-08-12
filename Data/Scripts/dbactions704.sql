CREATE GENERATOR AC_SEQUENCE_CONTROL_GEN;

CREATE TABLE AC_SEQUENCE_CONTROL
(
  AC_SEQUENCE_CONTROL_KEY DM_KEY,
  DEVICE_CONFIGURATION_KEY DM_KEY,
  AC_ACTION DM_CHAR,
  ACTION_DEVICE_CONFIGURATION_KEY DM_KEY,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  DELETED DM_BOOLEAN DEFAULT 0,
  CREATED_BY DM_KEY_N1 DEFAULT -1,
  CREATED_ON DM_DATE,
  CREATED_TIME DM_TIME,
  LAST_MODIFIED_BY DM_KEY_N1 DEFAULT -1,
  LAST_MODIFIED_ON DM_DATE,
  LAST_MODIFIED_TIME DM_TIME,  
  PRIMARY KEY (AC_SEQUENCE_CONTROL_KEY)
);

CREATE TRIGGER TR_AC_SEQUENCE_CONTROL FOR AC_SEQUENCE_CONTROL
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.AC_SEQUENCE_CONTROL_KEY is null)
  then begin
         new.AC_SEQUENCE_CONTROL_KEY = gen_id(AC_SEQUENCE_CONTROL_GEN, 1);
       end
end

CREATE INDEX I_AC_SEQUENCE_CONTROL_1 ON AC_SEQUENCE_CONTROL (DEVICE_CONFIGURATION_KEY);