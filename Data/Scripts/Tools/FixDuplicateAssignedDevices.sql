SET TERM ^;
EXECUTE BLOCK
AS
    DECLARE EDL_KEY INT;
    DECLARE DEVICE_KEY INT;
    DECLARE DEVICE_TYPE_KEY INT;
BEGIN
	DELETE
	  FROM EMPLOYEE_DEVICE_LINK EDL
	 WHERE EDL.DEVICE_KEY NOT IN ( SELECT DC.DEVICE_CONFIGURATION_KEY FROM DEVICE_CONFIGURATION DC );

	DELETE
	  FROM EMPLOYEE_DEVICE_LINK EDL
	 WHERE EDL.EMPLOYEE_KEY || '_' || EDL.DEVICE_KEY IN ( SELECT EDL.EMPLOYEE_KEY || '_' || EDL.DEVICE_KEY
															FROM EMPLOYEE_DEVICE_LINK EDL
														   GROUP BY EDL.EMPLOYEE_KEY, EDL.DEVICE_KEY
														  HAVING COUNT(1) > 1 )
	   AND EDL.DEVICE_KEY || '_' || EDL.DEVICE_TYPE_KEY NOT IN ( SELECT DC.DEVICE_CONFIGURATION_KEY || '_' || DC.DEVICE_TYPE_KEY FROM DEVICE_CONFIGURATION DC );
	 
    FOR
    SELECT EDL.EMPLOYEE_DEVICE_LINK_KEY, DC.DEVICE_CONFIGURATION_KEY, DC.DEVICE_TYPE_KEY 
      FROM EMPLOYEE_DEVICE_LINK EDL
           JOIN DEVICE_CONFIGURATION DC ON DC.DEVICE_CONFIGURATION_KEY = EDL.DEVICE_KEY
     WHERE EDL.DEVICE_TYPE_KEY <> DC.DEVICE_TYPE_KEY
    INTO :EDL_KEY, :DEVICE_KEY, :DEVICE_TYPE_KEY
    DO
    UPDATE EMPLOYEE_DEVICE_LINK
       SET DEVICE_TYPE_KEY = :DEVICE_TYPE_KEY
     WHERE EMPLOYEE_DEVICE_LINK_KEY = :EDL_KEY
       AND DEVICE_KEY = :DEVICE_KEY;
 
END^
SET TERM ;^   
   