SET TERM^;
EXECUTE BLOCK
AS
    DECLARE StartDate DATE = '1899.01.01';
    DECLARE EndDate   DATE = '2031.01.01';
BEGIN
    DELETE  
      FROM ATTENDANCE A
     WHERE A.RECORD_STATUS NOT IN ( 'HR', 'DI' )
       AND A.ATTENDANCE_DATE BETWEEN :StartDate AND :EndDate;
END^
SET TERM ;^

