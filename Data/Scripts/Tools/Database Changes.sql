CREATE GENERATOR EVENT_GEN;
COMMIT;

CREATE TABLE EVENT
(
EVENT_KEY           DM_KEY,
EVENT_NAME          DM_NAME
DELETED             DM_BOOLEAN,
PRIMARY KEY (EVENT_KEY)
);

COMMIT;

SET TERM ^! ;
CREATE TRIGGER TR_EVENT FOR EVENT ACTIVE BEFORE INSERT POSITION 0 AS
begin
  /* first - check for NULL for this column */
  if (new.EVENT_KEY is null)
  then begin
  /* if NULL, provide a new ID for this generator */
         new.EVENT_KEY = gen_id(EVENT_GEN, 1);
       end
end
^!
SET TERM ; ^!

COMMIT;

CREATE GENERATOR EMPLOYEE_SHIFT_GEN;
COMMIT;

SET TERM ^! ;
CREATE TRIGGER TR_EMPLOYEE_SHIFT FOR EVENT EMPLOYEE_SHIFT BEFORE INSERT POSITION 0 AS
begin
  /* first - check for NULL for this column */
  if (new.EMPLOYEE_SHIFT_KEY is null)
  then begin
  /* if NULL, provide a new ID for this generator */
         new.EMPLOYEE_SHIFT_KEY = gen_id(EMPLOYEE_SHIFT_GEN, 1);
       end
end
^!
SET TERM ; ^!

COMMIT;

CREATE GENERATOR SHIFT_DUTY_CHART_GEN;
COMMIT;

SET TERM ^! ;
CREATE TRIGGER TR_SHIFT_DUTY_CHART FOR SHIFT_DUTY_CHART BEFORE INSERT POSITION 0 AS
begin
  /* first - check for NULL for this column */
  if (new.SHIFT_DUTY_CHART_KEY is null)
  then begin
  /* if NULL, provide a new ID for this generator */
         new.SHIFT_DUTY_CHART_KEY = gen_id(SHIFT_DUTY_CHART_GEN, 1);
       end
end
^!
SET TERM ; ^!

COMMIT;

******************************************************************************************************

