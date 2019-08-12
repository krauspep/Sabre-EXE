alter table RESIDENT
add ENROLL_ID dm_integer;

commit;

alter table EMPLOYEE
add ENROLL_ID dm_integer;

commit;

alter table RESIDENT
add DEVICE_ID_NAME      DM_DEVICE_ID_NAME;
commit;

alter table RESIDENT
add DEVICE_PASSWORD       DM_PASSWORD;
commit;

alter table RESIDENT
add DEVICE_PRIVLAGE_KEY         DM_KEY;
commit;


alter table RESIDENT
add ENABLED_ON_DEVICE          DM_BOOLEAN;
commit;

alter table RESIDENT
add COMPANY_KEY          DM_KEY;
commit;

CREATE GENERATOR RESIDENT_DEVICE_LINK_GEN;
COMMIT;

CREATE TABLE "RESIDENT_DEVICE_LINK"
(
"RESIDENT_DEVICE_LINK_KEY"       "DM_KEY",
"RESIDENT_KEY"                                   "DM_KEY",
"DEVICE_KEY"                                         "DM_KEY",
"ENABLED_ON_DEVICE"                     "DM_BOOLEAN",
"DELETED"                                              "DM_BOOLEAN",
PRIMARY KEY ("RESIDENT_DEVICE_LINK_KEY")
);

SET TERM ^ ;

/* Trigger: TR_RESIDENT_DEVICE_LINK */
CREATE TRIGGER TR_RESIDENT_DEVICE_LINK FOR RESIDENT_DEVICE_LINK
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  /* first - check for NULL for this column */
  if (new.RESIDENT_DEVICE_LINK_KEY is null)
  then begin
  /* if NULL, provide a new ID for this generator */
         new.RESIDENT_DEVICE_LINK_KEY = gen_id(RESIDENT_DEVICE_LINK_GEN, 1);
       end
end
^

SET TERM ; ^
COMMIT;

ALTER TABLE FINGERPRINT
ADD RESIDENT_KEY DM_KEY;
COMMIT