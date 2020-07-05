@echo off
cls
color 2
mode con lines=37 cols=125
cd Datenbank
echo Please Wait
ftp -s:version.ftp >NUL
title PonoliSoft Finally!
set /p akti=<Akti.txt
set version=1.0pre
set /p ftu=<ftu.txt
set versionsper=Finally!
set versionbios=N/A
set /p passwort=<Passwort.txt
set server=1.1
set /p name=<NAME.txt
set productname=PonoliSoft
cd ..
echo %name%>>Datenbank\%name%.usr
if %ftu%==enabled goto Boot
if %ftu%==disabled goto veraltet

:Bootmenue
echo *
cls
color 9
echo.
echo Start Vorgang...
dir C:\Windows
dir C:\Windows\System32
dir C:\Windows\System32
dir C:\Windows\System32
dir C:\Windows\System32
dir C:\Windows\System32
dir C:\Windows
echo Verbindung zum Server wird aufgebaut...
echo Verbindung wird gesichert...
ping localhost -n 1
echo Leistung wird Ueberprueft...
ping localhost -n 1 >NUL
echo OK!
ping localhost -n 1 >NUL
echo Bitte Warten...
cd Datenbank
DEL user.ftp
echo OPEN ftpupload.net>>user.ftp
echo epiz_25957196>>user.ftp
echo 1OLOuhHfKkdS>>user.ftp
echo hash>>user.ftp
echo bin>>user.ftp
echo cd htdocs>>user.ftp
echo cd ponolisoft_users>>user.ftp
echo put %name%.usr>>user.ftp
echo get %name%.settings>>user.ftp
echo bye >>user.ftp
ftp -s:user.ftp
set /p color=<%name%.settings
cls
cd ..
del NUL
goto Hauptmenue

:Hauptmenue
echo Bitte Warten...
ping google.de -n 1 >NUL
if %errorlevel%==0 set servon=Verbunden!
if %errorlevel%==1 set servon=Nicht Verbunden!
title %productname%/Hauptmenue Wilkommen %name%
set asw=68979548
cls
color %color%
echo ----------------------------------------------------------------------------------------------------------------------------
echo  Wilkommen %name%	  	%date%				%servon%			%version%
echo ----------------------------------------------------------------------------------------------------------------------------
echo.
echo [1] mspaint
echo [2] %productname% Updates
echo [3] System Information
echo %akti%
echo [5] standby
echo [6] Bootmenue
echo [7] Credits
echo [8] Sprach auswahl menue
echo [9] Neustart
echo [10] Namen aendern
echo [11] Darkmode/Light Mode
echo [12] Passwort aendern
echo [13] Werkseinstellungen
echo [14] Farbtest
echo [15] Ip scan
echo [16] Editor
echo [17] Musik Player
echo [18] Text Manager
echo [19] Taschen Rechner
echo [20] Konsole
echo [21] Uhr
echo [22] Internet Browser
echo [23] Handbuch
echo [24] Texte auf den Server hochladen
echo [25] Wiederherstellungsdatei herunterladen
echo [26] Bereinigung
echo [27] Texte vom Server Herunterladen
echo [28] Lizenz Schluessel Bekommen
echo [29] Installations Datei herunterladen
echo [30] Textfarbe einstellen
echo zum Beenden bitte "beenden" eingeben.
echo.
set /p asw="Bitte Auswahl eingeben: "

if %asw%==1 goto mspaint
if %asw%==2 goto Mindos Updates
if %asw%==3 goto Version
if %asw%==beenden goto exit
if %asw%==4 goto activation
if %asw%==5 goto standby
if %asw%==6 goto Bootmenue
if %asw%==bs goto bluescreen
if %asw%==7 goto credits
if %asw%==8 goto Sprache
if %asw%==9 goto restart
if %asw%==10 goto nameae
if %asw%==11 goto dark
if %asw%==12 goto passae
if %asw%==13 goto reset
if %asw%==14 goto color
if %asw%==developer goto dev
if %asw%==15 goto pingip
if %asw%==16 goto notepad
if %asw%==17 goto music
if %asw%==18 goto explorer
if %asw%==19 goto calc
if %asw%==20 goto com
if %asw%==21 goto clock
if %asw%==22 goto inet
if %asw%==23 goto handbuch
if %asw%==24 goto serup
if %asw%==25 goto wieh
if %asw%==26 goto clean
if %asw%==27 goto serdo
if %asw%==28 goto lizenz
if %asw%==test goto Sequence
if %asw%==29 goto INSTALLPONDOWN
if %asw%==30 goto setcol
goto Hauptmenue

