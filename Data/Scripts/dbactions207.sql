ALTER TABLE TRACKING_TEMP_PRINT ADD DEDUCT_MIN DM_INTEGER;

ALTER TABLE COMPANY ADD UIF_REG_NO DM_COMPANY_REG_NO;

ALTER TABLE SYSTEM_PARAMETER ADD SITE_CEILING DM_CURRENCY;

ALTER TABLE SYSTEM_PARAMETER ADD UIF_CEILING DM_CURRENCY;

ALTER TABLE SYSTEM_PARAMETER ADD UIF_PERCENT DM_FLOAT;

ALTER TABLE SYSTEM_PARAMETER DROP VIP_EXPORT_FILE_PATH;

ALTER TABLE SYSTEM_PARAMETER DROP VIP_VERSION;

ALTER TABLE SYSTEM_PARAMETER DROP VIP_EXPORT_FILE_EXTENSION; 

