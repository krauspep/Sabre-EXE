SET TERM ^ ;

CREATE TRIGGER TR_INDIVIDUAL FOR INDIVIDUAL
ACTIVE BEFORE INSERT
POSITION 1
AS
begin
  if (new.INDIVIDUAL_KEY is null)
  then begin
         new.INDIVIDUAL_KEY = gen_id(INDIVIDUAL_GEN, 1);
       end
end^

SET TERM ; ^

SET TERM ^ ;

CREATE TRIGGER TR_INDIVIDUAL_ADDRESS FOR INDIVIDUAL
ACTIVE BEFORE INSERT
POSITION 1
AS
begin
  if (new.INDIVIDUAL_ADDRESS_KEY is null)
  then begin
         new.INDIVIDUAL_ADDRESS_KEY = gen_id(INDIVIDUAL_ADDRESS_GEN, 1);
       end
end^

SET TERM ; ^
