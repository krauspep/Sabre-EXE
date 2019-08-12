alter table system_parameter
add Auto_Inc_Employee_No dm_boolean;
commit;

alter table system_parameter
add Company_Key dm_boolean;
commit;

Update system_parameter
Set Company_Key = 1;
Commit;

alter table rate
add minutes_per_day dm_smallint;
commit;

alter table rate
add personal_hours_per_day dm_smallint;
commit;

alter table rate
add personal_minutes_per_day dm_smallint;
commit;


