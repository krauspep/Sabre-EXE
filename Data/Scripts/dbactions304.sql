ALTER TABLE COMPANY ADD PRINT_LEAVE_DUE_ON_PAYSLIP DM_BOOLEAN;

UPDATE COMPANY SET PRINT_LEAVE_DUE_ON_PAYSLIP = 1;
