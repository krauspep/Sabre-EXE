CREATE GENERATOR EMPLOYEE_CONTRIBUTION_GEN;
COMMIT;

CREATE TABLE EMPLOYEE_CONTRIBUTION (
  EMPLOYEE_CONTRIBUTION_KEY            DM_KEY,
  EMPLOYEE_KEY                         DM_KEY,
  COMPANY_CONTRIBUTION_TYPE_KEY        DM_KEY,
  COMPANY_CONTRIBUTION_AMT_TYPE        DM_CHAR,
  AMOUNT_OR_PERCENT                    DM_CURRENCY,
  DELETED                              DM_BOOLEAN
);

ALTER TABLE EMPLOYEE_CONTRIBUTION ADD PRIMARY KEY (EMPLOYEE_CONTRIBUTION_KEY);

SET TERM ^ ;
CREATE TRIGGER TR_EMPLOYEE_CONTRIBUTION FOR EMPLOYEE_CONTRIBUTION
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.EMPLOYEE_CONTRIBUTION_KEY is null)
  then begin
         new.EMPLOYEE_CONTRIBUTION_KEY = gen_id(EMPLOYEE_CONTRIBUTION_GEN, 1);
       end
end
^
SET TERM ; ^

COMMIT;

ALTER TABLE EMPLOYEE_DEDUCTION_TYPE
DROP PROVIDENT_FUND_ER_PERC;
COMMIT;

ALTER TABLE EMPLOYEE_DEDUCTION_TYPE
DROP PROVIDENT_FUND_EE_PERC;
COMMIT;

ALTER TABLE EMPLOYEE_DEDUCTION_TYPE
DROP PROVIDENT_FUND_ER_AMT;
COMMIT;

ALTER TABLE EMPLOYEE_DEDUCTION_TYPE
DROP PROVIDENT_FUND_EE_AMT;
COMMIT;