CREATE TABLE "SHIFT_DUTY_CHART"
(
"SHIFT_DUTY_CHART_KEY"           "DM_KEY"  NOT NULL,
"EMPLOYEE_KEY"                   "DM_KEY",
"DUTY_DATE"                      "DM_DATE",
"01_HOUR"                        "DM_KEY",
"H1_BLANK"                       "DM_CHAR",
"0130_MIN"                       "DM_KEY"  NOT NULL,
"M1_BLANK"                       "DM_CHAR",
"02_HOUR"                        "DM_KEY",
"H2_BLANK"                       "DM_CHAR",
"0230_MIN"                       "DM_KEY"  NOT NULL,
"M2_BLANK"                       "DM_CHAR",
"03_HOUR"                        "DM_KEY",
"H3_BLANK"                       "DM_CHAR",
"0330_MIN"                       "DM_KEY"  NOT NULL,
"M3_BLANK"                       "DM_CHAR",
"04_HOUR"                        "DM_KEY",
"H4_BLANK"                       "DM_CHAR",
"0430_MIN"                       "DM_KEY"  NOT NULL,
"M4_BLANK"                       "DM_CHAR",
"05_HOUR"                        "DM_KEY",
"H5_BLANK"                       "DM_CHAR",
"0530_MIN"                       "DM_KEY"  NOT NULL,
"M5_BLANK"                       "DM_CHAR",
"06_HOUR"                        "DM_KEY",
"H6_BLANK"                       "DM_CHAR",
"0630_MIN"                       "DM_KEY"  NOT NULL,
"M6_BLANK"                       "DM_CHAR",
"07_HOUR"                        "DM_KEY",
"H7_BLANK"                       "DM_CHAR",
"0730_MIN"                       "DM_KEY"  NOT NULL,
"M7_BLANK"                       "DM_CHAR",
"08_HOUR"                        "DM_KEY",
"H8_BLANK"                       "DM_CHAR",
"0830_MIN"                       "DM_KEY"  NOT NULL,
"H8_BLANK"                       "DM_CHAR",
"09_HOUR"                        "DM_KEY",
"H9_BLANK"                       "DM_CHAR",
"0930_MIN"                       "DM_KEY"  NOT NULL,
"M9_BLANK"                       "DM_CHAR",
"10_HOUR"                        "DM_KEY",
"H10_BLANK"                       "DM_CHAR",
"1030_MIN"                       "DM_KEY"  NOT NULL,
"M10_BLANK"                       "DM_CHAR",
"11_HOUR"                        "DM_KEY",
"H11_BLANK"                       "DM_CHAR",
"1130_MIN"                       "DM_KEY"  NOT NULL,
"M11_BLANK"                       "DM_CHAR",
"12_HOUR"                        "DM_KEY",
"H12_BLANK"                       "DM_CHAR",
"1230_MIN"                       "DM_KEY"  NOT NULL,
"M12_BLANK"                       "DM_CHAR",
"13_HOUR"                        "DM_KEY",
"H13_BLANK"                       "DM_CHAR",
"1330_MIN"                       "DM_KEY"  NOT NULL,
"M13_BLANK"                       "DM_CHAR",
"14_HOUR"                        "DM_KEY",
"H14_BLANK"                       "DM_CHAR",
"1430_MIN"                       "DM_KEY"  NOT NULL,
"M14_BLANK"                       "DM_CHAR",
"15_HOUR"                        "DM_KEY",
"H15_BLANK"                       "DM_CHAR",
"1530_MIN"                       "DM_KEY"  NOT NULL,
"M15_BLANK"                       "DM_CHAR",
"16_HOUR"                        "DM_KEY",
"H16_BLANK"                       "DM_CHAR",
"1630_MIN"                       "DM_KEY"  NOT NULL,
"M16_BLANK"                       "DM_CHAR",
"17_HOUR"                        "DM_KEY",
"H17_BLANK"                       "DM_CHAR",
"1730_MIN"                       "DM_KEY"  NOT NULL,
"M17_BLANK"                       "DM_CHAR",
"18_HOUR"                        "DM_KEY",
"H18_BLANK"                       "DM_CHAR",
"1830_MIN"                       "DM_KEY"  NOT NULL,
"M18_BLANK"                       "DM_CHAR",
"19_HOUR"                        "DM_KEY",
"H19_BLANK"                       "DM_CHAR",
"1930_MIN"                       "DM_KEY"  NOT NULL,
"M19_BLANK"                       "DM_CHAR",
"20_HOUR"                        "DM_KEY",
"H20_BLANK"                       "DM_CHAR",
"2030_MIN"                       "DM_KEY"  NOT NULL,
"M20_BLANK"                       "DM_CHAR",
"21_HOUR"                        "DM_KEY",
"H21_BLANK"                       "DM_CHAR",
"2130_MIN"                       "DM_KEY"  NOT NULL,
"M21_BLANK"                       "DM_CHAR",
"22_HOUR"                        "DM_KEY",
"H22_BLANK"                       "DM_CHAR",
"2230_MIN"                       "DM_KEY"  NOT NULL,
"M22_BLANK"                       "DM_CHAR",
"23_HOUR"                        "DM_KEY",
"H23_BLANK"                       "DM_CHAR",
"2330_MIN"                       "DM_KEY"  NOT NULL,
"M23_BLANK"                       "DM_CHAR",
"24_HOUR"                        "DM_KEY",
"H24_BLANK"                       "DM_CHAR",
"2430_MIN"                       "DM_KEY"  NOT NULL,
"M24_BLANK"                       "DM_CHAR",
"DELETED"                        "DM_BOOLEAN",
PRIMARY KEY ("SHIFT_DUTY_CHART_KEY")
);



CREATE GENERATOR CALENDAR_WEEK_GEN;
COMMIT;

