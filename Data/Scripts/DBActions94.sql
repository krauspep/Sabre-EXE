ALTER TABLE BOOK_CONFIGURATION ADD DEVICE_ACTIVE DM_BOOLEAN;

update book_configuration set DEVICE_ACTIVE = 1;

ALTER TABLE DEVICE_CONFIGURATION ADD DEVICE_NAME DM_NAME;

update DEVICE_configuration set DEVICE_NAME = 'DEVICE NAME';

ALTER TABLE BOOK_CONFIGURATION ADD DEVICE_NAME DM_NAME;

update book_configuration set DEVICE_NAME = 'DEVICE NAME';

ALTER TABLE BIO_PC_CONFIGURATION ADD DEVICE_NAME DM_NAME;

update BIO_PC_CONFIGURATION set DEVICE_NAME = 'DEVICE NAME';