ALTER TABLE ATTENDANCE ADD SHIFT_SENSE_SHIFT_KEY DM_KEY_N1;

UPDATE ATTENDANCE SET SHIFT_SENSE_SHIFT_KEY = -1 ;

ALTER TABLE ATTENDANCE ADD SHIFT_SENSE_WORK_SCHEDULE_KEY DM_KEY_N1;

UPDATE ATTENDANCE SET SHIFT_SENSE_WORK_SCHEDULE_KEY = -1 ;