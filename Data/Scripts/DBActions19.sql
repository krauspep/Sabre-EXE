CREATE TABLE COMPANY_TYPE
(
COMPANY_TYPE_KEY          DM_KEY,
COMPANY_TYPE_NAME         DM_NAME, 
DELETED                   DM_BOOLEAN,
PRIMARY KEY (COMPANY_TYPE_KEY)
);

COMMIT;

INSERT INTO COMPANY_TYPE("COMPANY_TYPE_KEY","COMPANY_TYPE_NAME","DELETED")
VALUES (1, 'Commercial', 0);
INSERT INTO COMPANY_TYPE("COMPANY_TYPE_KEY","COMPANY_TYPE_NAME","DELETED")
VALUES (2, 'Residential', 0);

commit;

alter table company
add Company_Type dm_key;
commit;

CREATE DOMAIN "DM_UNIT_NO" AS VARCHAR(10);
COMMIT;

CREATE GENERATOR RESIDENT_GEN;
COMMIT;
SET GENERATOR RESIDENT_GEN TO 0;
COMMIT;

CREATE TABLE RESIDENT (
    RESIDENT_KEY                  DM_KEY,
    RESIDENT_FIRST_NAME           DM_NAME,
    RESIDENT_SURNAME              DM_NAME,
    UNIT_NO                       DM_UNIT_NO,
    DELETED                       DM_BOOLEAN,
    PRIMARY KEY (RESIDENT_KEY)
);

COMMIT;

SET TERM ^ ;

/* Trigger: TR_RESIDENT */
CREATE TRIGGER TR_RESIDENT FOR RESIDENT
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  /* first - check for NULL for this column */
  if (new.RESIDENT_KEY is null)
  then begin
  /* if NULL, provide a new ID for this generator */
         new.RESIDENT_KEY = gen_id(RESIDENT_GEN, 1);
       end
end
^

SET TERM ; ^

COMMIT;

CREATE GENERATOR CONTACT_TYPE_GEN;
COMMIT;
SET GENERATOR CONTACT_TYPE_GEN TO 0;
COMMIT;

CREATE TABLE CONTACT_TYPE (
    CONTACT_TYPE_KEY            DM_KEY,
    CONTACT_TYPE_NAME           DM_NAME,
    DELETED                     DM_BOOLEAN,
    PRIMARY KEY (CONTACT_TYPE_KEY)
);

COMMIT;

SET TERM ^ ;

/* Trigger: TR_CONTACT_TYPE */
CREATE TRIGGER TR_CONTACT_TYPE FOR CONTACT_TYPE
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  /* first - check for NULL for this column */
  if (new.CONTACT_TYPE_KEY is null)
  then begin
  /* if NULL, provide a new ID for this generator */
         new.CONTACT_TYPE_KEY = gen_id(CONTACT_TYPE_GEN, 1);
       end
end
^

SET TERM ; ^

COMMIT;


CREATE GENERATOR CONTACT_GEN;
COMMIT;
SET GENERATOR CONTACT_GEN TO 0;
COMMIT;

CREATE TABLE CONTACT (
    CONTACT_KEY              DM_KEY,
    EMP_RES_KEY              DM_KEY,
    CONTACT_TYPE_KEY         DM_KEY,
    CONTACT_DETAIL           DM_NAME,
    DELETED                  DM_BOOLEAN,
    PRIMARY KEY (CONTACT_KEY)
);

COMMIT;

SET TERM ^ ;

/* Trigger: TR_CONTACT */
CREATE TRIGGER TR_CONTACT FOR CONTACT
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  /* first - check for NULL for this column */
  if (new.CONTACT_KEY is null)
  then begin
  /* if NULL, provide a new ID for this generator */
         new.CONTACT_KEY = gen_id(CONTACT_GEN, 1);
       end
end
^

SET TERM ; ^

COMMIT;

alter table calendar_month
add Company_Key dm_key;
commit;

Update Calendar_Month
Set Company_Key = (Select min(Company_Key) from Company);
commit;