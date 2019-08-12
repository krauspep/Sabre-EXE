@echo off
echo Renaming to Corrupt
ren SabreSvc.db3 SabreSvc_Corrupt.db3
echo .
echo Attempting the fix corrupt DB
sqlite3 SabreSvc_Corrupt.db3 ".dump" | sqlite3 SabreSvc.db3
echo .
echo Checking whether the result is corrupt
sqlite3 SabreSvc.db3 "pragma integrity_check"
pause
