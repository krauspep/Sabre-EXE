SET TERM ^ ;

CREATE TRIGGER TR_INDIVIDUAL_LOCATION FOR INDIVIDUAL_LOCATION 
ACTIVE BEFORE INSERT
POSITION 1
AS
begin
  if (new.INDIVIDUAL_LOCATION_KEY is null)
  then begin
         new.INDIVIDUAL_LOCATION_KEY = gen_id(INDIVIDUAL_LOCATION_GEN, 1);
       end
end^

SET TERM ; ^