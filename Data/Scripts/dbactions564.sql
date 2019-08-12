ALTER TABLE VISITOR
ADD PASSENGERS SMALLINT DEFAULT 0;

ALTER TABLE VISITOR
ADD BUSINESS_KEY DM_KEY DEFAULT -1;

CREATE GENERATOR CARDPAIR_GEN;

CREATE TABLE CARDPAIR
(
  CARDPAIR_KEY DM_KEY,
  CARDNUMBER VARCHAR(80),
  ENROLL_ID INTEGER,
  DELETED DM_BOOLEAN DEFAULT 0,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  PRIMARY KEY (CARDPAIR_KEY)
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
 ON CARDPAIR TO  SYSDBA WITH GRANT OPTION;

CREATE TRIGGER TR_CARDPAIR FOR CARDPAIR ACTIVE
BEFORE INSERT POSITION 0
AS
begin
  if (new.CARDPAIR_KEY is null)
  then begin
         new.CARDPAIR_KEY = gen_id(CARDPAIR_GEN, 1);
       end
end

CREATE TRIGGER TR_CARDPAIR_VALUES FOR CARDPAIR ACTIVE
BEFORE INSERT POSITION 0
AS
begin
 new.DELETED = 0;
 new.ACTIVE_RECORD = 1;
end

CREATE GENERATOR BUSINESS_GEN;

CREATE TABLE BUSINESS
(
  BUSINESS_KEY DM_KEY,
  NAME VARCHAR(60),
  EMAIL VARCHAR(60),
  TELEPHONE VARCHAR(60),
  CONTACT VARCHAR(60),
  DELETED DM_BOOLEAN DEFAULT 0,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  PRIMARY KEY (BUSINESS_KEY)
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
 ON BUSINESS TO  SYSDBA WITH GRANT OPTION;

CREATE TRIGGER TR_BUSINESS FOR BUSINESS ACTIVE
BEFORE INSERT POSITION 0
AS
begin
  if (new.BUSINESS_KEY is null)
  then begin
         new.BUSINESS_KEY = gen_id(BUSINESS_GEN, 1);
       end
end

CREATE TRIGGER TR_BUSINESS_VALUES FOR BUSINESS ACTIVE
BEFORE INSERT POSITION 0
AS
begin
 new.DELETED = 0;
 new.ACTIVE_RECORD = 1;
end
