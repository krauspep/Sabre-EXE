ALTER TABLE COMPANY ADD ASSIGN_SGPPH_TO VARCHAR(10); 

ALTER TABLE COMPANY ADD ASSIGN_WPPH_TO VARCHAR(10); 

UPDATE COMPANY SET ASSIGN_SGPPH_TO = 'NT'; 

UPDATE COMPANY SET ASSIGN_WPPH_TO  = 'OT1'; 