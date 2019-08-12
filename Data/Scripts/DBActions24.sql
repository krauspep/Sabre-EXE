alter table ATTENDANCE
DROP EMPLOYEE_KEY;

commit;

alter table ATTENDANCE
add ENROLL_ID DM_KEY;
commit;
