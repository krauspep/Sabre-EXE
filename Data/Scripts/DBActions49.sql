UPDATE EVENT
SET EVENT_NAME = 'Access In'
where event_key = 3;
commit;

INSERT INTO EVENT(EVENT_KEY, EVENT_NAME, DELETED)
VALUES(4, 'Access Out',0);
commit;

