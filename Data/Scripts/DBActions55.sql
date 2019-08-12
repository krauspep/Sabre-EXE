CREATE GENERATOR BIO_PC_TIME_ZONE_GEN;
COMMIT;

CREATE TABLE "BIO_PC_TIME_ZONE"
(
"BIO_PC_TIME_ZONE_KEY"           "DM_KEY",
"TIME_ZONE_NAME"                 "DM_NAME",
"SUN_FROM"                       "DM_TIME", 
"SUN_TO"                         "DM_TIME", 
"MON_FROM"                       "DM_TIME", 
"MON_TO"                         "DM_TIME", 
"TUE_FROM"                       "DM_TIME", 
"TUE_TO"                         "DM_TIME", 
"WED_FROM"                       "DM_TIME", 
"WED_TO"                         "DM_TIME", 
"THU_FROM"                       "DM_TIME", 
"THU_TO"                         "DM_TIME", 
"FRI_FROM"                       "DM_TIME", 
"FRI_TO"                         "DM_TIME", 
"SAT_FROM"                       "DM_TIME", 
"SAT_TO"                         "DM_TIME", 
"DELETED"                        "DM_BOOLEAN",
PRIMARY KEY ("BIO_PC_TIME_ZONE_KEY")
);

SET TERM ^ ;
CREATE TRIGGER TR_BIO_PC_TIME_ZONE FOR BIO_PC_TIME_ZONE
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.BIO_PC_TIME_ZONE_KEY is null)
  then begin
         new.BIO_PC_TIME_ZONE_KEY = gen_id(BIO_PC_TIME_ZONE_GEN, 1);
       end
end
^
SET TERM ; ^

COMMIT;

