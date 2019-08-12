CREATE DOMAIN DM_INT_N1 AS Integer DEFAULT -1;

ALTER TABLE EMPLOYEE_DEVICE_LINK ADD TEMP DM_INTEGER;

UPDATE EMPLOYEE_DEVICE_LINK SET TEMP = PANEL_AUTHORISE;

ALTER TABLE EMPLOYEE_DEVICE_LINK DROP PANEL_AUTHORISE;

ALTER TABLE EMPLOYEE_DEVICE_LINK ADD PANEL_AUTHORISE DM_INT_N1;

UPDATE EMPLOYEE_DEVICE_LINK SET PANEL_AUTHORISE = TEMP;

ALTER TABLE EMPLOYEE_DEVICE_LINK DROP TEMP;

UPDATE EMPLOYEE_DEVICE_LINK SET PANEL_AUTHORISE = -1 WHERE PANEL_AUTHORISE IS NULL