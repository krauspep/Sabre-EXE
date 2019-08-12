alter table EMPLOYEE
drop MEDICAL_AID_YTD;
commit;

alter table EMPLOYEE
drop PENSION_YTD;
commit;

alter table EMPLOYEE
drop GROSS_PAY_YTD;
commit;

alter table EMPLOYEE
drop EMPLOYEE_TAX_YTD;
commit;

alter table PAYSLIP_HISTORY
drop HISTORY;
commit;

alter table PAYSLIP_HISTORY
add JOB_TITLE_KEY DM_KEY;
commit;

CREATE TABLE EARNING_TEMPLATE (
    EARNING_TEMPLATE_KEY             DM_KEY NOT NULL,
    EARNING_NAME                     DM_NAME,
    SARS_CODE                        DM_SARS_CODE,
    EARNING_AMT_TYPE                 DM_CHAR,
    AMOUNT_OR_PERCENT                DM_CURRENCY,
    TAX_DEDUCTABLE                   DM_BOOLEAN,
    DELETED                          DM_BOOLEAN
);

COMMIT;

CREATE TABLE DEDUCTION_TEMPLATE (
    DEDUCTION_TEMPLATE_KEY           DM_KEY NOT NULL,
    DEDUCTION_NAME                   DM_NAME,
    SARS_CODE                        DM_SARS_CODE,
    DEDUCTION_AMT_TYPE               DM_CHAR,
    AMOUNT_OR_PERCENT                DM_CURRENCY,
    TAX_DEDUCTABLE                   DM_BOOLEAN,
    DELETED                          DM_BOOLEAN
);

COMMIT;


ALTER TABLE EARNING_TEMPLATE ADD PRIMARY KEY (EARNING_TEMPLATE_KEY);
commit;

ALTER TABLE DEDUCTION_TEMPLATE ADD PRIMARY KEY (DEDUCTION_TEMPLATE_KEY);
commit;

alter table EMPLOYEE_EARNING_TYPE
add EARNING_TEMPLATE_KEY DM_KEY NOT NULL;
commit;

alter table EMPLOYEE_DEDUCTION_TYPE
add DEDUCTION_TEMPLATE_KEY DM_KEY NOT NULL;
commit;


INSERT INTO DEDUCTION_TEMPLATE(DEDUCTION_TEMPLATE_KEY, DEDUCTION_NAME, SARS_CODE, DEDUCTION_AMT_TYPE, AMOUNT_OR_PERCENT, TAX_DEDUCTABLE, DELETED)
VALUES(1, 'Council Levies', '', 'F', 1.60, 1, 0);

INSERT INTO DEDUCTION_TEMPLATE(DEDUCTION_TEMPLATE_KEY, DEDUCTION_NAME, SARS_CODE, DEDUCTION_AMT_TYPE, AMOUNT_OR_PERCENT, TAX_DEDUCTABLE, DELETED)
VALUES(2, 'Provident Fund', '', 'P', 0.00, 1, 0);

INSERT INTO EARNING_TEMPLATE(EARNING_TEMPLATE_KEY, EARNING_NAME, SARS_CODE, EARNING_AMT_TYPE, AMOUNT_OR_PERCENT, TAX_DEDUCTABLE, DELETED)
VALUES(1, 'Travelling Allowance', '', 'F', 0.00, 1, 0);

commit;


alter table SYSTEM_PARAMETER
add CONFIGURE_OVERTIME DM_CHAR;
commit;

alter table SYSTEM_PARAMETER
add PAY_OVERTIME DM_BOOLEAN;
commit;

update system_parameter
set pay_overtime = 0;
commit;


alter table EMPLOYEE
add NORMAL_OVERTIME                DM_BOOLEAN;

alter table EMPLOYEE
add NORMAL_OVERTIME_RATE           DM_CURRENCY;

alter table EMPLOYEE
add SATURDAY_OVERTIME              DM_BOOLEAN;

alter table EMPLOYEE
add SATURDAY_OVERTIME_RATE         DM_CURRENCY;

alter table EMPLOYEE
add SUNDAY_OVERTIME                DM_BOOLEAN;

alter table EMPLOYEE
add SUNDAY_OVERTIME_RATE           DM_CURRENCY;

alter table EMPLOYEE
add PUBLIC_HOLIDAY_OVERTIME        DM_BOOLEAN;

alter table EMPLOYEE
add PUBLIC_HOLIDAY_OVERTIME_RATE   DM_CURRENCY;

commit;