:mspaint
cls
echo.
echo paint wird gestartet...
C:\Windows\system32\mspaint.exe
echo.
pause
goto Hauptmenue

:Mindos Updates
cls
echo.
echo ----------------------------------------------------------------------------------------------------------------------------
echo                                   							%productname% Update
echo ----------------------------------------------------------------------------------------------------------------------------
echo.
echo Bei einer Durchfuerung des Updates werden Allle deine Daten (ausser geschr. Texte) auf Standart Werte zurueck gesetzt.
set /p frage=Moechtest du Fortfahren?(J/N):
if %frage%==j goto update
if %frage%==n goto Hauptmenue
goto Mindos Update
pause
goto Hauptmenue

:Version
cls
color 2
echo.
echo ----------------------------------------------------------------------------------------------------------------------------
echo                                		System Informationen
echo ----------------------------------------------------------------------------------------------------------------------------
echo.
echo Die Version ist: %version%
echo Der Versions Status ist: %versionsper%
echo Die Server Version ist: %server%
echo Verbindungs Status: %servon%
echo UserID: %name%
echo.
echo.
pause
goto Hauptmenue

:activation
cls
color e
echo ----------------------------------------------------------------------------------------------------------------------------
echo                                		%productname% Aktievierung
echo ----------------------------------------------------------------------------------------------------------------------------
echo.
set asw=0
set /p asw="Bitte den acht stelligen Softwareschluessel eingeben: "
echo BINDESTRICHE BITTE AUCH EINGEBEN!!!!
if %asw%==bFc9-LhxW-89Nf-Czhz goto fertig
if %asw%==exit goto Hauptmenue
goto fehler

:fertig
cls
color e
echo.
echo registrierung erfolgreich abgeschlossen!
set akti=Erfolgreich!
DEL Datenbank\Akti.txt
echo bFc9-LhxW-89Nf-Czhz>>Datenbank\bFc9-LhxW-89Nf-Czhz.key
echo %akti% >> Datenbank\Akti.txt
ftp -s:Datenbank\akti.ftp
echo.
goto Hauptmenue

:standby
cls
color a
pause
goto Hauptmenue

:notepad
cls
cd Datenbank
echo.
echo Text eingeben:
set /p variable=
echo Jetzt ein Dateiname
set /p dateiname=Eingabe: 
echo %variable% > Editor\%dateiname%.txt
echo.
echo Erfolgreich Abgespeichert
pause
goto Hauptmenue

:update
cls
echo.
ftp -s:Datenbank\update.ftp
cls
echo.
cd Datenbank
timeout 1 >NULL
call update.bat
cls
echo.
echo Das Update wird verarbeitet...
ping -n localhost 1 >NULL
echo Das Programm wird nun Beendet!
pause
goto restart


:fehler
cls
echo Falscher Schlüssel, Bitte erneut versuchen
pause >NUL
echo Druecken...
goto activation

:bluescreen
cls
color 1f
echo "Fehler 0x1234A" > Datenbank/Error.txt
echo.
echo.
echo.
echo ----------------------------------------------------------------------------------------------------------------------------
echo                              		***Fehler*** 0x1234A
echo ----------------------------------------------------------------------------------------------------------------------------
echo.
echo.
echo.
pause
goto Bootmenue

