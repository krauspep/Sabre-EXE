ALTER TABLE Device_Configuration
ADD DEVICE_FUNCTION DM_SMALLINT;
COMMIT;

INSERT INTO EVENT(EVENT_KEY, EVENT_NAME, DELETED)
VALUES(3, 'Access',0);
commit;