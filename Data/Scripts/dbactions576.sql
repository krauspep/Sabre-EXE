ALTER TABLE SHIFT ADD 
ABSENT_HOURS_USE DM_BOOLEAN DEFAULT 0;

UPDATE SHIFT
SET ABSENT_HOURS_USE = 0
WHERE ABSENT_HOURS_USE IS NULL;

ALTER TABLE SHIFT ADD 
ABSENT_HOURS_HRS DM_INTEGER DEFAULT 8;

UPDATE SHIFT
SET ABSENT_HOURS_HRS = 8
WHERE ABSENT_HOURS_HRS IS NULL;

ALTER TABLE SHIFT ADD 
ABSENT_HOURS_MINS DM_INTEGER DEFAULT 0;

UPDATE SHIFT
SET ABSENT_HOURS_MINS = 0
WHERE ABSENT_HOURS_MINS IS NULL;

ALTER TABLE SHIFT ADD 
ABSENT_HOURS_HRS_FRI DM_INTEGER DEFAULT 8;

UPDATE SHIFT
SET ABSENT_HOURS_HRS_FRI = 8
WHERE ABSENT_HOURS_HRS_FRI IS NULL;

ALTER TABLE SHIFT ADD 
ABSENT_HOURS_MINS_FRI DM_INTEGER DEFAULT 0;

UPDATE SHIFT
SET ABSENT_HOURS_MINS_FRI = 0
WHERE ABSENT_HOURS_MINS_FRI IS NULL;

ALTER TABLE SHIFT ADD 
ABSENT_HOURS_HRS_SAT DM_INTEGER DEFAULT 8;

UPDATE SHIFT
SET ABSENT_HOURS_HRS_SAT = 8
WHERE ABSENT_HOURS_HRS_SAT IS NULL;

ALTER TABLE SHIFT ADD 
ABSENT_HOURS_MINS_SAT DM_INTEGER DEFAULT 0;

UPDATE SHIFT
SET ABSENT_HOURS_MINS_SAT = 0
WHERE ABSENT_HOURS_MINS_SAT IS NULL;

ALTER TABLE SHIFT ADD 
ABSENT_HOURS_HRS_SUN DM_INTEGER DEFAULT 8;

UPDATE SHIFT
SET ABSENT_HOURS_HRS_SUN = 8
WHERE ABSENT_HOURS_HRS_SUN IS NULL;

ALTER TABLE SHIFT ADD 
ABSENT_HOURS_MINS_SUN DM_INTEGER DEFAULT 0;

UPDATE SHIFT
SET ABSENT_HOURS_MINS_SUN = 0
WHERE ABSENT_HOURS_MINS_SUN IS NULL;
