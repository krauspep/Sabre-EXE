ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD MINUTES_NT DM_INTEGER;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD MINUTES_OT1 DM_INTEGER;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD MINUTES_OT2 DM_INTEGER;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD MINUTES_OT3 DM_INTEGER;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD MINUTES_OT4 DM_INTEGER;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD MINUTES_OT5 DM_INTEGER;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD MINUTES_SAT DM_INTEGER;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD MINUTES_SUN DM_INTEGER;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD MINUTES_PUBLIC_HOLIDAY DM_INTEGER;

ALTER TABLE COMPANY ADD OT1_OVERTIME DM_BOOLEAN;

ALTER TABLE COMPANY ADD OT1_OVERTIME_RATE DM_FLOAT;

ALTER TABLE COMPANY ADD OT2_OVERTIME DM_BOOLEAN;

ALTER TABLE COMPANY ADD OT2_OVERTIME_RATE DM_FLOAT;

UPDATE COMPANY SET OT1_OVERTIME_RATE = 0;

UPDATE COMPANY SET OT2_OVERTIME_RATE = 0;

ALTER TABLE EMPLOYEE ADD OT1_OVERTIME DM_BOOLEAN;

ALTER TABLE EMPLOYEE ADD OT1_OVERTIME_RATE DM_FLOAT;

ALTER TABLE EMPLOYEE ADD OT2_OVERTIME DM_BOOLEAN;

ALTER TABLE EMPLOYEE ADD OT2_OVERTIME_RATE DM_FLOAT;

UPDATE EMPLOYEE SET OT1_OVERTIME_RATE = 0;

UPDATE EMPLOYEE SET OT2_OVERTIME_RATE = 0;

ALTER TABLE EMPLOYEE ADD NO_OVERTIME_PAID DM_BOOLEAN;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD OVERTIME_NOTE DM_BLOB4;

UPDATE EMPLOYEE SET NO_OVERTIME_PAID = 0;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD APPROVED_MINUTES_NT DM_BOOLEAN;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD APPROVED_MINUTES_OT1 DM_BOOLEAN;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD APPROVED_MINUTES_OT2 DM_BOOLEAN;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD APPROVED_MINUTES_OT3 DM_BOOLEAN;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD APPROVED_MINUTES_OT4 DM_BOOLEAN;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD APPROVED_MINUTES_OT5 DM_BOOLEAN;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD APPROVED_MINUTES_SAT DM_BOOLEAN;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD APPROVED_MINUTES_SUN DM_BOOLEAN;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD APPROVED_MINUTES_PUBLIC_HOLIDAY DM_BOOLEAN;

UPDATE EMPLOYEE_ATTENDANCE_DATA SET APPROVED_MINUTES_NT = 0;

UPDATE EMPLOYEE_ATTENDANCE_DATA SET APPROVED_MINUTES_OT1 = 0;

UPDATE EMPLOYEE_ATTENDANCE_DATA SET APPROVED_MINUTES_OT2 = 0;

UPDATE EMPLOYEE_ATTENDANCE_DATA SET APPROVED_MINUTES_OT3 = 0;

UPDATE EMPLOYEE_ATTENDANCE_DATA SET APPROVED_MINUTES_OT4 = 0;

UPDATE EMPLOYEE_ATTENDANCE_DATA SET APPROVED_MINUTES_OT5 = 0;

UPDATE EMPLOYEE_ATTENDANCE_DATA SET APPROVED_MINUTES_SAT = 0;

UPDATE EMPLOYEE_ATTENDANCE_DATA SET APPROVED_MINUTES_SUN = 0;

UPDATE EMPLOYEE_ATTENDANCE_DATA SET APPROVED_MINUTES_PUBLIC_HOLIDAY = 0;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD RATE_HOURLY DM_CURRENCY;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD PAY_FREQUENCY DM_CHAR;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD NORMAL_TIME_RATE DM_FLOAT;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD OT1_OVERTIME_RATE DM_FLOAT;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD OT2_OVERTIME_RATE DM_FLOAT;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD OT3_OVERTIME_RATE DM_FLOAT;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD OT4_OVERTIME_RATE DM_FLOAT;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD OT5_OVERTIME_RATE DM_FLOAT;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD SATURDAY_OVERTIME_RATE DM_FLOAT;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD SUNDAY_OVERTIME_RATE DM_FLOAT;

ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD PUBLIC_HOLIDAY_OVERTIME_RATE DM_FLOAT;
















