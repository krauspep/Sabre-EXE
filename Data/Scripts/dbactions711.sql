ALTER TABLE OUT_OF_SHIFT_CLOCK_TEMP ADD SHIFT_COUNT DM_INTEGER;

UPDATE OUT_OF_SHIFT_CLOCK_TEMP SET SHIFT_COUNT = 0;