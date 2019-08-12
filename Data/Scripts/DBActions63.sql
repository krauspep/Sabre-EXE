ALTER TABLE "FINGERPRINT" 
ADD GUEST_KEY DM_KEY;

commit;

CREATE INDEX "I_FINGERPRINT_1" ON "FINGERPRINT"("EMPLOYEE_KEY", "DELETED");
CREATE INDEX "I_FINGERPRINT_2" ON "FINGERPRINT"("RESIDENT_KEY", "DELETED");
CREATE INDEX "I_FINGERPRINT_3" ON "FINGERPRINT"("GUEST_KEY", "DELETED");

commit;