CREATE TABLE CALENDAR_WEEK
(
CALENDAR_WEEK_KEY    DM_KEY,
CALENDAR_WEEK_NO     DM_SMALLINT,
FROM_DATE            DM_DATE,
TO_DATE              DM_DATE,
DELETED              DM_BOOLEAN,
PRIMARY KEY (CALENDAR_WEEK_KEY)
);

COMMIT;

SET TERM ^! ;
CREATE TRIGGER TR_CALENDAR_WEEK FOR CALENDAR_WEEK ACTIVE BEFORE INSERT POSITION 0 AS
begin
  /* first - check for NULL for this column */
  if (new.CALENDAR_WEEK_KEY is null)
  then begin
  /* if NULL, provide a new ID for this generator */
         new.CALENDAR_WEEK_KEY = gen_id(CALENDAR_WEEK_GEN, 1);
       end
end
^!
SET TERM ; ^!

COMMIT;


CREATE GENERATOR DEVICE_LOCATION_GEN;
COMMIT;

CREATE TABLE DEVICE_LOCATION
(
DEVICE_LOCATION_KEY  DM_KEY,
DEVICE_LOCATION      DM_NAME,
DELETED              DM_BOOLEAN,
PRIMARY KEY (CALENDAR_WEEK_KEY)
);

COMMIT;

SET TERM ^! ;
CREATE TRIGGER TR_DEVICE_LOCATION FOR DEVICE_LOCATION ACTIVE BEFORE INSERT POSITION 0 AS
begin
  /* first - check for NULL for this column */
  if (new.DEVICE_LOCATION_KEY is null)
  then begin
  /* if NULL, provide a new ID for this generator */
         new.DEVICE_LOCATION_KEY = gen_id(DEVICE_LOCATION_GEN, 1);
       end
end
^!
SET TERM ; ^!

COMMIT;

CREATE DOMIAN DM_IP AS CHAR(15)
    DEFAULT '000.000.000.000'
    NOT NULL;

CREATE DOMIAN DM_PORT AS CHAR(10)
    NOT NULL;


CREATE GENERATOR DEVICE_CONFIGURATION_GEN;
COMMIT;

CREATE TABLE DEVICE_CONFIGURATION
(
DEVICE_CONFIGURATION_KEY  DM_KEY,
DEVICE_LOCATION_KEY       DM_KEY,
DEVICE_IP                 DM_IP,
DEVICE_PORT               DM_PORT,
DELETED                   DM_BOOLEAN,
PRIMARY KEY (DEVICE_CONFIGURATION_KEY)
);

COMMIT;

SET TERM ^! ;
CREATE TRIGGER TR_DEVICE_CONFIGURATION FOR DEVICE_CONFIGURATION ACTIVE BEFORE INSERT POSITION 0 AS
begin
  /* first - check for NULL for this column */
  if (new.DEVICE_CONFIGURATION_KEY is null)
  then begin
  /* if NULL, provide a new ID for this generator */
         new.DEVICE_CONFIGURATION_KEY = gen_id(DEVICE_CONFIGURATION_GEN, 1);
       end
end
^!
SET TERM ; ^!

COMMIT;


CREATE GENERATOR DEVICE_PRIVLAGE_GEN;
COMMIT;

CREATE TABLE DEVICE_PRIVLAGE
(
DEVICE_PRIVLAGE_KEY  DM_KEY,
DEVICE_PRIVLAGE      DM_NAME,
DELETED              DM_BOOLEAN
PRIMARY KEY (DEVICE_PRIVLAGE_KEY)
);

COMMIT;

SET TERM ^! ;
CREATE TRIGGER TR_DEVICE_PRIVLAGE FOR DEVICE_PRIVLAGE ACTIVE BEFORE INSERT POSITION 0 AS
begin
  /* first - check for NULL for this column */
  if (new.DEVICE_PRIVLAGE_KEY is null)
  then begin
  /* if NULL, provide a new ID for this generator */
         new.DEVICE_PRIVLAGE_KEY = gen_id(DEVICE_PRIVLAGE_GEN, 1);
       end
end
^!
SET TERM ; ^!

COMMIT;

