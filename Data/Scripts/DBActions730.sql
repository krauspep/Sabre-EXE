ALTER TABLE PAYROLL_CALCULATION_AUDIT ADD NSA_PAY_RATE DM_CURRENCY;

COMMIT;

UPDATE PAYROLL_CALCULATION_AUDIT SET NSA_PAY_RATE = 0;