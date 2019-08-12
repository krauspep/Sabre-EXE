CREATE GENERATOR CALCULATED_TA_GEN;

CREATE TABLE CALCULATED_TA
(
    CALCULATED_TA_KEY DM_KEY,
    EMPLOYEE_KEY DM_KEY,
    FROM_DATE DM_DATE,
    TO_DATE DM_DATE,
    CALC_SHIFT_SENSING SMALLINT,
    CALC_EXCEPTIONS SMALLINT,
    CALC_T_AND_A SMALLINT,
    PRIMARY KEY (CALCULATED_TA_KEY)
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON CALCULATED_TA TO SYSDBA WITH GRANT OPTION;

CREATE TRIGGER TR_CALCULATED_TA FOR CALCULATED_TA
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.CALCULATED_TA_KEY is null)
  then begin
         new.CALCULATED_TA_KEY = gen_id(CALCULATED_TA_GEN, 1);
       end
end

CREATE INDEX I_CALCULATED_TA ON CALCULATED_TA (EMPLOYEE_KEY,FROM_DATE,TO_DATE);

ALTER TABLE COMPANY ADD 
CALC_BY_USER Smallint;

UPDATE COMPANY SET CALC_BY_USER = 0;

ALTER TABLE COMPANY ADD 
AUTO_CALC Smallint;

UPDATE COMPANY SET AUTO_CALC = 1;

CREATE TRIGGER CALC_ATTENDANCE_UPDATE FOR ATTENDANCE ACTIVE
AFTER UPDATE POSITION 0
as begin 
    DELETE FROM CALCULATED_TA WHERE (new.ATTENDANCE_DATE between FROM_DATE and TO_DATE) and new.EMPLOYEE_KEY = EMPLOYEE_KEY;
end

CREATE TRIGGER CALC_ATTENDANCE_INSERT FOR ATTENDANCE ACTIVE
AFTER INSERT POSITION 0
as begin 
    DELETE FROM CALCULATED_TA WHERE new.ATTENDANCE_DATE between FROM_DATE and TO_DATE and new.EMPLOYEE_KEY = EMPLOYEE_KEY;
end

CREATE TRIGGER CALC_ATTENDANCE_DELETE FOR ATTENDANCE ACTIVE
AFTER DELETE POSITION 0
as begin 
    DELETE FROM CALCULATED_TA WHERE old.ATTENDANCE_DATE between FROM_DATE and TO_DATE and old.EMPLOYEE_KEY = EMPLOYEE_KEY;
end

CREATE TRIGGER CALC_WORK_SCHEDULE_UPDATE FOR WORK_SCHEDULE ACTIVE
AFTER UPDATE POSITION 0
as begin 
    DELETE FROM CALCULATED_TA WHERE (new.ATTENDANCE_DATE_START between FROM_DATE and TO_DATE) and new.EMPLOYEE_KEY = EMPLOYEE_KEY;
end

CREATE TRIGGER CALC_WORK_SCHEDULE_INSERT FOR WORK_SCHEDULE ACTIVE
AFTER INSERT POSITION 0
as begin 
    DELETE FROM CALCULATED_TA WHERE new.ATTENDANCE_DATE_START between FROM_DATE and TO_DATE and new.EMPLOYEE_KEY = EMPLOYEE_KEY;
end

CREATE TRIGGER CALC_WORK_SCHEDULE_DELETE FOR WORK_SCHEDULE ACTIVE
AFTER DELETE POSITION 0
as begin 
    DELETE FROM CALCULATED_TA WHERE old.ATTENDANCE_DATE_START between FROM_DATE and TO_DATE and old.EMPLOYEE_KEY = EMPLOYEE_KEY;
end

CREATE TRIGGER CALC_EMPLOYEE_UPDATE FOR EMPLOYEE ACTIVE
AFTER UPDATE POSITION 0
as begin 
    DELETE FROM CALCULATED_TA WHERE new.EMPLOYEE_KEY = EMPLOYEE_KEY;
end

CREATE TRIGGER CALC_EMPLOYEE_INSERT FOR EMPLOYEE ACTIVE
AFTER INSERT POSITION 0
as begin 
    DELETE FROM CALCULATED_TA WHERE new.EMPLOYEE_KEY = EMPLOYEE_KEY;
end

CREATE TRIGGER CALC_EMPLOYEE_DELETE FOR EMPLOYEE ACTIVE
AFTER DELETE POSITION 0
as begin 
    DELETE FROM CALCULATED_TA WHERE old.EMPLOYEE_KEY = EMPLOYEE_KEY;
end

CREATE TRIGGER CALC_EMPLOYEE_PRATE_LINK_UPDATE FOR EMPLOYEE_PAY_RATE_LINK ACTIVE
AFTER UPDATE POSITION 0
as begin 
    DELETE FROM CALCULATED_TA WHERE new.EMPLOYEE_KEY = EMPLOYEE_KEY;
end

CREATE TRIGGER CALC_EMPLOYEE_PRATE_LINK_INSERT FOR EMPLOYEE_PAY_RATE_LINK ACTIVE
AFTER INSERT POSITION 0
as begin 
    DELETE FROM CALCULATED_TA WHERE new.EMPLOYEE_KEY = EMPLOYEE_KEY;
end

CREATE TRIGGER CALC_EMPLOYEE_PRATE_LINK_DELETE FOR EMPLOYEE_PAY_RATE_LINK ACTIVE
AFTER DELETE POSITION 0
as begin 
    DELETE FROM CALCULATED_TA WHERE old.EMPLOYEE_KEY = EMPLOYEE_KEY;
end

