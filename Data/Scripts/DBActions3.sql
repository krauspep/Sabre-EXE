alter table attendance
add device_configuration_key dm_key;
commit;

CREATE GENERATOR EMPLOYEE_DEVICE_LINK_GEN;
COMMIT;

CREATE TABLE EMPLOYEE_DEVICE_LINK
(
EMPLOYEE_DEVICE_LINK_KEY  DM_KEY,
EMPLOYEE_KEY              DM_KEY, 
DEVICE_KEY                DM_KEY,
ENABLED_ON_DEVICE         DM_BOOLEAN,
DELETED                   DM_BOOLEAN,
PRIMARY KEY (EMPLOYEE_DEVICE_LINK_KEY)
);

COMMIT;

SET TERM ^! ;
CREATE TRIGGER TR_EMPLOYEE_DEVICE_LINK FOR EMPLOYEE_DEVICE_LINK ACTIVE BEFORE INSERT POSITION 0 AS
begin
  /* first - check for NULL for this column */
  if (new.EMPLOYEE_DEVICE_LINK_KEY is null)
  then begin
  /* if NULL, provide a new ID for this generator */
         new.EMPLOYEE_DEVICE_LINK_KEY = gen_id(EMPLOYEE_DEVICE_LINK_GEN, 1);
       end
end
^!
SET TERM ; ^!

COMMIT;


