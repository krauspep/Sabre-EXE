ALTER TABLE COMPANY ADD PRINT_COMPANY_CONTRIBUTIONS DM_BOOLEAN;

ALTER TABLE DEPARTMENT ADD APPLY_OT_ON_UNSCHEDULED_DAY DM_BOOLEAN;

UPDATE COMPANY SET PRINT_COMPANY_CONTRIBUTIONS = 1;

UPDATE DEPARTMENT SET APPLY_OT_ON_UNSCHEDULED_DAY = 0;
