CREATE DOMAIN DM_TAX_NO AS Varchar(16) COLLATE NONE;

CREATE GENERATOR INDIVIDUAL_GEN;

CREATE GENERATOR INDIVIDUAL_ADDRESS_GEN;

CREATE TABLE INDIVIDUAL(INDIVIDUAL_KEY DM_KEY,
                                                     COMPANY_KEY DM_KEY,
                                                     INDIVIDUAL_NO DM_EMPLOYEE_NO,
                                                     INDIVIDUAL_TITLE_KEY DM_KEY,
                                                     INDIVIDUAL_FIRST_NAME DM_NAME_NULL,
                                                     INDIVIDUAL_INITIALS DM_NAME_NULL,
                                                     INDIVIDUAL_MIDDLE_NAME DM_NAME_NULL,
                                                     INDIVIDUAL_SURNAME DM_NAME_NULL,
                                                     INDIVIDUAL_KNOWN_AS DM_NAME_NULL,
                                                     ID_NO DM_ID_NO,
                                                     PASSPORT_NO DM_ID_NO,
                                                     GENDER_KEY DM_KEY,
                                                     DATE_OF_BIRTH DM_DATE,
                                                     SPOUSE_NAME DM_NAME_NULL,
                                                     DEPENDANTS DM_SMALLINT,
                                                     INDIVIDUAL_TYPE_KEY DM_KEY,
                                                     LOCATION_KEY DM_KEY,
                                                     PAYMENT_METHOD_KEY DM_KEY,
                                                     BANK_ACCOUNT_TYPE_KEY DM_KEY,
                                                     BANK_ACCOUNT_NAME DM_NAME_NULL,
                                                     BANK_ACCOUNT_NO DM_BANK_ACCOUNT_NO,
                                                     BRANCH_CODE DM_BRANCH_CODE,
                                                     DATE_ENTERED DM_DATE,
                                                     DEVICE_ID_NAME DM_DEVICE_ID_NAME,
                                                     DEVICE_PASSWORD DM_PASSWORD NOT NULL,
                                                     DEVICE_PRIVLAGE_KEY DM_KEY NOT NULL,
                                                     ENABLED_ON_DEVICE DM_BOOLEAN DEFAULT 0 NOT NULL,
                                                     DELETED DM_BOOLEAN DEFAULT 0,
                                                     ENROLL_ID DM_INTEGER,
                                                     SIRA_NO DM_COUNCIL_NO,
                                                     DEPARTMENT_KEY DM_KEY,
                                                     TRACK DM_BOOLEAN DEFAULT 0,
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
                                                     TERMINATE_REASON_KEY DM_KEY_N1 DEFAULT -1,
                                                     TERMINATE_DATE DM_DATE,
                                                     TERMINATED DM_BOOLEAN DEFAULT 0,
                                                      ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
                                                      RE_EMPLOYED DM_BOOLEAN DEFAULT 0,
                                                      ARCHIVED DM_BOOLEAN DEFAULT 0,
                                                      TAX_STATUS DM_KEY,
                                                      TAX_NO DM_TAX_NO,
                                                      STATIC_PASSWORD DM_BOOLEAN DEFAULT 0,
                                                      SELECTED DM_BOOLEAN DEFAULT 0,
                                                      QUICK_CONTACT_NO DM_VARCHAR_20,
                                                      PRIMARY KEY (INDIVIDUAL_KEY,COMPANY_KEY)
);

CREATE INDEX I_INDIVIDUAL_1 ON INDIVIDUAL (ENROLL_ID,COMPANY_KEY,DELETED);

CREATE INDEX I_INDIVIDUAL_2 ON INDIVIDUAL (INDIVIDUAL_SURNAME,INDIVIDUAL_FIRST_NAME,COMPANY_KEY);

CREATE INDEX I_INDIVIDUAL_3 ON INDIVIDUAL (ENROLL_ID,DELETED);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON INDIVIDUAL TO  "SYSDBA" WITH GRANT OPTION;

CREATE TRIGGER TR_INDIVIDUAL FOR INDIVIDUAL BEFORE INSERT POSITION 0
AS
begin
  if (new.INDIVIDUAL_KEY is null)
  then begin
         new.INDIVIDUAL_KEY = gen_id(INDIVIDUAL_GEN, 1);
       end
end

CREATE TABLE INDIVIDUAL_ADDRESS
(
  INDIVIDUAL_ADDRESS_KEY DM_KEY,
  INDIVIDUAL_KEY DM_KEY,
  PHYSICAL_ADDRESS_1 DM_ADDRESS,
  PHYSICAL_ADDRESS_2 DM_ADDRESS,
  PHYSICAL_ADDRESS_3 DM_ADDRESS,
  PHYSICAL_ADDRESS_4 DM_ADDRESS,
  PHYSICAL_POST_CODE DM_POST_CODE,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  DELETED DM_BOOLEAN DEFAULT 0,
  PRIMARY KEY (INDIVIDUAL_KEY)
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON INDIVIDUAL_ADDRESS TO  "SYSDBA" WITH GRANT OPTION;

CREATE TRIGGER TR_INDIVIDUAL_ADDRESS FOR INDIVIDUAL_ADDRESS BEFORE INSERT POSITION 0
AS
begin
  if (new.INDIVIDUAL_ADDRESS_KEY is null)
  then begin
         new.INDIVIDUAL_ADDRESS_KEY = gen_id(INDIVIDUAL_ADDRESS_GEN, 1);
       end
end
