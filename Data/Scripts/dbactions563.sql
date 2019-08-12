ALTER TABLE PROPERTY_DEFINITION
ALTER PROPERTY_NO TYPE VARCHAR(60);

ALTER TABLE RESIDENT
ALTER PROPERTY_NO TYPE VARCHAR(60);

CREATE GENERATOR RELATION_GEN;

CREATE TABLE RELATION
(
  RELATION_KEY DM_KEY,
  RELATION_NAME DM_NAME,
  DELETED DM_BOOLEAN DEFAULT 0,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  PRIMARY KEY (RELATION_KEY)
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
 ON RELATION TO  SYSDBA WITH GRANT OPTION;

CREATE TRIGGER TR_RELATION FOR RELATION ACTIVE
BEFORE INSERT POSITION 0
AS
begin
  if (new.RELATION_KEY is null)
  then begin
         new.RELATION_KEY = gen_id(RELATION_GEN, 1);
       end
end

CREATE TRIGGER TR_RELATION_VALUES FOR RELATION ACTIVE
BEFORE INSERT POSITION 0
AS
begin
 new.DELETED = 0;
 new.ACTIVE_RECORD = 1;
end

CREATE GENERATOR VISITOR_GEN;

CREATE TABLE VISITOR
(
  VISITOR_KEY DM_KEY,
  VEHICLE_KEY DM_KEY DEFAULT -1,
  LICENCE_KEY DM_KEY DEFAULT -1,
  VEHICLE_DRIVER DM_BOOLEAN DEFAULT 0,
  VISITOR_BLOCKED DM_BOOLEAN DEFAULT 0,
  EMP_OR_RESIDENT_KEY DM_KEY DEFAULT -1, 
  VISITOR_TYPE CHAR(1),
  TELEPHONE VARCHAR(20),
  CELLPHONE VARCHAR(20),
  EMAIL VARCHAR(60),
  SPONSOR_PHONE VARCHAR(20),
  RELATION_KEY DM_KEY DEFAULT -1,
  PRIMARY KEY (VISITOR_KEY)
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
 ON VISITOR TO  SYSDBA WITH GRANT OPTION;

CREATE TRIGGER TR_VISITOR FOR VISITOR ACTIVE
BEFORE INSERT POSITION 0
AS
begin
  if (new.VISITOR_KEY is null)
  then begin
         new.VISITOR_KEY = gen_id(VISITOR_GEN, 1);
       end
end


