ALTER TABLE DEVICE_TYPE ADD DEVICE_MAKE DM_CHAR;

COMMIT;

UPDATE DEVICE_TYPE  SET DEVICE_MAKE = case WHEN upper(DEVICE_MODEL) = 'F4' then 'Z'  WHEN upper(DEVICE_MODEL) = 'AV100' then 'A'  WHEN upper(DEVICE_MODEL) = 'BIOPC' then 'P'  WHEN upper(DEVICE_MODEL) = 'BOOK' then 'B'  WHEN upper(DEVICE_MODEL) = 'B1' then 'Z'  WHEN upper(DEVICE_MODEL) = 'A8' then 'Z'  WHEN upper(DEVICE_MODEL) = 'F7' then 'Z'  WHEN upper(DEVICE_MODEL) = 'A4' then 'Z'  WHEN upper(DEVICE_MODEL) = 'U160' then 'Z'  end;