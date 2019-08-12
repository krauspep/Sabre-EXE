CREATE GENERATOR PROPERTY_DEFINITION_GEN;

CREATE TABLE PROPERTY_DEFINITION
(
  PROPERTY_DEFINITION_KEY          DM_KEY,
  PROPERTY_NO                      DM_MODEL,
  UNIT_TYPE_KEY                    DM_KEY,
  PROPERTY_SIZE                    DM_FLOAT,
  BALCONY                          DM_BOOLEAN,
  MAX_CAPACITY                     DM_SMALLINT,
  LEVY_VALUE                       DM_CURRENCY,
  NO_OF_ROOMS                      DM_SMALLINT,
  RENT_VALUE                       DM_CURRENCY,
  NO_OF_BATHROOMS                  DM_SMALLINT,
  DELETED            DM_BOOLEAN,
  PRIMARY KEY (PROPERTY_DEFINITION_KEY)
);

CREATE TRIGGER "TR_PROPERTY_DEFINITION" FOR "PROPERTY_DEFINITION" ACTIVE BEFORE INSERT POSITION 0 AS begin if (new.PROPERTY_DEFINITION_KEY is null) then begin new.PROPERTY_DEFINITION_KEY = gen_id(PROPERTY_DEFINITION_GEN, 1); end end

UPDATE DEVICE_TYPE SET MONITOR_BACKGROUND_COLOUR = 3423244, GAUGE_1_RANGE_COLOUR = 16711680, GAUGE_2_RANGE_COLOUR = 16711680, GAUGE_3_RANGE_COLOUR = 16711680, GAUGE_4_RANGE_COLOUR = 16711680;

UPDATE DEVICE_TYPE SET DEVICE_TYPE_NAME = 'K6 Clock Card Device', DEVICE_MODEL = 'K6' WHERE DEVICE_TYPE_KEY = 5;

CREATE DOMAIN DM_COM_PORT VARCHAR(3);

ALTER TABLE DEVICE_CONFIGURATION ADD COMMUNICATION_TYPE DM_CHAR;

ALTER TABLE DEVICE_CONFIGURATION ADD SERIAL_PORT DM_COM_PORT;

ALTER TABLE DEVICE_CONFIGURATION ADD BAUDE_RATE DM_INTEGER;

ALTER TABLE DEVICE_TYPE ADD BIOMETRIC DM_BOOLEAN;




