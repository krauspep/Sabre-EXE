CREATE GENERATOR DOWNLOAD_AUDIT_GEN;
COMMIT;

CREATE TABLE DOWNLOAD_AUDIT (
    DOWNLOAD_AUDIT_KEY            DM_KEY,
    DEVICE_CONFIGURATION_KEY      DM_KEY,
    DOWNLOAD_DATE                 DM_DATE,
    DOWNLOAD_TIME                 DM_TIME,
    RECORD_DOWNLOAD               DM_INTEGER,
    DELETED                       DM_BOOLEAN,
    PRIMARY KEY (DOWNLOAD_AUDIT_KEY)
);

COMMIT;

SET TERM ^ ;

/* Trigger: TR_DOWNLOAD_AUDIT */
CREATE TRIGGER TR_DOWNLOAD_AUDIT FOR DOWNLOAD_AUDIT
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  /* first - check for NULL for this column */
  if (new.DOWNLOAD_AUDIT_KEY is null)
  then begin
  /* if NULL, provide a new ID for this generator */
         new.DOWNLOAD_AUDIT_KEY = gen_id(DOWNLOAD_AUDIT_GEN, 1);
       end
end
^

SET TERM ; ^

COMMIT;

alter table DOWNLOAD_AUDIT
Add Download_Status DM_CHAR;

commit;

alter table DEPARTMENT
Add TERMINAL_KEY DM_KEY;

commit;

alter table DEVICE_LOCATION
Add DEPARTMENT_KEY DM_KEY;

commit;