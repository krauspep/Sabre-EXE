SET TERM ^;
EXECUTE BLOCK
AS
    DECLARE L_START_DATE        DATE        = '2012.01.01';
    DECLARE L_END_DATE          DATE        = '2012.12.31';
    DECLARE L_NEW_EVENT         INT         = 7;
    DECLARE L_RECORD_STATUS     VARCHAR(10) = 'DI';
BEGIN    
    -- Update the Attendance Records
    UPDATE ATTENDANCE A
       SET A.EVENT_KEY = :L_NEW_EVENT
     WHERE A.ATTENDANCE_DATE BETWEEN :L_START_DATE AND :L_END_DATE
       AND A.RECORD_STATUS = :L_RECORD_STATUS;
END^
SET TERM;^