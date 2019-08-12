SET TERM ^ ;

CREATE TRIGGER TR_NATIONALITY FOR NATIONALITY
ACTIVE BEFORE INSERT
POSITION 1
AS
begin
  if (new.NATIONALITY_KEY is null)
  then begin
         new.NATIONALITY_KEY = gen_id(NATIONALITY_GEN, 1);
       end
end^

SET TERM ; ^

SET TERM ^ ;

CREATE TRIGGER TR_RACE FOR RACE
ACTIVE BEFORE INSERT
POSITION 1
AS
begin
  if (new.RACE_KEY is null)
  then begin
         new.RACE_KEY = gen_id(RACE_GEN, 1);
       end
end^

SET TERM ; ^

CREATE TRIGGER TR_BUILD FOR BUILD
ACTIVE BEFORE INSERT
POSITION 1
AS
begin
  if (new.BUILD_KEY is null)
  then begin
         new.BUILD_KEY = gen_id(BUILD_GEN, 1);
       end
end^

SET TERM ; ^

CREATE TRIGGER TR_HAIR_COLOUR FOR HAIR_COLOUR
ACTIVE BEFORE INSERT
POSITION 1
AS
begin
  if (new.HAIR_COLOUR_KEY is null)
  then begin
         new.HAIR_COLOUR_KEY = gen_id(HAIR_COLOUR_GEN, 1);
       end
end^

SET TERM ; ^

CREATE TRIGGER TR_EYE_COLOUR FOR EYE_COLOUR
ACTIVE BEFORE INSERT
POSITION 1
AS
begin
  if (new.EYE_COLOUR_KEY is null)
  then begin
         new.EYE_COLOUR_KEY = gen_id(EYE_COLOUR_GEN, 1);
       end
end^

SET TERM ; ^