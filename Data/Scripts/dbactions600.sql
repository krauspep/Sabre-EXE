ALTER TABLE SHIFT ADD FORCE_BREAKS_IF_NONE DM_BOOLEAN;

UPDATE SHIFT SET FORCE_BREAKS_IF_NONE = 0;
