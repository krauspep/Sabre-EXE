ALTER TABLE COMPANY ADD AMORTISED_HOURLY_RATE DM_CURRENCY;

UPDATE COMPANY SET AMORTISED_HOURLY_RATE = 0;