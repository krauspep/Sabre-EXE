CREATE DOMAIN "DM_DEVICE_ID" AS VARCHAR(5);

alter table ATTENDANCE_TEMP_PRINT
add Temp_Device_ID DM_DEVICE_ID;
commit;

Delete from attendance_status;
commit;

Insert into Attendance_Status(Attendance_Status_Key, Attendance_Status_Name, Deleted)
Values(1, 'Arrive Early', 0);
Insert into Attendance_Status(Attendance_Status_Key, Attendance_Status_Name, Deleted)
Values(2, 'Arrive On Time', 0);
Insert into Attendance_Status(Attendance_Status_Key, Attendance_Status_Name, Deleted)
Values(3, 'Arrive Late', 0);
Insert into Attendance_Status(Attendance_Status_Key, Attendance_Status_Name, Deleted)
Values(4, 'Leave Early', 0);
Insert into Attendance_Status(Attendance_Status_Key, Attendance_Status_Name, Deleted)
Values(5, 'Leave On Time', 0);
Insert into Attendance_Status(Attendance_Status_Key, Attendance_Status_Name, Deleted)
Values(6, 'Leave Late', 0);
Insert into Attendance_Status(Attendance_Status_Key, Attendance_Status_Name, Deleted)
Values(7, 'Absent', 0);
commit;


DROP TABLE EMPLOYEE_ATTENDANCE_DATA;
commit;

CREATE TABLE EMPLOYEE_ATTENDANCE_DATA (
    EMPLOYEE_ATTENDANCE_DATA_KEY  DM_KEY,
    EMPLOYEE_KEY                  DM_KEY NOT NULL,
    ATTENDANCE_DATE_IN            DM_DATE_STR,
    TIME_IN                       DM_DATE_STR,
    ATTENDANCE_DATE_OUT           DM_DATE_STR,
    TIME_OUT                      DM_DATE_STR,
    ATTENDANCE_STATUS_KEY         DM_KEY,
    MINUTES_WORKED                DM_INTEGER,
    LEAVE_TYPE_KEY                DM_KEY,
    ABSENT_REASON                 DM_BLOB2,
    DELETED                       DM_BOOLEAN,
    MINUTES_TARGET                DM_INTEGER,
    MINUTES_VARIANCE              DM_INTEGER
);

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD PRIMARY KEY (EMPLOYEE_ATTENDANCE_DATA_KEY);

SET TERM ^ ;

/* Trigger: TR_EMPLOYEE_ATTENDANCE_DATA */
CREATE TRIGGER TR_EMPLOYEE_ATTENDANCE_DATA FOR EMPLOYEE_ATTENDANCE_DATA
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  /* first - check for NULL for this column */
  if (new.EMPLOYEE_ATTENDANCE_DATA_KEY is null)
  then begin
  /* if NULL, provide a new ID for this generator */
         new.EMPLOYEE_ATTENDANCE_DATA_KEY = gen_id(EMPLOYEE_ATTENDANCE_DATA_GEN, 1);
       end
end
^

SET TERM ; ^

SET GENERATOR EMPLOYEE_ATTENDANCE_DATA_GEN TO 0;
COMMIT;