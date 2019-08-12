CREATE GENERATOR WORKER_GEN;

CREATE TABLE WORKER
(
  WORKER_KEY DM_KEY NOT NULL,
  NAME VARCHAR(60),
  DELETED DM_BOOLEAN DEFAULT 0,
  ACTIVE_RECORD DM_ACTIVE DEFAULT 1,
  PRIMARY KEY (WORKER_KEY)
);

CREATE TRIGGER TR_WORKER FOR WORKER
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.WORKER_KEY is null)
  then begin
         new.WORKER_KEY = gen_id(WORKER_GEN, 1);
       end
end