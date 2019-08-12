SET TERM ^ ;

CREATE TRIGGER "TR_PROPERTY_DEFINITION" FOR "PROPERTY_DEFINITION"
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.PROPERTY_DEFINITION_KEY is null)
  then begin
         new.PROPERTY_DEFINITION_KEY = gen_id(PROPERTY_DEFINITION_GEN, 1);
       end
end ^