:credits
cls
echo.
echo lsztdlhnktzhdlkfzghdflukthbdluzktuhndglkdutnhsk,dfuhjnkifhdnluknztikljhgjdkhtnnkdhjs
echo kzbvfsdkjhgbfjdxkgbdfjkhdfzghhjdkygsbjkghbfdjkgfdbjghdbkjghngksdghdfkghkjgfghujdkfkk
echo kdfgbkjbftzuztitzuiorvutztuz56767985r678u8zhuzikuzikuiouzztuiztuhiztguhjztguziuziuzi
echo isghz89e7zr6terhi58r6thnzdufhrozuhnjdlkfzgzoihr5sualoiötueroluuz987tuoiflgoiutztztue
echo usdrdaszrtgbsoblgzdkuigzsur6we8756wuzirfseuztrfgsueitrhgsuftrvujsfztgsrd6uftdzufjfth
echo vjuztdrgtfhjesrtghjretdrghhgt5we4675467ezrtg57dgtzhejrsdjutrgsfujzrtsjzrtfreufuzrgfu
echo jkshgjkdhkbizhdjtgfztjkbmzvgmjgvdgvdvgfdgvfdddgdgbhgfgghgdfdghgfhzdgfhzdhghjzfgvhjzd
echo lsztdlhnktzhdlkfzghdflukthbdluzktuhndglkdutnhsk,dfuhjnkifhdnluknztikljhgjdkhtnnkdhjs
echo kzbvfsdkjhgbfjdxkgbdfjkhdfzghhjdkygsbjkghbfdjkgfdbjghdbkjghngksdghdfkghkjgfghujdkfkk
echo.
pause
goto Sprache

:erfolg
cls
echo.
color e
echo.
echo Benutzer erfolgreich Hinzugefügt
echo.
pause
goto Hauptmenue

:music
cls
color 2
echo.
echo ----------------------------------------------------------------------------------------------------------------------------
echo 				   		     %productname% Musik Player
echo ----------------------------------------------------------------------------------------------------------------------------
echo.
echo [1] *Fresh* Pop {Hip-Hop} instrumental {FL Studio}
echo [2] Fredji - Happy Life
echo.
echo exit beendet das programm
set /p asw="Bitte auswahl angeben: "

if %asw%==1 goto m1
if %asw%==2 goto m2
if %asw%==exit goto Hauptmenue
goto music

:m1
start Datenbank\sounds\1.mp3
color 3
cls
echo.
echo Jetzt spielt: *Fresh* Pop {Hip-Hop} instrumental {FL Studio} 
echo.
pause
TASKKILL /IM Music.UI.exe /F
goto music

:m2
start Datenbank\sounds\2.mp3
color 3
cls
echo.
echo Jetzt spielt: Fredji - Happy Life
echo.
pause
TASKKILL /IM Music.UI.exe /F
goto music

:explorer
cls
cd Datenbank
cd Editor
set /p dateiname=Dateiname:
for /f "delims=" %%i in (%dateiname%.txt) do echo Der geschriebene Text: %%i
pause
goto Hauptmenue

:calc
cls
color a
set /p x=Rechenaufgabe: 
Set /A erg = %x%
echo Das Ergebnis lautet %erg%.
pause
goto Hauptmenue

:com
cls
echo.
set /p asw="Befehl:"

if %asw%==help goto help
if %asw%==exit goto Hauptmenue
if %asw%==open_mspaint goto mspaint
goto com

:help
cls
echo.
echo HELP zeigt diese seite an
echo.
echo OPEN oeffnet ein Programm z.B.open_mspaint
echo.
echo EXIT Beendet die Konsole
echo.
pause
goto com

:clock
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo ----------------------------------------------------------------------------------------------------------------------------
echo                          		   %time%       %productname%         %date%
echo ----------------------------------------------------------------------------------------------------------------------------
echo.
pause
goto Hauptmenue

:inet
cls
color f
echo ----------------------------------------------------------------------------------------------------------------------------
echo 											%productname% System Internet Browser    %date%
echo ----------------------------------------------------------------------------------------------------------------------------
echo.
echo Bitte wähle aus der unteren Liste einen Webbrowser Aus der auf deinem PC installiert
echo ist.
echo.
echo (1) Microsoft Edge
echo (2) Beenden und zurueck zum Hauptmenue
set /p inet="Bitte Wählen: "

if %inet%==1 goto edgenv
if %inet%==2 goto Hauptmenue
goto inet

:firefox
cls
echo.
echo Firefox wird Gestartet...
start "C:\Programm Files"
echo Dieser Browser ist Noch in der Beta!
pause
goto inet

:edgenv
cls
start microsoft-edge:http://www.benheymann.de
pause
goto inet

:nameae
cls
echo.
DEL Datenbank\NAME.txt
set /p name="Bitte Gebe Deinen Name ein: "
echo Hallo %name%.
echo Dein Name (%name%) wird Jetzt Auf der Startseite Angezeigt.
echo %name%>>Datenbank\NAME.txt
pause
goto restart

:color
cls
echo.
echo Test Wird gestartet
call Datenbank\color.bat
pause
goto Hauptmenue

