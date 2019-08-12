CREATE GENERATOR VISITOR_VISITS_GEN;

CREATE TABLE VISITOR_VISITS
(
  VISITOR_VISITS_KEY DM_KEY,
  EMPLOYEE_KEY_MON DM_KEY_N1,
  EMPLOYEE_KEY_TUE DM_KEY_N1,
  EMPLOYEE_KEY_WED DM_KEY_N1,
  EMPLOYEE_KEY_THU DM_KEY_N1,
  EMPLOYEE_KEY_FRI DM_KEY_N1,
  EMPLOYEE_KEY_SAT DM_KEY_N1,
  EMPLOYEE_KEY_SUN DM_KEY_N1,
  VISITOR_KEY DM_KEY_N1, 
  DELETED DM_BOOLEAN DEFAULT 0,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  PRIMARY KEY (VISITOR_VISITS_KEY)
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON VISITOR_VISITS TO "SYSDBA" WITH GRANT OPTION;

CREATE TRIGGER TR_VISITOR_VISITS FOR VISITOR_VISITS
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.VISITOR_VISITS_KEY is null)
  then begin
         new.VISITOR_VISITS_KEY = gen_id(VISITOR_VISITS_GEN, 1);
       end
end