CREATE DOMAIN "DM_BLOB3" AS BLOB;

CREATE GENERATOR MSFPSCANNER_GEN;

CREATE TABLE "MSFPSCANNER" 
(
  "MSFPSCANNER_KEY"       "DM_KEY",
  "GENERIC_KEY"           "DM_KEY",
  "COMPANY_KEY"           "DM_KEY",
  "FINGERPRINT_TEMPLATE"  "DM_BLOB3",
  "FINGER_NO"             "DM_SMALLINT",
  "DELETED"               "DM_BOOLEAN",
 PRIMARY KEY ("MSFPSCANNER_KEY")
);



