echo off
cls
del "C:\Program Files\247Software\Sabre\data\backup\DBBackup.fbk
del "C:\Program Files\247Software\Sabre\data\backup\DBBackup.zip
cls
echo Backup of your database in progress...
gbak.exe -user sysdba -password masterkey "C:/Program Files/247Software/Sabre/data/payroll_data.fdb" "C:/Program Files/247Software/Sabre/data/backup/DBBackup.fbk"
7z.exe a -tzip "C:/Program Files/247Software/Sabre/data/backup/DBBackup.zip" "C:/Program Files/247Software/Sabre/data/backup/DBBackup.fbk"
del "C:\Program Files\247Software\Sabre\data\backup\DBBackup.fbk
pause