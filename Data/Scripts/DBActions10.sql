alter table EMPLOYEE_ATTENDANCE_DATA
DROP ATTENDANCE_DATE_IN;
commit;

alter table EMPLOYEE_ATTENDANCE_DATA
DROP ATTENDANCE_DATE_OUT;
commit;

alter table EMPLOYEE_ATTENDANCE_DATA
add ATTENDANCE_DATE_IN DM_DATE;
commit;

alter table EMPLOYEE_ATTENDANCE_DATA
add ATTENDANCE_DATE_OUT DM_DATE;
commit;

alter table ATTENDANCE
add CALCULATED DM_BOOLEAN;
commit;

update attendance
set calculated = 0;
commit;