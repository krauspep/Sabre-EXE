ALTER TABLE SHIFT_CHANGE_AUDIT ADD CONSOLIDATED DM_BOOLEAN;

UPDATE SHIFT_CHANGE_AUDIT SET CONSOLIDATED = 1;