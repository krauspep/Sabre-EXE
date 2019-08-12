SET TERM ^ ;

CREATE TRIGGER TR_STATE_OF_ORIGIN FOR STATE_OF_ORIGIN
ACTIVE BEFORE INSERT
POSITION 1
AS
begin
  if (new.STATE_OF_ORIGIN_KEY is null)
  then begin
         new.STATE_OF_ORIGIN_KEY = gen_id(STATE_OF_ORIGIN_GEN, 1);
       end
end^

SET TERM ; ^

SET TERM ^ ;

CREATE TRIGGER TR_LGA FOR LGA
ACTIVE BEFORE INSERT
POSITION 1
AS
begin
  if (new.LGA_KEY is null)
  then begin
         new.LGA_KEY = gen_id(LGA_GEN, 1);
       end
end^

SET TERM ; ^

SET TERM ^ ;

CREATE TRIGGER TR_TRIBE FOR TRIBE
ACTIVE BEFORE INSERT
POSITION 1
AS
begin
  if (new.TRIBE_KEY is null)
  then begin
         new.TRIBE_KEY = gen_id(TRIBE_GEN, 1);
       end
end^

SET TERM ; ^

SET TERM ^ ;

CREATE TRIGGER TR_RELIGION FOR RELIGION
ACTIVE BEFORE INSERT
POSITION 1
AS
begin
  if (new.RELIGION_KEY is null)
  then begin
         new.RELIGION_KEY = gen_id(RELIGION_GEN, 1);
       end
end^

SET TERM ; ^

SET TERM ^ ;

CREATE TRIGGER TR_MINISTRY FOR MINISTRY
ACTIVE BEFORE INSERT
POSITION 1
AS
begin
  if (new.MINISTRY_KEY is null)
  then begin
         new.MINISTRY_KEY = gen_id(MINISTRY_GEN, 1);
       end
end^

SET TERM ; ^