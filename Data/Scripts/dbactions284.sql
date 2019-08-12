ALTER TABLE DEVICE_MESSAGE ADD ACTIVE_RECORD DM_BOOLEAN;

UPDATE DEVICE_MESSAGE SET ACTIVE_RECORD = 1;

ALTER TABLE DEVICE_MESSAGE ADD DELETED DM_BOOLEAN;

UPDATE DEVICE_MESSAGE SET DELETED = 0;

DELETE FROM DEVICE_MESSAGE;

ALTER TABLE DEVICE_MESSAGE DROP EMPLOYEE_KEY;

CREATE GENERATOR DEVICE_MESSAGE_GEN;

ALTER TABLE DEVICE_MESSAGE ADD DEVICE_MESSAGE_KEY DM_KEY;

ALTER TABLE DEVICE_MESSAGE ADD GENERIC_KEY DM_KEY;

CREATE TRIGGER TR_DEVICE_MESSAGE FOR DEVICE_MESSAGE ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.DEVICE_MESSAGE_KEY is null)
  then begin
         new.DEVICE_MESSAGE_KEY = gen_id(DEVICE_MESSAGE_GEN, 1);
       end
end

