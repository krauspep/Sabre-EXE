ALTER TABLE ATTENDANCE ADD FILO_CALCULATED DM_BOOLEAN;

UPDATE ATTENDANCE SET FILO_CALCULATED = 0;
