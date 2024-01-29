@echo off

taskkill /F /IM obs64.exe
cd "%appdata%\obs-studio" || exit
xcopy /E /I .\ "%userprofile%\Desktop\OBS_Backup\"

del /S /Q *.* & del /S /Q .\basic\*.*
rmdir /S /Q .\cache
start "" "C:\Program Files\obs-studio\bin\64bit\obs64.exe"
