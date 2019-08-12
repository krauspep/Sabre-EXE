SET TERM ^ ;

CREATE TRIGGER TR_ADDRESS_TYPE FOR ADDRESS_TYPE
ACTIVE BEFORE INSERT
POSITION 1
AS
begin
  if (new.ADDRESS_TYPE_KEY is null)
  then begin
         new.ADDRESS_TYPE_KEY = gen_id(ADDRESS_TYPE_GEN, 1);
       end
end^

SET TERM ; ^