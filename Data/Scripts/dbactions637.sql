ALTER TABLE BRANCH ADD OVERRIDE_COMPANY_MULTI_HOURS DM_BOOLEAN;

ALTER TABLE BRANCH ADD MULTIPLY_SATURDAY_HOURS DM_BOOLEAN;

ALTER TABLE BRANCH ADD MULTIPLY_SUNDAY_HOURS DM_BOOLEAN;

ALTER TABLE BRANCH ADD MULTIPLY_SATURDAY_HOURS_VALUE DM_FLOAT;

UPDATE BRANCH SET MULTIPLY_SATURDAY_HOURS_VALUE = 0;

ALTER TABLE BRANCH ADD MULTIPLY_SUNDAY_HOURS_VALUE DM_FLOAT;

UPDATE BRANCH SET MULTIPLY_SUNDAY_HOURS_VALUE = 0;