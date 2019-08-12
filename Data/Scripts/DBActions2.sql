alter table calendar_week
add company_key dm_key;
commit;

delete from calendar_week;
commit;
set generator calendar_week_gen to 0;
commit;


