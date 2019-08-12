CREATE GENERATOR EMPLOYEE_HOLIDAY_PAY_GEN;
COMMIT;

CREATE TABLE EMPLOYEE_HOLIDAY_PAY (
    EMPLOYEE_HOLIDAY_PAY_KEY         DM_KEY NOT NULL,
    EMPLOYEE_KEY                     DM_KEY NOT NULL,
    MONTH_LIST_KEY                   DM_KEY NOT NULL,
    HOLIDAY_PAY_YEAR                 DM_SMALLINT,
    HOLIDAY_PAY_VALUE                DM_CURRENCY,
    DELETED                          DM_BOOLEAN
);

ALTER TABLE EMPLOYEE_HOLIDAY_PAY ADD PRIMARY KEY (EMPLOYEE_HOLIDAY_PAY_KEY);

SET TERM ^ ;
CREATE TRIGGER TR_EMPLOYEE_HOLIDAY_PAY FOR EMPLOYEE_HOLIDAY_PAY
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.EMPLOYEE_HOLIDAY_PAY_KEY is null)
  then begin
         new.EMPLOYEE_HOLIDAY_PAY_KEY = gen_id(EMPLOYEE_HOLIDAY_PAY_GEN, 1);
       end
end
^
SET TERM ; ^

COMMIT;

alter table SYSTEM_PARAMETER
add PROVIDENT_FUND_EMPLOYER_MATCH DM_BOOLEAN;
COMMIT;