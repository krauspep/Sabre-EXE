ALTER TABLE COMPANY ADD 
PDF_REPORTS DM_BOOLEAN DEFAULT 1;

UPDATE COMPANY
SET PDF_REPORTS = 1
WHERE PDF_REPORTS IS NULL;