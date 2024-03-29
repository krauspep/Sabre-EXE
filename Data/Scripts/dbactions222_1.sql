SET TERM ^ ;
CREATE TRIGGER TR_PUPIL_PARENT_DEVICE_LINK FOR PUPIL_PARENT_DEVICE_LINK
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.PUPIL_PARENT_DEVICE_LINK_KEY is null)
  then begin
         new.PUPIL_PARENT_DEVICE_LINK_KEY = gen_id(PUPIL_PARENT_DEVICE_LINK_GEN, 1);
       end
end^
SET TERM ; ^

SET TERM ^ ;
CREATE TRIGGER TR_PUPIL_PARENT_TIME_ZONE FOR PUPIL_PARENT_TIME_ZONE
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.PUPIL_PARENT_TIME_ZONE_KEY is null)
  then begin
         new.PUPIL_PARENT_TIME_ZONE_KEY = gen_id(PUPIL_PARENT_TIME_ZONE_GEN, 1);
       end
end^
SET TERM ; ^