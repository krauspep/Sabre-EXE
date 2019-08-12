alter table system_parameter
add Schedule_Start_Date dm_date;
commit;

CREATE GENERATOR ABSENT_DATA_GEN;
COMMIT;

CREATE TABLE ABSENT_DATA (
    ABSENT_DATA_KEY    DM_KEY,
    LEAVE_TYPE_KEY     DM_KEY,
    FROM_DATE          DM_DATE,
    TO_DATE            DM_DATE,
    ABSENT_REASON      DM_BLOB2,
    DELETED            DM_BOOLEAN
);
COMMIT;

ALTER TABLE ABSENT_DATA ADD PRIMARY KEY (ABSENT_DATA_KEY);
COMMIT;

SET TERM ^ ;

/* Trigger: TR_ABSENT_DATA */
CREATE TRIGGER TR_ABSENT_DATA FOR ABSENT_DATA
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  /* first - check for NULL for this column */
  if (new.ABSENT_DATA_KEY is null)
  then begin
  /* if NULL, provide a new ID for this generator */
         new.ABSENT_DATA_KEY = gen_id(ABSENT_DATA_GEN, 1);
       end
end
^

SET TERM ; ^
COMMIT;

alter table WORK_SCHEDULE
add absent_data_key dm_key;
commit;
