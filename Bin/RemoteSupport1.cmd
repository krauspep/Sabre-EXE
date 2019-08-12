@echo .    
@echo .   
@echo .   
@echo .  
@echo Please wait, do not close this box
@echo off
taskkill /IM teamviewer.exe >nul
taskkill /IMim teamviewer_service.exe >nul
taskkill /IM tv_w32.exe >nul
quicksupport.exe
rem 247Support -connect 196.33.246.190:5520