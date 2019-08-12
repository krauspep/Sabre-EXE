SET TERM ^ ;
CREATE TRIGGER TR_EMPLOYEE_DEPART_VISIBILITY FOR EMPLOYEE_DEPART_VISIBILITY
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.EMPLOYEE_DEPART_VISIBILITY_KEY is null)
  then begin
         new.EMPLOYEE_DEPART_VISIBILITY_KEY = gen_id(EMPLOYEE_DEPART_VISIBILITY_GEN, 1);
       end
end^
SET TERM ; ^

SET TERM ^ ;
CREATE TRIGGER TR_EMPLOYEE_CUSTOM_VISIBILITY FOR EMPLOYEE_CUSTOM_VISIBILITY
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.EMPLOYEE_CUSTOM_VISIBILITY_KEY is null)
  then begin
         new.EMPLOYEE_CUSTOM_VISIBILITY_KEY = gen_id(EMPLOYEE_CUSTOM_VISIBILITY_GEN, 1);
       end
end^
SET TERM ; ^
