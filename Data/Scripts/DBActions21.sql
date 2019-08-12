CREATE GENERATOR COMPANY_TYPE_GEN;
COMMIT;

SET TERM ^ ;

/* Trigger: TR_COMPANY_TYPE */
CREATE TRIGGER TR_COMPANY_TYPE FOR COMPANY_TYPE
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  /* first - check for NULL for this column */
  if (new.COMPANY_TYPE_KEY is null)
  then begin
  /* if NULL, provide a new ID for this generator */
         new.COMPANY_TYPE_KEY = gen_id(COMPANY_TYPE_GEN, 1);
       end
end
^

SET TERM ; ^
COMMIT;
