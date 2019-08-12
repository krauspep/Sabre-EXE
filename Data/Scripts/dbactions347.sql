ALTER TABLE COMPANY ADD CLOCKING_IMPORT DM_BOOLEAN;

ALTER TABLE COMPANY ADD CLOCKING_EXCEPTIONS DM_BOOLEAN;

ALTER TABLE COMPANY ADD SHIFT_SENSING DM_BOOLEAN;

ALTER TABLE COMPANY ADD CALCULATE_BREAKS DM_BOOLEAN;

ALTER TABLE COMPANY ADD CALCULATE_TA DM_BOOLEAN;

ALTER TABLE COMPANY ADD ALLOCATE_UNSCHEDULED_DAYS DM_BOOLEAN;

ALTER TABLE COMPANY ADD APPROVE_OVERTIME DM_BOOLEAN;

UPDATE COMPANY SET CLOCKING_IMPORT = 1;

UPDATE COMPANY SET CLOCKING_EXCEPTIONS = 1;

UPDATE COMPANY SET SHIFT_SENSING = 1;

UPDATE COMPANY SET CALCULATE_BREAKS = 1;

UPDATE COMPANY SET CALCULATE_TA = 1;

UPDATE COMPANY SET ALLOCATE_UNSCHEDULED_DAYS = 1;

UPDATE COMPANY SET APPROVE_OVERTIME = 1;
