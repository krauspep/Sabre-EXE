SET TERM ^ ;
CREATE TRIGGER "TR_TITLE" FOR "TITLE"
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.TITLE_KEY is null)
  then begin
         new.TITLE_KEY = gen_id(TITLE_GEN, 1);
       end
end ^

SET TERM ^ ;
CREATE TRIGGER "RESIDENT_STATUS" FOR "RESIDENT_STATUS"
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.RESIDENT_STATUS_KEY is null)
  then begin
         new.RESIDENT_STATUS_KEY = gen_id(RESIDENT_STATUS_GEN, 1);
       end
end ^

SET TERM ^ ;
CREATE TRIGGER "UNIT_TYPE" FOR "UNIT_TYPE"
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.UNIT_TYPE_KEY is null)
  then begin
         new.UNIT_TYPE_KEY = gen_id(UNIT_TYPE_GEN, 1);
       end
end ^