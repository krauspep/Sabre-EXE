CREATE GENERATOR PUPIL_GEN;

CREATE GENERATOR PUPIL_DEVICE_LINK_GEN;

CREATE GENERATOR PUPIL_TIME_ZONE_GEN;

CREATE GENERATOR PUPIL_GRADE_GEN;

CREATE GENERATOR PUPIL_PARENT_GEN;

CREATE GENERATOR PUPIL_RELATIONSHIP_GEN;

CREATE DOMAIN DM_ADMISSION_NO AS Varchar(8) CHARACTER SET NONE COLLATE NONE;

CREATE DOMAIN DM_GRADE AS Varchar(2) CHARACTER SET NONE COLLATE NONE;

CREATE DOMAIN DM_PRIMARY_KEY AS integer DEFAULT -1 NOT NULL;

CREATE TABLE PUPIL
(
  PUPIL_KEY DM_PRIMARY_KEY,
  PUPIL_ADMISSION_NO DM_ADMISSION_NO,
  PUPIL_FIRST_NAME DM_NAME,
  PUPIL_SURNAME DM_NAME,
  PUPIL_KNOWN_AS DM_NAME_NULL, 
  ID_NO DM_ID_NO,
  ENROLL_ID DM_INTEGER,
  DEVICE_ID_NAME DM_DEVICE_ID_NAME,
  DEVICE_PASSWORD DM_PASSWORD,
  DEVICE_PRIVLAGE_KEY DM_KEY,
  ENABLED_ON_DEVICE DM_BOOLEAN DEFAULT  0,
  COMPANY_KEY DM_KEY,
  SUPPORT DM_BOOLEAN DEFAULT  0,
  PUPIL_GRADE_KEY DM_KEY,
  EVENT_STATUS DM_SHORT_NAME,
  TRACK DM_BOOLEAN DEFAULT  0,
  LAST_EVENT_DATE DM_DATE,
  LAST_EVENT_TIME DM_TIME,
  LEFT_THUMB DM_BOOLEAN DEFAULT 0,
  LEFT_INDEX DM_BOOLEAN DEFAULT 0,
  LEFT_MIDDLE DM_BOOLEAN DEFAULT 0,
  LEFT_RING DM_BOOLEAN DEFAULT 0,
  LEFT_SMALL DM_BOOLEAN DEFAULT 0,
  RIGHT_THUMB DM_BOOLEAN DEFAULT 0,
  RIGHT_INDEX DM_BOOLEAN DEFAULT 0,
  RIGHT_MIDDLE DM_BOOLEAN DEFAULT 0,
  RIGHT_RING DM_BOOLEAN DEFAULT 0,
  RIGHT_SMALL DM_BOOLEAN DEFAULT 0,
  AWAY_MESSAGE DM_BLOB3,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  DELETED DM_BOOLEAN DEFAULT  0,
  PRIMARY KEY (PUPIL_KEY)
);

CREATE INDEX I_PUPIL_1 ON PUPIL (ENROLL_ID,COMPANY_KEY,DELETED);

CREATE INDEX I_PUPIL_2 ON PUPIL (PUPIL_SURNAME,PUPIL_FIRST_NAME,COMPANY_KEY);

CREATE INDEX I_PUPIL_3 ON PUPIL (ENROLL_ID,DELETED);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON MEMBER TO SYSDBA WITH GRANT OPTION;

CREATE TRIGGER TR_PUPIL FOR PUPIL ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.PUPIL_KEY is null)
  then begin
         new.PUPIL_KEY = gen_id(PUPIL_GEN, 1);
       end
end


CREATE TABLE PUPIL_DEVICE_LINK
(
  PUPIL_DEVICE_LINK_KEY DM_PRIMARY_KEY,
  PUPIL_KEY DM_KEY,
  DEVICE_KEY DM_KEY,
  ENABLED_ON_DEVICE DM_BOOLEAN DEFAULT 0,
  DELETED DM_BOOLEAN DEFAULT 0,
  OPEN_DOOR DM_BOOLEAN DEFAULT 0,
  DEVICE_TYPE_KEY DM_KEY,
  IS_SELECTED DM_FALSE DEFAULT 'F',
  ENROLL_GROUP DM_SMALLINT,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  PRIMARY KEY (PUPIL_DEVICE_LINK_KEY)
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON PUPIL_DEVICE_LINK TO SYSDBA WITH GRANT OPTION;

CREATE TRIGGER TR_PUPIL_DEVICE_LINK FOR PUPIL_DEVICE_LINK ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.PUPIL_DEVICE_LINK_KEY is null)
  then begin
         new.PUPIL_DEVICE_LINK_KEY = gen_id(PUPIL_DEVICE_LINK_GEN, 1);
       end
