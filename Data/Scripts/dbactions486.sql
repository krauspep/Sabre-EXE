
CREATE TABLE PPH_TIMES
(
  PUBLIC_HOLIDAY_KEY DM_KEY,
  EMPLOYEE_KEY DM_KEY, 
  FROM_TIME DM_TIME, 
  TO_TIME DM_TIME,
  constraint pk_PPH_KEY primary key  (PUBLIC_HOLIDAY_KEY, EMPLOYEE_KEY)
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON SHIFT_RATE_LINK TO SYSDBA WITH GRANT OPTION;