ALTER TABLE PAYROLL_CALCULATION_AUDIT ADD DROP_TEMP DM_INTEGER;

UPDATE PAYROLL_CALCULATION_AUDIT SET DROP_TEMP = HOURS_WORKED;

ALTER TABLE PAYROLL_CALCULATION_AUDIT DROP HOURS_WORKED;

ALTER TABLE PAYROLL_CALCULATION_AUDIT ADD HOURS_WORKED DM_INTEGER;

UPDATE PAYROLL_CALCULATION_AUDIT SET HOURS_WORKED = DROP_TEMP;

ALTER TABLE PAYROLL_CALCULATION_AUDIT DROP DROP_TEMP;


  
  