end


CREATE TABLE PUPIL_TIME_ZONE
(
  PUPIL_TIME_ZONE_KEY DM_PRIMARY_KEY,
  PUPIL_KEY DM_KEY,
  DEVICE_CONFIGURATION_KEY DM_KEY,
  TIME_ZONE1 DM_SMALLINT,
  TIME_ZONE2 DM_SMALLINT,
  TIME_ZONE3 DM_SMALLINT,
  DELETED DM_BOOLEAN DEFAULT 0,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  PRIMARY KEY (PUPIL_TIME_ZONE_KEY)
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON PUPIL_TIME_ZONE TO SYSDBA WITH GRANT OPTION;

CREATE TRIGGER TR_PUPIL_TIME_ZONE FOR PUPIL_TIME_ZONE ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.PUPIL_TIME_ZONE_KEY is null)
  then begin
         new.PUPIL_TIME_ZONE_KEY = gen_id(PUPIL_TIME_ZONE_GEN, 1);
       end
end

CREATE TABLE PUPIL_GRADE
(
  PUPIL_GRADE_KEY DM_PRIMARY_KEY,
  GRADE_NAME DM_GRADE,
  DELETED DM_BOOLEAN DEFAULT 0,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  PRIMARY KEY (PUPIL_GRADE_KEY)
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON PUPIL_GRADE TO SYSDBA WITH GRANT OPTION;

CREATE TRIGGER TR_PUPIL_GRADE FOR PUPIL_GRADE ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.PUPIL_GRADE_KEY is null)
  then begin
         new.PUPIL_GRADE_KEY = gen_id(PUPIL_GRADE_GEN, 1);
       end
end

CREATE TABLE PUPIL_PARENT
(
  PUPIL_PARENT_KEY DM_PRIMARY_KEY,
  PARENT_FIRST_NAME DM_NAME,
  PARENT_SURNAME DM_NAME,
  PARENT_RELATIONSHIP_KEY DM_KEY,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  DELETED DM_BOOLEAN DEFAULT  0,
  PRIMARY KEY (PUPIL_PARENT_KEY)
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON MEMBER TO SYSDBA WITH GRANT OPTION;

CREATE TRIGGER TR_PUPIL_PARENT FOR PUPIL_PARENT ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.PUPIL_PARENT_KEY is null)
  then begin
         new.PUPIL_PARENT_KEY = gen_id(PUPIL_PARENT_GEN, 1);
       end
end

CREATE TABLE PUPIL_RELATIONSHIP
(
  PUPIL_RELATIONSHIP_KEY DM_PRIMARY_KEY,
  RELATIONSHIP_NAME DM_NAME,
  DELETED DM_BOOLEAN DEFAULT 0,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  PRIMARY KEY (PUPIL_RELATIONSHIP_KEY)
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON PUPIL_RELATIONSHIP TO SYSDBA WITH GRANT OPTION;

CREATE TRIGGER TR_PUPIL_RELATIONSHIP FOR PUPIL_RELATIONSHIP ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.PUPIL_RELATIONSHIP_KEY is null)
  then begin
         new.PUPIL_RELATIONSHIP_KEY = gen_id(PUPIL_RELATIONSHIP_GEN, 1);
       end
end

ALTER TABLE ATTENDANCE ADD PUPIL_KEY DM_KEY;

ALTER TABLE ATTENDANCE_ARCHIVE ADD PUPIL_KEY DM_KEY;

CREATE GENERATOR PUPIL_NOTE_GEN;

CREATE TABLE PUPIL_NOTE
(
  PUPIL_NOTE_KEY DM_PRIMARY_KEY,
  PUPIL_KEY DM_KEY,
  PUPIL_NOTE DM_BLOB,
  DELETED DM_BOOLEAN DEFAULT 0,
  NOTE_TYPE_KEY DM_KEY,
  CREATED_BY DM_KEY,
  CREATED_ON DM_DATE,
  LAST_MODIFIED_BY DM_KEY,
  LAST_MODIFIED_ON DM_DATE,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  PRIMARY KEY (PUPIL_NOTE_KEY)
);

CREATE INDEX I_PUPIL_NOTE_1 ON PUPIL_NOTE (PUPIL_KEY,DELETED);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON EMPLOYEE_NOTE TO  SYSDBA WITH GRANT OPTION;

CREATE TRIGGER TR_PUPIL_NOTE FOR PUPIL_NOTE ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.PUPIL_NOTE_KEY is null)
  then begin
         new.PUPIL_NOTE_KEY = gen_id(PUPIL_NOTE_GEN, 1);
       end
end