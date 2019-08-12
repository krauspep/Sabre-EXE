CREATE TABLE NOTIFY_OPERATOR_EMAIL
(
  OPERATOR_KEY DM_KEY,
  EMAIL_ADDRESS DM_EMAIL_ADDRESS,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  DELETED DM_BOOLEAN DEFAULT 0
);

CREATE INDEX I_NOTIFY_OPERATOR_EMAIL_1 ON NOTIFY_OPERATOR_EMAIL (OPERATOR_KEY, DELETED);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON NOTIFY_OPERATOR_EMAIL TO "SYSDBA" WITH GRANT OPTION;

ALTER TABLE OPERATOR ADD SEND_APPROVE_NOTIFY DM_BOOLEAN;

UPDATE OPERATOR SET SEND_APPROVE_NOTIFY = 0;
