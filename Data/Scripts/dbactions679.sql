ALTER TABLE ATTENDANCE_AUDIT ADD REASON_KEY DM_KEY_N1;

UPDATE ATTENDANCE_AUDIT SET REASON_KEY = -1;

ALTER TABLE ATTENDANCE_AMEND_AUDIT ADD REASON_KEY DM_KEY_N1;

UPDATE ATTENDANCE_AMEND_AUDIT SET REASON_KEY = -1;

ALTER TABLE ATTENDANCE_AMEND_AUDIT ADD EVENT_KEY DM_KEY_N1;

UPDATE ATTENDANCE_AMEND_AUDIT SET EVENT_KEY = -1;

ALTER TABLE ATTENDANCE_AUDIT ADD EVENT_KEY DM_KEY_N1;

UPDATE ATTENDANCE_AUDIT SET EVENT_KEY = -1;