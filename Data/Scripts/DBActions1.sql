alter table employee
drop shift_key;
commit;

alter table employee
drop pension_fund_key;
commit;

alter table employee
drop employee_union_key;
commit;