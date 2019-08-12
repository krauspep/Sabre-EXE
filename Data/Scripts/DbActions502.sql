ALTER TABLE SYSTEM_PARAMETER 
  ADD AUTO_ENABLE_ON_DEVICE SMALLINT DEFAULT 0 NOT NULL,
  ADD AUTO_OPEN_DOOR        SMALLINT DEFAULT 0 NOT NULL,
  ADD AUTO_UPLOAD_TO_DEVICE SMALLINT DEFAULT 0 NOT NULL 
  
CREATE OR ALTER PROCEDURE EMPLOYEE_TO_ALL_ZK (
    AEmployeeKey INT,
    AOpenDoor    SMALLINT
)
AS
    DECLARE LEmployeeDeviceLinkKey INT;
    DECLARE LDeviceTypeKey         INT;
    DECLARE LEnrollGroup           SMALLINT;
BEGIN
    -- --------------------------------------------------------------
    -- UDPATE THE EXISTING ENTRIES
    -- --------------------------------------------------------------
    FOR
    SELECT EDL.EMPLOYEE_DEVICE_LINK_KEY,
           DC.DEVICE_TYPE_KEY,
           CASE :AOpenDoor WHEN 1 THEN DC.OPEN_DOOR_GROUP ELSE DC.CLOSE_DOOR_GROUP END AS ENROLL_GROUP
      FROM EMPLOYEE_DEVICE_LINK EDL
           JOIN DEVICE_CONFIGURATION DC ON DC.DEVICE_CONFIGURATION_KEY = EDL.DEVICE_KEY
     WHERE EDL.EMPLOYEE_KEY = :AEmployeeKey
       AND DC.DELETED = 0
       AND DC.ACTIVE_RECORD = 1
    INTO :LEmployeeDeviceLinkKey, :LDeviceTypeKey, :LEnrollGroup
    DO
   UPDATE EMPLOYEE_DEVICE_LINK
       SET ENABLED_ON_DEVICE = 1,
           OPEN_DOOR         = :AOpenDoor,
           DEVICE_TYPE_KEY   = :LDeviceTypeKey,
           IS_SELECTED       = 'T',
           ENROLL_GROUP      = :LEnrollGroup,
           ACTIVE_RECORD     = 1,
           DELETED           = 0
     WHERE EMPLOYEE_DEVICE_LINK_KEY = :LEmployeeDeviceLinkKey;
     
    -- --------------------------------------------------------------
    -- Now Insert the new ones
    -- --------------------------------------------------------------
    INSERT
      INTO EMPLOYEE_DEVICE_LINK ( EMPLOYEE_KEY, DEVICE_KEY, ENABLED_ON_DEVICE, DELETED, 
                                 OPEN_DOOR, DEVICE_TYPE_KEY, IS_SELECTED, ENROLL_GROUP, ACTIVE_RECORD )
    SELECT E.EMPLOYEE_KEY, 
           DC.DEVICE_CONFIGURATION_KEY AS DEVICE_KEY,
           1 AS ENABLED_ON_DEVICE,
           0 AS DELETED,
           :AOpenDoor AS OPEN_DOOR,
           DC.DEVICE_TYPE_KEY,
           'T' AS IS_SELECTED,
           CASE :AOpenDoor WHEN 1 THEN DC.OPEN_DOOR_GROUP ELSE DC.CLOSE_DOOR_GROUP END AS ENROLL_GROUP,
           1 AS ACTIVE_RECORD
      FROM EMPLOYEE E
           JOIN DEVICE_CONFIGURATION DC ON DC.COMPANY_KEY = E.COMPANY_KEY
     WHERE E.EMPLOYEE_KEY = :AEmployeeKey
       AND DC.DELETED = 0 
       AND DC.ACTIVE_RECORD = 1 
       AND DC.DEVICE_CONFIGURATION_KEY NOT IN ( SELECT DEVICE_KEY FROM EMPLOYEE_DEVICE_LINK WHERE EMPLOYEE_KEY = :AEmployeeKey );
    -- --------------------------------------------------------------
    -- Insert Default TimeZones
    -- --------------------------------------------------------------
    INSERT
      INTO EMPLOYEE_TIME_ZONE  ( EMPLOYEE_KEY, DEVICE_CONFIGURATION_KEY, TIME_ZONE1, 
                                 TIME_ZONE2, TIME_ZONE3, DELETED, ACTIVE_RECORD )
    SELECT EDL.EMPLOYEE_KEY, EDL.DEVICE_KEY AS DEVICE_CONFIGURATION_KEY, 1 AS TIME_ZONE1, 
           0 AS TIME_ZONE2, 0 AS TIME_ZONE3, 0 AS DELETED, 1 AS ACTIVE_RECORD
      FROM EMPLOYEE_DEVICE_LINK EDL
     WHERE EDL.EMPLOYEE_KEY = :AEmployeeKey 
       AND EDL.DEVICE_KEY NOT IN ( SELECT DEVICE_CONFIGURATION_KEY FROM EMPLOYEE_TIME_ZONE WHERE EMPLOYEE_KEY = :AEmployeeKey );
     
END