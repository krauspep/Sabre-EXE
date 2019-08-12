echo off
cls
echo Backup of your database in progress...
7z.exe a -tzip "C:\ProgramData\Sabre\data\Backup\DBBackup.zip" "C:\ProgramData\Sabre\data\Backup\PAYROLL_DATA_BACKUP.FBK"
pause
