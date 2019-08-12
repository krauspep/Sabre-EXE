alter table system_parameter
drop week_rule_45;
commit;

alter table employee
add week_rule_45 dm_boolean;
commit;

alter table shift
add Span_Day dm_boolean;
commit;