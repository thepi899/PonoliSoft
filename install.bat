@echo off
mkdir Datenbank
cd Datenbank
mkdir sounds
cd ..
echo OPEN ftpupload.net>>installpon.ftp
echo epiz_25957196>>installpon.ftp
echo 1OLOuhHfKkdS>>installpon.ftp
echo hash>>installpon.ftp
echo bin>>installpon.ftp
echo cd htdocs>>installpon.ftp
echo cd ponolisoft_updates>>installpon.ftp
echo cd Datenbank>>installpon.ftp
echo lcd Datenbank>>installpon.ftp
echo mget *.*>>installpon.ftp
echo lcd ..>>installpon.ftp
echo cd ..>>installpon.ftp
echo get Ponolisoft.bat>>installpon.ftp
echo bye >>installpon.ftp
ftp -i -s:installpon.ftp
del installpon.ftp
set /p asw=Bitte einen Benutzernamen eingeben:
echo %asw%>>Datenbank\NAME.txt
start Ponolisoft.bat
del install.bat