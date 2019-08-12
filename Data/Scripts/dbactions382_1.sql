SET TERM ^ ;

CREATE TRIGGER TR_STANDBY_SCHEDULE FOR STANDBY_SCHEDULE
ACTIVE BEFORE INSERT
POSITION 1
AS
begin
  if (new.STANDBY_SCHEDULE_KEY is null)
  then begin
         new.STANDBY_SCHEDULE_KEY = gen_id(STANDBY_SCHEDULE_GEN, 1);
       end
end^

SET TERM ; ^
