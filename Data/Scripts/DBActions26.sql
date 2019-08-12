ALTER TABLE EMPLOYEE_EARNING
ADD YTD_TAXABLE DM_CURRENCY;
COMMIT;

ALTER TABLE EMPLOYEE_EARNING
ADD YTD_NON_TAXABLE DM_CURRENCY;
COMMIT;

ALTER TABLE EMPLOYEE_DEDUCTION
ADD YTD_TAX_DEDUCTABLE DM_CURRENCY;
COMMIT;

ALTER TABLE EMPLOYEE_DEDUCTION
ADD YTD_NON_TAX_DEDUCTABLE DM_CURRENCY;
COMMIT;

ALTER TABLE PAYROLL_CALCULATION_DATA
DROP EARNINGS;
COMMIT;

ALTER TABLE PAYROLL_CALCULATION_DATA
DROP DEDUCTIONS;
COMMIT;

ALTER TABLE PAYROLL_CALCULATION_DATA
ADD EARNING_TAXABLE DM_CURRENCY;
COMMIT;

ALTER TABLE PAYROLL_CALCULATION_DATA
ADD EARNING_NON_TAXABLE DM_CURRENCY;
COMMIT;

ALTER TABLE PAYROLL_CALCULATION_DATA
ADD DEDUCT_TAX_DEDUCTABLE DM_CURRENCY;
COMMIT;

ALTER TABLE PAYROLL_CALCULATION_DATA
ADD DEDUCT_NON_TAX_DEDUCTABLE DM_CURRENCY;
COMMIT;