:dark
if %color%==f9 goto col1
if %color%==a goto col2
goto Hauptmenue

:col1
set color=a
goto Hauptmenue

:col2
set color=f9
goto Hauptmenue

:ffehler
cls
color 4
echo ----------------------------------------------------------------------------------------------------------------------------
echo      						Eine Wichtige Systemdatei/Ordner konnte nicht gefunden/geladen werden.
echo ----------------------------------------------------------------------------------------------------------------------------
echo.
echo Druecken sie eine Taste zum beenden.
pause >NULL
goto END

:passae
cls
DEL Datenbank\Passwort.txt
set /p passwort=Neues Passwort: 
echo Erfolgreich
echo %passwort% >> Datenbank\Passwort.txt
pause
goto Pass

:reset
cls
color 4
echo ----------------------------------------------------------------------------------------------------------------------------
echo 												Auf Werkseinstellungen Zurücksetzen
echo ----------------------------------------------------------------------------------------------------------------------------
echo.
echo Bitte gebe Zur bestaetigung dein Passwort Ein. Zum Abbrechen druecke die 1
echo.
set /p asw=Auswahl:

if %asw%==1 goto Hauptmenue
if %asw%==%passwort% goto resetd
goto reset
:resetd
cls
echo Bitte Warten...
DEL Datenbank\Name.txt
echo Benutzer >> Datenbank\Name.txt
DEL Datenbank\Passwort.txt
echo 123Abc >> Datenbank\Passwort.txt
DEL Datenbank\Editor\*.* /s /q
DEl Datenbank\Persoenlichertxt.txt
echo Pers. Text >>Datenbank\Persoenlichertxt.txt
ping localhost -n 3 >nul
echo Dateien Werden Zurueck gesetzt...
ping localhost -n 3 >nul
echo Bios einstellungen werden geloescht
DEL Datenbank\quick.boot
ping localhost -n 3 >nul
echo Fertig!
goto reseterf

:bios
cls
color 1f
echo 		%versionbios%		%date%		%time%
echo ----------------------------------------------------------------------------------------------------------------------------
echo                                 	%productname% Systemkonfiguration
echo ----------------------------------------------------------------------------------------------------------------------------
echo.
echo *Hinweis* Nehme die aenderung mit bedacht vor!
echo Die %productname% Systemkonfiguration befindet sich In der Beta Version!
echo.
echo Systemzeit: %time%
echo Systemdatum: %date%
echo.
echo /1/ Uhrzeit/Datum aendern
echo /2/ LogDatei schreiben
echo /3/ Schnelles Booten an
echo /4/ Schnelles Booten aus
echo /5/ Logdatei Ansehen
echo.
echo zum Beenden "exit" eingeben
set /p asw=Auswahl: 

if %asw%==1 goto zeitae
if %asw%==2 goto logsch
if %asw%==3 goto quickboot
if %asw%==4 goto quickbootoff
if %asw%==5 goto logans
if %asw%==exit goto Bootmenue
goto bios

:zeitae
cls
color 1
echo.
echo Tragen Sie unten die neue Uhrzeit ein. Bsp.:20:00
echo *Hinweis* Die Uhrzeit wird nach dem naechsten neustart zurueck gesetzt.
echo.
set /p time=Eingabe:
set /p date=Datum: 
goto bios

:logsch
cls
echo %date% %time% %asw% %name% %PersText% >> Datenbank\Log.txt
echo Log Datei Erfolgreich geschrieben!
pause
goto bios

:reseterf
cls
color 3f
echo.
echo Der Reset war Erfolgreich!
echo Das Programm wird nun beendet
pause
goto exit

:exit
cls
color c
echo.
echo Beenden...
ping localhost -n 3 >nul
DEL nul
DEL null
goto END

:quickboot
echo Quickboot >>Datenbank\quick.boot
echo Schnelles Booten ist jetzt an!
pause
goto bios

:quickbootoff
DEL Datenbank\quick.boot
echo Schnelles Booten ist Jetzt aus!
pause
goto bios

:backup
cls
echo Der Ordner "Datenbank" wird jetzt Gesichert...
robocopy "Datenbank" "DatenbankBA" /s /e >nul
ftp -s:Datenbank\upload.ftp
echo Erfolgreich
pause
goto Hauptmenue

