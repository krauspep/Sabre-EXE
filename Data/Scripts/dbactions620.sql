ALTER TABLE RULES_FOR_45_HOURS ADD USE_OT_BAND DM_BOOLEAN;

UPDATE RULES_FOR_45_HOURS SET USE_OT_BAND = 0;

ALTER TABLE RULES_FOR_45_HOURS ADD OT1_BAND_HOURS DM_INTEGER;

UPDATE RULES_FOR_45_HOURS SET OT1_BAND_HOURS = 0;
