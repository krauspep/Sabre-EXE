CREATE GENERATOR NATIONALITY_GEN;

CREATE TABLE NATIONALITY
(
  NATIONALITY_KEY DM_KEY,
  NATIONALITY_NAME DM_NAME,
  DELETED DM_BOOLEAN DEFAULT 0,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  PRIMARY KEY (NATIONALITY_KEY)
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON NATIONALITY TO  "SYSDBA" WITH GRANT OPTION;

CREATE TRIGGER TR_NATIONALITY FOR NATIONALITY
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.NATIONALITY_KEY is null)
  then begin
         new.NATIONALITY_KEY = gen_id(NATIONALITY_GEN, 1);
       end
end

CREATE GENERATOR RACE_GEN;

CREATE TABLE RACE
(
  RACE_KEY DM_KEY,
  RACE_NAME DM_NAME,
  DELETED DM_BOOLEAN DEFAULT 0,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  PRIMARY KEY (RACE_KEY)
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON RACE TO  "SYSDBA" WITH GRANT OPTION;

CREATE TRIGGER TR_RACE FOR RACE
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.RACE_KEY is null)
  then begin
         new.RACE_KEY = gen_id(RACE_GEN, 1);
       end
end

CREATE GENERATOR BUILD_GEN;

CREATE TABLE BUILD
(
  BUILD_KEY DM_KEY,
  BUILD_NAME DM_NAME,
  DELETED DM_BOOLEAN DEFAULT 0,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  PRIMARY KEY (BUILD_KEY)
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON BUILD TO  "SYSDBA" WITH GRANT OPTION;

CREATE TRIGGER TR_BUILD FOR BUILD
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.BUILD_KEY is null)
  then begin
         new.BUILD_KEY = gen_id(BUILD_GEN, 1);
       end
end

CREATE GENERATOR HAIR_COLOUR_GEN;

CREATE TABLE HAIR_COLOUR
(
  HAIR_COLOUR_KEY DM_KEY,
  HAIR_COLOUR_NAME DM_NAME,
  DELETED DM_BOOLEAN DEFAULT 0,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  PRIMARY KEY (HAIR_COLOUR_KEY)
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON HAIR_COLOUR TO  "SYSDBA" WITH GRANT OPTION;

CREATE TRIGGER TR_HAIR_COLOUR FOR HAIR_COLOUR
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.HAIR_COLOUR_KEY is null)
  then begin
         new.HAIR_COLOUR_KEY = gen_id(HAIR_COLOUR_GEN, 1);
       end
end

CREATE GENERATOR EYE_COLOUR_GEN;

CREATE TABLE EYE_COLOUR
(
  EYE_COLOUR_KEY DM_KEY,
  EYE_COLOUR_NAME DM_NAME,
  DELETED DM_BOOLEAN DEFAULT 0,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  PRIMARY KEY (EYE_COLOUR_KEY)
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON EYE_COLOUR TO  "SYSDBA" WITH GRANT OPTION;

CREATE TRIGGER TR_EYE_COLOUR FOR EYE_COLOUR
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.EYE_COLOUR_KEY is null)
  then begin
         new.EYE_COLOUR_KEY = gen_id(EYE_COLOUR_GEN, 1);
       end
end