ALTER TABLE COMPANY ADD 
NSA_USE_VALUE Double precision NOT NULL;

UPDATE COMPANY 
SET NSA_USE_VALUE = '0' 
WHERE NSA_USE_VALUE IS NULL;
