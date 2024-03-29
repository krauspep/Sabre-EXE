ALTER TABLE DEVICE_CONFIGURATION ADD DEVICE_GROUP DM_KEY_N1;

ALTER TABLE DEVICE_CONFIGURATION ADD DEVICE_GROUP_NO DM_SMALLINT;

UPDATE DEVICE_CONFIGURATION SET DEVICE_GROUP = 1;

UPDATE DEVICE_CONFIGURATION SET DEVICE_GROUP_NO = -1;

CREATE GENERATOR DEVICE_GROUP_GEN;

CREATE TABLE DEVICE_GROUP
(
  DEVICE_GROUP_KEY DM_KEY,
  DEVICE_GROUP_NAME DM_NAME,
  DELETED DM_BOOLEAN,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  PRIMARY KEY (DEVICE_GROUP_KEY)
);


GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON DEVICE_GROUP TO SYSDBA WITH GRANT OPTION;

CREATE TRIGGER TR_DEVICE_GROUP FOR DEVICE_GROUP ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.DEVICE_GROUP_KEY is null)
  then begin
         new.DEVICE_GROUP_KEY = gen_id(DEVICE_GROUP_GEN, 1);
       end
end

INSERT INTO DEVICE_GROUP (DEVICE_GROUP_KEY, DEVICE_GROUP_NAME, DELETED, ACTIVE_RECORD) VALUES (1, 'Group 1', 0, 1);

SET GENERATOR DEVICE_GROUP_GEN TO 1;