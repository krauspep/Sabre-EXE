SET TERM ^ ;

CREATE TRIGGER TR_INDIVIDUAL_TYPE FOR INDIVIDUAL_TYPE
ACTIVE BEFORE INSERT
POSITION 1
AS
begin
  if (new.INDIVIDUAL_TYPE_KEY is null)
  then begin
         new.INDIVIDUAL_TYPE_KEY = gen_id(INDIVIDUAL_TYPE_GEN, 1);
       end
end^

SET TERM ; ^