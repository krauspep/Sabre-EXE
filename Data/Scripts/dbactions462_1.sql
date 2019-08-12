SET TERM ^ ;

CREATE TRIGGER TR_COURTS FOR COURTS
ACTIVE BEFORE INSERT
POSITION 1
AS
begin
  if (new.COURTS_KEY is null)
  then begin
         new.COURTS_KEY = gen_id(COURTS_GEN, 1);
       end
end^

SET TERM ; ^