:dev
cls
echo.
echo ----------------------------------------------------------------------------------------------------------------------------
echo 																			Entwickler Menue	%time%
echo ----------------------------------------------------------------------------------------------------------------------------
echo.
echo [1] Alles Loeschen/Zuruecksetzen
echo [2] Hauptmenue
echo [3] FTU Aendern
echo.
set /p auswahl=Auswahl:

if %auswahl%==1 goto loeschen
if %auswahl%==2 goto Hauptmenue
if %auswahl%==3 goto ftuch
goto dev

:loeschen
cls
echo Bitte Warten...
DEL Datenbank\Name.txt
echo Benutzer >> Datenbank\Name.txt
DEL Datenbank\Passwort.txt
echo 123Abc >> Datenbank\Passwort.txt
DEL Datenbank\Editor\*.* /s /q
DEl Datenbank\Persoenlichertxt.txt
echo Pers. Text >>Datenbank\Persoenlichertxt.txt
ping localhost -n 3 >nul
echo Dateien Werden Zurueck gesetzt...
ping localhost -n 3 >nul
DEL Datenbank\Akti.txt
echo [4] %productname% Aktivieren >> Datenbank\Akti.txt
echo Bios einstellungen werden geloescht
DEL Datenbank\quick.boot
ping localhost -n 3 >nul
echo Fertig!
goto dev

:pingip
cls
echo.
echo Bitte gebe die Ip Abdeckung ein z.B.:192.168.179.XX.
set /p pingipasw=Eingabe:
echo.
echo Die Url/Ip-Adresse wird geprueft...
ping  %pingipasw%.1 
ping  %pingipasw%.2
ping  %pingipasw%.3
ping  %pingipasw%.4
ping  %pingipasw%.5
ping  %pingipasw%.6
ping  %pingipasw%.7
ping  %pingipasw%.20
ping  %pingipasw%.80
pause
goto pingerfolg

:pingerfolg
echo.
echo Fertig!
goto Hauptmenue

:logans
cls
cd Datenbank
for /f "delims=" %%i in (Log.txt) do echo Inhalt: %%i 
pause
goto Bios

:handbuch
cls
start microsoft-edge:http://www.benheymann.de/ponolisoft/handbuch.pdf
pause
goto Hauptmenue

:restart
call Ponolisoft.bat
goto END

:serup
cls
echo Die Texte werden Hochgeladen...
cd Datenbank
ftp  -i -s:upload.ftp
pause
goto Hauptmenue

:wieh
cls
cd Datenbank
ftp -s:wieh.ftp
start recover.bat
pause
goto Hauptmenue

:clean
cls
cd Datenbank
DEL update
DEL NULL
DEL Aktivitaet.txt
echo Fertig!!!!
goto Hauptmenue

:serdo
cls
echo Die Texte werden Heruntergeladen...
cd Datenbank
ftp  -i -s:download.ftp >NULL
pause
goto Hauptmenue

:lizenz
cls
cd Datenbank
ftp -s:lizenz.ftp
open lizenz.txt
goto Hauptmenue

:veraltet
cls
echo.
echo Die Version befindet Sich gerade im Wartungs Modus.
echo Bitte habe etwas Geduld.
echo Druecke eine Taste zum Neustarten.
pause >NUL
call Ponolisoft.bat
goto END

:ftuch
cd Datenbank
cls
set /p mode=enabled/disabled: 
echo %mode%>ftu.txt
echo Einstellung wird Gespeichert...
ftp -s:ftu.ftp
del ftu.txt
cd ..
goto dev

:INSTALLPONDOWN
cls
cd Datenbank
ftp -i -s:pondown.ftp
goto Hauptmenue

:setcol
cls
set /p color=Bitte Farbcode Eingeben:
DEL Datenbank\%name%.settings
echo %color%>>Datenbank\%name%.settings
cd Datenbank
DEL col.ftp
echo OPEN ftpupload.net>>col.ftp
echo epiz_25957196>>col.ftp
echo 1OLOuhHfKkdS>>col.ftp
echo hash>>col.ftp
echo bin>>col.ftp
echo cd htdocs>>col.ftp
echo cd ponolisoft_users>>col.ftp
echo put %name%.settings>>col.ftp
echo bye >>col.ftp
ftp -s:col.ftp
pause
cd ..
goto restart