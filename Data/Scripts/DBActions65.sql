CREATE TABLE DATABASE_INFORMATION
(
VERSION_NO       DM_SMALLINT,
DB_USERNAME      DM_NAME,
DB_PASSWORD      DM_NAME
);

COMMIT;

INSERT INTO DATABASE_INFORMATION(VERSION_NO, DB_USERNAME, DB_PASSWORD)
VALUES(65, 'User', 'password');

COMMIT;