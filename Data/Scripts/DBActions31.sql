CREATE GENERATOR COIN_ANALYSIS_GEN;
COMMIT;

CREATE TABLE COIN_ANALYSIS (
    COIN_ANALYSIS_KEY                DM_KEY NOT NULL,
    EMPLOYEE_KEY                     DM_KEY NOT NULL,
    COMPANY_KEY                      DM_KEY NOT NULL,
    PAY_FREQUENCY                    DM_CHAR,
    PAYROLL_DATE                     DM_DATE,
    NOTE_200                         DM_INTEGER,
    NOTE_100                         DM_INTEGER,
    NOTE_50                          DM_INTEGER,
    NOTE_20                          DM_INTEGER,
    NOTE_10                          DM_INTEGER,
    NOTE_5                           DM_INTEGER,
    NOTE_2                           DM_INTEGER,
    NOTE_1                           DM_INTEGER,
    COIN_50                          DM_INTEGER,
    COIN_20                          DM_INTEGER,
    COIN_10                          DM_INTEGER,
    COIN_5                           DM_INTEGER,
    COIN_2                           DM_INTEGER,
    COIN_1                           DM_INTEGER,
    TOTAL_AMOUNT                     DM_CURRENCY,
    DELETED                          DM_BOOLEAN
);

ALTER TABLE COIN_ANALYSIS ADD PRIMARY KEY (COIN_ANALYSIS_KEY);

SET TERM ^ ;
CREATE TRIGGER TR_COIN_ANALYSIS FOR COIN_ANALYSIS
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.COIN_ANALYSIS_KEY is null)
  then begin
         new.COIN_ANALYSIS_KEY = gen_id(COIN_ANALYSIS_GEN, 1);
       end
end
^
SET TERM ; ^

COMMIT;

alter table PAYROLL_CALCULATION_DATA
add PAYROLL_DATE DM_DATE;
commit;

