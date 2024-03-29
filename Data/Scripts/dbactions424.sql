CREATE GENERATOR DEVICE_ZONE_GEN;

CREATE TABLE DEVICE_ZONE
(
  DEVICE_ZONE_KEY DM_KEY,
  DEVICE_ZONE_NAME DM_NAME,
  COMPANY_KEY DM_KEY,
  SITE_KEY DM_KEY,
  DELETED DM_BOOLEAN DEFAULT 0,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  PRIMARY KEY (DEVICE_ZONE_KEY)
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON DEVICE_ZONE TO  "SYSDBA" WITH GRANT OPTION;

CREATE TRIGGER TR_DEVICE_ZONE FOR DEVICE_ZONE BEFORE INSERT POSITION 0
AS
begin
  if (new.DEVICE_ZONE_KEY is null)
  then begin
         new.DEVICE_ZONE_KEY = gen_id(DEVICE_ZONE_GEN, 1);
       end
end
