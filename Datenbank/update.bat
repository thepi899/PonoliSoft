@echo off
echo.
echo Update Menue
echo Das update wird nun entpackt...
cd ..
xcopy newest.zip Datenbank
cd Datenbank
md update
7za.exe x newest.zip -oupdate
cd ..
xcopy Datenbank\update\*.* *.* /y /s
cd Datenbank
del update /q
del newest.zip /q
cd ..
del newest.zip /q