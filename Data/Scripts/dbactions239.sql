ALTER TABLE PAYROLL_CALCULATION_DATA ADD OT_AMOUNT DM_CURRENCY;

UPDATE PAYROLL_CALCULATION_DATA SET OT_AMOUNT = 0;