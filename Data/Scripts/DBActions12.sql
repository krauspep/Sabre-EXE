CREATE DOMAIN DM_DEDUCTION_TYPE CHAR(1);
COMMIT;

CREATE GENERATOR TAX_TABLE_GEN;
COMMIT;

CREATE TABLE TAX_TABLE
(
TAX_TABLE_KEY       DM_KEY,
UNDER_65_TAX        DM_CURRENCY,
OVER_65_TAX         DM_CURRENCY,
SALARY_RANGE_FROM   DM_CURRENCY,
SALARY_RANGE_TO     DM_CURRENCY,
DEDUCTION_TYPE      DM_DEDUCTION_TYPE,
DELETED             DM_BOOLEAN,
PRIMARY KEY (TAX_TABLE_KEY)
);

COMMIT;

SET TERM ^! ;
CREATE TRIGGER TR_TAX_TABLE FOR TAX_TABLE ACTIVE BEFORE INSERT POSITION 0 AS
begin
  /* first - check for NULL for this column */
  if (new.TAX_TABLE_KEY is null)
  then begin
  /* if NULL, provide a new ID for this generator */
         new.TAX_TABLE_KEY = gen_id(TAX_TABLE_GEN, 1);
       end
end
^!
SET TERM ; ^!

COMMIT;

CREATE GENERATOR WORK_SCHEDULE_GEN;
COMMIT;

CREATE TABLE WORK_SCHEDULE
(
WORK_SCHEDULE_KEY       DM_KEY,
EMPLOYEE_KEY            DM_KEY,
SHIFT_KEY               DM_KEY,
ATTENDANCE_DATE_START   DM_DATE,
TIME_START              DM_TIME,
ATTENDANCE_DATE_END     DM_DATE,
TIME_END                DM_TIME,
TOTAL_WORK_MINUTES      DM_SMALLINT,
DELETED                 DM_BOOLEAN,
PRIMARY KEY (WORK_SCHEDULE_KEY)
);

COMMIT;

SET TERM ^! ;
CREATE TRIGGER TR_WORK_SCHEDULE FOR WORK_SCHEDULE ACTIVE BEFORE INSERT POSITION 0 AS
begin
  /* first - check for NULL for this column */
  if (new.WORK_SCHEDULE_KEY is null)
  then begin
  /* if NULL, provide a new ID for this generator */
         new.WORK_SCHEDULE_KEY = gen_id(WORK_SCHEDULE_GEN, 1);
       end
end
^!
SET TERM ; ^!

COMMIT;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA
ADD WORK_SCHEDULE_KEY DM_KEY;
COMMIT;

ALTER TABLE ATTENDANCE
ADD VERIFIED DM_BOOLEAN;
COMMIT;