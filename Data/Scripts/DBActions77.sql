update system_colour set WORK_ON_NO_WORK_DAY_FONT_COLOUR = 0, WORK_ON_NO_WORK_DAY_COLOUR = 16777000;

ALTER TABLE SYSTEM_COLOUR ADD UNALLOCATED_USER DM_COLOUR_NAME;

update system_colour set UNALLOCATED_USER = 423412;

ALTER TABLE SYSTEM_COLOUR ADD UNALLOCATED_USER_FONT DM_COLOUR_NAME;

update system_colour set UNALLOCATED_USER_FONT = 0;