ALTER TABLE EMPLOYEE ADD 
ABSENT_HOURS_HRS_FRI DM_INTEGER DEFAULT 8;

UPDATE EMPLOYEE
SET ABSENT_HOURS_HRS_FRI = 8
WHERE ABSENT_HOURS_HRS_FRI IS NULL;

ALTER TABLE EMPLOYEE ADD 
ABSENT_HOURS_MINS_FRI DM_INTEGER DEFAULT 0;

UPDATE EMPLOYEE
SET ABSENT_HOURS_MINS_FRI = 0
WHERE ABSENT_HOURS_MINS_FRI IS NULL;

ALTER TABLE EMPLOYEE ADD 
ABSENT_HOURS_HRS_SAT DM_INTEGER DEFAULT 8;

UPDATE EMPLOYEE
SET ABSENT_HOURS_HRS_SAT = 8
WHERE ABSENT_HOURS_HRS_SAT IS NULL;

ALTER TABLE EMPLOYEE ADD 
ABSENT_HOURS_MINS_SAT DM_INTEGER DEFAULT 0;

UPDATE EMPLOYEE
SET ABSENT_HOURS_MINS = 0
WHERE ABSENT_HOURS_MINS_SAT IS NULL;
