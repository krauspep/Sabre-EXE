SET TERM ^ ;
CREATE TRIGGER "TR_EMPLOYEE_DISCIPLINARY_NOTE" FOR "EMPLOYEE_DISCIPLINARY_NOTE" 
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.EMPLOYEE_DISCIPLINARY_NOTE_KEY is null)
  then begin
         new.EMPLOYEE_DISCIPLINARY_NOTE_KEY = gen_id(EMPLOYEE_DISCIPLINARY_NOTE_GEN, 1);
       end
end ^