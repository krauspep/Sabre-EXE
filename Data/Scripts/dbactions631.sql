CREATE GENERATOR RETAIL_GEN;

CREATE TABLE RETAIL
(
  RETAIL_KEY DM_KEY_N1,
  RETAIL_NAME DM_NAME
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
 ON RETAIL TO  SYSDBA WITH GRANT OPTION;

CREATE TRIGGER TR_RETAIL_GEN FOR RETAIL ACTIVE
BEFORE INSERT POSITION 0
AS
begin
  if (new.RETAIL_KEY is null)
  then begin
         new.RETAIL_KEY = gen_id(RETAIL_GEN, 1);
       end
end

INSERT INTO RETAIL(RETAIL_KEY, RETAIL_NAME) VALUES(1, 'Other');

SET GENERATOR RETAIL_GEN TO 1;

CREATE GENERATOR INSTALLER_GEN;

CREATE TABLE INSTALLER
(
  INSTALLER_KEY DM_KEY_N1,
  INSTALLER_NAME DM_NAME,
  INSTALLER_EMAIL_ADDRESS DM_EMAIL_ADDRESS,
  INSTALLER_CONTACT_NO DM_VARCHAR_20
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
 ON INSTALLER TO  SYSDBA WITH GRANT OPTION;

CREATE TRIGGER TR_INSTALLER_GEN FOR INSTALLER ACTIVE
BEFORE INSERT POSITION 0
AS
begin
  if (new.INSTALLER_KEY is null)
  then begin
         new.INSTALLER_KEY = gen_id(INSTALLER_GEN, 1);
       end
end

INSERT INTO INSTALLER(INSTALLER_KEY, INSTALLER_NAME) VALUES(1, 'Other');

SET GENERATOR INSTALLER_GEN TO 1;
