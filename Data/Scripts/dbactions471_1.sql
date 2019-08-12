SET TERM ^ ;

CREATE TRIGGER TR_TOGGLE_TIMES FOR TOGGLE_TIMES
ACTIVE BEFORE INSERT
POSITION 1
AS
begin
  if (new.TOGGLE_TIMES_KEY is null)
  then begin
         new.TOGGLE_TIMES_KEY = gen_id(TOGGLE_TIMES_GEN, 1);
       end
end^

SET TERM ; ^