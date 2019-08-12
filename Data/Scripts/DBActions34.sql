CREATE TABLE OVERTIME_TYPE (
    OVERTIME_TYPE_KEY    DM_KEY NOT NULL,
    OVERTIME_NAME        DM_NAME,
    DELETED         DM_BOOLEAN
);

INSERT INTO OVERTIME_TYPE(OVERTIME_TYPE_KEY, OVERTIME_NAME, DELETED)
VALUES(1, 'None', 0);

INSERT INTO OVERTIME_TYPE(OVERTIME_TYPE_KEY, OVERTIME_NAME, DELETED)
VALUES(2, 'Normal', 0);

INSERT INTO OVERTIME_TYPE(OVERTIME_TYPE_KEY, OVERTIME_NAME, DELETED)
VALUES(3, 'Saturday', 0);

INSERT INTO OVERTIME_TYPE(OVERTIME_TYPE_KEY, OVERTIME_NAME, DELETED)
VALUES(4, 'Sunday', 0);

INSERT INTO OVERTIME_TYPE(OVERTIME_TYPE_KEY, OVERTIME_NAME, DELETED)
VALUES(5, 'Public Holiday', 0);

commit;


CREATE GENERATOR PAYROLL_CALCULATION_AUDIT_GEN;
COMMIT;

CREATE TABLE PAYROLL_CALCULATION_AUDIT (
    PAYROLL_CALCULATION_AUDIT_KEY    DM_KEY NOT NULL,
    EMPLOYEE_KEY                     DM_KEY NOT NULL,
    PAY_FREQUENCY                    DM_CHAR,
    SALARY_START                     DM_CURRENCY,
    PAYROLL_DATE                     DM_DATE,
    HOURLY_RATE                      DM_CURRENCY,
    DAILY_RATE                       DM_CURRENCY,
    WEEKLY_RATE                      DM_CURRENCY,
    FORTNIGHTLY_RATE                 DM_CURRENCY,
    MONTHLY_RATE                     DM_CURRENCY,
    OVERTIME_TYPE_KEY                DM_KEY NOT NULL,
    PAY_OVERTIME                     DM_BOOLEAN,
    OVERTIME_RATE                    DM_CURRENCY,
    HOURS_WORKED                     DM_SMALLINT,
    DAYS_WORKED                      DM_SMALLINT,
    OVERTIME_PAY_VALUE               DM_CURRENCY,
    SALARY_END                       DM_CURRENCY,
    DELETED                          DM_BOOLEAN
);

ALTER TABLE PAYROLL_CALCULATION_AUDIT ADD PRIMARY KEY (PAYROLL_CALCULATION_AUDIT_KEY);

SET TERM ^ ;
CREATE TRIGGER TR_PAYROLL_CALCULATION_AUDIT FOR PAYROLL_CALCULATION_AUDIT
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.PAYROLL_CALCULATION_AUDIT_KEY is null)
  then begin
         new.PAYROLL_CALCULATION_AUDIT_KEY = gen_id(PAYROLL_CALCULATION_AUDIT_GEN, 1);
       end
end
^
SET TERM ; ^

COMMIT;


alter table EMPLOYEE
add PAY_OVERTIME DM_BOOLEAN;
commit;

alter table SYSTEM_COLOUR
add TOOLBAR_COLOUR DM_COLOUR_NAME;
commit;

alter table SYSTEM_COLOUR
add DEFAULT_BACKGROUND_COLOUR DM_COLOUR_NAME;
commit;

insert into ATTENDANCE_STATUS(ATTENDANCE_STATUS_KEY, ATTENDANCE_STATUS_NAME, DELETED)
values(8, 'No Work Day', 0);
commit;
