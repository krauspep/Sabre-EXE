ALTER TABLE COMPANY ADD PRINT_OVERTIME_WORKED DM_BOOLEAN;

ALTER TABLE COMPANY ADD PRINT_SATURDAY_WORKED DM_BOOLEAN;

ALTER TABLE COMPANY ADD PRINT_SUNDAY_WORKED DM_BOOLEAN;

ALTER TABLE COMPANY ADD PRINT_PPH_WORKED DM_BOOLEAN;

UPDATE COMPANY SET PRINT_OVERTIME_WORKED = 1;

UPDATE COMPANY SET PRINT_SATURDAY_WORKED = 1;

UPDATE COMPANY SET PRINT_SUNDAY_WORKED = 1;

UPDATE COMPANY SET PRINT_PPH_WORKED = 1;

