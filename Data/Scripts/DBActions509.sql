CREATE OR ALTER PROCEDURE CREATE_DUTY_SCHEDULE (
    AEMPLOYEEKEY INTEGER,
    ASTARTDATE DATE,
    AENDDATE DATE )
AS
DECLARE WORK_SCHEDULE_KEY         INT;
  DECLARE SHIFT_KEY                 INT;
  DECLARE ATTENDANCE_DATE_START     DATE;
  DECLARE TIME_START                TIME;
  DECLARE ATTENDANCE_DATE_END       DATE;
  DECLARE TIME_END                  TIME;
  DECLARE TOTAL_WORK_MINUTES        INT;
  DECLARE DELETED                   INT;
  DECLARE PUBLIC_HOLIDAY            INT;
  DECLARE IS_UNSCHEDULED_DAY        CHAR(1);
BEGIN
    -- --------------------------------------------------------------------------------------------------
    -- CREATE DUTY SCHEDULE FOR SHIFTS ASSIGNED TO WEEKS
    -- --------------------------------------------------------------------------------------------------
    FOR 
    SELECT WS.WORK_SCHEDULE_KEY,
           CASE WHEN PH.PUBLIC_HOLIDAY_KEY IS NULL THEN S.SHIFT_KEY ELSE -2 END AS SHIFT_KEY, 
           DT.THEDATE AS ATTENDANCE_DATE_START, 
           CASE WHEN PH.PUBLIC_HOLIDAY_KEY IS NULL THEN S.FROM_TIME ELSE CAST( '00:00:00' AS TIME ) END AS TIME_START,
           CASE S.SPAN_DAY WHEN 0 THEN DT.THEDATE ELSE DT.THEDATE + 1 END AS ATTENDANCE_DATE_END,
           CASE WHEN PH.PUBLIC_HOLIDAY_KEY IS NULL THEN S.TO_TIME ELSE CAST( '00:00:00' AS TIME ) END AS TIME_END,
           CASE WHEN PH.PUBLIC_HOLIDAY_KEY IS NULL THEN S.MINUTES_WORKED ELSE 0 END AS TOTAL_WORK_MINUTES,
           0 AS DELETED,
           CASE WHEN PH.PUBLIC_HOLIDAY_KEY IS NULL THEN 0 ELSE 1 END AS PUBLIC_HOLIDAY,
           CASE WHEN PH.PUBLIC_HOLIDAY_KEY IS NULL THEN 'S' ELSE 'U' END AS IS_UNSCHEDULED_DAY
      FROM EMPLOYEE E 
           JOIN EMPLOYEE_SHIFT ES ON ES.EMPLOYEE_KEY = E.EMPLOYEE_KEY AND ES.ACTIVE_RECORD = 1 AND ES.DELETED = 0
           JOIN SHIFT S ON S.SHIFT_KEY = ES.SHIFT_KEY AND 
                           ( ( E.COMPANY_KEY = S.COMPANY_KEY ) OR ( S.COMPANY_KEY = -1 ) ) AND
                           S.ACTIVE_RECORD = 1 AND S.DELETED = 0
           JOIN GET_DATE_RANGE( :AStartDate, :AEndDate ) DT ON (
             ( ( EXTRACT( WEEKDAY FROM DT.THEDATE ) = 0 ) AND ( S.SUNDAY = 1 ) ) OR
             ( ( EXTRACT( WEEKDAY FROM DT.THEDATE ) = 1 ) AND ( S.MONDAY = 1 ) ) OR
             ( ( EXTRACT( WEEKDAY FROM DT.THEDATE ) = 2 ) AND ( S.TUESDAY = 1 ) ) OR
             ( ( EXTRACT( WEEKDAY FROM DT.THEDATE ) = 3 ) AND ( S.WEDNESDAY = 1 ) ) OR
             ( ( EXTRACT( WEEKDAY FROM DT.THEDATE ) = 4 ) AND ( S.THURSDAY = 1 ) ) OR
             ( ( EXTRACT( WEEKDAY FROM DT.THEDATE ) = 5 ) AND ( S.FRIDAY = 1 ) ) OR
             ( ( EXTRACT( WEEKDAY FROM DT.THEDATE ) = 6 ) AND ( S.SATURDAY = 1 ) ) 
           )
           JOIN SHIFT_ASSIGN_WEEK SAW ON SAW.SHIFT_KEY = S.SHIFT_KEY AND 
                                         SAW.ASSIGNED_WEEK_NO = ( (EXTRACT(YEARDAY FROM THEDATE) - EXTRACT(WEEKDAY FROM THEDATE-1) + 7) / 7 ) + 1 AND 
                                         SAW.ACTIVE_RECORD = 1 AND SAW.DELETED = 0
           JOIN WORK_SCHEDULE WS ON WS.EMPLOYEE_KEY = E.EMPLOYEE_KEY AND WS.ATTENDANCE_DATE_START = DT.THEDATE
           LEFT JOIN PUBLIC_HOLIDAY PH ON PH.PUBLIC_HOLIDAY_DATE = DT.THEDATE
     WHERE ES.EMPLOYEE_KEY     = :AEmployeeKey
       AND ES.SHIFT_ACTIVE     = 1
       AND ES.SHIFT_TYPE       = 'P'
       AND S.SHIFT_DATE_DEFINE = 'W'
       AND DT.THEDATE          > E.DATE_STARTED
      INTO :WORK_SCHEDULE_KEY,
           :SHIFT_KEY,
           :ATTENDANCE_DATE_START,
           :TIME_START,
           :ATTENDANCE_DATE_END,
           :TIME_END,
           :TOTAL_WORK_MINUTES,
           :DELETED,
           :PUBLIC_HOLIDAY,
           :IS_UNSCHEDULED_DAY
    DO
    UPDATE WORK_SCHEDULE
       SET SHIFT_KEY                = :SHIFT_KEY,
           ATTENDANCE_DATE_START    = :ATTENDANCE_DATE_START,
           TIME_START               = :TIME_START,
           ATTENDANCE_DATE_END      = :ATTENDANCE_DATE_END,
           TIME_END                 = :TIME_END,
           TOTAL_WORK_MINUTES       = :TOTAL_WORK_MINUTES,
           DELETED                  = :DELETED,
           PUBLIC_HOLIDAY           = :PUBLIC_HOLIDAY,
           IS_UNSCHEDULED_DAY       = :IS_UNSCHEDULED_DAY
     WHERE WORK_SCHEDULE_KEY        = :WORK_SCHEDULE_KEY;
     
    -- --------------------------------------------------------------------------------------------------
    -- CREATE DUTY SCHEDULE FOR SHIFTS ASSIGNED TO DATES
    -- --------------------------------------------------------------------------------------------------     
    FOR 
    SELECT WS.WORK_SCHEDULE_KEY,
           CASE WHEN PH.PUBLIC_HOLIDAY_KEY IS NULL THEN S.SHIFT_KEY ELSE -2 END AS SHIFT_KEY, 
           DT.THEDATE AS ATTENDANCE_DATE_START, 
           CASE WHEN PH.PUBLIC_HOLIDAY_KEY IS NULL THEN S.FROM_TIME ELSE CAST( '00:00:00' AS TIME ) END AS TIME_START,
           CASE S.SPAN_DAY WHEN 0 THEN DT.THEDATE ELSE DT.THEDATE + 1 END AS ATTENDANCE_DATE_END,
           CASE WHEN PH.PUBLIC_HOLIDAY_KEY IS NULL THEN S.TO_TIME ELSE CAST( '00:00:00' AS TIME ) END AS TIME_END,
           CASE WHEN PH.PUBLIC_HOLIDAY_KEY IS NULL THEN S.MINUTES_WORKED ELSE 0 END AS TOTAL_WORK_MINUTES,
           0 AS DELETED,
           CASE WHEN PH.PUBLIC_HOLIDAY_KEY IS NULL THEN 0 ELSE 1 END AS PUBLIC_HOLIDAY,
           CASE WHEN PH.PUBLIC_HOLIDAY_KEY IS NULL THEN 'S' ELSE 'U' END AS IS_UNSCHEDULED_DAY
      FROM EMPLOYEE E
           JOIN EMPLOYEE_SHIFT ES ON ES.EMPLOYEE_KEY = E.EMPLOYEE_KEY AND ES.ACTIVE_RECORD = 1 AND ES.DELETED = 0
           JOIN SHIFT S ON S.SHIFT_KEY = ES.SHIFT_KEY AND S.ACTIVE_RECORD = 1 AND S.DELETED = 0 AND S.COMPANY_KEY = E.COMPANY_KEY
           JOIN GET_DATE_RANGE( :AStartDate, :AEndDate ) DT ON (
                     ( ( EXTRACT( WEEKDAY FROM DT.THEDATE ) = 0 ) AND ( S.SUNDAY = 1 ) ) OR
                     ( ( EXTRACT( WEEKDAY FROM DT.THEDATE ) = 1 ) AND ( S.MONDAY = 1 ) ) OR
                     ( ( EXTRACT( WEEKDAY FROM DT.THEDATE ) = 2 ) AND ( S.TUESDAY = 1 ) ) OR
                     ( ( EXTRACT( WEEKDAY FROM DT.THEDATE ) = 3 ) AND ( S.WEDNESDAY = 1 ) ) OR
                     ( ( EXTRACT( WEEKDAY FROM DT.THEDATE ) = 4 ) AND ( S.THURSDAY = 1 ) ) OR
                     ( ( EXTRACT( WEEKDAY FROM DT.THEDATE ) = 5 ) AND ( S.FRIDAY = 1 ) ) OR
                     ( ( EXTRACT( WEEKDAY FROM DT.THEDATE ) = 6 ) AND ( S.SATURDAY = 1 ) ) 
                   )
           JOIN WORK_SCHEDULE WS ON WS.EMPLOYEE_KEY = E.EMPLOYEE_KEY AND WS.ATTENDANCE_DATE_START = DT.THEDATE
           JOIN SHIFT_DATE_DEFINE SDD ON SDD.SHIFT_KEY = S.SHIFT_KEY AND SDD.SHIFT_DATE = DT.THEDATE AND SDD.ACTIVE_RECORD = 1 AND SDD.DELETED = 0
           LEFT JOIN PUBLIC_HOLIDAY PH ON PH.PUBLIC_HOLIDAY_DATE = DT.THEDATE AND PH.ACTIVE_RECORD = 1 AND PH.DELETED = 0
     WHERE E.EMPLOYEE_KEY       = :AEmployeeKey  
       AND ES.SHIFT_ACTIVE      = 1
       AND ES.SHIFT_TYPE        = 'P'
       AND DT.THEDATE           > E.DATE_STARTED 
       AND S.SHIFT_DATE_DEFINE  = 'D' 
      INTO :WORK_SCHEDULE_KEY,
           :SHIFT_KEY,
           :ATTENDANCE_DATE_START,
           :TIME_START,
           :ATTENDANCE_DATE_END,
           :TIME_END,
           :TOTAL_WORK_MINUTES,
           :DELETED,
           :PUBLIC_HOLIDAY,
           :IS_UNSCHEDULED_DAY
    DO
    UPDATE WORK_SCHEDULE
       SET SHIFT_KEY                = :SHIFT_KEY,
           ATTENDANCE_DATE_START    = :ATTENDANCE_DATE_START,
           TIME_START               = :TIME_START,
           ATTENDANCE_DATE_END      = :ATTENDANCE_DATE_END,
           TIME_END                 = :TIME_END,
           TOTAL_WORK_MINUTES       = :TOTAL_WORK_MINUTES,
           DELETED                  = :DELETED,
           PUBLIC_HOLIDAY           = :PUBLIC_HOLIDAY,
           IS_UNSCHEDULED_DAY       = :IS_UNSCHEDULED_DAY
     WHERE WORK_SCHEDULE_KEY        = :WORK_SCHEDULE_KEY;
END
