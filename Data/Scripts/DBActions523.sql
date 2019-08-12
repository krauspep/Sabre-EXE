ALTER TABLE SHIFT ADD CUTOFF_MON_MINS Smallint NOT NULL;

UPDATE SHIFT SET CUTOFF_MON_MINS = '0' WHERE CUTOFF_MON_MINS IS NULL;

ALTER TABLE SHIFT ADD CUTOFF_TUE_MINS Smallint NOT NULL;

UPDATE SHIFT SET CUTOFF_TUE_MINS = '0' WHERE CUTOFF_TUE_MINS IS NULL;

ALTER TABLE SHIFT ADD CUTOFF_WED_MINS Smallint NOT NULL;

UPDATE SHIFT SET CUTOFF_WED_MINS = '0' WHERE CUTOFF_WED_MINS IS NULL;

ALTER TABLE SHIFT ADD CUTOFF_THU_MINS Smallint NOT NULL;

UPDATE SHIFT SET CUTOFF_THU_MINS = '0' WHERE CUTOFF_THU_MINS IS NULL;

ALTER TABLE SHIFT ADD CUTOFF_FRI_MINS Smallint NOT NULL;

UPDATE SHIFT SET CUTOFF_FRI_MINS = '0' WHERE CUTOFF_FRI_MINS IS NULL;

ALTER TABLE SHIFT ADD CUTOFF_SAT_MINS Smallint NOT NULL;

UPDATE SHIFT SET CUTOFF_SAT_MINS = '0' WHERE CUTOFF_SAT_MINS IS NULL;

ALTER TABLE SHIFT ADD CUTOFF_SUN_MINS Smallint NOT NULL;

UPDATE SHIFT SET CUTOFF_SUN_MINS = '0' WHERE CUTOFF_SUN_MINS IS NULL;

CREATE TABLE PAYROLL_EXPORT_TEMPLATE_DRSMASH
(
  TEMPLATE_KEY INTEGER NOT NULL,
  TEMPLATE_NO INTEGER,
  TEMPLATE VARCHAR(300)
);

GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
 ON PAYROLL_EXPORT_TEMPLATE_DRSMASH TO  SYSDBA WITH GRANT OPTION;


INSERT INTO PAYROLL_EXPORT_TEMPLATE_DRSMASH (TEMPLATE_KEY, TEMPLATE_NO, TEMPLATE) VALUES (1,1,'NT,OT1,SAT,WPPH');

INSERT INTO PAYROLL_EXPORT_TEMPLATE_DRSMASH (TEMPLATE_KEY, TEMPLATE_NO, TEMPLATE) VALUES (1,2,'NT,OT1,SUN,WPPH');



