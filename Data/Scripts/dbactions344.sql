ALTER TABLE COMPANY ADD SITE_KEY DM_KEY;

CREATE GENERATOR SITE_GEN;

CREATE TABLE SITE
(
  SITE_KEY DM_KEY NOT NULL,
  SITE_NAME DM_NAME,
  DELETED DM_BOOLEAN DEFAULT 0,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  PRIMARY KEY (SITE_KEY)
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON SITE TO SYSDBA WITH GRANT OPTION;

CREATE TRIGGER TR_SITE FOR SITE ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.SITE_KEY is null)
  then begin
         new.SITE_KEY = gen_id(SITE_GEN, 1);
       end
end

INSERT INTO SITE(SITE_NAME, ACTIVE_RECORD, DELETED) VALUES('Demo Site', 1, 0); 

UPDATE COMPANY SET SITE_KEY = 1; 




