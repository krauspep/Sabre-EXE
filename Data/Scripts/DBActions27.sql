CREATE GENERATOR DEVICE_TIME_ZONE_GEN;
COMMIT;

CREATE TABLE "DEVICE_TIME_ZONE"
(
"DEVICE_TIME_ZONE_KEY"                  "DM_KEY",
"DEVICE_CONFIGURATION_KEY"       "DM_KEY",
"TIME_ZONE"                                             "DM_SMALLINT",
"MON_FROM_TIME"                                 "DM_TIME",
"MON_TO_TIME"                                       "DM_TIME",
"TUE_FROM_TIME"                                 "DM_TIME",
"TUE_TO_TIME"                                       "DM_TIME",
"WED_FROM_TIME"                                 "DM_TIME",
"WED_TO_TIME"                                       "DM_TIME",
"THU_FROM_TIME"                                 "DM_TIME",
"THU_TO_TIME"                                       "DM_TIME",
"FRI_FROM_TIME"                                 "DM_TIME",
"FRI_TO_TIME"                                       "DM_TIME",
"SAT_FROM_TIME"                                 "DM_TIME",
"SAT_TO_TIME"                                       "DM_TIME",
"SUN_FROM_TIME"                                 "DM_TIME",
"SUN_TO_TIME"                                       "DM_TIME",
"DELETED"                                                "DM_BOOLEAN",
PRIMARY KEY ("DEVICE_TIME_ZONE_KEY")
);

SET TERM ^ ;

/* Trigger: TR_DEVICE_TIME_ZONE */
CREATE TRIGGER TR_DEVICE_TIME_ZONE FOR DEVICE_TIME_ZONE
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  /* first - check for NULL for this column */
  if (new.DEVICE_TIME_ZONE_KEY is null)
  then begin
  /* if NULL, provide a new ID for this generator */
         new.DEVICE_TIME_ZONE_KEY = gen_id(DEVICE_TIME_ZONE_GEN, 1);
       end
end
^

SET TERM ; ^
COMMIT;