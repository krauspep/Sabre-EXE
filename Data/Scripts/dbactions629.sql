ALTER TABLE SHIFT ADD DEDUCT_FIXED_BREAK_LEAVE_DAY DM_BOOLEAN;

UPDATE SHIFT SET DEDUCT_FIXED_BREAK_LEAVE_DAY = 1;