CREATE TRIGGER CALC_SHIFT_UPDATE FOR SHIFT ACTIVE
AFTER UPDATE POSITION 0
as begin 
    DELETE FROM CALCULATED_TA;
end

CREATE TRIGGER CALC_SHIFT_INSERT FOR SHIFT ACTIVE
AFTER INSERT POSITION 0
as begin 
    DELETE FROM CALCULATED_TA;
end

CREATE TRIGGER CALC_SHIFT_DELETE FOR SHIFT ACTIVE
AFTER DELETE POSITION 0
as begin 
    DELETE FROM CALCULATED_TA;
end

CREATE TRIGGER CALC_SHIFT_P_UPDATE FOR SHIFT_PROFILE ACTIVE
AFTER UPDATE POSITION 0
as begin 
    DELETE FROM CALCULATED_TA;
end

CREATE TRIGGER CALC_SHIFT_P_INSERT FOR SHIFT_PROFILE ACTIVE
AFTER INSERT POSITION 0
as begin 
    DELETE FROM CALCULATED_TA;
end

CREATE TRIGGER CALC_SHIFT_P_DELETE FOR SHIFT_PROFILE ACTIVE
AFTER DELETE POSITION 0
as begin 
    DELETE FROM CALCULATED_TA;
end

CREATE TRIGGER CALC_SHIFT_LP_UPDATE FOR SHIFT_LINKED_PROFILE ACTIVE
AFTER UPDATE POSITION 0
as begin 
    DELETE FROM CALCULATED_TA;
end

CREATE TRIGGER CALC_SHIFT_LP_INSERT FOR SHIFT_LINKED_PROFILE ACTIVE
AFTER INSERT POSITION 0
as begin 
    DELETE FROM CALCULATED_TA;
end

CREATE TRIGGER CALC_SHIFT_LP_DELETE FOR SHIFT_LINKED_PROFILE ACTIVE
AFTER DELETE POSITION 0
as begin 
    DELETE FROM CALCULATED_TA;
end

CREATE TRIGGER CALC_SHIFT_LD_UPDATE FOR SHIFT_LINKED_DEPARTMENT ACTIVE
AFTER UPDATE POSITION 0
as begin 
    DELETE FROM CALCULATED_TA;
end

CREATE TRIGGER CALC_SHIFT_LD_INSERT FOR SHIFT_LINKED_DEPARTMENT ACTIVE
AFTER INSERT POSITION 0
as begin 
    DELETE FROM CALCULATED_TA;
end

CREATE TRIGGER CALC_SHIFT_LD_DELETE FOR SHIFT_LINKED_DEPARTMENT ACTIVE
AFTER DELETE POSITION 0
as begin 
    DELETE FROM CALCULATED_TA;
end

CREATE TRIGGER CALC_SHIFTBRK_UPDATE FOR SHIFT_BREAK ACTIVE
AFTER UPDATE POSITION 0
as begin 
    DELETE FROM CALCULATED_TA;
end

CREATE TRIGGER CALC_SHIFTBRK_INSERT FOR SHIFT_BREAK ACTIVE
AFTER INSERT POSITION 0
as begin 
    DELETE FROM CALCULATED_TA;
end

CREATE TRIGGER CALC_SHIFTBRK_DELETE FOR SHIFT_BREAK ACTIVE
AFTER DELETE POSITION 0
as begin 
    DELETE FROM CALCULATED_TA;
end

CREATE TRIGGER CALC_SHIFTBRKCFG_UPDATE FOR SHIFT_BREAK_CONFIG ACTIVE
AFTER UPDATE POSITION 0
as begin 
    DELETE FROM CALCULATED_TA;
end

CREATE TRIGGER CALC_SHIFTBRKCFG_INSERT FOR SHIFT_BREAK_CONFIG ACTIVE
AFTER INSERT POSITION 0
as begin 
    DELETE FROM CALCULATED_TA;
end

CREATE TRIGGER CALC_SHIFTBRKCFG_DELETE FOR SHIFT_BREAK_CONFIG ACTIVE
AFTER DELETE POSITION 0
as begin 
    DELETE FROM CALCULATED_TA;
end

CREATE TRIGGER CALC_ABSENT_UPDATE FOR ABSENT_DATA ACTIVE
AFTER UPDATE POSITION 0
as begin 
    DELETE FROM CALCULATED_TA WHERE new.EMPLOYEE_KEY = EMPLOYEE_KEY;
end

CREATE TRIGGER CALC_ABSENT_INSERT FOR ABSENT_DATA ACTIVE
AFTER INSERT POSITION 0
as begin 
    DELETE FROM CALCULATED_TA WHERE new.EMPLOYEE_KEY = EMPLOYEE_KEY;
end

CREATE TRIGGER CALC_ABSENT_DELETE FOR ABSENT_DATA ACTIVE
AFTER DELETE POSITION 0
as begin 
    DELETE FROM CALCULATED_TA WHERE old.EMPLOYEE_KEY = EMPLOYEE_KEY;
end

CREATE TRIGGER CALC_DEPARTMENT_UPDATE FOR DEPARTMENT ACTIVE
AFTER UPDATE POSITION 0
as begin 
    DELETE FROM CALCULATED_TA;
end

CREATE TRIGGER CALC_DEPARTMENT_INSERT FOR DEPARTMENT ACTIVE
AFTER INSERT POSITION 0
as begin 
    DELETE FROM CALCULATED_TA;
end

CREATE TRIGGER CALC_DEPARTMENT_DELETE FOR DEPARTMENT ACTIVE
AFTER DELETE POSITION 0
as begin 
    DELETE FROM CALCULATED_TA;
end














