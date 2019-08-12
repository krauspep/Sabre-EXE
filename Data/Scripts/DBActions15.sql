delete from Device_Privlage;
commit;

Insert into Device_Privlage(Device_Privlage_Key, Device_Privlage, Privlage_Level)
Values (2, 'Department Administrator', 1);
Insert into Device_Privlage(Device_Privlage_Key, Device_Privlage, Privlage_Level)
Values (4, 'Level 2 Department Administrator', 2);
Insert into Device_Privlage(Device_Privlage_Key, Device_Privlage, Privlage_Level)
Values (6, 'Level 1 Department Administrator', 3);
Insert into Device_Privlage(Device_Privlage_Key, Device_Privlage, Privlage_Level)
Values (8, 'Department Administrator', 4);
commit;

Set generator Device_Privlage_Gen to 8;
commit;

alter TABLE ABSENT_DATA
add EMPLOYEE_KEY DM_KEY;
commit;

alter TABLE ABSENT_DATA
add ABSENT_MINUTES DM_INTEGER;
commit;