ALTER TABLE WORK_SCHEDULE ADD POST_MARTERINITY DM_BOOLEAN;

UPDATE WORK_SCHEDULE SET POST_MARTERINITY = 0;

ALTER TABLE WORK_SCHEDULE ADD PRE_MARTERINITY DM_BOOLEAN;

UPDATE WORK_SCHEDULE SET PRE_MARTERINITY = 0;

ALTER TABLE WORK_SCHEDULE ADD MARTERINITY_HRS_PERC DM_INTEGER;

UPDATE WORK_SCHEDULE SET MARTERINITY_HRS_PERC  = 0;

ALTER TABLE WORK_SCHEDULE ADD ADD_MARTERINITY_MIN DM_INTEGER;

UPDATE WORK_SCHEDULE SET ADD_MARTERINITY_MIN = 0;
