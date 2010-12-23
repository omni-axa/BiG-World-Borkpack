@ECHO OFF

:: detect Windows version :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
VER |find /i "Windows 95" > NUL
IF NOT ERRORLEVEL 1 GOTO OLD

VER |find /i "Windows 98" > NUL
IF NOT ERRORLEVEL 1 GOTO OLD

VER |find /i "Windows Millennium" > NUL
IF NOT ERRORLEVEL 1 GOTO OLD

VER | find "NT" > nul
IF %errorlevel% EQU 0 GOTO NEW

VER | find "XP" > nul
IF %errorlevel% EQU 0 GOTO NEW

VER | find "2000" > nul
IF %errorlevel% EQU 0 GOTO NEW

VER | find "Version 5.2" > nul
IF %errorlevel% EQU 0 GOTO NEW

VER | find "Version 6.0" > nul
IF %errorlevel% EQU 0 GOTO NEW

VER | find "Version 6.1" > nul
IF %errorlevel% EQU 0 GOTO NEW

GOTO NEW
:: ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:OLD
BGT\Install\STRINGS BG1PATH=READ BGT\Input.txt, 1
GOTO FINAL

:NEW
FOR /F "delims=" %%v IN (BGT\Input.txt) DO SET TEMPBG1PATH=%%v
SET BG1PATH=%TEMPBG1PATH:"=%

:FINAL
more BGT\Language\%LANGUAGE1%\EndSetup\000.txt
echo "%BG1PATH%"

:: Renaming BG1 baldur.ini ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
ren "%BG1PATH%\baldur.ini" baldur.bak
:: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

more BGT\Language\%LANGUAGE1%\EndSetup\001.txt

copy /Y "%BG1PATH%\characters\cleric.chr" characters\BGcleric.chr
copy /Y "%BG1PATH%\characters\fighter.chr" characters\BGfighte.chr
copy /Y "%BG1PATH%\characters\mage.chr" characters\BGmage.chr
copy /Y "%BG1PATH%\characters\multi.chr" characters\BGmulti.chr
copy /Y "%BG1PATH%\characters\thief.chr" characters\BGthief.chr

more BGT\Language\%LANGUAGE1%\EndSetup\002.txt

:: Language compatibility ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
IF %LANGUAGE1% == French GOTO NPCWAVFRENCH
IF %LANGUAGE1% == German GOTO NPCWAVGERMAN
IF %LANGUAGE1% == Castilian GOTO NPCWAVCASTILIAN

copy /Y "%BG1PATH%\sounds\Female1a.wav" sounds\BGFeml1a.wav
copy /Y "%BG1PATH%\sounds\Female1b.wav" sounds\BGFeml1b.wav
copy /Y "%BG1PATH%\sounds\Female1c.wav" sounds\BGFeml1c.wav
copy /Y "%BG1PATH%\sounds\Female1d.wav" sounds\BGFeml1d.wav
copy /Y "%BG1PATH%\sounds\Female1e.wav" sounds\BGFeml1e.wav
copy /Y "%BG1PATH%\sounds\Female1f.wav" sounds\BGFeml1f.wav
copy /Y "%BG1PATH%\sounds\Female1g.wav" sounds\BGFeml1g.wav
copy /Y "%BG1PATH%\sounds\Female1h.wav" sounds\BGFeml1h.wav
copy /Y "%BG1PATH%\sounds\Female1i.wav" sounds\BGFeml1i.wav
copy /Y "%BG1PATH%\sounds\Female1j.wav" sounds\BGFeml1j.wav
copy /Y "%BG1PATH%\sounds\Female1k.wav" sounds\BGFeml1k.wav
copy /Y "%BG1PATH%\sounds\Female1l.wav" sounds\BGFeml1l.wav
copy /Y "%BG1PATH%\sounds\Female1m.wav" sounds\BGFeml1m.wav
copy /Y "%BG1PATH%\sounds\Female2a.wav" sounds\BGFeml2a.wav
copy /Y "%BG1PATH%\sounds\Female2b.wav" sounds\BGFeml2b.wav
copy /Y "%BG1PATH%\sounds\Female2c.wav" sounds\BGFeml2c.wav
copy /Y "%BG1PATH%\sounds\Female2d.wav" sounds\BGFeml2d.wav
copy /Y "%BG1PATH%\sounds\Female2e.wav" sounds\BGFeml2e.wav
copy /Y "%BG1PATH%\sounds\Female2f.wav" sounds\BGFeml2f.wav
copy /Y "%BG1PATH%\sounds\Female2g.wav" sounds\BGFeml2g.wav
copy /Y "%BG1PATH%\sounds\Female2h.wav" sounds\BGFeml2h.wav
copy /Y "%BG1PATH%\sounds\Female2i.wav" sounds\BGFeml2i.wav
copy /Y "%BG1PATH%\sounds\Female2j.wav" sounds\BGFeml2j.wav
copy /Y "%BG1PATH%\sounds\Female2k.wav" sounds\BGFeml2k.wav
copy /Y "%BG1PATH%\sounds\Female2l.wav" sounds\BGFeml2l.wav
copy /Y "%BG1PATH%\sounds\Female2m.wav" sounds\BGFeml2m.wav
copy /Y "%BG1PATH%\sounds\female3a.wav" sounds\BGFeml3a.wav
copy /Y "%BG1PATH%\sounds\female3b.wav" sounds\BGFeml3b.wav
copy /Y "%BG1PATH%\sounds\female3c.wav" sounds\BGFeml3c.wav
copy /Y "%BG1PATH%\sounds\female3d.wav" sounds\BGFeml3d.wav
copy /Y "%BG1PATH%\sounds\female3e.wav" sounds\BGFeml3e.wav
copy /Y "%BG1PATH%\sounds\female3f.wav" sounds\BGFeml3f.wav
copy /Y "%BG1PATH%\sounds\female3g.wav" sounds\BGFeml3g.wav
copy /Y "%BG1PATH%\sounds\female3h.wav" sounds\BGFeml3h.wav
copy /Y "%BG1PATH%\sounds\female3i.wav" sounds\BGFeml3i.wav
copy /Y "%BG1PATH%\sounds\female3j.wav" sounds\BGFeml3j.wav
copy /Y "%BG1PATH%\sounds\female3k.wav" sounds\BGFeml3k.wav
copy /Y "%BG1PATH%\sounds\female3l.wav" sounds\BGFeml3l.wav
copy /Y "%BG1PATH%\sounds\female3m.wav" sounds\BGFeml3m.wav
copy /Y "%BG1PATH%\sounds\Male1a.wav" sounds\BGMale1a.wav
copy /Y "%BG1PATH%\sounds\Male1b.wav" sounds\BGMale1b.wav
copy /Y "%BG1PATH%\sounds\Male1c.wav" sounds\BGMale1c.wav
copy /Y "%BG1PATH%\sounds\Male1d.wav" sounds\BGMale1d.wav
copy /Y "%BG1PATH%\sounds\Male1e.wav" sounds\BGMale1e.wav
copy /Y "%BG1PATH%\sounds\Male1f.wav" sounds\BGMale1f.wav
copy /Y "%BG1PATH%\sounds\Male1g.wav" sounds\BGMale1g.wav
copy /Y "%BG1PATH%\sounds\Male1h.wav" sounds\BGMale1h.wav
copy /Y "%BG1PATH%\sounds\Male1i.wav" sounds\BGMale1i.wav
copy /Y "%BG1PATH%\sounds\Male1j.wav" sounds\BGMale1j.wav
copy /Y "%BG1PATH%\sounds\Male1k.wav" sounds\BGMale1k.wav
copy /Y "%BG1PATH%\sounds\Male1l.wav" sounds\BGMale1l.wav
copy /Y "%BG1PATH%\sounds\Male1m.wav" sounds\BGMale1m.wav
copy /Y "%BG1PATH%\sounds\Male2a.wav" sounds\BGMale2a.wav
copy /Y "%BG1PATH%\sounds\Male2b.wav" sounds\BGMale2b.wav
copy /Y "%BG1PATH%\sounds\Male2c.wav" sounds\BGMale2c.wav
copy /Y "%BG1PATH%\sounds\Male2d.wav" sounds\BGMale2d.wav
copy /Y "%BG1PATH%\sounds\Male2e.wav" sounds\BGMale2e.wav
copy /Y "%BG1PATH%\sounds\Male2f.wav" sounds\BGMale2f.wav
copy /Y "%BG1PATH%\sounds\Male2g.wav" sounds\BGMale2g.wav
copy /Y "%BG1PATH%\sounds\Male2h.wav" sounds\BGMale2h.wav
copy /Y "%BG1PATH%\sounds\Male2i.wav" sounds\BGMale2i.wav
copy /Y "%BG1PATH%\sounds\Male2j.wav" sounds\BGMale2j.wav
copy /Y "%BG1PATH%\sounds\Male2k.wav" sounds\BGMale2k.wav
copy /Y "%BG1PATH%\sounds\Male2l.wav" sounds\BGMale2l.wav
copy /Y "%BG1PATH%\sounds\Male2m.wav" sounds\BGMale2m.wav
copy /Y "%BG1PATH%\sounds\Male3a.wav" sounds\BGMale3a.wav
copy /Y "%BG1PATH%\sounds\Male3b.wav" sounds\BGMale3b.wav
copy /Y "%BG1PATH%\sounds\Male3c.wav" sounds\BGMale3c.wav
copy /Y "%BG1PATH%\sounds\Male3d.wav" sounds\BGMale3d.wav
copy /Y "%BG1PATH%\sounds\Male3e.wav" sounds\BGMale3e.wav
copy /Y "%BG1PATH%\sounds\Male3f.wav" sounds\BGMale3f.wav
copy /Y "%BG1PATH%\sounds\Male3g.wav" sounds\BGMale3g.wav
copy /Y "%BG1PATH%\sounds\Male3h.wav" sounds\BGMale3h.wav
copy /Y "%BG1PATH%\sounds\Male3i.wav" sounds\BGMale3i.wav
copy /Y "%BG1PATH%\sounds\Male3j.wav" sounds\BGMale3j.wav
copy /Y "%BG1PATH%\sounds\Male3k.wav" sounds\BGMale3k.wav
copy /Y "%BG1PATH%\sounds\Male3l.wav" sounds\BGMale3l.wav
copy /Y "%BG1PATH%\sounds\Male3m.wav" sounds\BGMale3m.wav

GOTO NPCWAVDONE

:NPCWAVFRENCH
copy /Y "%BG1PATH%\sounds\Femme1a.wav" sounds\BGFeml1a.wav
copy /Y "%BG1PATH%\sounds\Femme1b.wav" sounds\BGFeml1b.wav
copy /Y "%BG1PATH%\sounds\Femme1c.wav" sounds\BGFeml1c.wav
copy /Y "%BG1PATH%\sounds\Femme1d.wav" sounds\BGFeml1d.wav
copy /Y "%BG1PATH%\sounds\Femme1e.wav" sounds\BGFeml1e.wav
copy /Y "%BG1PATH%\sounds\Femme1f.wav" sounds\BGFeml1f.wav
copy /Y "%BG1PATH%\sounds\Femme1g.wav" sounds\BGFeml1g.wav
copy /Y "%BG1PATH%\sounds\Femme1h.wav" sounds\BGFeml1h.wav
copy /Y "%BG1PATH%\sounds\Femme1i.wav" sounds\BGFeml1i.wav
copy /Y "%BG1PATH%\sounds\Femme1j.wav" sounds\BGFeml1j.wav
copy /Y "%BG1PATH%\sounds\Femme1k.wav" sounds\BGFeml1k.wav
copy /Y "%BG1PATH%\sounds\Femme1l.wav" sounds\BGFeml1l.wav
copy /Y "%BG1PATH%\sounds\Femme1m.wav" sounds\BGFeml1m.wav
copy /Y "%BG1PATH%\sounds\Femme2a.wav" sounds\BGFeml2a.wav
copy /Y "%BG1PATH%\sounds\Femme2b.wav" sounds\BGFeml2b.wav
copy /Y "%BG1PATH%\sounds\Femme2c.wav" sounds\BGFeml2c.wav
copy /Y "%BG1PATH%\sounds\Femme2d.wav" sounds\BGFeml2d.wav
copy /Y "%BG1PATH%\sounds\Femme2e.wav" sounds\BGFeml2e.wav
copy /Y "%BG1PATH%\sounds\Femme2f.wav" sounds\BGFeml2f.wav
copy /Y "%BG1PATH%\sounds\Femme2g.wav" sounds\BGFeml2g.wav
copy /Y "%BG1PATH%\sounds\Femme2h.wav" sounds\BGFeml2h.wav
copy /Y "%BG1PATH%\sounds\Femme2i.wav" sounds\BGFeml2i.wav
copy /Y "%BG1PATH%\sounds\Femme2j.wav" sounds\BGFeml2j.wav
copy /Y "%BG1PATH%\sounds\Femme2k.wav" sounds\BGFeml2k.wav
copy /Y "%BG1PATH%\sounds\Femme2l.wav" sounds\BGFeml2l.wav
copy /Y "%BG1PATH%\sounds\Femme2m.wav" sounds\BGFeml2m.wav
copy /Y "%BG1PATH%\sounds\Femme3a.wav" sounds\BGFeml3a.wav
copy /Y "%BG1PATH%\sounds\Femme3b.wav" sounds\BGFeml3b.wav
copy /Y "%BG1PATH%\sounds\Femme3c.wav" sounds\BGFeml3c.wav
copy /Y "%BG1PATH%\sounds\Femme3d.wav" sounds\BGFeml3d.wav
copy /Y "%BG1PATH%\sounds\Femme3e.wav" sounds\BGFeml3e.wav
copy /Y "%BG1PATH%\sounds\Femme3f.wav" sounds\BGFeml3f.wav
copy /Y "%BG1PATH%\sounds\Femme3g.wav" sounds\BGFeml3g.wav
copy /Y "%BG1PATH%\sounds\Femme3h.wav" sounds\BGFeml3h.wav
copy /Y "%BG1PATH%\sounds\Femme3i.wav" sounds\BGFeml3i.wav
copy /Y "%BG1PATH%\sounds\Femme3j.wav" sounds\BGFeml3j.wav
copy /Y "%BG1PATH%\sounds\Femme3k.wav" sounds\BGFeml3k.wav
copy /Y "%BG1PATH%\sounds\Femme3l.wav" sounds\BGFeml3l.wav
copy /Y "%BG1PATH%\sounds\Femme3m.wav" sounds\BGFeml3m.wav
copy /Y "%BG1PATH%\sounds\Homme1a.wav" sounds\BGMale1a.wav
copy /Y "%BG1PATH%\sounds\Homme1b.wav" sounds\BGMale1b.wav
copy /Y "%BG1PATH%\sounds\Homme1c.wav" sounds\BGMale1c.wav
copy /Y "%BG1PATH%\sounds\Homme1d.wav" sounds\BGMale1d.wav
copy /Y "%BG1PATH%\sounds\Homme1e.wav" sounds\BGMale1e.wav
copy /Y "%BG1PATH%\sounds\Homme1f.wav" sounds\BGMale1f.wav
copy /Y "%BG1PATH%\sounds\Homme1g.wav" sounds\BGMale1g.wav
copy /Y "%BG1PATH%\sounds\Homme1h.wav" sounds\BGMale1h.wav
copy /Y "%BG1PATH%\sounds\Homme1i.wav" sounds\BGMale1i.wav
copy /Y "%BG1PATH%\sounds\Homme1j.wav" sounds\BGMale1j.wav
copy /Y "%BG1PATH%\sounds\Homme1k.wav" sounds\BGMale1k.wav
copy /Y "%BG1PATH%\sounds\Homme1l.wav" sounds\BGMale1l.wav
copy /Y "%BG1PATH%\sounds\Homme1m.wav" sounds\BGMale1m.wav
copy /Y "%BG1PATH%\sounds\Homme2a.wav" sounds\BGMale2a.wav
copy /Y "%BG1PATH%\sounds\Homme2b.wav" sounds\BGMale2b.wav
copy /Y "%BG1PATH%\sounds\Homme2c.wav" sounds\BGMale2c.wav
copy /Y "%BG1PATH%\sounds\Homme2d.wav" sounds\BGMale2d.wav
copy /Y "%BG1PATH%\sounds\Homme2e.wav" sounds\BGMale2e.wav
copy /Y "%BG1PATH%\sounds\Homme2f.wav" sounds\BGMale2f.wav
copy /Y "%BG1PATH%\sounds\Homme2g.wav" sounds\BGMale2g.wav
copy /Y "%BG1PATH%\sounds\Homme2h.wav" sounds\BGMale2h.wav
copy /Y "%BG1PATH%\sounds\Homme2i.wav" sounds\BGMale2i.wav
copy /Y "%BG1PATH%\sounds\Homme2j.wav" sounds\BGMale2j.wav
copy /Y "%BG1PATH%\sounds\Homme2k.wav" sounds\BGMale2k.wav
copy /Y "%BG1PATH%\sounds\Homme2l.wav" sounds\BGMale2l.wav
copy /Y "%BG1PATH%\sounds\Homme2m.wav" sounds\BGMale2m.wav
copy /Y "%BG1PATH%\sounds\Homme3a.wav" sounds\BGMale3a.wav
copy /Y "%BG1PATH%\sounds\Homme3b.wav" sounds\BGMale3b.wav
copy /Y "%BG1PATH%\sounds\Homme3c.wav" sounds\BGMale3c.wav
copy /Y "%BG1PATH%\sounds\Homme3d.wav" sounds\BGMale3d.wav
copy /Y "%BG1PATH%\sounds\Homme3e.wav" sounds\BGMale3e.wav
copy /Y "%BG1PATH%\sounds\Homme3f.wav" sounds\BGMale3f.wav
copy /Y "%BG1PATH%\sounds\Homme3g.wav" sounds\BGMale3g.wav
copy /Y "%BG1PATH%\sounds\Homme3h.wav" sounds\BGMale3h.wav
copy /Y "%BG1PATH%\sounds\Homme3i.wav" sounds\BGMale3i.wav
copy /Y "%BG1PATH%\sounds\Homme3j.wav" sounds\BGMale3j.wav
copy /Y "%BG1PATH%\sounds\Homme3k.wav" sounds\BGMale3k.wav
copy /Y "%BG1PATH%\sounds\Homme3l.wav" sounds\BGMale3l.wav
copy /Y "%BG1PATH%\sounds\Homme3m.wav" sounds\BGMale3m.wav

GOTO NPCWAVDONE

:NPCWAVGERMAN
copy /Y "%BG1PATH%\sounds\Frau1a.wav" sounds\BGFeml1a.wav
copy /Y "%BG1PATH%\sounds\Frau1b.wav" sounds\BGFeml1b.wav
copy /Y "%BG1PATH%\sounds\Frau1c.wav" sounds\BGFeml1c.wav
copy /Y "%BG1PATH%\sounds\Frau1d.wav" sounds\BGFeml1d.wav
copy /Y "%BG1PATH%\sounds\Frau1e.wav" sounds\BGFeml1e.wav
copy /Y "%BG1PATH%\sounds\Frau1f.wav" sounds\BGFeml1f.wav
copy /Y "%BG1PATH%\sounds\Frau1g.wav" sounds\BGFeml1g.wav
copy /Y "%BG1PATH%\sounds\Frau1h.wav" sounds\BGFeml1h.wav
copy /Y "%BG1PATH%\sounds\Frau1i.wav" sounds\BGFeml1i.wav
copy /Y "%BG1PATH%\sounds\Frau1j.wav" sounds\BGFeml1j.wav
copy /Y "%BG1PATH%\sounds\Frau1k.wav" sounds\BGFeml1k.wav
copy /Y "%BG1PATH%\sounds\Frau1l.wav" sounds\BGFeml1l.wav
copy /Y "%BG1PATH%\sounds\Frau1m.wav" sounds\BGFeml1m.wav
copy /Y "%BG1PATH%\sounds\Frau2a.wav" sounds\BGFeml2a.wav
copy /Y "%BG1PATH%\sounds\Frau2b.wav" sounds\BGFeml2b.wav
copy /Y "%BG1PATH%\sounds\Frau2c.wav" sounds\BGFeml2c.wav
copy /Y "%BG1PATH%\sounds\Frau2d.wav" sounds\BGFeml2d.wav
copy /Y "%BG1PATH%\sounds\Frau2e.wav" sounds\BGFeml2e.wav
copy /Y "%BG1PATH%\sounds\Frau2f.wav" sounds\BGFeml2f.wav
copy /Y "%BG1PATH%\sounds\Frau2g.wav" sounds\BGFeml2g.wav
copy /Y "%BG1PATH%\sounds\Frau2h.wav" sounds\BGFeml2h.wav
copy /Y "%BG1PATH%\sounds\Frau2i.wav" sounds\BGFeml2i.wav
copy /Y "%BG1PATH%\sounds\Frau2j.wav" sounds\BGFeml2j.wav
copy /Y "%BG1PATH%\sounds\Frau2k.wav" sounds\BGFeml2k.wav
copy /Y "%BG1PATH%\sounds\Frau2l.wav" sounds\BGFeml2l.wav
copy /Y "%BG1PATH%\sounds\Frau2m.wav" sounds\BGFeml2m.wav
copy /Y "%BG1PATH%\sounds\Frau3a.wav" sounds\BGFeml3a.wav
copy /Y "%BG1PATH%\sounds\Frau3b.wav" sounds\BGFeml3b.wav
copy /Y "%BG1PATH%\sounds\Frau3c.wav" sounds\BGFeml3c.wav
copy /Y "%BG1PATH%\sounds\Frau3d.wav" sounds\BGFeml3d.wav
copy /Y "%BG1PATH%\sounds\Frau3e.wav" sounds\BGFeml3e.wav
copy /Y "%BG1PATH%\sounds\Frau3f.wav" sounds\BGFeml3f.wav
copy /Y "%BG1PATH%\sounds\Frau3g.wav" sounds\BGFeml3g.wav
copy /Y "%BG1PATH%\sounds\Frau3h.wav" sounds\BGFeml3h.wav
copy /Y "%BG1PATH%\sounds\Frau3i.wav" sounds\BGFeml3i.wav
copy /Y "%BG1PATH%\sounds\Frau3j.wav" sounds\BGFeml3j.wav
copy /Y "%BG1PATH%\sounds\Frau3k.wav" sounds\BGFeml3k.wav
copy /Y "%BG1PATH%\sounds\Frau3l.wav" sounds\BGFeml3l.wav
copy /Y "%BG1PATH%\sounds\Frau3m.wav" sounds\BGFeml3m.wav
copy /Y "%BG1PATH%\sounds\Mann1a.wav" sounds\BGMale1a.wav
copy /Y "%BG1PATH%\sounds\Mann1b.wav" sounds\BGMale1b.wav
copy /Y "%BG1PATH%\sounds\Mann1c.wav" sounds\BGMale1c.wav
copy /Y "%BG1PATH%\sounds\Mann1d.wav" sounds\BGMale1d.wav
copy /Y "%BG1PATH%\sounds\Mann1e.wav" sounds\BGMale1e.wav
copy /Y "%BG1PATH%\sounds\Mann1f.wav" sounds\BGMale1f.wav
copy /Y "%BG1PATH%\sounds\Mann1g.wav" sounds\BGMale1g.wav
copy /Y "%BG1PATH%\sounds\Mann1h.wav" sounds\BGMale1h.wav
copy /Y "%BG1PATH%\sounds\Mann1i.wav" sounds\BGMale1i.wav
copy /Y "%BG1PATH%\sounds\Mann1j.wav" sounds\BGMale1j.wav
copy /Y "%BG1PATH%\sounds\Mann1k.wav" sounds\BGMale1k.wav
copy /Y "%BG1PATH%\sounds\Mann1l.wav" sounds\BGMale1l.wav
copy /Y "%BG1PATH%\sounds\Mann1m.wav" sounds\BGMale1m.wav
copy /Y "%BG1PATH%\sounds\Mann2a.wav" sounds\BGMale2a.wav
copy /Y "%BG1PATH%\sounds\Mann2b.wav" sounds\BGMale2b.wav
copy /Y "%BG1PATH%\sounds\Mann2c.wav" sounds\BGMale2c.wav
copy /Y "%BG1PATH%\sounds\Mann2d.wav" sounds\BGMale2d.wav
copy /Y "%BG1PATH%\sounds\Mann2e.wav" sounds\BGMale2e.wav
copy /Y "%BG1PATH%\sounds\Mann2f.wav" sounds\BGMale2f.wav
copy /Y "%BG1PATH%\sounds\Mann2g.wav" sounds\BGMale2g.wav
copy /Y "%BG1PATH%\sounds\Mann2h.wav" sounds\BGMale2h.wav
copy /Y "%BG1PATH%\sounds\Mann2i.wav" sounds\BGMale2i.wav
copy /Y "%BG1PATH%\sounds\Mann2j.wav" sounds\BGMale2j.wav
copy /Y "%BG1PATH%\sounds\Mann2k.wav" sounds\BGMale2k.wav
copy /Y "%BG1PATH%\sounds\Mann2l.wav" sounds\BGMale2l.wav
copy /Y "%BG1PATH%\sounds\Mann2m.wav" sounds\BGMale2m.wav
copy /Y "%BG1PATH%\sounds\Mann3a.wav" sounds\BGMale3a.wav
copy /Y "%BG1PATH%\sounds\Mann3b.wav" sounds\BGMale3b.wav
copy /Y "%BG1PATH%\sounds\Mann3c.wav" sounds\BGMale3c.wav
copy /Y "%BG1PATH%\sounds\Mann3d.wav" sounds\BGMale3d.wav
copy /Y "%BG1PATH%\sounds\Mann3e.wav" sounds\BGMale3e.wav
copy /Y "%BG1PATH%\sounds\Mann3f.wav" sounds\BGMale3f.wav
copy /Y "%BG1PATH%\sounds\Mann3g.wav" sounds\BGMale3g.wav
copy /Y "%BG1PATH%\sounds\Mann3h.wav" sounds\BGMale3h.wav
copy /Y "%BG1PATH%\sounds\Mann3i.wav" sounds\BGMale3i.wav
copy /Y "%BG1PATH%\sounds\Mann3j.wav" sounds\BGMale3j.wav
copy /Y "%BG1PATH%\sounds\Mann3k.wav" sounds\BGMale3k.wav
copy /Y "%BG1PATH%\sounds\Mann3l.wav" sounds\BGMale3l.wav
copy /Y "%BG1PATH%\sounds\Mann3m.wav" sounds\BGMale3m.wav

GOTO NPCWAVDONE

:NPCWAVCASTILIAN
copy /Y "%BG1PATH%\sounds\Hembra1a.wav" sounds\BGFeml1a.wav
copy /Y "%BG1PATH%\sounds\Hembra1b.wav" sounds\BGFeml1b.wav
copy /Y "%BG1PATH%\sounds\Hembra1c.wav" sounds\BGFeml1c.wav
copy /Y "%BG1PATH%\sounds\Hembra1d.wav" sounds\BGFeml1d.wav
copy /Y "%BG1PATH%\sounds\Hembra1e.wav" sounds\BGFeml1e.wav
copy /Y "%BG1PATH%\sounds\Hembra1f.wav" sounds\BGFeml1f.wav
copy /Y "%BG1PATH%\sounds\Hembra1g.wav" sounds\BGFeml1g.wav
copy /Y "%BG1PATH%\sounds\Hembra1h.wav" sounds\BGFeml1h.wav
copy /Y "%BG1PATH%\sounds\Hembra1i.wav" sounds\BGFeml1i.wav
copy /Y "%BG1PATH%\sounds\Hembra1j.wav" sounds\BGFeml1j.wav
copy /Y "%BG1PATH%\sounds\Hembra1k.wav" sounds\BGFeml1k.wav
copy /Y "%BG1PATH%\sounds\Hembra1l.wav" sounds\BGFeml1l.wav
copy /Y "%BG1PATH%\sounds\Hembra1m.wav" sounds\BGFeml1m.wav
copy /Y "%BG1PATH%\sounds\Hembra2a.wav" sounds\BGFeml2a.wav
copy /Y "%BG1PATH%\sounds\Hembra2b.wav" sounds\BGFeml2b.wav
copy /Y "%BG1PATH%\sounds\Hembra2c.wav" sounds\BGFeml2c.wav
copy /Y "%BG1PATH%\sounds\Hembra2d.wav" sounds\BGFeml2d.wav
copy /Y "%BG1PATH%\sounds\Hembra2e.wav" sounds\BGFeml2e.wav
copy /Y "%BG1PATH%\sounds\Hembra2f.wav" sounds\BGFeml2f.wav
copy /Y "%BG1PATH%\sounds\Hembra2g.wav" sounds\BGFeml2g.wav
copy /Y "%BG1PATH%\sounds\Hembra2h.wav" sounds\BGFeml2h.wav
copy /Y "%BG1PATH%\sounds\Hembra2i.wav" sounds\BGFeml2i.wav
copy /Y "%BG1PATH%\sounds\Hembra2j.wav" sounds\BGFeml2j.wav
copy /Y "%BG1PATH%\sounds\Hembra2k.wav" sounds\BGFeml2k.wav
copy /Y "%BG1PATH%\sounds\Hembra2l.wav" sounds\BGFeml2l.wav
copy /Y "%BG1PATH%\sounds\Hembra2m.wav" sounds\BGFeml2m.wav
copy /Y "%BG1PATH%\sounds\Hembra3a.wav" sounds\BGFeml3a.wav
copy /Y "%BG1PATH%\sounds\Hembra3b.wav" sounds\BGFeml3b.wav
copy /Y "%BG1PATH%\sounds\Hembra3c.wav" sounds\BGFeml3c.wav
copy /Y "%BG1PATH%\sounds\Hembra3d.wav" sounds\BGFeml3d.wav
copy /Y "%BG1PATH%\sounds\Hembra3e.wav" sounds\BGFeml3e.wav
copy /Y "%BG1PATH%\sounds\Hembra3f.wav" sounds\BGFeml3f.wav
copy /Y "%BG1PATH%\sounds\Hembra3g.wav" sounds\BGFeml3g.wav
copy /Y "%BG1PATH%\sounds\Hembra3h.wav" sounds\BGFeml3h.wav
copy /Y "%BG1PATH%\sounds\Hembra3i.wav" sounds\BGFeml3i.wav
copy /Y "%BG1PATH%\sounds\Hembra3j.wav" sounds\BGFeml3j.wav
copy /Y "%BG1PATH%\sounds\Hembra3k.wav" sounds\BGFeml3k.wav
copy /Y "%BG1PATH%\sounds\Hembra3l.wav" sounds\BGFeml3l.wav
copy /Y "%BG1PATH%\sounds\Hembra3m.wav" sounds\BGFeml3m.wav
copy /Y "%BG1PATH%\sounds\Varon1a.wav" sounds\BGMale1a.wav
copy /Y "%BG1PATH%\sounds\Varon1b.wav" sounds\BGMale1b.wav
copy /Y "%BG1PATH%\sounds\Varon1c.wav" sounds\BGMale1c.wav
copy /Y "%BG1PATH%\sounds\Varon1d.wav" sounds\BGMale1d.wav
copy /Y "%BG1PATH%\sounds\Varon1e.wav" sounds\BGMale1e.wav
copy /Y "%BG1PATH%\sounds\Varon1f.wav" sounds\BGMale1f.wav
copy /Y "%BG1PATH%\sounds\Varon1g.wav" sounds\BGMale1g.wav
copy /Y "%BG1PATH%\sounds\Varon1h.wav" sounds\BGMale1h.wav
copy /Y "%BG1PATH%\sounds\Varon1i.wav" sounds\BGMale1i.wav
copy /Y "%BG1PATH%\sounds\Varon1j.wav" sounds\BGMale1j.wav
copy /Y "%BG1PATH%\sounds\Varon1k.wav" sounds\BGMale1k.wav
copy /Y "%BG1PATH%\sounds\Varon1l.wav" sounds\BGMale1l.wav
copy /Y "%BG1PATH%\sounds\Varon1m.wav" sounds\BGMale1m.wav
copy /Y "%BG1PATH%\sounds\Varon2a.wav" sounds\BGMale2a.wav
copy /Y "%BG1PATH%\sounds\Varon2b.wav" sounds\BGMale2b.wav
copy /Y "%BG1PATH%\sounds\Varon2c.wav" sounds\BGMale2c.wav
copy /Y "%BG1PATH%\sounds\Varon2d.wav" sounds\BGMale2d.wav
copy /Y "%BG1PATH%\sounds\Varon2e.wav" sounds\BGMale2e.wav
copy /Y "%BG1PATH%\sounds\Varon2f.wav" sounds\BGMale2f.wav
copy /Y "%BG1PATH%\sounds\Varon2g.wav" sounds\BGMale2g.wav
copy /Y "%BG1PATH%\sounds\Varon2h.wav" sounds\BGMale2h.wav
copy /Y "%BG1PATH%\sounds\Varon2i.wav" sounds\BGMale2i.wav
copy /Y "%BG1PATH%\sounds\Varon2j.wav" sounds\BGMale2j.wav
copy /Y "%BG1PATH%\sounds\Varon2k.wav" sounds\BGMale2k.wav
copy /Y "%BG1PATH%\sounds\Varon2l.wav" sounds\BGMale2l.wav
copy /Y "%BG1PATH%\sounds\Varon2m.wav" sounds\BGMale2m.wav
copy /Y "%BG1PATH%\sounds\Varon3a.wav" sounds\BGMale3a.wav
copy /Y "%BG1PATH%\sounds\Varon3b.wav" sounds\BGMale3b.wav
copy /Y "%BG1PATH%\sounds\Varon3c.wav" sounds\BGMale3c.wav
copy /Y "%BG1PATH%\sounds\Varon3d.wav" sounds\BGMale3d.wav
copy /Y "%BG1PATH%\sounds\Varon3e.wav" sounds\BGMale3e.wav
copy /Y "%BG1PATH%\sounds\Varon3f.wav" sounds\BGMale3f.wav
copy /Y "%BG1PATH%\sounds\Varon3g.wav" sounds\BGMale3g.wav
copy /Y "%BG1PATH%\sounds\Varon3h.wav" sounds\BGMale3h.wav
copy /Y "%BG1PATH%\sounds\Varon3i.wav" sounds\BGMale3i.wav
copy /Y "%BG1PATH%\sounds\Varon3j.wav" sounds\BGMale3j.wav
copy /Y "%BG1PATH%\sounds\Varon3k.wav" sounds\BGMale3k.wav
copy /Y "%BG1PATH%\sounds\Varon3l.wav" sounds\BGMale3l.wav
copy /Y "%BG1PATH%\sounds\Varon3m.wav" sounds\BGMale3m.wav
:: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:NPCWAVDONE

more BGT\Language\%LANGUAGE1%\EndSetup\003.txt

md music\BGTheme
copy "%BG1PATH%\music\Theme\Themea.ACM" music\BGTheme\BGThemea.ACM

md music\Bc3
copy "%BG1PATH%\music\Bc1\Bc1*.ACM" music\Bc3\Bc3*.ACM

md music\Bc4
copy "%BG1PATH%\music\Bc2\Bc2*.ACM" music\Bc4\Bc4*.ACM

md music\Bd4
copy "%BG1PATH%\music\Bd1\Bd1*.ACM" music\Bd4\Bd4*.ACM

md music\Bd5
copy "%BG1PATH%\music\Bd2\Bd2*.ACM" music\Bd5\Bd5*.ACM

md music\Bf3
copy "%BG1PATH%\music\Bf1\Bf1*.ACM" music\Bf3\Bf3*.ACM

md music\Bf4
copy "%BG1PATH%\music\Bf2\Bf2*.ACM" music\Bf4\Bf4*.ACM

md music\Bl1
copy "%BG1PATH%\music\Bl1\Bl1*.ACM" music\Bl1\Bl1*.ACM

md music\Bl2
copy "%BG1PATH%\music\Bl2\Bl2*.ACM" music\Bl2\Bl2*.ACM

md music\Bp3
copy "%BG1PATH%\music\Bp1\Bp1*.ACM" music\Bp3\Bp3*.ACM

md music\Bp4
copy "%BG1PATH%\music\Bp2\Bp2*.ACM" music\Bp4\Bp4*.ACM

md music\Bw1
copy "%BG1PATH%\music\Bw1\Bw1*.ACM" music\Bw1\Bw1*.ACM

md music\CDay1
copy "%BG1PATH%\music\CDay1\CDay1a.ACM" music\CDay1\CDay1a.ACM

md music\CDay2
copy "%BG1PATH%\music\CDay2\CDay2a.ACM" music\CDay2\CDay2a.ACM

md music\CNite
copy "%BG1PATH%\music\CNite\CNitea.ACM" music\CNite\CNitea.ACM

md music\Chants
copy "%BG1PATH%\music\Chants\Chantsa.ACM" music\Chants\Chantsa.ACM

md music\Dream
copy "%BG1PATH%\music\Dream\Dreama.ACM" music\Dream\Dreama.ACM

md music\Dung1
copy "%BG1PATH%\music\Dung1\Dung1a.ACM" music\Dung1\Dung1a.ACM

md music\Dung2
copy "%BG1PATH%\music\Dung2\Dung2a.ACM" music\Dung2\Dung2a.ACM

md music\Dung3
copy "%BG1PATH%\music\Dung3\Dung3a.ACM" music\Dung3\Dung3a.ACM

md music\FDay
copy "%BG1PATH%\music\FDay\FDaya.ACM" music\FDay\FDaya.ACM

md music\FNite
copy "%BG1PATH%\music\FNite\FNitea.ACM" music\FNite\FNitea.ACM

md music\Fort
copy "%BG1PATH%\music\Fort\Forta.ACM" music\Fort\Forta.ACM

md music\PDay
copy "%BG1PATH%\music\PDay\PDaya.ACM" music\PDay\PDaya.ACM

md music\PNite
copy "%BG1PATH%\music\PNite\PNitea.ACM" music\PNite\PNitea.ACM

md music\TDay1
copy "%BG1PATH%\music\TDay1\TDay1a.ACM" music\TDay1\TDay1a.ACM

md music\TDay2
copy "%BG1PATH%\music\TDay2\TDay2a.ACM" music\TDay2\TDay2a.ACM

md music\TNite
copy "%BG1PATH%\music\TNite\TNitea.ACM" music\TNite\TNitea.ACM

md music\Temple
copy "%BG1PATH%\music\Temple\Templea.ACM" music\Temple\Templea.ACM

copy music\Harp_v2\harp_v21c.ACM music\Harp_v2\harp_v2c.acm

more BGT\Language\%LANGUAGE1%\EndSetup\004.txt

md BGTWAV

_weidu --game "%BG1PATH%" --out BGTWAV --biff-get-rest ABELA.*wav AJANT.*wav ALATS.*wav ALDET.*wav ALORA.*wav AMB_D08.*wav AMB_E03.*wav AMB_E04.*wav AMB_E05.*wav AMB_E06.*wav AMB_E07.*wav AMB_E08.*wav AMB_E09.*wav AMB_E10.*wav 
_weidu --game "%BG1PATH%" --out BGTWAV --biff-get-rest AMB_E14.*wav AMB_E15.*wav AMB_E16.*wav AMB_E17.*wav AMB_E18.*wav AMB_E19.*wav AMB_E20.*wav AMB_E21.*wav AMB_E22.*wav AMB_E23.*wav AMB_E24.*wav AMB_E25.*wav AMB_E26.*wav AMB_E28.*wav AMB_E29.*wav 
_weidu --game "%BG1PATH%" --out BGTWAV --biff-get-rest AMB_E31.*wav AMB_E32.*wav AMB_E33.*wav AMB_E34.*wav AMB_E40.*wav AMB_E43.*wav 
_weidu --game "%BG1PATH%" --out BGTWAV --biff-get-rest AMB_M.*wav AMB_N.*wav AMB_S.*wav AMNSO.*wav ANGEL.*wav ARDEN.*wav AVALH.*wav BANDT.*wav BASIL.*wav BASSL.*wav EDWIN.*wav BELAN.*wav BELTT.*wav BENTL.*wav
_weidu --game "%BG1PATH%" --out BGTWAV --biff-get-rest MINSC.*wav IMOEN.*wav BLACK.*wav BRAGE.*wav BRANW.*wav 
_weidu --game "%BG1PATH%" --out BGTWAV --biff-get-rest BRELK.*wav BRIEL.*wav BRUNN.*wav BRUNS.*wav BUTTON1.wav CADER.*wav CALDO.*wav CARRN10.wav CASSN.*wav CAST.*wav CATTC.*wav CENTL.*wav CHANT.wav
_weidu --game "%BG1PATH%" --out BGTWAV --biff-get-rest CHANT0.*wav CHANT2.wav CHAP.*wav CHOKE.wav CHROMOR.wav CLDEL.*wav CORAN.*wav 
_weidu --game "%BG1PATH%" --out BGTWAV --biff-get-rest CROWD.wav CULTI.*wav DALTO.*wav DELAI.*wav DELOR.*wav DELSV.*wav DRADE.*wav
_weidu --game "%BG1PATH%" --out BGTWAV --biff-get-rest DREAM.*WAV DRIZT.*wav DROTH.*wav DRYAA.*wav
_weidu --game "%BG1PATH%" --out BGTWAV --biff-get-rest DUNKN.*wav DURLY.*wav DYNAH.*wav ELDOT.*wav ELTAN.*wav EMERS.*wav ENTAR.*wav ERROR.*wav
_weidu --game "%BG1PATH%" --out BGTWAV --biff-get-rest EXPLOSIO.wav FALDN.*wav FESTH.*wav FLAMN.*wav GALKN.*wav GANDL.*wav GANTL.*wav GARRK.*wav
_weidu --game "%BG1PATH%" --out BGTWAV --biff-get-rest GATEW.*wav GBASI.*wav GELLN.*wav
_weidu --game "%BG1PATH%" --out BGTWAV --biff-get-rest GLANM.*wav GNARL.*wav GONDP.*wav GONDS.*wav GORE.wav GORIN.*wav GREYW.*wav GUIDE.*wav GULP.wav GWERE.*wav HAIRT.*wav HELSH.*wav HUNGN.*wav HUSAM.*wav IRLEN.*wav
_weidu --game "%BG1PATH%" --out BGTWAV --biff-get-rest INTRO01f.wav INTRO02f.wav INTRO03.wav INTROADD.wav
_weidu --game "%BG1PATH%" --out BGTWAV --biff-get-rest ITHMR.*wav JAHER.*wav JEBAD.*wav JHASS.*wav KAGAN.*wav KAISH.*wav KAROU.*wav KEEPR.*wav KELDT.*wav KESTR.*wav KHALD.*wav 
_weidu --game "%BG1PATH%" --out BGTWAV --biff-get-rest KIVAN.*wav KORAX.*wav KRUMM01.wav KRUMM02.wav KRYST.*wav LIIAJ.*wav
_weidu --game "%BG1PATH%" --out BGTWAV --biff-get-rest LOTHR.*wav MAGMISS.wav MALKL.*wav MAREK.*wav MARLL.*wav MENDA.*wav MESSN.*wav MISC.*wav MISS1A.wav MONKS.*wav MONTR.*wav MULAH.*wav NALIN.*wav NARLN.*wav NIKLS.*wav NIMBL.*wav
_weidu --game "%BG1PATH%" --out BGTWAV --biff-get-rest NOTRAV.wav NTHUG.*wav OUBLK.*wav PAPER.wav PERFO.*wav PNOBL.*wav POISN.*wav PRISM.*wav RAGEF.*wav RAIKN.*wav RAIN.*wav RAMAZ.*wav READR.*wav REDEG.*wav RESAR.*wav RIELT.*wav SAREV.*wav SAFAN.*wav 
_weidu --game "%BG1PATH%" --out BGTWAV --biff-get-rest SCARR.*wav SENIY.*wav SHAEL.*wav SHART.*wav SHOAL.*wav SILEN.*wav SILKE.*wav SKIEE.*wav SLYTH.*wav SOLIA.*wav SONNR.*wav SORCR.*wav SPARKLE.wav SURGN.*wav SWI_.*wav TAERM.*wav TAMOK.*wav
_weidu --game "%BG1PATH%" --out BGTWAV --biff-get-rest TASLO.*wav TAURG.*wav TAZOK.*wav TCSMA.*wav TELMN.*wav TENYA.*wav TEVEN.*wav TEXTPOP.wav THALD.*wav THALT.*wav THUNDER.*wav TIAXX.*wav TOGRE.*wav TOLAN.*wav TRACE.*wav TRANZ.*wav
_weidu --game "%BG1PATH%" --out BGTWAV --biff-get-rest TREMN.*wav TSCFB.*wav TSCFT.*wav TSCMB.*wav TSCMT.*wav TSCNA.*wav TUTHH.*wav TUTOR.*wav ULRAN.*wav UMBER.*wav VARCI.*wav VICON.*wav VIL.*wav VOIC.*wav
_weidu --game "%BG1PATH%" --out BGTWAV --biff-get-rest WARRI.*wav WILTN.*wav WIND.wav WKNIG.*wav YESLK.*wav XANNN.*wav XZARR.*wav 

_weidu --game "%BG1PATH%" --out BGTWAV --biff-get-rest IKEEE_04.WAV

del BGTWAV\BRANW03.wav
del BGTWAV\BRANW07.wav
del BGTWAV\BRANW17.wav
del BGTWAV\BRANW18.wav
del BGTWAV\BRANW19.wav
del BGTWAV\BRANW20.wav
del BGTWAV\BRANW21.wav
del BGTWAV\BRANW22.wav
del BGTWAV\BRANW38.wav
del BGTWAV\BRANW39.wav

del BGTWAV\CORAN01.wav
del BGTWAV\CORAN03.wav
del BGTWAV\CORAN17.wav
del BGTWAV\CORAN18.wav
del BGTWAV\CORAN19.wav
del BGTWAV\CORAN20.wav
del BGTWAV\CORAN21.wav
del BGTWAV\CORAN38.wav
del BGTWAV\CORAN39.wav

del BGTWAV\ERROR01.wav
del BGTWAV\ERROR10.wav

del BGTWAV\GARRK03.wav
del BGTWAV\GARRK17.wav
del BGTWAV\GARRK18.wav
del BGTWAV\GARRK19.wav
del BGTWAV\GARRK20.wav
del BGTWAV\GARRK21.wav
del BGTWAV\GARRK22.wav
del BGTWAV\GARRK38.wav
del BGTWAV\GARRK39.wav

del BGTWAV\KHALD19.wav

IF %LANGUAGE1% == German GOTO SKIPGERMAN
del BGTWAV\SAFAN01.wav
del BGTWAV\SAFAN02.wav
del BGTWAV\SAFAN04.wav
del BGTWAV\SAFAN17.wav
del BGTWAV\SAFAN18.wav
del BGTWAV\SAFAN19.wav
del BGTWAV\SAFAN20.wav
del BGTWAV\SAFAN21.wav
del BGTWAV\SAFAN22.wav
del BGTWAV\SAFAN38.wav
del BGTWAV\SAFAN39.wav
del BGTWAV\SAFAN41.wav
:SKIPGERMAN

del BGTWAV\XANNN03.wav
del BGTWAV\XANNN17.wav
del BGTWAV\XANNN18.wav
del BGTWAV\XANNN19.wav
del BGTWAV\XANNN20.wav
del BGTWAV\XANNN21.wav
del BGTWAV\XANNN22.wav
del BGTWAV\XANNN38.wav
del BGTWAV\XANNN39.wav

del BGTWAV\XZARR03.wav
del BGTWAV\XZARR11.wav
del BGTWAV\XZARR17.wav
del BGTWAV\XZARR18.wav
del BGTWAV\XZARR19.wav
del BGTWAV\XZARR20.wav
del BGTWAV\XZARR21.wav
del BGTWAV\XZARR22.wav
del BGTWAV\XZARR34.wav
del BGTWAV\XZARR38.wav
del BGTWAV\XZARR39.wav

del BGTWAV\ELTAN05.wav
del BGTWAV\KRYST08.wav
del BGTWAV\KRYST09.wav
del BGTWAV\TUTHH04.wav
del BGTWAV\VOICE*.wav

ren BGTWAV\EDWIN01.wav BEDWIN01.wav
ren BGTWAV\EDWIN02.wav BEDWIN02.wav
ren BGTWAV\EDWIN03.wav BEDWIN03.wav
ren BGTWAV\EDWIN04.wav BEDWIN04.wav
ren BGTWAV\EDWIN05.wav BEDWIN05.wav
ren BGTWAV\EDWIN06.wav BEDWIN06.wav
ren BGTWAV\EDWIN07.wav BEDWIN07.wav
ren BGTWAV\EDWIN08.wav BEDWIN08.wav
ren BGTWAV\EDWIN09.wav BEDWIN09.wav
ren BGTWAV\EDWIN10.wav BEDWIN10.wav
ren BGTWAV\EDWIN11.wav BEDWIN11.wav
ren BGTWAV\EDWIN17.wav BEDWIN17.wav
ren BGTWAV\EDWIN18.wav BEDWIN18.wav
ren BGTWAV\EDWIN19.wav BEDWIN19.wav
ren BGTWAV\EDWIN20.wav BEDWIN20.wav
ren BGTWAV\EDWIN21.wav BEDWIN21.wav
ren BGTWAV\EDWIN22.wav BEDWIN22.wav
ren BGTWAV\EDWIN23.wav BEDWIN23.wav
ren BGTWAV\EDWIN24.wav BEDWIN24.wav
ren BGTWAV\EDWIN25.wav BEDWIN25.wav
ren BGTWAV\EDWIN26.wav BEDWIN26.wav
ren BGTWAV\EDWIN27.wav BEDWIN27.wav
ren BGTWAV\EDWIN28.wav BEDWIN28.wav
ren BGTWAV\EDWIN29.wav BEDWIN29.wav
ren BGTWAV\EDWIN30.wav BEDWIN30.wav
ren BGTWAV\EDWIN31.wav BEDWIN31.wav
ren BGTWAV\EDWIN32.wav BEDWIN32.wav
ren BGTWAV\EDWIN33.wav BEDWIN33.wav
ren BGTWAV\EDWIN34.wav BEDWIN34.wav
ren BGTWAV\EDWIN35.wav BEDWIN35.wav
ren BGTWAV\EDWIN36.wav BEDWIN36.wav
ren BGTWAV\EDWIN37.wav BEDWIN37.wav
ren BGTWAV\EDWIN38.wav BEDWIN38.wav
ren BGTWAV\EDWIN39.wav BEDWIN39.wav
ren BGTWAV\EDWIN40.wav BEDWIN40.wav
ren BGTWAV\EDWIN41.wav BEDWIN41.wav
ren BGTWAV\EDWIN42.wav BEDWIN42.wav
ren BGTWAV\EDWIN43.wav BEDWIN43.wav
ren BGTWAV\EDWIN45.wav BEDWIN45.wav
ren BGTWAV\EDWIN46.wav BEDWIN46.wav
ren BGTWAV\EDWIN47.wav BEDWIN47.wav
ren BGTWAV\EDWIN48.wav BEDWIN48.wav

ren BGTWAV\MINSC01.wav BGMNSC01.wav
ren BGTWAV\MINSC02.wav BGMNSC02.wav
ren BGTWAV\MINSC03.wav BGMNSC03.wav
ren BGTWAV\MINSC04.wav BGMNSC04.wav
ren BGTWAV\MINSC05.wav BGMNSC05.wav
ren BGTWAV\MINSC06.wav BGMNSC06.wav
ren BGTWAV\MINSC07.wav BGMNSC07.wav
ren BGTWAV\MINSC08.wav BGMNSC08.wav
ren BGTWAV\MINSC09.wav BGMNSC09.wav
ren BGTWAV\MINSC10.wav BGMNSC10.wav
ren BGTWAV\MINSC11.wav BGMNSC11.wav
ren BGTWAV\MINSC12.wav BGMNSC12.wav
ren BGTWAV\MINSC14.wav BGMNSC14.wav
ren BGTWAV\MINSC16.wav BGMNSC16.wav
ren BGTWAV\MINSC17.wav BGMNSC17.wav
ren BGTWAV\MINSC18.wav BGMNSC18.wav
ren BGTWAV\MINSC19.wav BGMNSC19.wav
ren BGTWAV\MINSC20.wav BGMNSC20.wav
ren BGTWAV\MINSC21.wav BGMNSC21.wav
ren BGTWAV\MINSC22.wav BGMNSC22.wav
ren BGTWAV\MINSC23.wav BGMNSC23.wav
ren BGTWAV\MINSC24.wav BGMNSC24.wav
ren BGTWAV\MINSC25.wav BGMNSC25.wav
ren BGTWAV\MINSC26.wav BGMNSC26.wav
ren BGTWAV\MINSC27.wav BGMNSC27.wav
ren BGTWAV\MINSC28.wav BGMNSC28.wav
ren BGTWAV\MINSC29.wav BGMNSC29.wav
ren BGTWAV\MINSC30.wav BGMNSC30.wav
ren BGTWAV\MINSC31.wav BGMNSC31.wav
ren BGTWAV\MINSC32.wav BGMNSC32.wav
ren BGTWAV\MINSC33.wav BGMNSC33.wav
ren BGTWAV\MINSC34.wav BGMNSC34.wav
ren BGTWAV\MINSC35.wav BGMNSC35.wav
ren BGTWAV\MINSC36.wav BGMNSC36.wav
ren BGTWAV\MINSC37.wav BGMNSC37.wav
ren BGTWAV\MINSC38.wav BGMNSC38.wav
ren BGTWAV\MINSC39.wav BGMNSC39.wav
ren BGTWAV\MINSC40.wav BGMNSC40.wav
ren BGTWAV\MINSC41.wav BGMNSC41.wav

ren BGTWAV\IMOEN01.wav BIMOEN01.wav
ren BGTWAV\IMOEN02.wav BIMOEN02.wav
ren BGTWAV\IMOEN03.wav BIMOEN03.wav
ren BGTWAV\IMOEN04.wav BIMOEN04.wav
ren BGTWAV\IMOEN05.wav BIMOEN05.wav
ren BGTWAV\IMOEN06.wav BIMOEN06.wav
ren BGTWAV\IMOEN07.wav BIMOEN07.wav
ren BGTWAV\IMOEN08.wav BIMOEN08.wav
ren BGTWAV\IMOEN09.wav BIMOEN09.wav
ren BGTWAV\IMOEN10.wav BIMOEN10.wav
ren BGTWAV\IMOEN11.wav BIMOEN11.wav
ren BGTWAV\IMOEN12.wav BIMOEN12.wav
ren BGTWAV\IMOEN13.wav BIMOEN13.wav
ren BGTWAV\IMOEN14.wav BIMOEN14.wav
ren BGTWAV\IMOEN15.wav BIMOEN15.wav
ren BGTWAV\IMOEN16.wav BIMOEN16.wav
ren BGTWAV\IMOEN17.wav BIMOEN17.wav
ren BGTWAV\IMOEN18.wav BIMOEN18.wav
ren BGTWAV\IMOEN19.wav BIMOEN19.wav
ren BGTWAV\IMOEN20.wav BIMOEN20.wav
ren BGTWAV\IMOEN21.wav BIMOEN21.wav
ren BGTWAV\IMOEN22.wav BIMOEN22.wav
ren BGTWAV\IMOEN23.wav BIMOEN23.wav
ren BGTWAV\IMOEN24.wav BIMOEN24.wav
ren BGTWAV\IMOEN25.wav BIMOEN25.wav
ren BGTWAV\IMOEN26.wav BIMOEN26.wav
ren BGTWAV\IMOEN27.wav BIMOEN27.wav
ren BGTWAV\IMOEN28.wav BIMOEN28.wav
ren BGTWAV\IMOEN30.wav BIMOEN30.wav

ren BGTWAV\BLACK01.wav BLACKL01.wav
ren BGTWAV\BLACK02.wav BLACKL02.wav
ren BGTWAV\BLACK03.wav BLACKL03.wav
ren BGTWAV\BLACK04.wav BLACKL04.wav

ren BGTWAV\UMBER01.WAV PUMBER01.WAV
ren BGTWAV\UMBER02.WAV PUMBER02.WAV
ren BGTWAV\UMBER05.WAV PUMBER05.WAV
ren BGTWAV\UMBER06.WAV PUMBER06.WAV

:: Language compatibility ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
IF %LANGUAGE1% == French GOTO WAVFRENCH
IF %LANGUAGE1% == German GOTO WAVGERMAN
GOTO WAVALL

:WAVFRENCH
_weidu --game "%BG1PATH%" --out BGTWAV --biff-get-rest INTRO01.wav INTRO02.wav
copy /y BGT\Language\French\MONTR19.WAV BGTWAV\MONTR19.WAV
copy /y BGT\Language\French\TSCNA0*.WAV BGTWAV\TSCNA0*.WAV
GOTO WAVALL

:WAVGERMAN
_weidu --game "%BG1PATH%" --out BGTWAV --biff-get-rest GUARR.*wav CHANT.*wav OGHMA03.wav OGHMA04.wav
_weidu --game "%BG1PATH%" --out BGTWAV --biff-get-rest INTRO01.wav INTRO02.wav
_weidu --game "%BG1PATH%" --out BGTWAV --biff-get-rest GNOME.*wav GNOMF.*wav WENCH.*wav
copy /y "%BG1PATH%\override\TSCNA0*.WAV" BGTWAV\TSCNA0*.WAV
copy /y "%BG1PATH%\override\ERROR*.WAV" BGTWAV\ERROR*.WAV
copy /y BGT\Language\German\MONTR19.WAV BGTWAV\MONTR19.WAV
copy /y BGT\Language\German\TSCNA02.WAV BGTWAV\TSCNA02.WAV
GOTO WAVALL
:: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:WAVALL

_weidu --make-biff BGTWAV
call BGT\Install\deldir BGTWAV

more BGT\Language\%LANGUAGE1%\EndSetup\005.txt

md BG1MOVIE

_weidu --out BG1MOVIE --biff-get-rest INTRO15F.MVE

ren BG1MOVIE\INTRO15F.MVE SOAINTRO.MVE
copy /y BGT\title.tr BG1MOVIE\INTRO15F.MVE

_weidu --game "%BG1PATH%" --out BG1MOVIE --biff-get-rest BEREGOST.MVE BGENTER.MVE BGSUNRIS.MVE BGSUNSET.MVE BHAAL.MVE CAMP.MVE CNDLKEEP.MVE DUNGEON.MVE DURLAG.MVE ELDRCITY.MVE ENDCRDIT.MVE 
_weidu --game "%BG1PATH%" --out BG1MOVIE --biff-get-rest ENDMOVIE.MVE FRARMINN.MVE GNOLL.MVE INTRO.MVE IRONTHRN.MVE MINEFLOD.MVE NASHKELL.MVE PALACE.MVE SEWER.MVE WRECK.MVE WYVERN.MVE 

::ren BG1MOVIE\ENDCRDIT.MVE BGENCRDT.MVE
del BG1MOVIE\ENDCRDIT.MVE

ren BG1MOVIE\INTRO.MVE BGINTRO.MVE

_weidu --make-biff BG1MOVIE
call BGT\Install\deldir BG1MOVIE

more BGT\Language\%LANGUAGE1%\EndSetup\006.txt

md area0015
md area3100
md area3200
md area3300
md area3400
md area3500
md area3600
md area3700
md area3800
md area3900
md area4100
md area4200
md area4300
md area4400
md area4600
md area4700
md area4800
md area4900
md area5100
md area5300
md area5400
md area6500
md area6600
md area6700
md area670A
md area6800
md area6900
md area7000
md area7100
md area7200
md area720A
md area720B
md area7300
md area7400
md area7500
md area7600
md area7700
md area7800
md area7900
md area8000
md area8100
md area8200
md area8300
md area8400
md area8500
md area8600
md area8700
md area8800
md area8900
md area9000
md area9100
md area9200
md area9300
md area9400
md area9500
md area9600
md area9700
md area9800
md area9900
md areaA000
md areaA100
md areaD000
md areaU000
md areaW000
md areaW500

_weidu.exe --game "%BG1PATH%" --out area0015 --biff-get-rest AR2600.*bmp AR2600.mos AR2600.wed AR2600.tis

_weidu.exe --game "%BG1PATH%" --out area3100 --biff-get-rest AR42.*bmp AR42.*mos AR42.*wed AR42.*tis
_weidu.exe --game "%BG1PATH%" --out area3200 --biff-get-rest AR43.*bmp AR43.*mos AR43.*wed AR43.*tis
_weidu.exe --game "%BG1PATH%" --out area3300 --biff-get-rest AR44.*bmp AR44.*mos AR44.*wed AR44.*tis
_weidu.exe --game "%BG1PATH%" --out area3400 --biff-get-rest AR45.*bmp AR45.*mos AR45.*wed AR45.*tis
_weidu.exe --game "%BG1PATH%" --out area3500 --biff-get-rest AR46.*bmp AR46.*mos AR46.*wed AR46.*tis
_weidu.exe --game "%BG1PATH%" --out area3600 --biff-get-rest AR47.*bmp AR47.*mos AR47.*wed AR47.*tis
_weidu.exe --game "%BG1PATH%" --out area3700 --biff-get-rest AR48.*bmp AR48.*mos AR48.*wed AR48.*tis
_weidu.exe --game "%BG1PATH%" --out area3800 --biff-get-rest AR49.*bmp AR49.*mos AR49.*wed AR49.*tis
_weidu.exe --game "%BG1PATH%" --out area3900 --biff-get-rest AR50.*bmp AR50.*mos AR50.*wed AR50.*tis
_weidu.exe --game "%BG1PATH%" --out area4100 --biff-get-rest AR51.*bmp AR51.*mos AR51.*wed AR51.*tis
_weidu.exe --game "%BG1PATH%" --out area4200 --biff-get-rest AR52.*bmp AR52.*mos AR52.*wed AR52.*tis
_weidu.exe --game "%BG1PATH%" --out area4300 --biff-get-rest AR53.*bmp AR53.*mos AR53.*wed AR53.*tis
_weidu.exe --game "%BG1PATH%" --out area4400 --biff-get-rest AR54.*bmp AR54.*mos AR54.*wed AR54.*tis
_weidu.exe --game "%BG1PATH%" --out area4600 --biff-get-rest AR55.*bmp AR55.*mos AR55.*wed AR55.*tis
_weidu.exe --game "%BG1PATH%" --out area4700 --biff-get-rest AR56.*bmp AR56.*mos AR56.*wed AR56.*tis
_weidu.exe --game "%BG1PATH%" --out area4800 --biff-get-rest AR57.*bmp AR57.*mos AR57.*wed AR57.*tis
_weidu.exe --game "%BG1PATH%" --out area4900 --biff-get-rest AR58.*bmp AR58.*mos AR58.*wed AR58.*tis
_weidu.exe --game "%BG1PATH%" --out area5100 --biff-get-rest AR59.*bmp AR59.*mos AR59.*wed AR59.*tis
_weidu.exe --game "%BG1PATH%" --out area5300 --biff-get-rest AR60.*bmp AR60.*mos AR60.*wed AR60.*tis
_weidu.exe --game "%BG1PATH%" --out area5400 --biff-get-rest AR61.*bmp AR61.*mos AR61.*wed AR61.*tis
_weidu.exe --game "%BG1PATH%" --out area6500 --biff-get-rest AR26.*bmp AR26.*mos AR26.*wed AR26.*tis
_weidu.exe --game "%BG1PATH%" --out area6600 --biff-get-rest AR27.*bmp AR27.*mos AR27.*wed AR27.*tis

_weidu.exe --game "%BG1PATH%" --out area6700 --biff-get-rest AR330.*bmp AR330.*mos AR331.*bmp AR331.*mos AR332.*bmp AR332.*mos
_weidu.exe --game "%BG1PATH%" --out area6700 --biff-get-rest AR330.*wed AR331.*wed AR332.*wed
_weidu.exe --game "%BG1PATH%" --out area6700 --biff-get-rest AR330.*tis AR331.*tis AR332.*tis
_weidu.exe --game "%BG1PATH%" --out area670A --biff-get-rest AR333.*bmp AR333.*mos AR334.*bmp AR334.*mos AR335.*bmp AR335.*mos
_weidu.exe --game "%BG1PATH%" --out area670A --biff-get-rest AR333.*wed AR334.*wed AR335.*wed
_weidu.exe --game "%BG1PATH%" --out area670A --biff-get-rest AR333.*tis AR334.*tis AR335.*tis

_weidu.exe --game "%BG1PATH%" --out area6800 --biff-get-rest AR23.*bmp AR23.*mos AR23.*wed AR23.*tis
_weidu.exe --game "%BG1PATH%" --out area6900 --biff-get-rest AR28.*bmp AR28.*mos AR28.*wed AR28.*tis
_weidu.exe --game "%BG1PATH%" --out area7000 --biff-get-rest AR22.*bmp AR22.*mos AR22.*wed AR22.*tis
_weidu.exe --game "%BG1PATH%" --out area7100 --biff-get-rest AR32.*bmp AR32.*mos AR32.*wed AR32.*tis

_weidu.exe --game "%BG1PATH%" --out area7200 --biff-get-rest AR010.*bmp AR010.*mos AR011.*bmp AR011.*mos AR012.*bmp AR012.*mos AR0130.*bmp AR0130.mos
_weidu.exe --game "%BG1PATH%" --out area7200 --biff-get-rest AR010.*wed AR011.*wed AR012.*wed AR0130.wed
_weidu.exe --game "%BG1PATH%" --out area7200 --biff-get-rest AR010.*tis AR011.*tis AR012.*tis AR0130.*tis

_weidu.exe --game "%BG1PATH%" --out area720A --biff-get-rest AR0131.*bmp AR0131.mos AR0132.*bmp AR0132.mos AR0133.*bmp AR0133.mos AR0134.*bmp AR0134.mos AR0135.*bmp AR0135.mos AR0136.*bmp AR0136.mos AR0137.*bmp AR0137.mos AR0138.*bmp AR0138.mos AR0139.*bmp AR0139.mos AR014.*bmp AR014.*mos AR0150.*bmp AR0150.mos
_weidu.exe --game "%BG1PATH%" --out area720A --biff-get-rest AR0131.wed AR0132.wed AR0133.wed AR0134.wed AR0135.wed AR0136.wed AR0137.wed AR0138.wed AR0139.wed AR014.*wed AR0150.wed
_weidu.exe --game "%BG1PATH%" --out area720A --biff-get-rest AR0131.tis AR0132.tis AR0133.tis AR0134.tis AR0135.tis AR0136.tis AR0137.tis AR0138.tis AR0139.tis AR014.*tis AR0150.tis

_weidu.exe --game "%BG1PATH%" --out area720B --biff-get-rest AR0151.*bmp AR0151.mos AR0152.*bmp AR0152.mos AR0153.*bmp AR0153.mos AR0155.*bmp AR0155.mos AR0156.*bmp AR0156.mos AR016.*bmp AR016.*mos AR017.*bmp AR017.*mos
_weidu.exe --game "%BG1PATH%" --out area720B --biff-get-rest AR0151.wed AR0152.wed AR0153.wed AR0155.wed AR0156.wed AR016.*wed AR017.*wed
_weidu.exe --game "%BG1PATH%" --out area720B --biff-get-rest AR0151.tis AR0152.tis AR0153.tis AR0155.tis AR0156.tis AR016.*tis AR017.*tis

_weidu.exe --game "%BG1PATH%" --out area7300 --biff-get-rest AR02.*bmp AR02.*mos AR02.*wed AR02.*tis
_weidu.exe --game "%BG1PATH%" --out area7400 --biff-get-rest AR03.*bmp AR03.*mos AR03.*wed AR03.*tis
_weidu.exe --game "%BG1PATH%" --out area7500 --biff-get-rest AR04.*bmp AR04.*mos AR04.*wed AR04.*tis
_weidu.exe --game "%BG1PATH%" --out area7600 --biff-get-rest AR06.*bmp AR06.*mos AR06.*wed AR06.*tis
_weidu.exe --game "%BG1PATH%" --out area7700 --biff-get-rest AR07.*bmp AR07.*mos AR07.*wed AR07.*tis
_weidu.exe --game "%BG1PATH%" --out area7800 --biff-get-rest AR08.*bmp AR08.*mos AR08.*wed AR08.*tis
_weidu.exe --game "%BG1PATH%" --out area7900 --biff-get-rest AR09.*bmp AR09.*mos AR09.*wed AR09.*tis
_weidu.exe --game "%BG1PATH%" --out area8000 --biff-get-rest AR11.*bmp AR11.*mos AR11.*wed AR11.*tis
_weidu.exe --game "%BG1PATH%" --out area8100 --biff-get-rest AR12.*bmp AR12.*mos AR12.*wed AR12.*tis
_weidu.exe --game "%BG1PATH%" --out area8200 --biff-get-rest AR13.*bmp AR13.*mos AR13.*wed AR13.*tis
_weidu.exe --game "%BG1PATH%" --out area8300 --biff-get-rest AR14.*bmp AR14.*mos AR14.*wed AR14.*tis
_weidu.exe --game "%BG1PATH%" --out area8400 --biff-get-rest AR16.*bmp AR16.*mos AR16.*wed AR16.*tis
_weidu.exe --game "%BG1PATH%" --out area8500 --biff-get-rest AR17.*bmp AR17.*mos AR17.*wed AR17.*tis
_weidu.exe --game "%BG1PATH%" --out area8600 --biff-get-rest AR18.*bmp AR18.*mos AR18.*wed AR18.*tis
_weidu.exe --game "%BG1PATH%" --out area8700 --biff-get-rest AR19.*bmp AR19.*mos AR19.*wed AR19.*tis
_weidu.exe --game "%BG1PATH%" --out area8800 --biff-get-rest AR21.*bmp AR21.*mos AR21.*wed AR21.*tis
_weidu.exe --game "%BG1PATH%" --out area8900 --biff-get-rest AR24.*bmp AR24.*mos AR24.*wed AR24.*tis
_weidu.exe --game "%BG1PATH%" --out area9000 --biff-get-rest AR29.*bmp AR29.*mos AR29.*wed AR29.*tis
_weidu.exe --game "%BG1PATH%" --out area9100 --biff-get-rest AR30.*bmp AR30.*mos AR30.*wed AR30.*tis
_weidu.exe --game "%BG1PATH%" --out area9200 --biff-get-rest AR31.*bmp AR31.*mos AR31.*wed AR31.*tis
_weidu.exe --game "%BG1PATH%" --out area9300 --biff-get-rest AR34.*bmp AR34.*mos AR34.*wed AR34.*tis
_weidu.exe --game "%BG1PATH%" --out area9400 --biff-get-rest AR35.*bmp AR35.*mos AR35.*wed AR35.*tis
_weidu.exe --game "%BG1PATH%" --out area9500 --biff-get-rest AR36.*bmp AR36.*mos AR36.*wed AR36.*tis
_weidu.exe --game "%BG1PATH%" --out area9600 --biff-get-rest AR37.*bmp AR37.*mos AR37.*wed AR37.*tis
_weidu.exe --game "%BG1PATH%" --out area9700 --biff-get-rest AR38.*bmp AR38.*mos AR38.*wed AR38.*tis
_weidu.exe --game "%BG1PATH%" --out area9800 --biff-get-rest AR39.*bmp AR39.*mos AR39.*wed AR39.*tis
_weidu.exe --game "%BG1PATH%" --out area9900 --biff-get-rest AR40.*bmp AR40.*mos AR40.*wed AR40.*tis
_weidu.exe --game "%BG1PATH%" --out areaA000 --biff-get-rest AR00.*bmp AR00.*mos AR00.*wed AR00.*tis
_weidu.exe --game "%BG1PATH%" --out areaA100 --biff-get-rest AR41.*bmp AR41.*mos AR41.*wed AR41.*tis

_weidu.exe --game "%BG1PATH%" --out areaD000 --biff-get-rest AR05.*bmp AR05.*mos AR05.*wed AR05.*tis
_weidu.exe --game "%BG1PATH%" --out areaU000 --biff-get-rest AR100.*bmp AR100.*mos AR100.*wed AR100.*tis
_weidu.exe --game "%BG1PATH%" --out areaW000 --biff-get-rest AR20.*bmp AR20.*mos AR20.*wed AR20.*tis
_weidu.exe --game "%BG1PATH%" --out areaW500 --biff-get-rest AR15.*bmp AR15.*mos AR15.*wed AR15.*tis

::for those versions with a fixed search region of AR0900 in the override directory
copy /y "%BG1PATH%\override\AR0900SR.BMP" area7900

xcopy area3400\AR4501*.* area8500\AR1701*.* /y /q
xcopy area4200\AR5201*.* area3400\AR4501*.* /y /q

del area4200\AR5201*.*

xcopy area4600\AR5506*.* area6500\AR2660*.* /y /q

del area4600\AR5506*.*
del area6500\AR2600*.*
del area6500\AR2631.mos

more BGT\Language\%LANGUAGE1%\EndSetup\007.txt

copy /Y BGT\Install\tisunpack.exe
copy /Y BGT\Install\tis2bg2.exe

tis2bg2.exe area0015\ar2600 area0015\ar0015 -d -sw

tis2bg2.exe area3100\ar4200 area3100\ar3100 -d -sw
tis2bg2.exe area3100\ar4201 area3100\ar3101 -d -sw

tis2bg2.exe area3200\ar4300 area3200\ar3200 -d -sw

tis2bg2.exe area3300\ar4400 area3300\ar3300 -d -sw
tis2bg2.exe area3300\ar4401 area3300\ar3301 -d -sw

tis2bg2.exe area3400\ar4500 area3400\ar3400 -d -sw
tis2bg2.exe area3400\ar4501 area3400\ar3401 -d -sw

tis2bg2.exe area3500\ar4600 area3500\ar3499 -d -sw

tis2bg2.exe area3600\ar4700 area3600\ar3498 -d -sw
tis2bg2.exe area3600\ar4701 area3600\ar3497 -d -sw

tis2bg2.exe area3700\ar4800 area3700\ar3700 -d -sw
tis2bg2.exe area3700\ar4801 area3700\ar3701 -d -sw
tis2bg2.exe area3700\ar4802 area3700\ar3702 -d -sw
tis2bg2.exe area3700\ar4803 area3700\ar3703 -d -sw
tis2bg2.exe area3700\ar4804 area3700\ar3704 -d -sw
tis2bg2.exe area3700\ar4805 area3700\ar3705 -d -sw
tis2bg2.exe area3700\ar4806 area3700\ar3706 -d -sw
tis2bg2.exe area3700\ar4807 area3700\ar3707 -d -sw
tis2bg2.exe area3700\ar4808 area3700\ar3708 -d -sw
tis2bg2.exe area3700\ar4809 area3700\ar3709 -d -sw
::Replacement of ar3709 with that in package
xcopy /q /y BGT\Tilesets\ar3709.tis area3700
tis2bg2.exe area3700\ar4810 area3700\ar3710 -d -sw

tis2bg2.exe area3800\ar4900 area3800\ar3800 -d -sw
tis2bg2.exe area3800\ar4901 area3800\ar3801 -d -sw
tis2bg2.exe area3800\ar4902 area3800\ar3802 -d -sw
tis2bg2.exe area3800\ar4903 area3800\ar3803 -d -sw
tis2bg2.exe area3800\ar4905 area3800\ar3805 -d -sw
tis2bg2.exe area3800\ar4906 area3800\ar3806 -d -sw

tis2bg2.exe area3900\ar5000 area3900\ar3900 -d -sw
tis2bg2.exe area3900\ar5001 area3900\ar3901 -d -sw

tis2bg2.exe area4100\ar5100 area4100\ar4100 -d -sw
tis2bg2.exe area4100\ar5101 area4100\ar4101 -d -sw
tis2bg2.exe area4100\ar5102 area4100\ar4102 -d -sw
tis2bg2.exe area4100\ar5103 area4100\ar4103 -d -sw

tis2bg2.exe area4200\ar5200 area4200\ar4200 -d -sw
tis2bg2.exe area4200\ar5202 area4200\ar4199 -d -sw

tis2bg2.exe area4300\ar5300 area4300\ar4300 -d -sw

tis2bg2.exe area4400\ar5400 area4400\ar4400 -d -sw
tis2bg2.exe area4400\ar5401 area4400\ar4401 -d -sw
tis2bg2.exe area4400\ar5402 area4400\ar4402 -d -sw
tis2bg2.exe area4400\ar5403 area4400\ar4403 -d -sw
tis2bg2.exe area4400\ar5404 area4400\ar4404 -d -sw
tis2bg2.exe area4400\ar5405 area4400\ar4405 -d -sw
tis2bg2.exe area4400\ar5406 area4400\ar4406 -d -sw
copy /y "%BG1PATH%\override\ar5406.mos" area4400\ar4406.mos

tis2bg2.exe area4600\ar5500 area4600\ar4600 -d -sw

tis2bg2.exe area4700\ar5600 area4700\ar4700 -d -sw

tis2bg2.exe area4800\ar5700 area4800\ar4800 -d -sw

tis2bg2.exe area4900\ar5800 area4900\ar4900 -d -sw

tis2bg2.exe area5100\ar5900 area5100\ar5100 -d -sw

tis2bg2.exe area5300\ar6000 area5300\ar5300 -d -sw

tis2bg2.exe area5400\ar6100 area5400\ar5400 -d -sw

tis2bg2.exe area6500\ar2602 area6500\ar6502 -d -sw
tis2bg2.exe area6500\ar2605 area6500\ar6505 -d -sw
tis2bg2.exe area6500\ar2606 area6500\ar6506 -d -sw
tis2bg2.exe area6500\ar2607 area6500\ar6507 -d -sw
tis2bg2.exe area6500\ar2608 area6500\ar6508 -d -sw
tis2bg2.exe area6500\ar2609 area6500\ar6509 -d -sw
tis2bg2.exe area6500\ar2610 area6500\ar6510 -d -sw
tis2bg2.exe area6500\ar2611 area6500\ar6511 -d -sw
tis2bg2.exe area6500\ar2612 area6500\ar6512 -d -sw
tis2bg2.exe area6500\ar2613 area6500\ar6513 -d -sw
tis2bg2.exe area6500\ar2614 area6500\ar6514 -d -sw
tis2bg2.exe area6500\ar2615 area6500\ar6515 -d -sw
tis2bg2.exe area6500\ar2616 area6500\ar6516 -d -sw
tis2bg2.exe area6500\ar2617 area6500\ar6517 -d -sw
tis2bg2.exe area6500\ar2618 area6500\ar6518 -d -sw
tis2bg2.exe area6500\ar2619 area6500\ar6519 -d -sw
tis2bg2.exe area6500\ar2631 area6500\ar6531 -d -sw
tis2bg2.exe area6500\ar2643 area6500\ar6543 -d -sw
tis2bg2.exe area6500\ar2660 area6500\ar6560 -d -sw

tis2bg2.exe area6600\ar2700 area6600\ar6600 -d -sw

tis2bg2.exe area6700\ar3300 area6700\ar6700 -d -sw
tis2bg2.exe area6700\ar3301 area6700\ar6701 -d -sw
tis2bg2.exe area6700\ar3302 area6700\ar6702 -d -sw
tis2bg2.exe area6700\ar3303 area6700\ar6703 -d -sw
tis2bg2.exe area6700\ar3304 area6700\ar6704 -d -sw
tis2bg2.exe area6700\ar3305 area6700\ar6705 -d -sw
tis2bg2.exe area6700\ar3306 area6700\ar6706 -d -sw
tis2bg2.exe area6700\ar3307 area6700\ar6707 -d -sw
tis2bg2.exe area6700\ar3308 area6700\ar6708 -d -sw
tis2bg2.exe area6700\ar3309 area6700\ar6709 -d -sw
tis2bg2.exe area6700\ar3310 area6700\ar6710 -d -sw
tis2bg2.exe area6700\ar3313 area6700\ar6713 -d -sw
tis2bg2.exe area6700\ar3314 area6700\ar6714 -d -sw
tis2bg2.exe area6700\ar3316 area6700\ar6716 -d -sw
tis2bg2.exe area6700\ar3317 area6700\ar6717 -d -sw
tis2bg2.exe area6700\ar3320 area6700\ar6720 -d -sw
tis2bg2.exe area6700\ar3321 area6700\ar6721 -d -sw
tis2bg2.exe area6700\ar3327 area6700\ar6727 -d -sw
tis2bg2.exe area6700\ar3328 area6700\ar6728 -d -sw

tis2bg2.exe area670A\ar3339 area670A\ar6739 -d -sw
tis2bg2.exe area670A\ar3340 area670A\ar6740 -d -sw
tis2bg2.exe area670A\ar3351 area670A\ar6751 -d -sw
tis2bg2.exe area670A\ar3352 area670A\ar6752 -d -sw
tis2bg2.exe area670A\ar3353 area670A\ar6753 -d -sw
tis2bg2.exe area670A\ar3357 area670A\ar6757 -d -sw

tis2bg2.exe area6800\ar2300 area6800\ar6800 -d -sw
tis2bg2.exe area6800\ar2301 area6800\ar6801 -d -sw
tis2bg2.exe area6800\ar2302 area6800\ar6802 -d -sw
tis2bg2.exe area6800\ar2303 area6800\ar6803 -d -sw
tis2bg2.exe area6800\ar2304 area6800\ar6804 -d -sw
tis2bg2.exe area6800\ar2305 area6800\ar6805 -d -sw
tis2bg2.exe area6800\ar2306 area6800\ar6806 -d -sw

tis2bg2.exe area6900\ar2800 area6900\ar6900 -d -sw

tis2bg2.exe area7000\ar2200 area7000\ar7000 -d -sw
tis2bg2.exe area7000\ar2215 area7000\ar7015 -d -sw

tis2bg2.exe area7100\ar3200 area7100\ar7100 -d -sw
tis2bg2.exe area7100\ar3201 area7100\ar7101 -d -sw
tis2bg2.exe area7100\ar3202 area7100\ar7102 -d -sw

tis2bg2.exe area7200\ar0100 area7200\ar7200 -d -sw
tis2bg2.exe area7200\ar0100N area7200\ar7200N -d -sw
tis2bg2.exe area7200\ar0101 area7200\ar7201 -d -sw
tis2bg2.exe area7200\ar0102 area7200\ar7202 -d -sw
tis2bg2.exe area7200\ar0103 area7200\ar7203 -d -sw
tis2bg2.exe area7200\ar0104 area7200\ar7204 -d -sw
tis2bg2.exe area7200\ar0105 area7200\ar7205 -d -sw
tis2bg2.exe area7200\ar0106 area7200\ar7206 -d -sw
tis2bg2.exe area7200\ar0107 area7200\ar7207 -d -sw
tis2bg2.exe area7200\ar0108 area7200\ar7208 -d -sw
tis2bg2.exe area7200\ar0109 area7200\ar7209 -d -sw
tis2bg2.exe area7200\ar0110 area7200\ar7210 -d -sw
tis2bg2.exe area7200\ar0111 area7200\ar7211 -d -sw
tis2bg2.exe area7200\ar0112 area7200\ar7212 -d -sw
tis2bg2.exe area7200\ar0114 area7200\ar7214 -d -sw
tis2bg2.exe area7200\ar0115 area7200\ar7215 -d -sw
tis2bg2.exe area7200\ar0116 area7200\ar7216 -d -sw
tis2bg2.exe area7200\ar0117 area7200\ar7217 -d -sw
tis2bg2.exe area7200\ar0118 area7200\ar7218 -d -sw
tis2bg2.exe area7200\ar0119 area7200\ar7219 -d -sw
tis2bg2.exe area7200\ar0120 area7200\ar7220 -d -sw
tis2bg2.exe area7200\ar0121 area7200\ar7221 -d -sw
tis2bg2.exe area7200\ar0123 area7200\ar7223 -d -sw
tis2bg2.exe area7200\ar0125 area7200\ar7225 -d -sw
tis2bg2.exe area7200\ar0126 area7200\ar7226 -d -sw
tis2bg2.exe area7200\ar0127 area7200\ar7227 -d -sw
tis2bg2.exe area7200\ar0128 area7200\ar7228 -d -sw
tis2bg2.exe area7200\ar0129 area7200\ar7229 -d -sw
tis2bg2.exe area7200\ar0130 area7200\ar7230 -d -sw

tis2bg2.exe area720A\ar0131 area720A\ar7231 -d -sw
tis2bg2.exe area720A\ar0132 area720A\ar7232 -d -sw
tis2bg2.exe area720A\ar0133 area720A\ar7233 -d -sw
tis2bg2.exe area720A\ar0134 area720A\ar7234 -d -sw
tis2bg2.exe area720A\ar0135 area720A\ar7235 -d -sw
tis2bg2.exe area720A\ar0136 area720A\ar7236 -d -sw
tis2bg2.exe area720A\ar0137 area720A\ar7237 -d -sw
tis2bg2.exe area720A\ar0138 area720A\ar7238 -d -sw
tis2bg2.exe area720A\ar0139 area720A\ar7239 -d -sw
tis2bg2.exe area720A\ar0140 area720A\ar7240 -d -sw
tis2bg2.exe area720A\ar0141 area720A\ar7241 -d -sw
tis2bg2.exe area720A\ar0142 area720A\ar7242 -d -sw
tis2bg2.exe area720A\ar0143 area720A\ar7243 -d -sw
tis2bg2.exe area720A\ar0144 area720A\ar7244 -d -sw
tis2bg2.exe area720A\ar0145 area720A\ar7245 -d -sw
tis2bg2.exe area720A\ar0146 area720A\ar7246 -d -sw
tis2bg2.exe area720A\ar0148 area720A\ar7248 -d -sw
tis2bg2.exe area720A\ar0149 area720A\ar7249 -d -sw
tis2bg2.exe area720A\ar0150 area720A\ar7250 -d -sw

tis2bg2.exe area720B\ar0151 area720B\ar7251 -d -sw
tis2bg2.exe area720B\ar0152 area720B\ar7252 -d -sw
tis2bg2.exe area720B\ar0153 area720B\ar7253 -d -sw
tis2bg2.exe area720B\ar0155 area720B\ar7255 -d -sw
tis2bg2.exe area720B\ar0156 area720B\ar7256 -d -sw
tis2bg2.exe area720B\ar0161 area720B\ar7261 -d -sw
tis2bg2.exe area720B\ar0162 area720B\ar7262 -d -sw
tis2bg2.exe area720B\ar0163 area720B\ar7263 -d -sw
tis2bg2.exe area720B\ar0164 area720B\ar7264 -d -sw
tis2bg2.exe area720B\ar0165 area720B\ar7265 -d -sw
tis2bg2.exe area720B\ar0166 area720B\ar7266 -d -sw
tis2bg2.exe area720B\ar0167 area720B\ar7267 -d -sw
tis2bg2.exe area720B\ar0168 area720B\ar7268 -d -sw
tis2bg2.exe area720B\ar0169 area720B\ar7269 -d -sw
tis2bg2.exe area720B\ar0170 area720B\ar7270 -d -sw

tis2bg2.exe area7300\ar0200 area7300\ar7300 -d -sw
tis2bg2.exe area7300\ar0200N area7300\ar7300N -d -sw
tis2bg2.exe area7300\ar0224 area7300\ar7324 -d -sw
tis2bg2.exe area7300\ar0225 area7300\ar7325 -d -sw
tis2bg2.exe area7300\ar0226 area7300\ar7326 -d -sw

tis2bg2.exe area7400\ar0300 area7400\ar7400 -d -sw
tis2bg2.exe area7400\ar0300N area7400\ar7400N -d -sw
tis2bg2.exe area7400\ar0304 area7400\ar7404 -d -sw

tis2bg2.exe area7500\ar0400 area7500\ar7500 -d -sw
tis2bg2.exe area7500\ar0401 area7500\ar7501 -d -sw

tis2bg2.exe area7600\ar0600 area7600\ar7600 -d -sw
tis2bg2.exe area7600\ar0600N area7600\ar7600N -d -sw
tis2bg2.exe area7600\ar0601 area7600\ar7601 -d -sw
tis2bg2.exe area7600\ar0602 area7600\ar7602 -d -sw
tis2bg2.exe area7600\ar0603 area7600\ar7603 -d -sw
tis2bg2.exe area7600\ar0606 area7600\ar7606 -d -sw
tis2bg2.exe area7600\ar0607 area7600\ar7607 -d -sw
tis2bg2.exe area7600\ar0608 area7600\ar7608 -d -sw
tis2bg2.exe area7600\ar0609 area7600\ar7609 -d -sw
tis2bg2.exe area7600\ar0611 area7600\ar7611 -d -sw
tis2bg2.exe area7600\ar0612 area7600\ar7612 -d -sw
tis2bg2.exe area7600\ar0613 area7600\ar7613 -d -sw
tis2bg2.exe area7600\ar0614 area7600\ar7614 -d -sw
tis2bg2.exe area7600\ar0615 area7600\ar7615 -d -sw
tis2bg2.exe area7600\ar0616 area7600\ar7616 -d -sw
tis2bg2.exe area7600\ar0621 area7600\ar7621 -d -sw

tis2bg2.exe area7700\ar0700 area7700\ar7700 -d -sw
tis2bg2.exe area7700\ar0700N area7700\ar7700N -d -sw
tis2bg2.exe area7700\ar0702 area7700\ar7702 -d -sw
tis2bg2.exe area7700\ar0703 area7700\ar7703 -d -sw
tis2bg2.exe area7700\ar0704 area7700\ar7704 -d -sw
tis2bg2.exe area7700\ar0705 area7700\ar7705 -d -sw
tis2bg2.exe area7700\ar0706 area7700\ar7706 -d -sw
tis2bg2.exe area7700\ar0719 area7700\ar7719 -d -sw
tis2bg2.exe area7700\ar0720 area7700\ar7720 -d -sw
tis2bg2.exe area7700\ar0724 area7700\ar7724 -d -sw
tis2bg2.exe area7700\ar0726 area7700\ar7726 -d -sw

tis2bg2.exe area7800\ar0800 area7800\ar7800 -d -sw
tis2bg2.exe area7800\ar0800N area7800\ar7800N -d -sw
tis2bg2.exe area7800\ar0807 area7800\ar7807 -d -sw
tis2bg2.exe area7800\ar0808 area7800\ar7808 -d -sw
tis2bg2.exe area7800\ar0809 area7800\ar7809 -d -sw

tis2bg2.exe area7900\ar0900 area7900\ar7900 -d -sw
tis2bg2.exe area7900\ar0901 area7900\ar7901 -d -sw

tis2bg2.exe area8000\ar1100 area8000\ar8000 -d -sw
tis2bg2.exe area8000\ar1100N area8000\ar8000N -d -sw
tis2bg2.exe area8000\ar1101 area8000\ar8001 -d -sw
tis2bg2.exe area8000\ar1102 area8000\ar8002 -d -sw

tis2bg2.exe area8100\ar1200 area8100\ar8100 -d -sw
tis2bg2.exe area8100\ar1200N area8100\ar8100N -d -sw
tis2bg2.exe area8100\ar1207 area8100\ar8107 -d -sw
tis2bg2.exe area8100\ar1208 area8100\ar8108 -d -sw
tis2bg2.exe area8100\ar1215 area8100\ar8115 -d -sw

tis2bg2.exe area8200\ar1300 area8200\ar8200 -d -sw
tis2bg2.exe area8200\ar1300N area8200\ar8200N -d -sw
tis2bg2.exe area8200\ar1302 area8200\ar8202 -d -sw

tis2bg2.exe area8300\ar1400 area8300\ar8300 -d -sw
tis2bg2.exe area8300\ar1401 area8300\ar8301 -d -sw
tis2bg2.exe area8300\ar1402 area8300\ar8302 -d -sw
tis2bg2.exe area8300\ar1403 area8300\ar8303 -d -sw
tis2bg2.exe area8300\ar1404 area8300\ar8304 -d -sw

tis2bg2.exe area8400\ar1600 area8400\ar8400 -d -sw
tis2bg2.exe area8400\ar1601 area8400\ar8401 -d -sw
tis2bg2.exe area8400\ar1602 area8400\ar8402 -d -sw
tis2bg2.exe area8400\ar1603 area8400\ar8403 -d -sw

tis2bg2.exe area8500\ar1700 area8500\ar8500 -d -sw
tis2bg2.exe area8500\ar1701 area8500\ar8501 -d -sw

tis2bg2.exe area8600\ar1800 area8600\ar8600 -d -sw
tis2bg2.exe area8600\ar1801 area8600\ar8601 -d -sw
tis2bg2.exe area8600\ar1802 area8600\ar8602 -d -sw
tis2bg2.exe area8600\ar1803 area8600\ar8603 -d -sw
tis2bg2.exe area8600\ar1804 area8600\ar8604 -d -sw
tis2bg2.exe area8600\ar1805 area8600\ar8605 -d -sw
tis2bg2.exe area8600\ar1806 area8600\ar8606 -d -sw
tis2bg2.exe area8600\ar1807 area8600\ar8607 -d -sw
tis2bg2.exe area8600\ar1808 area8600\ar8608 -d -sw
tis2bg2.exe area8600\ar1809 area8600\ar8609 -d -sw

tis2bg2.exe area8700\ar1900 area8700\ar8700 -d -sw
tis2bg2.exe area8700\ar1901 area8700\ar8701 -d -sw
tis2bg2.exe area8700\ar1902 area8700\ar8702 -d -sw
tis2bg2.exe area8700\ar1903 area8700\ar8703 -d -sw

tis2bg2.exe area8800\ar2100 area8800\ar8800 -d -sw
tis2bg2.exe area8800\ar2101 area8800\ar8801 -d -sw

tis2bg2.exe area8900\ar2400 area8900\ar8900 -d -sw

tis2bg2.exe area9000\ar2900 area9000\ar9000 -d -sw

tis2bg2.exe area9100\ar3000 area9100\ar9100 -d -sw

tis2bg2.exe area9200\ar3100 area9200\ar9200 -d -sw

tis2bg2.exe area9300\ar3400 area9300\ar9300 -d -sw
tis2bg2.exe area9300\ar3401 area9300\ar9301 -d -sw
tis2bg2.exe area9300\ar3402 area9300\ar9302 -d -sw

tis2bg2.exe area9400\ar3500 area9400\ar9400 -d -sw

tis2bg2.exe area9500\ar3600 area9500\ar9500 -d -sw
tis2bg2.exe area9500\ar3601 area9500\ar9501 -d -sw

tis2bg2.exe area9600\ar3700 area9600\ar9600 -d -sw

tis2bg2.exe area9700\ar3800 area9700\ar9700 -d -sw
tis2bg2.exe area9700\ar3802 area9700\ar9702 -d -sw

tis2bg2.exe area9800\ar3900 area9800\ar9799 -d -sw
tis2bg2.exe area9800\ar3901 area9800\ar9798 -d -sw

tis2bg2.exe area9900\ar4000 area9900\ar9900 -d -sw
tis2bg2.exe area9900\ar4001 area9900\ar9901 -d -sw
tis2bg2.exe area9900\ar4002 area9900\ar9902 -d -sw
tis2bg2.exe area9900\ar4003 area9900\ar9903 -d -sw
tis2bg2.exe area9900\ar4004 area9900\ar9904 -d -sw
tis2bg2.exe area9900\ar4006 area9900\ar9906 -d -sw

tis2bg2.exe areaa000\ar0002 areaa000\ara002 -d -sw

tis2bg2.exe areaa100\ar4100 areaa100\ara100 -d -sw
tis2bg2.exe areaa100\ar4101 areaa100\ara101 -d -sw

tis2bg2.exe aread000\ar0500 aread000\ard000 -d -sw
tis2bg2.exe aread000\ar0501 aread000\ard001 -d -sw
tis2bg2.exe aread000\ar0502 aread000\ard002 -d -sw
tis2bg2.exe aread000\ar0503 aread000\ard003 -d -sw
tis2bg2.exe aread000\ar0504 aread000\ard004 -d -sw
tis2bg2.exe aread000\ar0505 aread000\ard005 -d -sw
tis2bg2.exe aread000\ar0506 aread000\ard006 -d -sw
tis2bg2.exe aread000\ar0507 aread000\ard007 -d -sw
tis2bg2.exe aread000\ar0508 aread000\ard008 -d -sw
tis2bg2.exe aread000\ar0509 aread000\ard009 -d -sw
tis2bg2.exe aread000\ar0510 aread000\ard010 -d -sw
tis2bg2.exe aread000\ar0511 aread000\ard011 -d -sw
tis2bg2.exe aread000\ar0512 aread000\ard012 -d -sw
tis2bg2.exe aread000\ar0513 aread000\ard013 -d -sw
tis2bg2.exe aread000\ar0514 aread000\ard014 -d -sw
tis2bg2.exe aread000\ar0515 aread000\ard015 -d -sw
tis2bg2.exe aread000\ar0516 aread000\ard016 -d -sw

tis2bg2.exe areau000\ar1000 areau000\aru000 -d -sw
tis2bg2.exe areau000\ar1001 areau000\aru001 -d -sw
tis2bg2.exe areau000\ar1002 areau000\aru002 -d -sw
tis2bg2.exe areau000\ar1003 areau000\aru003 -d -sw
tis2bg2.exe areau000\ar1004 areau000\aru004 -d -sw
tis2bg2.exe areau000\ar1005 areau000\aru005 -d -sw
tis2bg2.exe areau000\ar1008 areau000\aru008 -d -sw
tis2bg2.exe areau000\ar1009 areau000\aru009 -d -sw

tis2bg2.exe areaw000\ar2000 areaw000\arw000 -d -sw
tis2bg2.exe areaw000\ar2001 areaw000\arw001 -d -sw
tis2bg2.exe areaw000\ar2002 areaw000\arw002 -d -sw
tis2bg2.exe areaw000\ar2004 areaw000\arw004 -d -sw
tis2bg2.exe areaw000\ar2006 areaw000\arw006 -d -sw
tis2bg2.exe areaw000\ar2008 areaw000\arw008 -d -sw
tis2bg2.exe areaw000\ar2012 areaw000\arw012 -d -sw

tis2bg2.exe areaw500\ar1500 areaw500\arw500 -d -sw
tis2bg2.exe areaw500\ar1501 areaw500\arw501 -d -sw
tis2bg2.exe areaw500\ar1502 areaw500\arw502 -d -sw
tis2bg2.exe areaw500\ar1503 areaw500\arw503 -d -sw
tis2bg2.exe areaw500\ar1504 areaw500\arw504 -d -sw
tis2bg2.exe areaw500\ar1505 areaw500\arw505 -d -sw

more BGT\Language\%LANGUAGE1%\EndSetup\008.txt

ren areaD000\ar0506ac.tis ARD006AC.tis
ren areaD000\ar0506ao.tis ARD006A0.tis
del AREAU000\ar10*.*
del AREAW000\ar20*.*

::Transparent Door Fix
copy /y BGT\Tilesets\BMP\ARD014SR.BMP AREAD000

copy BGT\Tilesets\MOS\AR3101.MOS AREA3100
copy BGT\Tilesets\MOS\AR6531.MOS AREA6500
copy BGT\Tilesets\MOS\AR7200N.MOS AREA7200
copy BGT\Tilesets\MOS\AR7248.MOS AREA7200
copy BGT\Tilesets\MOS\AR7300N.MOS AREA7300
copy BGT\Tilesets\MOS\AR7400N.MOS AREA7400
copy /Y BGT\Tilesets\MOS\AR7600.MOS AREA7600
copy BGT\Tilesets\MOS\AR7600N.MOS AREA7600
copy BGT\Tilesets\MOS\AR7700N.MOS AREA7700
copy /Y BGT\Tilesets\MOS\AR7800.MOS AREA7800
copy BGT\Tilesets\MOS\AR7800N.MOS AREA7800
copy BGT\Tilesets\MOS\AR8000N.MOS AREA8000
copy BGT\Tilesets\MOS\AR8100N.MOS AREA8100
copy BGT\Tilesets\MOS\AR8200N.MOS AREA8200
copy BGT\Tilesets\MOS\AR8608.MOS AREA8600
copy BGT\Tilesets\WED\AR9906.WED AREA9900

more BGT\Language\%LANGUAGE1%\EndSetup\009.txt

tisunpack -s -o override\WTLAVA2.tis BGT\Tilesets\WTLAVA2.tiz
copy BGT\Tilesets\flame*.tis override

md areaAM00
copy BGT\Tilesets\areaAM00 areaAM00
tisunpack -h -s -o areaAM00\arAM00.tis areaAM00\arAM00.tiz
del AREAAM00\arAM00.tiz

del tis2bg2.exe

more BGT\Language\%LANGUAGE1%\EndSetup\010.txt

_weidu.exe --make-biff AREA0015
call BGT\Install\deldir AREA0015

_weidu.exe --make-biff AREA670A
call BGT\Install\deldir AREA670A
_weidu.exe --make-biff AREA720A
call BGT\Install\deldir AREA720A
_weidu.exe --make-biff AREA720B
call BGT\Install\deldir AREA720B
_weidu.exe --make-biff AREA3100
call BGT\Install\deldir AREA3100
_weidu.exe --make-biff AREA3200
call BGT\Install\deldir AREA3200
_weidu.exe --make-biff AREA3300
call BGT\Install\deldir AREA3300
_weidu.exe --make-biff AREA3400
call BGT\Install\deldir AREA3400
_weidu.exe --make-biff AREA3500
call BGT\Install\deldir AREA3500
_weidu.exe --make-biff AREA3600
call BGT\Install\deldir AREA3600
_weidu.exe --make-biff AREA3700
call BGT\Install\deldir AREA3700
_weidu.exe --make-biff AREA3800
call BGT\Install\deldir AREA3800
_weidu.exe --make-biff AREA3900
call BGT\Install\deldir AREA3900
_weidu.exe --make-biff AREA4100
call BGT\Install\deldir AREA4100
_weidu.exe --make-biff AREA4200
call BGT\Install\deldir AREA4200
_weidu.exe --make-biff AREA4300
call BGT\Install\deldir AREA4300
_weidu.exe --make-biff AREA4400
call BGT\Install\deldir AREA4400
_weidu.exe --make-biff AREA4600
call BGT\Install\deldir AREA4600
_weidu.exe --make-biff AREA4700
call BGT\Install\deldir AREA4700
_weidu.exe --make-biff AREA4800
call BGT\Install\deldir AREA4800
_weidu.exe --make-biff AREA4900
call BGT\Install\deldir AREA4900
_weidu.exe --make-biff AREA5100
call BGT\Install\deldir AREA5100
_weidu.exe --make-biff AREA5300
call BGT\Install\deldir AREA5300
_weidu.exe --make-biff AREA5400
call BGT\Install\deldir AREA5400
_weidu.exe --make-biff AREA6500
call BGT\Install\deldir AREA6500
_weidu.exe --make-biff AREA6600
call BGT\Install\deldir AREA6600
_weidu.exe --make-biff AREA6700
call BGT\Install\deldir AREA6700
_weidu.exe --make-biff AREA6800
call BGT\Install\deldir AREA6800
_weidu.exe --make-biff AREA6900
call BGT\Install\deldir AREA6900
_weidu.exe --make-biff AREA7000
call BGT\Install\deldir AREA7000
_weidu.exe --make-biff AREA7100
call BGT\Install\deldir AREA7100
_weidu.exe --make-biff AREA7200
call BGT\Install\deldir AREA7200
_weidu.exe --make-biff AREA7300
call BGT\Install\deldir AREA7300
_weidu.exe --make-biff AREA7400
call BGT\Install\deldir AREA7400
_weidu.exe --make-biff AREA7500
call BGT\Install\deldir AREA7500
_weidu.exe --make-biff AREA7600
call BGT\Install\deldir AREA7600
_weidu.exe --make-biff AREA7700
call BGT\Install\deldir AREA7700
_weidu.exe --make-biff AREA7800
call BGT\Install\deldir AREA7800
_weidu.exe --make-biff AREA7900
call BGT\Install\deldir AREA7900
_weidu.exe --make-biff AREA8000
call BGT\Install\deldir AREA8000
_weidu.exe --make-biff AREA8100
call BGT\Install\deldir AREA8100
_weidu.exe --make-biff AREA8200
call BGT\Install\deldir AREA8200
_weidu.exe --make-biff AREA8300
call BGT\Install\deldir AREA8300
_weidu.exe --make-biff AREA8400
call BGT\Install\deldir AREA8400
_weidu.exe --make-biff AREA8500
call BGT\Install\deldir AREA8500
_weidu.exe --make-biff AREA8600
call BGT\Install\deldir AREA8600
_weidu.exe --make-biff AREA8700
call BGT\Install\deldir AREA8700
_weidu.exe --make-biff AREA8800
call BGT\Install\deldir AREA8800
_weidu.exe --make-biff AREA8900
call BGT\Install\deldir AREA8900
_weidu.exe --make-biff AREA9000
call BGT\Install\deldir AREA9000
_weidu.exe --make-biff AREA9100
call BGT\Install\deldir AREA9100
_weidu.exe --make-biff AREA9200
call BGT\Install\deldir AREA9200
_weidu.exe --make-biff AREA9300
call BGT\Install\deldir AREA9300
_weidu.exe --make-biff AREA9400
call BGT\Install\deldir AREA9400
_weidu.exe --make-biff AREA9500
call BGT\Install\deldir AREA9500
_weidu.exe --make-biff AREA9600
call BGT\Install\deldir AREA9600
_weidu.exe --make-biff AREA9700
call BGT\Install\deldir AREA9700
_weidu.exe --make-biff AREA9800
call BGT\Install\deldir AREA9800
_weidu.exe --make-biff AREA9900
call BGT\Install\deldir AREA9900
_weidu.exe --make-biff AREAA000
call BGT\Install\deldir AREAA000
_weidu.exe --make-biff AREAA100
call BGT\Install\deldir AREAA100
_weidu.exe --make-biff AREAD000
call BGT\Install\deldir AREAD000
_weidu.exe --make-biff AREAU000
call BGT\Install\deldir AREAU000
_weidu.exe --make-biff AREAW000
call BGT\Install\deldir AREAW000
_weidu.exe --make-biff AREAW500
call BGT\Install\deldir AREAW500

_weidu.exe --make-biff AREAAM00
call BGT\Install\deldir AREAAM00

del tisunpack.exe

more BGT\Language\%LANGUAGE1%\EndSetup\011.txt

md BG1ARE
:: move override\AR0015.ARE BG1ARE > NUL
:: move override\AR3100.ARE BG1ARE > NUL
:: move override\AR3101.ARE BG1ARE > NUL
:: move override\AR3200.ARE BG1ARE > NUL
:: move override\AR3300.ARE BG1ARE > NUL
:: move override\AR3301.ARE BG1ARE > NUL
:: move override\AR3400.ARE BG1ARE > NUL
:: move override\AR3401.ARE BG1ARE > NUL
:: move override\AR3497.ARE BG1ARE > NUL
:: move override\AR3498.ARE BG1ARE > NUL
:: move override\AR3499.ARE BG1ARE > NUL
:: move override\AR3700.ARE BG1ARE > NUL
:: move override\AR3701.ARE BG1ARE > NUL
:: move override\AR3702.ARE BG1ARE > NUL
:: move override\AR3703.ARE BG1ARE > NUL
:: move override\AR3704.ARE BG1ARE > NUL
:: move override\AR3705.ARE BG1ARE > NUL
:: move override\AR3706.ARE BG1ARE > NUL
:: move override\AR3707.ARE BG1ARE > NUL
:: move override\AR3708.ARE BG1ARE > NUL
:: move override\AR3709.ARE BG1ARE > NUL
:: move override\AR3710.ARE BG1ARE > NUL
:: move override\AR3800.ARE BG1ARE > NUL
:: move override\AR3801.ARE BG1ARE > NUL
:: move override\AR3802.ARE BG1ARE > NUL
:: move override\AR3803.ARE BG1ARE > NUL
:: move override\AR3804.ARE BG1ARE > NUL
:: move override\AR3805.ARE BG1ARE > NUL
:: move override\AR3806.ARE BG1ARE > NUL
:: move override\AR3807.ARE BG1ARE > NUL
:: move override\AR3808.ARE BG1ARE > NUL
:: move override\AR3809.ARE BG1ARE > NUL
:: move override\AR3900.ARE BG1ARE > NUL
:: move override\AR3901.ARE BG1ARE > NUL
:: move override\AR4100.ARE BG1ARE > NUL
:: move override\AR4101.ARE BG1ARE > NUL
:: move override\AR4102.ARE BG1ARE > NUL
:: move override\AR4103.ARE BG1ARE > NUL
:: move override\AR4199.ARE BG1ARE > NUL
:: move override\AR4200.ARE BG1ARE > NUL
:: move override\AR4300.ARE BG1ARE > NUL
:: move override\AR4400.ARE BG1ARE > NUL
:: move override\AR4401.ARE BG1ARE > NUL
:: move override\AR4402.ARE BG1ARE > NUL
:: move override\AR4403.ARE BG1ARE > NUL
:: move override\AR4404.ARE BG1ARE > NUL
:: move override\AR4405.ARE BG1ARE > NUL
:: move override\AR4406.ARE BG1ARE > NUL
:: move override\AR4600.ARE BG1ARE > NUL
:: move override\AR4700.ARE BG1ARE > NUL
:: move override\AR4701.ARE BG1ARE > NUL
:: move override\AR4800.ARE BG1ARE > NUL
:: move override\AR4801.ARE BG1ARE > NUL
:: move override\AR4900.ARE BG1ARE > NUL
:: move override\AR4901.ARE BG1ARE > NUL
:: move override\AR5100.ARE BG1ARE > NUL
:: move override\AR5101.ARE BG1ARE > NUL
:: move override\AR5300.ARE BG1ARE > NUL
:: move override\AR5301.ARE BG1ARE > NUL
:: move override\AR5400.ARE BG1ARE > NUL
:: move override\AR6502.ARE BG1ARE > NUL
:: move override\AR6505.ARE BG1ARE > NUL
:: move override\AR6506.ARE BG1ARE > NUL
:: move override\AR6507.ARE BG1ARE > NUL
:: move override\AR6508.ARE BG1ARE > NUL
:: move override\AR6509.ARE BG1ARE > NUL
:: move override\AR6510.ARE BG1ARE > NUL
:: move override\AR6511.ARE BG1ARE > NUL
:: move override\AR6512.ARE BG1ARE > NUL
:: move override\AR6513.ARE BG1ARE > NUL
:: move override\AR6514.ARE BG1ARE > NUL
:: move override\AR6515.ARE BG1ARE > NUL
:: move override\AR6516.ARE BG1ARE > NUL
:: move override\AR6517.ARE BG1ARE > NUL
:: move override\AR6518.ARE BG1ARE > NUL
:: move override\AR6519.ARE BG1ARE > NUL
:: move override\AR6526.ARE BG1ARE > NUL
:: move override\AR6527.ARE BG1ARE > NUL
:: move override\AR6528.ARE BG1ARE > NUL
:: move override\AR6529.ARE BG1ARE > NUL
:: move override\AR6530.ARE BG1ARE > NUL
:: move override\AR6531.ARE BG1ARE > NUL
:: move override\AR6532.ARE BG1ARE > NUL
:: move override\AR6533.ARE BG1ARE > NUL
:: move override\AR6543.ARE BG1ARE > NUL
:: move override\AR6560.ARE BG1ARE > NUL
:: move override\AR6600.ARE BG1ARE > NUL
:: move override\AR6700.ARE BG1ARE > NUL
:: move override\AR6701.ARE BG1ARE > NUL
:: move override\AR6702.ARE BG1ARE > NUL
:: move override\AR6703.ARE BG1ARE > NUL
:: move override\AR6704.ARE BG1ARE > NUL
:: move override\AR6705.ARE BG1ARE > NUL
:: move override\AR6706.ARE BG1ARE > NUL
:: move override\AR6707.ARE BG1ARE > NUL
:: move override\AR6708.ARE BG1ARE > NUL
:: move override\AR6709.ARE BG1ARE > NUL
:: move override\AR6710.ARE BG1ARE > NUL
:: move override\AR6711.ARE BG1ARE > NUL
:: move override\AR6712.ARE BG1ARE > NUL
:: move override\AR6713.ARE BG1ARE > NUL
:: move override\AR6714.ARE BG1ARE > NUL
:: move override\AR6715.ARE BG1ARE > NUL
:: move override\AR6716.ARE BG1ARE > NUL
:: move override\AR6717.ARE BG1ARE > NUL
:: move override\AR6718.ARE BG1ARE > NUL
:: move override\AR6719.ARE BG1ARE > NUL
:: move override\AR6720.ARE BG1ARE > NUL
:: move override\AR6721.ARE BG1ARE > NUL
:: move override\AR6722.ARE BG1ARE > NUL
:: move override\AR6723.ARE BG1ARE > NUL
:: move override\AR6724.ARE BG1ARE > NUL
:: move override\AR6725.ARE BG1ARE > NUL
:: move override\AR6726.ARE BG1ARE > NUL
:: move override\AR6727.ARE BG1ARE > NUL
:: move override\AR6728.ARE BG1ARE > NUL
:: move override\AR6729.ARE BG1ARE > NUL
:: move override\AR6730.ARE BG1ARE > NUL
:: move override\AR6731.ARE BG1ARE > NUL
:: move override\AR6732.ARE BG1ARE > NUL
:: move override\AR6733.ARE BG1ARE > NUL
:: move override\AR6734.ARE BG1ARE > NUL
:: move override\AR6735.ARE BG1ARE > NUL
:: move override\AR6736.ARE BG1ARE > NUL
:: move override\AR6737.ARE BG1ARE > NUL
:: move override\AR6738.ARE BG1ARE > NUL
:: move override\AR6739.ARE BG1ARE > NUL
:: move override\AR6740.ARE BG1ARE > NUL
:: move override\AR6741.ARE BG1ARE > NUL
:: move override\AR6742.ARE BG1ARE > NUL
:: move override\AR6743.ARE BG1ARE > NUL
:: move override\AR6744.ARE BG1ARE > NUL
:: move override\AR6745.ARE BG1ARE > NUL
:: move override\AR6746.ARE BG1ARE > NUL
:: move override\AR6747.ARE BG1ARE > NUL
:: move override\AR6748.ARE BG1ARE > NUL
:: move override\AR6749.ARE BG1ARE > NUL
:: move override\AR6750.ARE BG1ARE > NUL
:: move override\AR6751.ARE BG1ARE > NUL
:: move override\AR6752.ARE BG1ARE > NUL
:: move override\AR6753.ARE BG1ARE > NUL
:: move override\AR6754.ARE BG1ARE > NUL
:: move override\AR6755.ARE BG1ARE > NUL
:: move override\AR6756.ARE BG1ARE > NUL
:: move override\AR6757.ARE BG1ARE > NUL
:: move override\AR6800.ARE BG1ARE > NUL
:: move override\AR6801.ARE BG1ARE > NUL
:: move override\AR6802.ARE BG1ARE > NUL
:: move override\AR6803.ARE BG1ARE > NUL
:: move override\AR6804.ARE BG1ARE > NUL
:: move override\AR6805.ARE BG1ARE > NUL
:: move override\AR6806.ARE BG1ARE > NUL
:: move override\AR6900.ARE BG1ARE > NUL
:: move override\AR7000.ARE BG1ARE > NUL
:: move override\AR7015.ARE BG1ARE > NUL
:: move override\AR7100.ARE BG1ARE > NUL
:: move override\AR7101.ARE BG1ARE > NUL
:: move override\AR7102.ARE BG1ARE > NUL
:: move override\AR7200.ARE BG1ARE > NUL
:: move override\AR7201.ARE BG1ARE > NUL
:: move override\AR7202.ARE BG1ARE > NUL
:: move override\AR7203.ARE BG1ARE > NUL
:: move override\AR7204.ARE BG1ARE > NUL
:: move override\AR7205.ARE BG1ARE > NUL
:: move override\AR7206.ARE BG1ARE > NUL
:: move override\AR7207.ARE BG1ARE > NUL
:: move override\AR7208.ARE BG1ARE > NUL
:: move override\AR7209.ARE BG1ARE > NUL
:: move override\AR7210.ARE BG1ARE > NUL
:: move override\AR7211.ARE BG1ARE > NUL
:: move override\AR7212.ARE BG1ARE > NUL
:: move override\AR7214.ARE BG1ARE > NUL
:: move override\AR7215.ARE BG1ARE > NUL
:: move override\AR7216.ARE BG1ARE > NUL
:: move override\AR7217.ARE BG1ARE > NUL
:: move override\AR7218.ARE BG1ARE > NUL
:: move override\AR7219.ARE BG1ARE > NUL
:: move override\AR7220.ARE BG1ARE > NUL
:: move override\AR7221.ARE BG1ARE > NUL
:: move override\AR7223.ARE BG1ARE > NUL
:: move override\AR7225.ARE BG1ARE > NUL
:: move override\AR7226.ARE BG1ARE > NUL
:: move override\AR7227.ARE BG1ARE > NUL
:: move override\AR7228.ARE BG1ARE > NUL
:: move override\AR7229.ARE BG1ARE > NUL
:: move override\AR7230.ARE BG1ARE > NUL
:: move override\AR7231.ARE BG1ARE > NUL
:: move override\AR7232.ARE BG1ARE > NUL
:: move override\AR7233.ARE BG1ARE > NUL
:: move override\AR7234.ARE BG1ARE > NUL
:: move override\AR7235.ARE BG1ARE > NUL
:: move override\AR7236.ARE BG1ARE > NUL
:: move override\AR7237.ARE BG1ARE > NUL
:: move override\AR7238.ARE BG1ARE > NUL
:: move override\AR7239.ARE BG1ARE > NUL
:: move override\AR7240.ARE BG1ARE > NUL
:: move override\AR7241.ARE BG1ARE > NUL
:: move override\AR7242.ARE BG1ARE > NUL
:: move override\AR7243.ARE BG1ARE > NUL
:: move override\AR7244.ARE BG1ARE > NUL
:: move override\AR7245.ARE BG1ARE > NUL
:: move override\AR7246.ARE BG1ARE > NUL
:: move override\AR7248.ARE BG1ARE > NUL
:: move override\AR7249.ARE BG1ARE > NUL
:: move override\AR7250.ARE BG1ARE > NUL
:: move override\AR7251.ARE BG1ARE > NUL
:: move override\AR7252.ARE BG1ARE > NUL
:: move override\AR7253.ARE BG1ARE > NUL
:: move override\AR7254.ARE BG1ARE > NUL
:: move override\AR7255.ARE BG1ARE > NUL
:: move override\AR7256.ARE BG1ARE > NUL
:: move override\AR7257.ARE BG1ARE > NUL
:: move override\AR7258.ARE BG1ARE > NUL
:: move override\AR7259.ARE BG1ARE > NUL
:: move override\AR7260.ARE BG1ARE > NUL
:: move override\AR7261.ARE BG1ARE > NUL
:: move override\AR7262.ARE BG1ARE > NUL
:: move override\AR7263.ARE BG1ARE > NUL
:: move override\AR7264.ARE BG1ARE > NUL
:: move override\AR7265.ARE BG1ARE > NUL
:: move override\AR7266.ARE BG1ARE > NUL
:: move override\AR7267.ARE BG1ARE > NUL
:: move override\AR7268.ARE BG1ARE > NUL
:: move override\AR7269.ARE BG1ARE > NUL
:: move override\AR7270.ARE BG1ARE > NUL
:: move override\AR7271.ARE BG1ARE > NUL
:: move override\AR7300.ARE BG1ARE > NUL
:: move override\AR7324.ARE BG1ARE > NUL
:: move override\AR7325.ARE BG1ARE > NUL
:: move override\AR7326.ARE BG1ARE > NUL
:: move override\AR7400.ARE BG1ARE > NUL
:: move override\AR7402.ARE BG1ARE > NUL
:: move override\AR7403.ARE BG1ARE > NUL
:: move override\AR7404.ARE BG1ARE > NUL
:: move override\AR7405.ARE BG1ARE > NUL
:: move override\AR7406.ARE BG1ARE > NUL
:: move override\AR7407.ARE BG1ARE > NUL
:: move override\AR7408.ARE BG1ARE > NUL
:: move override\AR7500.ARE BG1ARE > NUL
:: move override\AR7501.ARE BG1ARE > NUL
:: move override\AR7600.ARE BG1ARE > NUL
:: move override\AR7601.ARE BG1ARE > NUL
:: move override\AR7602.ARE BG1ARE > NUL
:: move override\AR7603.ARE BG1ARE > NUL
:: move override\AR7606.ARE BG1ARE > NUL
:: move override\AR7607.ARE BG1ARE > NUL
:: move override\AR7608.ARE BG1ARE > NUL
:: move override\AR7609.ARE BG1ARE > NUL
:: move override\AR7611.ARE BG1ARE > NUL
:: move override\AR7612.ARE BG1ARE > NUL
:: move override\AR7613.ARE BG1ARE > NUL
:: move override\AR7614.ARE BG1ARE > NUL
:: move override\AR7615.ARE BG1ARE > NUL
:: move override\AR7616.ARE BG1ARE > NUL
:: move override\AR7617.ARE BG1ARE > NUL
:: move override\AR7618.ARE BG1ARE > NUL
:: move override\AR7619.ARE BG1ARE > NUL
:: move override\AR7620.ARE BG1ARE > NUL
:: move override\AR7621.ARE BG1ARE > NUL
:: move override\AR7700.ARE BG1ARE > NUL
:: move override\AR7702.ARE BG1ARE > NUL
:: move override\AR7703.ARE BG1ARE > NUL
:: move override\AR7704.ARE BG1ARE > NUL
:: move override\AR7705.ARE BG1ARE > NUL
:: move override\AR7706.ARE BG1ARE > NUL
:: move override\AR7707.ARE BG1ARE > NUL
:: move override\AR7708.ARE BG1ARE > NUL
:: move override\AR7709.ARE BG1ARE > NUL
:: move override\AR7710.ARE BG1ARE > NUL
:: move override\AR7711.ARE BG1ARE > NUL
:: move override\AR7712.ARE BG1ARE > NUL
:: move override\AR7713.ARE BG1ARE > NUL
:: move override\AR7714.ARE BG1ARE > NUL
:: move override\AR7715.ARE BG1ARE > NUL
:: move override\AR7716.ARE BG1ARE > NUL
:: move override\AR7717.ARE BG1ARE > NUL
:: move override\AR7718.ARE BG1ARE > NUL
:: move override\AR7719.ARE BG1ARE > NUL
:: move override\AR7720.ARE BG1ARE > NUL
:: move override\AR7721.ARE BG1ARE > NUL
:: move override\AR7722.ARE BG1ARE > NUL
:: move override\AR7723.ARE BG1ARE > NUL
:: move override\AR7724.ARE BG1ARE > NUL
:: move override\AR7725.ARE BG1ARE > NUL
:: move override\AR7726.ARE BG1ARE > NUL
:: move override\AR7800.ARE BG1ARE > NUL
:: move override\AR7801.ARE BG1ARE > NUL
:: move override\AR7802.ARE BG1ARE > NUL
:: move override\AR7803.ARE BG1ARE > NUL
:: move override\AR7804.ARE BG1ARE > NUL
:: move override\AR7805.ARE BG1ARE > NUL
:: move override\AR7806.ARE BG1ARE > NUL
:: move override\AR7807.ARE BG1ARE > NUL
:: move override\AR7808.ARE BG1ARE > NUL
:: move override\AR7809.ARE BG1ARE > NUL
:: move override\AR7810.ARE BG1ARE > NUL
:: move override\AR7811.ARE BG1ARE > NUL
:: move override\AR7812.ARE BG1ARE > NUL
:: move override\AR7813.ARE BG1ARE > NUL
:: move override\AR7814.ARE BG1ARE > NUL
:: move override\AR7900.ARE BG1ARE > NUL
:: move override\AR7901.ARE BG1ARE > NUL
:: move override\AR8000.ARE BG1ARE > NUL
:: move override\AR8001.ARE BG1ARE > NUL
:: move override\AR8002.ARE BG1ARE > NUL
:: move override\AR8003.ARE BG1ARE > NUL
:: move override\AR8004.ARE BG1ARE > NUL
:: move override\AR8005.ARE BG1ARE > NUL
:: move override\AR8006.ARE BG1ARE > NUL
:: move override\AR8007.ARE BG1ARE > NUL
:: move override\AR8008.ARE BG1ARE > NUL
:: move override\AR8009.ARE BG1ARE > NUL
:: move override\AR8010.ARE BG1ARE > NUL
:: move override\AR8011.ARE BG1ARE > NUL
:: move override\AR8012.ARE BG1ARE > NUL
:: move override\AR8013.ARE BG1ARE > NUL
:: move override\AR8014.ARE BG1ARE > NUL
:: move override\AR8015.ARE BG1ARE > NUL
:: move override\AR8016.ARE BG1ARE > NUL
:: move override\AR8017.ARE BG1ARE > NUL
:: move override\AR8100.ARE BG1ARE > NUL
:: move override\AR8101.ARE BG1ARE > NUL
:: move override\AR8102.ARE BG1ARE > NUL
:: move override\AR8103.ARE BG1ARE > NUL
:: move override\AR8104.ARE BG1ARE > NUL
:: move override\AR8105.ARE BG1ARE > NUL
:: move override\AR8106.ARE BG1ARE > NUL
:: move override\AR8107.ARE BG1ARE > NUL
:: move override\AR8108.ARE BG1ARE > NUL
:: move override\AR8109.ARE BG1ARE > NUL
:: move override\AR8110.ARE BG1ARE > NUL
:: move override\AR8111.ARE BG1ARE > NUL
:: move override\AR8112.ARE BG1ARE > NUL
:: move override\AR8113.ARE BG1ARE > NUL
:: move override\AR8114.ARE BG1ARE > NUL
:: move override\AR8115.ARE BG1ARE > NUL
:: move override\AR8200.ARE BG1ARE > NUL
:: move override\AR8201.ARE BG1ARE > NUL
:: move override\AR8202.ARE BG1ARE > NUL
:: move override\AR8203.ARE BG1ARE > NUL
:: move override\AR8204.ARE BG1ARE > NUL
:: move override\AR8205.ARE BG1ARE > NUL
:: move override\AR8206.ARE BG1ARE > NUL
:: move override\AR8207.ARE BG1ARE > NUL
:: move override\AR8208.ARE BG1ARE > NUL
:: move override\AR8209.ARE BG1ARE > NUL
:: move override\AR8210.ARE BG1ARE > NUL
:: move override\AR8211.ARE BG1ARE > NUL
:: move override\AR8212.ARE BG1ARE > NUL
:: move override\AR8213.ARE BG1ARE > NUL
:: move override\AR8214.ARE BG1ARE > NUL
:: move override\AR8215.ARE BG1ARE > NUL
:: move override\AR8216.ARE BG1ARE > NUL
:: move override\AR8217.ARE BG1ARE > NUL
:: move override\AR8220.ARE BG1ARE > NUL
:: move override\AR8300.ARE BG1ARE > NUL
:: move override\AR8301.ARE BG1ARE > NUL
:: move override\AR8302.ARE BG1ARE > NUL
:: move override\AR8303.ARE BG1ARE > NUL
:: move override\AR8304.ARE BG1ARE > NUL
:: move override\AR8400.ARE BG1ARE > NUL
:: move override\AR8401.ARE BG1ARE > NUL
:: move override\AR8402.ARE BG1ARE > NUL
:: move override\AR8403.ARE BG1ARE > NUL
:: move override\AR8500.ARE BG1ARE > NUL
:: move override\AR8501.ARE BG1ARE > NUL
:: move override\AR8600.ARE BG1ARE > NUL
:: move override\AR8601.ARE BG1ARE > NUL
:: move override\AR8602.ARE BG1ARE > NUL
:: move override\AR8603.ARE BG1ARE > NUL
:: move override\AR8604.ARE BG1ARE > NUL
:: move override\AR8605.ARE BG1ARE > NUL
:: move override\AR8606.ARE BG1ARE > NUL
:: move override\AR8607.ARE BG1ARE > NUL
:: move override\AR8608.ARE BG1ARE > NUL
:: move override\AR8609.ARE BG1ARE > NUL
:: move override\AR8700.ARE BG1ARE > NUL
:: move override\AR8701.ARE BG1ARE > NUL
:: move override\AR8702.ARE BG1ARE > NUL
:: move override\AR8703.ARE BG1ARE > NUL
:: move override\AR8704.ARE BG1ARE > NUL
:: move override\AR8705.ARE BG1ARE > NUL
:: move override\AR8706.ARE BG1ARE > NUL
:: move override\AR8707.ARE BG1ARE > NUL
:: move override\AR8800.ARE BG1ARE > NUL
:: move override\AR8801.ARE BG1ARE > NUL
:: move override\AR8900.ARE BG1ARE > NUL
:: move override\AR9000.ARE BG1ARE > NUL
:: move override\AR9100.ARE BG1ARE > NUL
:: move override\AR9200.ARE BG1ARE > NUL
:: move override\AR9300.ARE BG1ARE > NUL
:: move override\AR9301.ARE BG1ARE > NUL
:: move override\AR9302.ARE BG1ARE > NUL
:: move override\AR9400.ARE BG1ARE > NUL
:: move override\AR9500.ARE BG1ARE > NUL
:: move override\AR9501.ARE BG1ARE > NUL
:: move override\AR9600.ARE BG1ARE > NUL
:: move override\AR9700.ARE BG1ARE > NUL
:: move override\AR9702.ARE BG1ARE > NUL
:: move override\AR9798.ARE BG1ARE > NUL
:: move override\AR9799.ARE BG1ARE > NUL
:: move override\AR9900.ARE BG1ARE > NUL
:: move override\AR9901.ARE BG1ARE > NUL
:: move override\AR9902.ARE BG1ARE > NUL
:: move override\AR9903.ARE BG1ARE > NUL
:: move override\AR9904.ARE BG1ARE > NUL
:: move override\AR9905.ARE BG1ARE > NUL
:: move override\AR9906.ARE BG1ARE > NUL
:: move override\AR9907.ARE BG1ARE > NUL
:: move override\AR9908.ARE BG1ARE > NUL
:: move override\AR9909.ARE BG1ARE > NUL
:: move override\AR9910.ARE BG1ARE > NUL
:: move override\AR9911.ARE BG1ARE > NUL
:: move override\AR9912.ARE BG1ARE > NUL
:: move override\AR9913.ARE BG1ARE > NUL
:: move override\AR9914.ARE BG1ARE > NUL
:: move override\ARA002.ARE BG1ARE > NUL
:: move override\ARA004.ARE BG1ARE > NUL
:: move override\ARA005.ARE BG1ARE > NUL
:: move override\ARA006.ARE BG1ARE > NUL
:: move override\ARA007.ARE BG1ARE > NUL
:: move override\ARA008.ARE BG1ARE > NUL
:: move override\ARA009.ARE BG1ARE > NUL
:: move override\ARA010.ARE BG1ARE > NUL
:: move override\ARA011.ARE BG1ARE > NUL
:: move override\ARA012.ARE BG1ARE > NUL
:: move override\ARA013.ARE BG1ARE > NUL
:: move override\ARA014.ARE BG1ARE > NUL
:: move override\ARA015.ARE BG1ARE > NUL
:: move override\ARA016.ARE BG1ARE > NUL
:: move override\ARA017.ARE BG1ARE > NUL
:: move override\ARA018.ARE BG1ARE > NUL
:: move override\ARA019.ARE BG1ARE > NUL
:: move override\ARA020.ARE BG1ARE > NUL
:: move override\ARA021.ARE BG1ARE > NUL
:: move override\ARA100.ARE BG1ARE > NUL
:: move override\ARA101.ARE BG1ARE > NUL
:: move override\ARAM00.ARE BG1ARE > NUL
:: move override\ARD000.ARE BG1ARE > NUL
:: move override\ARD001.ARE BG1ARE > NUL
:: move override\ARD002.ARE BG1ARE > NUL
:: move override\ARD003.ARE BG1ARE > NUL
:: move override\ARD004.ARE BG1ARE > NUL
:: move override\ARD005.ARE BG1ARE > NUL
:: move override\ARD006.ARE BG1ARE > NUL
:: move override\ARD007.ARE BG1ARE > NUL
:: move override\ARD008.ARE BG1ARE > NUL
:: move override\ARD009.ARE BG1ARE > NUL
:: move override\ARD010.ARE BG1ARE > NUL
:: move override\ARD011.ARE BG1ARE > NUL
:: move override\ARD012.ARE BG1ARE > NUL
:: move override\ARD013.ARE BG1ARE > NUL
:: move override\ARD014.ARE BG1ARE > NUL
:: move override\ARD015.ARE BG1ARE > NUL
:: move override\ARD016.ARE BG1ARE > NUL
:: move override\ARU000.ARE BG1ARE > NUL
:: move override\ARU001.ARE BG1ARE > NUL
:: move override\ARU002.ARE BG1ARE > NUL
:: move override\ARU003.ARE BG1ARE > NUL
:: move override\ARU004.ARE BG1ARE > NUL
:: move override\ARU005.ARE BG1ARE > NUL
:: move override\ARU006.ARE BG1ARE > NUL
:: move override\ARU007.ARE BG1ARE > NUL
:: move override\ARU008.ARE BG1ARE > NUL
:: move override\ARU009.ARE BG1ARE > NUL
:: move override\ARw000.ARE BG1ARE > NUL
:: move override\ARW001.ARE BG1ARE > NUL
:: move override\ARW002.ARE BG1ARE > NUL
:: move override\ARW003.ARE BG1ARE > NUL
:: move override\ARW004.ARE BG1ARE > NUL
:: move override\ARW005.ARE BG1ARE > NUL
:: move override\ARW006.ARE BG1ARE > NUL
:: move override\ARW007.ARE BG1ARE > NUL
:: move override\ARW008.ARE BG1ARE > NUL
:: move override\ARW009.ARE BG1ARE > NUL
:: move override\ARW010.ARE BG1ARE > NUL
:: move override\ARW011.ARE BG1ARE > NUL
:: move override\ARW012.ARE BG1ARE > NUL
:: move override\ARW500.ARE BG1ARE > NUL
:: move override\ARW501.ARE BG1ARE > NUL
:: move override\ARW502.ARE BG1ARE > NUL
:: move override\ARW503.ARE BG1ARE > NUL
:: move override\ARW504.ARE BG1ARE > NUL
:: move override\ARW505.ARE BG1ARE > NUL
move override\BGTCRED.BMP BG1ARE > NUL
_weidu --make-biff BG1ARE
call BGT\Install\deldir BG1ARE

BGT\Install\mosunpack -s -f -o override\BPBGTMAP.MOS BGT\Base\moz\BPBGTMAP.moz
BGT\Install\mosunpack -s -f -o override\DRMTXT-2.MOS BGT\Base\moz\DRMTXT-2.moz
BGT\Install\mosunpack -s -f -o override\DRMTXT-3.MOS BGT\Base\moz\DRMTXT-3.moz
BGT\Install\mosunpack -s -f -o override\DRMTXT-4.MOS BGT\Base\moz\DRMTXT-4.moz
BGT\Install\mosunpack -s -f -o override\DRMTXT-5.MOS BGT\Base\moz\DRMTXT-5.moz
BGT\Install\mosunpack -s -f -o override\DRMTXT-6.MOS BGT\Base\moz\DRMTXT-6.moz
BGT\Install\mosunpack -s -f -o override\DRMTXT-7.MOS BGT\Base\moz\DRMTXT-7.moz
BGT\Install\mosunpack -s -f -o override\GUICHP0B.MOS BGT\Base\moz\GUICHP0B.moz

md BG1BCS
:: move override\A6BIO.BCS BG1BCS > NUL
:: move override\ACT01.BCS BG1BCS > NUL
:: move override\ACT02.BCS BG1BCS > NUL
:: move override\ACT03.BCS BG1BCS > NUL
:: move override\ACT04.BCS BG1BCS > NUL
:: move override\ACT05.BCS BG1BCS > NUL
:: move override\ACT06.BCS BG1BCS > NUL
:: move override\ACT08.BCS BG1BCS > NUL
:: move override\ACT10.BCS BG1BCS > NUL
:: move override\ACT11.BCS BG1BCS > NUL
:: move override\ACT12.BCS BG1BCS > NUL
:: move override\ACTBOUN.BCS BG1BCS > NUL
:: move override\ACTFLAM.BCS BG1BCS > NUL
:: move override\ACTNESTO.BCS BG1BCS > NUL
:: move override\ACTTELAN.BCS BG1BCS > NUL
:: move override\AJANTIS.BCS BG1BCS > NUL
:: move override\ALORA.BCS BG1BCS > NUL
:: move override\AMNISH3.BCS BG1BCS > NUL
:: move override\AMNISH4.BCS BG1BCS > NUL
:: move override\AMNISNA.BCS BG1BCS > NUL
:: move override\AMNSCENE.BCS BG1BCS > NUL
:: move override\ANDRIS.BCS BG1BCS > NUL
:: move override\AR0015.BCS BG1BCS > NUL
:: move override\AR3100.BCS BG1BCS > NUL
:: move override\AR3300.BCS BG1BCS > NUL
:: move override\AR3700.BCS BG1BCS > NUL
:: move override\AR3800.BCS BG1BCS > NUL
:: move override\AR3806.BCS BG1BCS > NUL
:: move override\AR3900.BCS BG1BCS > NUL
:: move override\AR3901.BCS BG1BCS > NUL
:: move override\AR4100.BCS BG1BCS > NUL
:: move override\AR4200.BCS BG1BCS > NUL
:: move override\AR4400.BCS BG1BCS > NUL
:: move override\AR4404.BCS BG1BCS > NUL
:: move override\AR4405.BCS BG1BCS > NUL
:: move override\AR4800.BCS BG1BCS > NUL
:: move override\AR4900.BCS BG1BCS > NUL
:: move override\AR5100.BCS BG1BCS > NUL
:: move override\AR5400.BCS BG1BCS > NUL
:: move override\AR6506.BCS BG1BCS > NUL
:: move override\AR6508.BCS BG1BCS > NUL
:: move override\AR6509.BCS BG1BCS > NUL
:: move override\AR6511.BCS BG1BCS > NUL
:: move override\AR6526.BCS BG1BCS > NUL
:: move override\AR6531.BCS BG1BCS > NUL
:: move override\AR6543.BCS BG1BCS > NUL
:: move override\AR6560.BCS BG1BCS > NUL
:: move override\AR6600.BCS BG1BCS > NUL
:: move override\AR6700.BCS BG1BCS > NUL
:: move override\AR6704.BCS BG1BCS > NUL
:: move override\AR6752.BCS BG1BCS > NUL
:: move override\AR6753.BCS BG1BCS > NUL
:: move override\AR6800.BCS BG1BCS > NUL
:: move override\AR6801.BCS BG1BCS > NUL
:: move override\AR6803.BCS BG1BCS > NUL
:: move override\AR6900.BCS BG1BCS > NUL
:: move override\AR7000.BCS BG1BCS > NUL
:: move override\AR7100.BCS BG1BCS > NUL
:: move override\AR7200.BCS BG1BCS > NUL
:: move override\AR7201.BCS BG1BCS > NUL
:: move override\AR7202.BCS BG1BCS > NUL
:: move override\AR7203.BCS BG1BCS > NUL
:: move override\AR7206.BCS BG1BCS > NUL
:: move override\AR7208.BCS BG1BCS > NUL
:: move override\AR7211.BCS BG1BCS > NUL
:: move override\AR7212.BCS BG1BCS > NUL
:: move override\AR7214.BCS BG1BCS > NUL
:: move override\AR7215.BCS BG1BCS > NUL
:: move override\AR7216.BCS BG1BCS > NUL
:: move override\AR7219.BCS BG1BCS > NUL
:: move override\AR7221.BCS BG1BCS > NUL
:: move override\AR7223.BCS BG1BCS > NUL
:: move override\AR7225.BCS BG1BCS > NUL
:: move override\AR7228.BCS BG1BCS > NUL
:: move override\AR7230.BCS BG1BCS > NUL
:: move override\AR7237.BCS BG1BCS > NUL
:: move override\AR7238.BCS BG1BCS > NUL
:: move override\AR7245.BCS BG1BCS > NUL
:: move override\AR7246.BCS BG1BCS > NUL
:: move override\AR7249.BCS BG1BCS > NUL
:: move override\AR7253.BCS BG1BCS > NUL
:: move override\AR7300.BCS BG1BCS > NUL
:: move override\AR7324.BCS BG1BCS > NUL
:: move override\AR7325.BCS BG1BCS > NUL
:: move override\AR7326.BCS BG1BCS > NUL
:: move override\AR7400.BCS BG1BCS > NUL
:: move override\AR7407.BCS BG1BCS > NUL
:: move override\AR7408.BCS BG1BCS > NUL
:: move override\AR7500.BCS BG1BCS > NUL
:: move override\AR7600.BCS BG1BCS > NUL
:: move override\AR7601.BCS BG1BCS > NUL
:: move override\AR7607.BCS BG1BCS > NUL
:: move override\AR7608.BCS BG1BCS > NUL
:: move override\AR7612.BCS BG1BCS > NUL
:: move override\AR7613.BCS BG1BCS > NUL
:: move override\AR7614.BCS BG1BCS > NUL
:: move override\AR7615.BCS BG1BCS > NUL
:: move override\AR7616.BCS BG1BCS > NUL
:: move override\AR7617.BCS BG1BCS > NUL
:: move override\AR7700.BCS BG1BCS > NUL
:: move override\AR7705.BCS BG1BCS > NUL
:: move override\AR7800.BCS BG1BCS > NUL
:: move override\AR7900.BCS BG1BCS > NUL
:: move override\AR8000.BCS BG1BCS > NUL
:: move override\AR8100.BCS BG1BCS > NUL
:: move override\AR8200.BCS BG1BCS > NUL
:: move override\AR8300.BCS BG1BCS > NUL
:: move override\AR8400.BCS BG1BCS > NUL
:: move override\AR8500.BCS BG1BCS > NUL
:: move override\AR8600.BCS BG1BCS > NUL
:: move override\AR8603.BCS BG1BCS > NUL
:: move override\AR8604.BCS BG1BCS > NUL
:: move override\AR8607.BCS BG1BCS > NUL
:: move override\AR8700.BCS BG1BCS > NUL
:: move override\AR8701.BCS BG1BCS > NUL
:: move override\AR8900.BCS BG1BCS > NUL
:: move override\AR9000.BCS BG1BCS > NUL
:: move override\AR9300.BCS BG1BCS > NUL
:: move override\AR9400.BCS BG1BCS > NUL
:: move override\AR9500.BCS BG1BCS > NUL
:: move override\AR9600.BCS BG1BCS > NUL
:: move override\ARA100.BCS BG1BCS > NUL
:: move override\ARA101.BCS BG1BCS > NUL
:: move override\ARAM00.BCS BG1BCS > NUL
:: move override\ARD000.BCS BG1BCS > NUL
:: move override\ARD002.BCS BG1BCS > NUL
:: move override\ARD007.BCS BG1BCS > NUL
:: move override\ARD011.BCS BG1BCS > NUL
:: move override\ARD012.BCS BG1BCS > NUL
:: move override\ARD014.BCS BG1BCS > NUL
:: move override\ARD016.BCS BG1BCS > NUL
:: move override\ARU000.BCS BG1BCS > NUL
:: move override\ARU002.BCS BG1BCS > NUL
:: move override\ARU003.BCS BG1BCS > NUL
:: move override\ARU004.BCS BG1BCS > NUL
:: move override\ARU008.BCS BG1BCS > NUL
:: move override\ARW000.BCS BG1BCS > NUL
:: move override\ARW001.BCS BG1BCS > NUL
:: move override\ARW500.BCS BG1BCS > NUL
:: move override\ARW501.BCS BG1BCS > NUL
:: move override\ARW504.BCS BG1BCS > NUL
:: move override\BANCUT01.BCS BG1BCS > NUL
:: move override\BANCUT02.BCS BG1BCS > NUL
:: move override\BANDIT.BCS BG1BCS > NUL
:: move override\BANDIT2.BCS BG1BCS > NUL
:: move override\BANDIT3.BCS BG1BCS > NUL
:: move override\BELT.BCS BG1BCS > NUL
:: move override\BELTBRD.BCS BG1BCS > NUL
:: move override\BGACT06.BCS BG1BCS > NUL
:: move override\BGBRANW.BCS BG1BCS > NUL
:: move override\BGEDWIN.BCS BG1BCS > NUL
:: move override\BGFALDRN.BCS BG1BCS > NUL
:: move override\BGGARRIK.BCS BG1BCS > NUL
:: move override\BGGUARD2.BCS BG1BCS > NUL
:: move override\BGGUARD3.BCS BG1BCS > NUL
:: move override\BGHP.BCS BG1BCS > NUL
:: move override\BGIMOEN.BCS BG1BCS > NUL
:: move override\BGJHEIRA.BCS BG1BCS > NUL
:: move override\BGMINSC.BCS BG1BCS > NUL
:: move override\BGSARVOK.BCS BG1BCS > NUL
:: move override\BGSENDAI.BCS BG1BCS > NUL
:: move override\BGSKIE.BCS BG1BCS > NUL
:: move override\BGTANARI.BCS BG1BCS > NUL
:: move override\BGVICNIA.BCS BG1BCS > NUL
:: move override\BHOSTILE.BCS BG1BCS > NUL
:: move override\BRAGECUT.BCS BG1BCS > NUL
:: move override\BRILLA.BCS BG1BCS > NUL
:: move override\CAPCUT01.BCS BG1BCS > NUL
:: move override\CAPCUT02.BCS BG1BCS > NUL
:: move override\CATP.BCS BG1BCS > NUL
:: move override\CH1CUT01.BCS BG1BCS > NUL
:: move override\CH1CUT02.BCS BG1BCS > NUL
:: move override\CH1CUT04.BCS BG1BCS > NUL
:: move override\CH4END.BCS BG1BCS > NUL
:: move override\CH6END.BCS BG1BCS > NUL
:: move override\CORAN.BCS BG1BCS > NUL
:: move override\CUT01BGT.BCS BG1BCS > NUL
:: move override\DAVAEORN.BCS BG1BCS > NUL
:: move override\DAVCUT01.BCS BG1BCS > NUL
:: move override\DIGCUT01.BCS BG1BCS > NUL
:: move override\DIGGER.BCS BG1BCS > NUL
:: move override\DOPKIE.BCS BG1BCS > NUL
:: move override\DOPPSS.BCS BG1BCS > NUL
:: move override\DRIZZT.BCS BG1BCS > NUL
:: move override\DRUID3.BCS BG1BCS > NUL
:: move override\DYNAHEIR.BCS BG1BCS > NUL
:: move override\ELDOTH.BCS BG1BCS > NUL
:: move override\EMERSON.BCS BG1BCS > NUL
:: move override\ENDCH4.BCS BG1BCS > NUL
:: move override\ENDCUT01.BCS BG1BCS > NUL
:: move override\ERIK.BCS BG1BCS > NUL
:: move override\FERGUS.BCS BG1BCS > NUL
:: move override\FFHUNT.BCS BG1BCS > NUL
:: move override\FGOLEM.BCS BG1BCS > NUL
:: move override\FLAM10.BCS BG1BCS > NUL
:: move override\FLAMAL.BCS BG1BCS > NUL
:: move override\FLAMVAI.BCS BG1BCS > NUL
:: move override\FTOWBAZ.BCS BG1BCS > NUL
:: move override\FTOWBEZ.BCS BG1BCS > NUL
:: move override\FTOWNAZ.BCS BG1BCS > NUL
:: move override\GATEWARD.BCS BG1BCS > NUL
:: move override\GG300.BCS BG1BCS > NUL
:: move override\GNOLL5.BCS BG1BCS > NUL
:: move override\GNOLL5A.BCS BG1BCS > NUL
:: move override\GNOLLDR.BCS BG1BCS > NUL
:: move override\GREYWOLF.BCS BG1BCS > NUL
:: move override\GTWEREWO.BCS BG1BCS > NUL
:: move override\GUARD1.BCS BG1BCS > NUL
:: move override\GUARD2.BCS BG1BCS > NUL
:: move override\HOBGOBC.BCS BG1BCS > NUL
:: move override\INITINV2.BCS BG1BCS > NUL
:: move override\JALANT.BCS BG1BCS > NUL
:: move override\JONDALAR.BCS BG1BCS > NUL
:: move override\KAGAIN.BCS BG1BCS > NUL
:: move override\KAISHA.BCS BG1BCS > NUL
:: move override\KALDRAN.BCS BG1BCS > NUL
:: move override\KESCAPE.BCS BG1BCS > NUL
:: move override\KHALID.BCS BG1BCS > NUL
:: move override\KIVAN.BCS BG1BCS > NUL
:: move override\LARYS.BCS BG1BCS > NUL
:: move override\LEAVECH7.BCS BG1BCS > NUL
:: move override\LIIA.BCS BG1BCS > NUL
:: move override\LOUPGAR2.BCS BG1BCS > NUL
:: move override\MAGE2.BCS BG1BCS > NUL
:: move override\MELICAMP.BCS BG1BCS > NUL
:: move override\MONTARON.BCS BG1BCS > NUL
:: move override\MTOWBAZ.BCS BG1BCS > NUL
:: move override\MTOWBEZ.BCS BG1BCS > NUL
:: move override\MTOWNAZ.BCS BG1BCS > NUL
:: move override\NARLEN.BCS BG1BCS > NUL
:: move override\NOBLBAZ.BCS BG1BCS > NUL
:: move override\NOBWBAZ.BCS BG1BCS > NUL
:: move override\PHEOARCH.BCS BG1BCS > NUL
:: move override\PHEOGURD.BCS BG1BCS > NUL
:: move override\PHOENIX.BCS BG1BCS > NUL
:: move override\POGHMA8.BCS BG1BCS > NUL
:: move override\QUAYLE.BCS BG1BCS > NUL
:: move override\RAIKEN.BCS BG1BCS > NUL
:: move override\READER6.BCS BG1BCS > NUL
:: move override\RUFCUT01.BCS BG1BCS > NUL
:: move override\SAFANA.BCS BG1BCS > NUL
:: move override\SARRUN.BCS BG1BCS > NUL
:: move override\SBTDWN.BCS BG1BCS > NUL
:: move override\SBTIMO.BCS BG1BCS > NUL
:: move override\SBTJAH.BCS BG1BCS > NUL
:: move override\SBTKAG.BCS BG1BCS > NUL
:: move override\SBTKIV.BCS BG1BCS > NUL
:: move override\SBTMIN.BCS BG1BCS > NUL
:: move override\SBTSHR.BCS BG1BCS > NUL
:: move override\SBTVIC.BCS BG1BCS > NUL
:: move override\SBTXZR.BCS BG1BCS > NUL
:: move override\SBTYES.BCS BG1BCS > NUL
:: move override\SCARCUT.BCS BG1BCS > NUL
:: move override\SEMAJ.BCS BG1BCS > NUL
:: move override\SENIYAD.BCS BG1BCS > NUL
:: move override\SHADOW.BCS BG1BCS > NUL
:: move override\SHARTEEL.BCS BG1BCS > NUL
:: move override\SHARTEL2.BCS BG1BCS > NUL
:: move override\SHIP.BCS BG1BCS > NUL
:: move override\SHOAL.BCS BG1BCS > NUL
:: move override\TERSUS.BCS BG1BCS > NUL
:: move override\TETHTORL.BCS BG1BCS > NUL
:: move override\TEVEN.BCS BG1BCS > NUL
:: move override\THALANTR.BCS BG1BCS > NUL
:: move override\THIEF.BCS BG1BCS > NUL
:: move override\THIEFG.BCS BG1BCS > NUL
:: move override\THIEVES.BCS BG1BCS > NUL
:: move override\TIAX.BCS BG1BCS > NUL
:: move override\TRANZIG.BCS BG1BCS > NUL
:: move override\TRAPDIS.BCS BG1BCS > NUL
:: move override\TRPSKEL.BCS BG1BCS > NUL
:: move override\TTARNOR.BCS BG1BCS > NUL
:: move override\WATCH3.BCS BG1BCS > NUL
:: move override\WATCHEN2.BCS BG1BCS > NUL
:: move override\XAN.BCS BG1BCS > NUL
:: move override\XVARTH.BCS BG1BCS > NUL
:: move override\XZAR.BCS BG1BCS > NUL
:: move override\YESLICK.BCS BG1BCS > NUL
move override\MBAS_GR.BMP BG1BCS > NUL
_weidu --make-biff BG1BCS
call BGT\Install\deldir BG1BCS

md BGTCRE
:: move override\A6BIO.CRE BGTCRE > NUL
:: move override\AASIM.CRE BGTCRE > NUL
:: move override\ABELA.CRE BGTCRE > NUL
:: move override\ACHEN.CRE BGTCRE > NUL
:: move override\ADDY.CRE BGTCRE > NUL
:: move override\AGNASI.CRE BGTCRE > NUL
:: move override\AIRASPEC.CRE BGTCRE > NUL
:: move override\AJANTI.CRE BGTCRE > NUL
:: move override\AJANTI4.CRE BGTCRE > NUL
:: move override\AJANTI6.CRE BGTCRE > NUL
:: move override\ALAI.CRE BGTCRE > NUL
:: move override\ALANBL.CRE BGTCRE > NUL
:: move override\ALATOS.CRE BGTCRE > NUL
:: move override\ALBERT.CRE BGTCRE > NUL
:: move override\ALDETH.CRE BGTCRE > NUL
:: move override\ALEXAN.CRE BGTCRE > NUL
:: move override\ALGERN.CRE BGTCRE > NUL
:: move override\ALORA.CRE BGTCRE > NUL
:: move override\ALORA6.CRE BGTCRE > NUL
:: move override\ALVANH.CRE BGTCRE > NUL
:: move override\ALYTH.CRE BGTCRE > NUL
:: move override\AMARAN.CRE BGTCRE > NUL
:: move override\AMBMAEVR.CRE BGTCRE > NUL
:: move override\AMBSTHF0.CRE BGTCRE > NUL
:: move override\AMBTHIF2.CRE BGTCRE > NUL
:: move override\AMNIS.CRE BGTCRE > NUL
:: move override\AMNIS3.CRE BGTCRE > NUL
:: move override\AMNIS4.CRE BGTCRE > NUL
:: move override\AMNISE.CRE BGTCRE > NUL
:: move override\AMNISE2.CRE BGTCRE > NUL
:: move override\AMSLEEP.CRE BGTCRE > NUL
:: move override\ANDARS.CRE BGTCRE > NUL
:: move override\ANDOUT.CRE BGTCRE > NUL
:: move override\ANDRIS.CRE BGTCRE > NUL
:: move override\ANGELO.CRE BGTCRE > NUL
:: move override\ANKHEG.CRE BGTCRE > NUL
:: move override\ANKHEGG.CRE BGTCRE > NUL
:: move override\ANKHEGQ.CRE BGTCRE > NUL
:: move override\AOLN.CRE BGTCRE > NUL
:: move override\APPAR.CRE BGTCRE > NUL
:: move override\ARDENO.CRE BGTCRE > NUL
:: move override\ARDROU.CRE BGTCRE > NUL
:: move override\ARGHAI.CRE BGTCRE > NUL
:: move override\ARGHH.CRE BGTCRE > NUL
:: move override\ARKANI.CRE BGTCRE > NUL
:: move override\ARKANI3.CRE BGTCRE > NUL
:: move override\ARKION.CRE BGTCRE > NUL
:: move override\ARKUSH.CRE BGTCRE > NUL
:: move override\ARLIN.CRE BGTCRE > NUL
:: move override\ASHEN.CRE BGTCRE > NUL
:: move override\ASHIRU.CRE BGTCRE > NUL
:: move override\ATTSLIM.CRE BGTCRE > NUL
:: move override\AVARICE.CRE BGTCRE > NUL
:: move override\AVARICEM.CRE BGTCRE > NUL
:: move override\BAERIN.CRE BGTCRE > NUL
:: move override\BANDCAP.CRE BGTCRE > NUL
:: move override\BANDCR.CRE BGTCRE > NUL
:: move override\BANDIC.CRE BGTCRE > NUL
:: move override\BANDIT.CRE BGTCRE > NUL
:: move override\BANDIT2.CRE BGTCRE > NUL
:: move override\BANDITA.CRE BGTCRE > NUL
:: move override\BANDITC.CRE BGTCRE > NUL
:: move override\BANDITCY.CRE BGTCRE > NUL
:: move override\BARDOL.CRE BGTCRE > NUL
:: move override\BARESH.CRE BGTCRE > NUL
:: move override\BARESH2.CRE BGTCRE > NUL
:: move override\BARSLIM.CRE BGTCRE > NUL
:: move override\BART10.CRE BGTCRE > NUL
:: move override\BART11.CRE BGTCRE > NUL
:: move override\BART12.CRE BGTCRE > NUL
:: move override\BART13.CRE BGTCRE > NUL
:: move override\BART14.CRE BGTCRE > NUL
:: move override\BART15.CRE BGTCRE > NUL
:: move override\BART16.CRE BGTCRE > NUL
:: move override\BART2.CRE BGTCRE > NUL
:: move override\BART3.CRE BGTCRE > NUL
:: move override\BART4.CRE BGTCRE > NUL
:: move override\BART5.CRE BGTCRE > NUL
:: move override\BART6.CRE BGTCRE > NUL
:: move override\BART7.CRE BGTCRE > NUL
:: move override\BARUK.CRE BGTCRE > NUL
:: move override\BARWLF.CRE BGTCRE > NUL
:: move override\BASILG.CRE BGTCRE > NUL
:: move override\BASILMUT.CRE BGTCRE > NUL
:: move override\BASILNAD.CRE BGTCRE > NUL
:: move override\BASSIL.CRE BGTCRE > NUL
:: move override\BATTHO.CRE BGTCRE > NUL
:: move override\BAT_DOOR.CRE BGTCRE > NUL
:: move override\BAT_IN.CRE BGTCRE > NUL
:: move override\BAT_OUT.CRE BGTCRE > NUL
:: move override\BAYARD.CRE BGTCRE > NUL
:: move override\BEARBL.CRE BGTCRE > NUL
:: move override\BEARBLSU.CRE BGTCRE > NUL
:: move override\BEARBR.CRE BGTCRE > NUL
:: move override\BEARBRSU.CRE BGTCRE > NUL
:: move override\BEARCA.CRE BGTCRE > NUL
:: move override\BEARCASU.CRE BGTCRE > NUL
:: move override\BEARPO.CRE BGTCRE > NUL
:: move override\BEARPO1.CRE BGTCRE > NUL
:: move override\BEARPO3.CRE BGTCRE > NUL
:: move override\BEGBAX_A.CRE BGTCRE > NUL
:: move override\BEGBAX_B.CRE BGTCRE > NUL
:: move override\BEGBAX_C.CRE BGTCRE > NUL
:: move override\BEGBAX_D.CRE BGTCRE > NUL
:: move override\BEGGBA.CRE BGTCRE > NUL
:: move override\BEGGBAX.CRE BGTCRE > NUL
:: move override\BEGGNA.CRE BGTCRE > NUL
:: move override\BELAND.CRE BGTCRE > NUL
:: move override\BELDIN.CRE BGTCRE > NUL
:: move override\BELLAM.CRE BGTCRE > NUL
:: move override\BELTBRD.CRE BGTCRE > NUL
:: move override\BENDAL.CRE BGTCRE > NUL
:: move override\BENJY.CRE BGTCRE > NUL
:: move override\BENTAN.CRE BGTCRE > NUL
:: move override\BENTHA.CRE BGTCRE > NUL
:: move override\BENTLY.CRE BGTCRE > NUL
:: move override\BERRUN.CRE BGTCRE > NUL
:: move override\BEYN.CRE BGTCRE > NUL
:: move override\BGBASILL.CRE BGTCRE > NUL
:: move override\BGBISHOP.CRE BGTCRE > NUL
:: move override\BGCALAHA.CRE BGTCRE > NUL
:: move override\BGCARBOS.CRE BGTCRE > NUL
:: move override\BGFLAM6.CRE BGTCRE > NUL
:: move override\BGFLAM62.CRE BGTCRE > NUL
:: move override\BGFTOWN2.CRE BGTCRE > NUL
:: move override\BGFTOWN3.CRE BGTCRE > NUL
:: move override\BGFTOWN4.CRE BGTCRE > NUL
:: move override\BGGHAST.CRE BGTCRE > NUL
:: move override\BGGORF.CRE BGTCRE > NUL
:: move override\BGIGIBB.CRE BGTCRE > NUL
:: move override\BGKING.CRE BGTCRE > NUL
:: move override\BGKNIGH1.CRE BGTCRE > NUL
:: move override\BGKNIGHT.CRE BGTCRE > NUL
:: move override\BGMTOWN2.CRE BGTCRE > NUL
:: move override\BGMTOWN3.CRE BGTCRE > NUL
:: move override\BGMTOWN4.CRE BGTCRE > NUL
:: move override\BGMTOWN5.CRE BGTCRE > NUL
:: move override\BGNEB.CRE BGTCRE > NUL
:: move override\BGPAWN.CRE BGTCRE > NUL
:: move override\BGQUAYLE.CRE BGTCRE > NUL
:: move override\BGQUEEN.CRE BGTCRE > NUL
:: move override\BGROGER.CRE BGTCRE > NUL
:: move override\BGROOK.CRE BGTCRE > NUL
:: move override\BGSENDAI.CRE BGTCRE > NUL
:: move override\BGSHANK.CRE BGTCRE > NUL
:: move override\BGSHOP01.CRE BGTCRE > NUL
:: move override\BGSHOP03.CRE BGTCRE > NUL
:: move override\BGSHOP04.CRE BGTCRE > NUL
:: move override\BGSHOP06.CRE BGTCRE > NUL
:: move override\BGSHOP07.CRE BGTCRE > NUL
:: move override\BGSHOP08.CRE BGTCRE > NUL
:: move override\BGSKEL02.CRE BGTCRE > NUL
:: move override\BGSKEL03.CRE BGTCRE > NUL
:: move override\BGSKELWA.CRE BGTCRE > NUL
:: move override\BGTARNOR.CRE BGTCRE > NUL
:: move override\BGTAZOK.CRE BGTCRE > NUL
:: move override\BGTOWNCR.CRE BGTCRE > NUL
:: move override\BGWILLIA.CRE BGTCRE > NUL
:: move override\BGWOLF.CRE BGTCRE > NUL
:: move override\BGWOWEGR.CRE BGTCRE > NUL
:: move override\BGXAN.CRE BGTCRE > NUL
:: move override\BGXZAR.CRE BGTCRE > NUL
:: move override\BHEREN.CRE BGTCRE > NUL
:: move override\BHOBGOB.CRE BGTCRE > NUL
:: move override\BILL.CRE BGTCRE > NUL
:: move override\BILLY.CRE BGTCRE > NUL
:: move override\BINKOS.CRE BGTCRE > NUL
:: move override\BINKY.CRE BGTCRE > NUL
:: move override\BIP.CRE BGTCRE > NUL
:: move override\BIRD.CRE BGTCRE > NUL
:: move override\BJORNI.CRE BGTCRE > NUL
:: move override\BLACKL.CRE BGTCRE > NUL
:: move override\BLANE.CRE BGTCRE > NUL
:: move override\BOB.CRE BGTCRE > NUL
:: move override\BOR.CRE BGTCRE > NUL
:: move override\BORDA.CRE BGTCRE > NUL
:: move override\BORIN.CRE BGTCRE > NUL
:: move override\BORK.CRE BGTCRE > NUL
:: move override\BOUNCER.CRE BGTCRE > NUL
:: move override\BOUNTY.CRE BGTCRE > NUL
:: move override\BOUNTY2.CRE BGTCRE > NUL
:: move override\BOYBA1.CRE BGTCRE > NUL
:: move override\BOYBA1_A.CRE BGTCRE > NUL
:: move override\BOYBA1_C.CRE BGTCRE > NUL
:: move override\BOYBA2.CRE BGTCRE > NUL
:: move override\BOYBA3_A.CRE BGTCRE > NUL
:: move override\BOYBA3_B.CRE BGTCRE > NUL
:: move override\BOYBAX.CRE BGTCRE > NUL
:: move override\BOYBAX_A.CRE BGTCRE > NUL
:: move override\BOYBAX_B.CRE BGTCRE > NUL
:: move override\BOYBAX_C.CRE BGTCRE > NUL
:: move override\BOYBE1.CRE BGTCRE > NUL
:: move override\BOYBE2.CRE BGTCRE > NUL
:: move override\BPDYNAHE.CRE BGTCRE > NUL
:: move override\BPIMOEN.CRE BGTCRE > NUL
:: move override\BPJAHEIR.CRE BGTCRE > NUL
:: move override\BPKHALID.CRE BGTCRE > NUL
:: move override\BPMINSC.CRE BGTCRE > NUL
:: move override\BRAGE.CRE BGTCRE > NUL
:: move override\BRAN.CRE BGTCRE > NUL
:: move override\BRANDI.CRE BGTCRE > NUL
:: move override\branwe.CRE BGTCRE > NUL
:: move override\branwe5.CRE BGTCRE > NUL
:: move override\BRATHL.CRE BGTCRE > NUL
:: move override\BRENDA.CRE BGTCRE > NUL
:: move override\BRENNA.CRE BGTCRE > NUL
:: move override\BREVLI.CRE BGTCRE > NUL
:: move override\BRIELB.CRE BGTCRE > NUL
:: move override\BRILLA.CRE BGTCRE > NUL
:: move override\BRITIK.CRE BGTCRE > NUL
:: move override\BRUNOS.CRE BGTCRE > NUL
:: move override\BUB.CRE BGTCRE > NUL
:: move override\BULLRUSH.CRE BGTCRE > NUL
:: move override\BYSTAND2.CRE BGTCRE > NUL
:: move override\CADDER.CRE BGTCRE > NUL
:: move override\CAEDMO.CRE BGTCRE > NUL
:: move override\CAILAN.CRE BGTCRE > NUL
:: move override\CALDO.CRE BGTCRE > NUL
:: move override\CANDER.CRE BGTCRE > NUL
:: move override\CANTIC.CRE BGTCRE > NUL
:: move override\CANTO.CRE BGTCRE > NUL
:: move override\CARRIO.CRE BGTCRE > NUL
:: move override\CARSA.CRE BGTCRE > NUL
:: move override\CARSTO.CRE BGTCRE > NUL
:: move override\CASSON.CRE BGTCRE > NUL
:: move override\cat.CRE BGTCRE > NUL
:: move override\CATDEAD.CRE BGTCRE > NUL
:: move override\CATP.CRE BGTCRE > NUL
:: move override\CATTAC.CRE BGTCRE > NUL
:: move override\CATURA.CRE BGTCRE > NUL
:: move override\CAUTER.CRE BGTCRE > NUL
:: move override\CAVENE.CRE BGTCRE > NUL
:: move override\CENTEO.CRE BGTCRE > NUL
:: move override\CHANTE.CRE BGTCRE > NUL
:: move override\CHANTE2.CRE BGTCRE > NUL
:: move override\CHANTH.CRE BGTCRE > NUL
:: move override\CHARLE.CRE BGTCRE > NUL
:: move override\CHASE.CRE BGTCRE > NUL
:: move override\CHELAN.CRE BGTCRE > NUL
:: move override\CHESS.CRE BGTCRE > NUL
:: move override\CHHERD.CRE BGTCRE > NUL
:: move override\CHICKE.CRE BGTCRE > NUL
:: move override\CHICKER.CRE BGTCRE > NUL
:: move override\CHILDULG.CRE BGTCRE > NUL
:: move override\CHILNA.CRE BGTCRE > NUL
:: move override\CHILNA_A.CRE BGTCRE > NUL
:: move override\CHILNA_B.CRE BGTCRE > NUL
:: move override\CHILNA_C.CRE BGTCRE > NUL
:: move override\CHILNA_D.CRE BGTCRE > NUL
:: move override\CHIMP5.CRE BGTCRE > NUL
:: move override\CHLOE.CRE BGTCRE > NUL
:: move override\CLAIRD.CRE BGTCRE > NUL
:: move override\COKSMTH.CRE BGTCRE > NUL
:: move override\CONNOL.CRE BGTCRE > NUL
:: move override\CORAN.CRE BGTCRE > NUL
:: move override\CORAN5.CRE BGTCRE > NUL
:: move override\CORDYR.CRE BGTCRE > NUL
:: move override\CORPSE1.CRE BGTCRE > NUL
:: move override\CORPSE2.CRE BGTCRE > NUL
:: move override\CORSONE.CRE BGTCRE > NUL
:: move override\CORY.CRE BGTCRE > NUL
:: move override\COWH.CRE BGTCRE > NUL
:: move override\CREDUS.CRE BGTCRE > NUL
:: move override\CREW1.CRE BGTCRE > NUL
:: move override\CREW2.CRE BGTCRE > NUL
:: move override\CREW3.CRE BGTCRE > NUL
:: move override\CREW4.CRE BGTCRE > NUL
:: move override\CREW5.CRE BGTCRE > NUL
:: move override\CREW6.CRE BGTCRE > NUL
:: move override\CREW7.CRE BGTCRE > NUL
:: move override\CRYPTCRA.CRE BGTCRE > NUL
:: move override\CUCHOL.CRE BGTCRE > NUL
:: move override\CULT1.CRE BGTCRE > NUL
:: move override\CULT2.CRE BGTCRE > NUL
:: move override\CULT3.CRE BGTCRE > NUL
:: move override\CULTD1.CRE BGTCRE > NUL
:: move override\CULTD2.CRE BGTCRE > NUL
:: move override\CULTD3.CRE BGTCRE > NUL
:: move override\CULTD4.CRE BGTCRE > NUL
:: move override\CULTD5.CRE BGTCRE > NUL
:: move override\CULTD6.CRE BGTCRE > NUL
:: move override\CULTT1.CRE BGTCRE > NUL
:: move override\CULTT2.CRE BGTCRE > NUL
:: move override\CULTT3.CRE BGTCRE > NUL
:: move override\CULTT4.CRE BGTCRE > NUL
:: move override\CYDERM.CRE BGTCRE > NUL
:: move override\CYTHAN.CRE BGTCRE > NUL
:: move override\D2FUE.CRE BGTCRE > NUL
:: move override\D2ISL.CRE BGTCRE > NUL
:: move override\DABRON.CRE BGTCRE > NUL
:: move override\DAERRAGH.CRE BGTCRE > NUL
:: move override\DAESE.CRE BGTCRE > NUL
:: move override\DAESEWLF.CRE BGTCRE > NUL
:: move override\DAITEL.CRE BGTCRE > NUL
:: move override\DALTON.CRE BGTCRE > NUL
:: move override\DANDAL.CRE BGTCRE > NUL
:: move override\DARRYL.CRE BGTCRE > NUL
:: move override\DARRYL2.CRE BGTCRE > NUL
:: move override\DAVAEO.CRE BGTCRE > NUL
:: move override\DEAD.CRE BGTCRE > NUL
:: move override\DEAD1.CRE BGTCRE > NUL
:: move override\DEAD2.CRE BGTCRE > NUL
:: move override\DEADFUCK.CRE BGTCRE > NUL
:: move override\DEATHK.CRE BGTCRE > NUL
:: move override\DEATHK1.CRE BGTCRE > NUL
:: move override\DEDER.CRE BGTCRE > NUL
:: move override\DEDER3.CRE BGTCRE > NUL
:: move override\DEGROD.CRE BGTCRE > NUL
:: move override\DELAIN.CRE BGTCRE > NUL
:: move override\DELAIN2.CRE BGTCRE > NUL
:: move override\DELGOD.CRE BGTCRE > NUL
:: move override\DELORN.CRE BGTCRE > NUL
:: move override\DELSVIR.CRE BGTCRE > NUL
:: move override\DELTAN.CRE BGTCRE > NUL
:: move override\DELTAN2.CRE BGTCRE > NUL
:: move override\DELTHY.CRE BGTCRE > NUL
:: move override\DENAK.CRE BGTCRE > NUL
:: move override\DENKOD.CRE BGTCRE > NUL
:: move override\DESRET.CRE BGTCRE > NUL
:: move override\DESSLO.CRE BGTCRE > NUL
:: move override\DESTUS.CRE BGTCRE > NUL
:: move override\DETRAN.CRE BGTCRE > NUL
:: move override\DEZKIE.CRE BGTCRE > NUL
:: move override\DHANIA.CRE BGTCRE > NUL
:: move override\DIANA.CRE BGTCRE > NUL
:: move override\DIARMID.CRE BGTCRE > NUL
:: move override\DIGGER.CRE BGTCRE > NUL
:: move override\DILAK.CRE BGTCRE > NUL
:: move override\DILLAR.CRE BGTCRE > NUL
:: move override\DINK.CRE BGTCRE > NUL
:: move override\DIRK.CRE BGTCRE > NUL
:: move override\DIVINE.CRE BGTCRE > NUL
:: move override\DIYAB.CRE BGTCRE > NUL
:: move override\DOGBLINK.CRE BGTCRE > NUL
:: move override\DOGWA.CRE BGTCRE > NUL
:: move override\DOGWASU.CRE BGTCRE > NUL
:: move override\DOGWI.CRE BGTCRE > NUL
:: move override\DOGWISU.CRE BGTCRE > NUL
:: move override\DOOMDUR.CRE BGTCRE > NUL
:: move override\DOOMGU.CRE BGTCRE > NUL
:: move override\DOOMSA.CRE BGTCRE > NUL
:: move override\DOPDOP.CRE BGTCRE > NUL
:: move override\DOPDUR.CRE BGTCRE > NUL
:: move override\DOPDUR1.CRE BGTCRE > NUL
:: move override\DOPDUR2.CRE BGTCRE > NUL
:: move override\DOPDUR3.CRE BGTCRE > NUL
:: move override\DOPFUE.CRE BGTCRE > NUL
:: move override\DOPISL.CRE BGTCRE > NUL
:: move override\DOPKIE.CRE BGTCRE > NUL
:: move override\DOPMER.CRE BGTCRE > NUL
:: move override\DOPPGR.CRE BGTCRE > NUL
:: move override\DOPPLE.CRE BGTCRE > NUL
:: move override\DOPPSM.CRE BGTCRE > NUL
:: move override\DOPPSS.CRE BGTCRE > NUL
:: move override\DOPZORL.CRE BGTCRE > NUL
:: move override\DRADEE.CRE BGTCRE > NUL
:: move override\DRADEE2.CRE BGTCRE > NUL
:: move override\DRAKAR.CRE BGTCRE > NUL
:: move override\DRASUS.CRE BGTCRE > NUL
:: move override\DRATAN.CRE BGTCRE > NUL
:: move override\DRELIK.CRE BGTCRE > NUL
:: move override\DREPPI.CRE BGTCRE > NUL
:: move override\DREPPI2.CRE BGTCRE > NUL
:: move override\DREPPI3.CRE BGTCRE > NUL
:: move override\DRIBBE.CRE BGTCRE > NUL
:: move override\DRIENN.CRE BGTCRE > NUL
:: move override\DRIZZT.CRE BGTCRE > NUL
:: move override\DROTH.CRE BGTCRE > NUL
:: move override\DRUID3.CRE BGTCRE > NUL
:: move override\DRUNK.CRE BGTCRE > NUL
:: move override\DRYAD.CRE BGTCRE > NUL
:: move override\DRYADHA.CRE BGTCRE > NUL
:: move override\DUMFUE.CRE BGTCRE > NUL
:: move override\DUMISL.CRE BGTCRE > NUL
:: move override\DUMKIE.CRE BGTCRE > NUL
:: move override\DUN.CRE BGTCRE > NUL
:: move override\DUNKIN.CRE BGTCRE > NUL
:: move override\DUPLICA1.CRE BGTCRE > NUL
:: move override\DUPLICA2.CRE BGTCRE > NUL
:: move override\DUPLICA3.CRE BGTCRE > NUL
:: move override\DUPLICA4.CRE BGTCRE > NUL
:: move override\DUPLICA5.CRE BGTCRE > NUL
:: move override\DUPLICA6.CRE BGTCRE > NUL
:: move override\DURLAGT.CRE BGTCRE > NUL
:: move override\DURLYL.CRE BGTCRE > NUL
:: move override\DURLYL2.CRE BGTCRE > NUL
:: move override\DURSWORD.CRE BGTCRE > NUL
:: move override\DUSHAI.CRE BGTCRE > NUL
:: move override\DYNAHE.CRE BGTCRE > NUL
:: move override\DYNAHE2.CRE BGTCRE > NUL
:: move override\DYNAHE4.CRE BGTCRE > NUL
:: move override\DYNAHE6.CRE BGTCRE > NUL
:: move override\EAGLE.CRE BGTCRE > NUL
:: move override\EDWIN.CRE BGTCRE > NUL
:: move override\EDWIN2.CRE BGTCRE > NUL
:: move override\EDWIN4.CRE BGTCRE > NUL
:: move override\EDWIN6.CRE BGTCRE > NUL
:: move override\ELDOTH.CRE BGTCRE > NUL
:: move override\ELDOTH5.CRE BGTCRE > NUL
:: move override\ELKART.CRE BGTCRE > NUL
:: move override\ELMIN1.CRE BGTCRE > NUL
:: move override\ELMIN2.CRE BGTCRE > NUL
:: move override\ELMIN3.CRE BGTCRE > NUL
:: move override\ELMIN5.CRE BGTCRE > NUL
:: move override\ELMINS4.CRE BGTCRE > NUL
:: move override\EMERSO.CRE BGTCRE > NUL
:: move override\EMITAR.CRE BGTCRE > NUL
:: move override\EMITAR2.CRE BGTCRE > NUL
:: move override\EMITAR3.CRE BGTCRE > NUL
:: move override\ENDER.CRE BGTCRE > NUL
:: move override\ENTILL.CRE BGTCRE > NUL
:: move override\ERDANE.CRE BGTCRE > NUL
:: move override\ERIK.CRE BGTCRE > NUL
:: move override\ETTERC.CRE BGTCRE > NUL
:: move override\ETTERC1.CRE BGTCRE > NUL
:: move override\EURIC.CRE BGTCRE > NUL
:: move override\EVALT.CRE BGTCRE > NUL
:: move override\FABER.CRE BGTCRE > NUL
:: move override\FAFIGHT.CRE BGTCRE > NUL
:: move override\FAHRIN.CRE BGTCRE > NUL
:: move override\FAIZAH.CRE BGTCRE > NUL
:: move override\FALDOR.CRE BGTCRE > NUL
:: move override\FALDOR5.CRE BGTCRE > NUL
:: move override\FARLUC.CRE BGTCRE > NUL
:: move override\FARM.CRE BGTCRE > NUL
:: move override\FARM3.CRE BGTCRE > NUL
:: move override\FARM4.CRE BGTCRE > NUL
:: move override\FARMBR.CRE BGTCRE > NUL
:: move override\FARMER.CRE BGTCRE > NUL
:: move override\FARTHI.CRE BGTCRE > NUL
:: move override\FATMAN.CRE BGTCRE > NUL
:: move override\FATWOM.CRE BGTCRE > NUL
:: move override\FCOOK2.CRE BGTCRE > NUL
:: move override\FCOOK3.CRE BGTCRE > NUL
:: move override\FEAR.CRE BGTCRE > NUL
:: move override\FEARM.CRE BGTCRE > NUL
:: move override\FECOOK.CRE BGTCRE > NUL
:: move override\FELONI.CRE BGTCRE > NUL
:: move override\FENRUS.CRE BGTCRE > NUL
:: move override\FENTEN.CRE BGTCRE > NUL
:: move override\FERGUS.CRE BGTCRE > NUL
:: move override\FFHUNT.CRE BGTCRE > NUL
:: move override\FFSLEEP.CRE BGTCRE > NUL
:: move override\FGOLEM.CRE BGTCRE > NUL
:: move override\FIREB1.CRE BGTCRE > NUL
:: move override\FIREBE.CRE BGTCRE > NUL
:: move override\FLAM.CRE BGTCRE > NUL
:: move override\FLAM10.CRE BGTCRE > NUL
:: move override\FLAM11.CRE BGTCRE > NUL
:: move override\FLAM12.CRE BGTCRE > NUL
:: move override\FLAM2.CRE BGTCRE > NUL
:: move override\FLAM4.CRE BGTCRE > NUL
:: move override\FLAM5.CRE BGTCRE > NUL
:: move override\FLAM6.CRE BGTCRE > NUL
:: move override\FLAM7.CRE BGTCRE > NUL
:: move override\FLAM9.CRE BGTCRE > NUL
:: move override\FLAMAL.CRE BGTCRE > NUL
:: move override\FLAMANG.CRE BGTCRE > NUL
:: move override\FLAMBRID.CRE BGTCRE > NUL
:: move override\FLAME.CRE BGTCRE > NUL
:: move override\FLAMEN.CRE BGTCRE > NUL
:: move override\FLAMEN2.CRE BGTCRE > NUL
:: move override\FLAMGG.CRE BGTCRE > NUL
:: move override\FLAMHUSB.CRE BGTCRE > NUL
:: move override\FLAMPUN.CRE BGTCRE > NUL
:: move override\FLAMPUN2.CRE BGTCRE > NUL
:: move override\FLAMSCO.CRE BGTCRE > NUL
:: move override\FLAMVAI.CRE BGTCRE > NUL
:: move override\FLAMWIZ.CRE BGTCRE > NUL
:: move override\FLIND.CRE BGTCRE > NUL
:: move override\FOOTY.CRE BGTCRE > NUL
:: move override\FORESH.CRE BGTCRE > NUL
:: move override\FORTHE.CRE BGTCRE > NUL
:: move override\FRIEND.CRE BGTCRE > NUL
:: move override\FRIWEN.CRE BGTCRE > NUL
:: move override\FTOBE2.CRE BGTCRE > NUL
:: move override\FTOBE3.CRE BGTCRE > NUL
:: move override\FTOBE4.CRE BGTCRE > NUL
:: move override\FTOBE5.CRE BGTCRE > NUL
:: move override\FTOBE6.CRE BGTCRE > NUL
:: move override\FTOBE7.CRE BGTCRE > NUL
:: move override\FTOBE8.CRE BGTCRE > NUL
:: move override\FTOBE9.CRE BGTCRE > NUL
:: move override\FTOWB5.CRE BGTCRE > NUL
:: move override\FTOWB6.CRE BGTCRE > NUL
:: move override\FTOWB7.CRE BGTCRE > NUL
:: move override\FTOWBA.CRE BGTCRE > NUL
:: move override\FTOWBASC.CRE BGTCRE > NUL
:: move override\FTOWBASN.CRE BGTCRE > NUL
:: move override\FTOWBAX.CRE BGTCRE > NUL
:: move override\FTOWBA_A.CRE BGTCRE > NUL
:: move override\FTOWBA_B.CRE BGTCRE > NUL
:: move override\FTOWBA_C.CRE BGTCRE > NUL
:: move override\FTOWBA_D.CRE BGTCRE > NUL
:: move override\FTOWBA_E.CRE BGTCRE > NUL
:: move override\FTOWBESC.CRE BGTCRE > NUL
:: move override\FTOWBEX.CRE BGTCRE > NUL
:: move override\FTOWBE_A.CRE BGTCRE > NUL
:: move override\FTOWBE_B.CRE BGTCRE > NUL
:: move override\FTOWBE_C.CRE BGTCRE > NUL
:: move override\FTOWBE_D.CRE BGTCRE > NUL
:: move override\FTOWBE_E.CRE BGTCRE > NUL
:: move override\FTOWFR.CRE BGTCRE > NUL
:: move override\FTOWFRSC.CRE BGTCRE > NUL
:: move override\FTOWFR_B.CRE BGTCRE > NUL
:: move override\FTOWFR_D.CRE BGTCRE > NUL
:: move override\FTOWFR_E.CRE BGTCRE > NUL
:: move override\FTOWNA.CRE BGTCRE > NUL
:: move override\FTOWNA_A.CRE BGTCRE > NUL
:: move override\FTOWNA_B.CRE BGTCRE > NUL
:: move override\FTOWNA_E.CRE BGTCRE > NUL
:: move override\FTOWUB.CRE BGTCRE > NUL
:: move override\FTOWUBX.CRE BGTCRE > NUL
:: move override\FTOWUB_A.CRE BGTCRE > NUL
:: move override\FTOWUB_B.CRE BGTCRE > NUL
:: move override\FTOWUB_C.CRE BGTCRE > NUL
:: move override\FTOWUB_D.CRE BGTCRE > NUL
:: move override\FTOWUB_E.CRE BGTCRE > NUL
:: move override\FTOWWI.CRE BGTCRE > NUL
:: move override\FTOWWI_A.CRE BGTCRE > NUL
:: move override\FTOWWI_B.CRE BGTCRE > NUL
:: move override\FTOWWI_C.CRE BGTCRE > NUL
:: move override\FTOWWI_D.CRE BGTCRE > NUL
:: move override\FTOWWI_E.CRE BGTCRE > NUL
:: move override\FTWBAX_A.CRE BGTCRE > NUL
:: move override\FTWBAX_B.CRE BGTCRE > NUL
:: move override\FTWBAX_C.CRE BGTCRE > NUL
:: move override\FTWBAX_D.CRE BGTCRE > NUL
:: move override\FTWBAX_E.CRE BGTCRE > NUL
:: move override\FUERNE.CRE BGTCRE > NUL
:: move override\FULLER.CRE BGTCRE > NUL
:: move override\FULLER2.CRE BGTCRE > NUL
:: move override\FULLER3.CRE BGTCRE > NUL
:: move override\GALDOR.CRE BGTCRE > NUL
:: move override\GALILE.CRE BGTCRE > NUL
:: move override\GALKEN.CRE BGTCRE > NUL
:: move override\GALLOR.CRE BGTCRE > NUL
:: move override\GALTOK.CRE BGTCRE > NUL
:: move override\GAMES.CRE BGTCRE > NUL
:: move override\GAMES2.CRE BGTCRE > NUL
:: move override\GAMES3.CRE BGTCRE > NUL
:: move override\GAMES4.CRE BGTCRE > NUL
:: move override\GAMES5.CRE BGTCRE > NUL
:: move override\GANDOL.CRE BGTCRE > NUL
:: move override\GANTOL.CRE BGTCRE > NUL
:: move override\GANTOL1.CRE BGTCRE > NUL
:: move override\GANTOL2.CRE BGTCRE > NUL
:: move override\GARAN.CRE BGTCRE > NUL
:: move override\GARDEN.CRE BGTCRE > NUL
:: move override\GARDUS.CRE BGTCRE > NUL
:: move override\GARKLA.CRE BGTCRE > NUL
:: move override\GARRIC.CRE BGTCRE > NUL
:: move override\GARRIC2.CRE BGTCRE > NUL
:: move override\GARRIC4.CRE BGTCRE > NUL
:: move override\GARRIC6.CRE BGTCRE > NUL
:: move override\GATEWA.CRE BGTCRE > NUL
:: move override\GATEWA2.CRE BGTCRE > NUL
:: move override\GATEWERE.CRE BGTCRE > NUL
:: move override\GAXIR.CRE BGTCRE > NUL
:: move override\GAZIB.CRE BGTCRE > NUL
:: move override\GDOPP7.CRE BGTCRE > NUL
:: move override\GDOPP71.CRE BGTCRE > NUL
:: move override\GDOPP72.CRE BGTCRE > NUL
:: move override\GDOPP73.CRE BGTCRE > NUL
:: move override\GDOPP74.CRE BGTCRE > NUL
:: move override\GDOPP75.CRE BGTCRE > NUL
:: move override\GELLAN.CRE BGTCRE > NUL
:: move override\GELTIK.CRE BGTCRE > NUL
:: move override\GENTHO.CRE BGTCRE > NUL
:: move override\GERDE.CRE BGTCRE > NUL
:: move override\GERVIS.CRE BGTCRE > NUL
:: move override\GHAST.CRE BGTCRE > NUL
:: move override\GHASTD.CRE BGTCRE > NUL
:: move override\GHASTS.CRE BGTCRE > NUL
:: move override\GHORAK.CRE BGTCRE > NUL
:: move override\GHOUL.CRE BGTCRE > NUL
:: move override\GHOULLOR.CRE BGTCRE > NUL
:: move override\GHOULSU.CRE BGTCRE > NUL
:: move override\GIBBER.CRE BGTCRE > NUL
:: move override\GIBBER2.CRE BGTCRE > NUL
:: move override\GIBBERSU.CRE BGTCRE > NUL
:: move override\GIRBA1.CRE BGTCRE > NUL
:: move override\GIRBA2.CRE BGTCRE > NUL
:: move override\GIRBA3.CRE BGTCRE > NUL
:: move override\GIRBA3_A.CRE BGTCRE > NUL
:: move override\GIRBA3_C.CRE BGTCRE > NUL
:: move override\GIRBAX_A.CRE BGTCRE > NUL
:: move override\GIRBAX_B.CRE BGTCRE > NUL
:: move override\GIRBAX_C.CRE BGTCRE > NUL
:: move override\GIRBAX_D.CRE BGTCRE > NUL
:: move override\GIRBAX_E.CRE BGTCRE > NUL
:: move override\GLANMA.CRE BGTCRE > NUL
:: move override\GLART.CRE BGTCRE > NUL
:: move override\GNARL.CRE BGTCRE > NUL
:: move override\GNOLL.CRE BGTCRE > NUL
:: move override\GNOLL02.CRE BGTCRE > NUL
:: move override\GNOLL03.CRE BGTCRE > NUL
:: move override\GNOLL3.CRE BGTCRE > NUL
:: move override\GNOLL5.CRE BGTCRE > NUL
:: move override\GNOLL5A.CRE BGTCRE > NUL
:: move override\GNOLLD.CRE BGTCRE > NUL
:: move override\GNOLLPER.CRE BGTCRE > NUL
:: move override\GNOLLSU.CRE BGTCRE > NUL
:: move override\GNOLL_A.CRE BGTCRE > NUL
:: move override\GNOLL_B.CRE BGTCRE > NUL
:: move override\GNOLL_C.CRE BGTCRE > NUL
:: move override\GNOLL_D.CRE BGTCRE > NUL
:: move override\GNOLL_E.CRE BGTCRE > NUL
:: move override\GOLEMF.CRE BGTCRE > NUL
:: move override\GOLEMF2.CRE BGTCRE > NUL
:: move override\GOLINV.CRE BGTCRE > NUL
:: move override\GOODDEAT.CRE BGTCRE > NUL
:: move override\GORD.CRE BGTCRE > NUL
:: move override\GORION.CRE BGTCRE > NUL
:: move override\GORION3.CRE BGTCRE > NUL
:: move override\GORPEL.CRE BGTCRE > NUL
:: move override\GRAEL.CRE BGTCRE > NUL
:: move override\GREGOR.CRE BGTCRE > NUL
:: move override\GRETEK.CRE BGTCRE > NUL
:: move override\GREYWO.CRE BGTCRE > NUL
:: move override\GUARD.CRE BGTCRE > NUL
:: move override\GURKE.CRE BGTCRE > NUL
:: move override\GYLLIA.CRE BGTCRE > NUL
:: move override\HACK.CRE BGTCRE > NUL
:: move override\HAFIZ.CRE BGTCRE > NUL
:: move override\HAIRTO.CRE BGTCRE > NUL
:: move override\HAKT.CRE BGTCRE > NUL
:: move override\HALACA.CRE BGTCRE > NUL
:: move override\HALBAZ.CRE BGTCRE > NUL
:: move override\HALFFG.CRE BGTCRE > NUL
:: move override\HALFG3.CRE BGTCRE > NUL
:: move override\HALFG4.CRE BGTCRE > NUL
:: move override\HALFG5.CRE BGTCRE > NUL
:: move override\HALFG6.CRE BGTCRE > NUL
:: move override\HALFGU.CRE BGTCRE > NUL
:: move override\HALFMIRI.CRE BGTCRE > NUL
:: move override\HALFTR.CRE BGTCRE > NUL
:: move override\HANNAH.CRE BGTCRE > NUL
:: move override\HARBOR.CRE BGTCRE > NUL
:: move override\HAREIS.CRE BGTCRE > NUL
:: move override\HASEO.CRE BGTCRE > NUL
:: move override\HECITO.CRE BGTCRE > NUL
:: move override\HELMHO.CRE BGTCRE > NUL
:: move override\HELSHA.CRE BGTCRE > NUL
:: move override\HENTOL.CRE BGTCRE > NUL
:: move override\HEPHIS.CRE BGTCRE > NUL
:: move override\HERSCH.CRE BGTCRE > NUL
:: move override\HICK.CRE BGTCRE > NUL
:: move override\HOBELITE.CRE BGTCRE > NUL
:: move override\HOBGO5.CRE BGTCRE > NUL
:: move override\HOBGOA_A.CRE BGTCRE > NUL
:: move override\HOBGOA_B.CRE BGTCRE > NUL
:: move override\HOBGOA_C.CRE BGTCRE > NUL
:: move override\HOBGOA_D.CRE BGTCRE > NUL
:: move override\HOBGOA_E.CRE BGTCRE > NUL
:: move override\HOBGOB.CRE BGTCRE > NUL
:: move override\HOBGOBA.CRE BGTCRE > NUL
:: move override\HOBGOBC.CRE BGTCRE > NUL
:: move override\HOBGOBSU.CRE BGTCRE > NUL
:: move override\HOBGOB_A.CRE BGTCRE > NUL
:: move override\HOBGOB_B.CRE BGTCRE > NUL
:: move override\HOBGOB_C.CRE BGTCRE > NUL
:: move override\HOBGOB_D.CRE BGTCRE > NUL
:: move override\HOBGOB_E.CRE BGTCRE > NUL
:: move override\HOBGZHUR.CRE BGTCRE > NUL
:: move override\HOBJOIA.CRE BGTCRE > NUL
:: move override\HOUSEN.CRE BGTCRE > NUL
:: move override\HOUSEN2.CRE BGTCRE > NUL
:: move override\HOUSG1.CRE BGTCRE > NUL
:: move override\HOUSG2.CRE BGTCRE > NUL
:: move override\HOUSG3.CRE BGTCRE > NUL
:: move override\HOUSG4.CRE BGTCRE > NUL
:: move override\HOUSG5.CRE BGTCRE > NUL
:: move override\HOUSG6.CRE BGTCRE > NUL
:: move override\HULL.CRE BGTCRE > NUL
:: move override\HULL2.CRE BGTCRE > NUL
:: move override\HULL3.CRE BGTCRE > NUL
:: move override\HULRIK.CRE BGTCRE > NUL
:: move override\HUNTER.CRE BGTCRE > NUL
:: move override\HURGAN.CRE BGTCRE > NUL
:: move override\HUSAM.CRE BGTCRE > NUL
:: move override\HUSAM2.CRE BGTCRE > NUL
:: move override\ICHARY.CRE BGTCRE > NUL
:: move override\IHOBGOB.CRE BGTCRE > NUL
:: move override\IKE.CRE BGTCRE > NUL
:: move override\IKE2.CRE BGTCRE > NUL
:: move override\IKOBOLD.CRE BGTCRE > NUL
:: move override\IMOEN.CRE BGTCRE > NUL
:: move override\IMOEN1.CRE BGTCRE > NUL
:: move override\IMOEN2.CRE BGTCRE > NUL
:: move override\IMOEN4.CRE BGTCRE > NUL
:: move override\IMOEN61.CRE BGTCRE > NUL
:: move override\INGOT.CRE BGTCRE > NUL
:: move override\INNKE3.CRE BGTCRE > NUL
:: move override\INNKN2.CRE BGTCRE > NUL
:: move override\IRLENT.CRE BGTCRE > NUL
:: move override\IRON10.CRE BGTCRE > NUL
:: move override\IRON11.CRE BGTCRE > NUL
:: move override\IRON12.CRE BGTCRE > NUL
:: move override\IRON13.CRE BGTCRE > NUL
:: move override\IRON14.CRE BGTCRE > NUL
:: move override\IRON15.CRE BGTCRE > NUL
:: move override\IRON2.CRE BGTCRE > NUL
:: move override\IRON3.CRE BGTCRE > NUL
:: move override\IRON4.CRE BGTCRE > NUL
:: move override\IRON5.CRE BGTCRE > NUL
:: move override\IRON6.CRE BGTCRE > NUL
:: move override\IRON7.CRE BGTCRE > NUL
:: move override\IRON8.CRE BGTCRE > NUL
:: move override\IRON9.CRE BGTCRE > NUL
:: move override\IRONELIT.CRE BGTCRE > NUL
:: move override\IRONGU.CRE BGTCRE > NUL
:: move override\IRONGUAR.CRE BGTCRE > NUL
:: move override\IRONM2.CRE BGTCRE > NUL
:: move override\IRONM3.CRE BGTCRE > NUL
:: move override\IRONM4.CRE BGTCRE > NUL
:: move override\IRONME.CRE BGTCRE > NUL
:: move override\ISKELET.CRE BGTCRE > NUL
:: move override\ISLA.CRE BGTCRE > NUL
:: move override\ISLANN.CRE BGTCRE > NUL
:: move override\ISLSIR.CRE BGTCRE > NUL
:: move override\ITASLOI.CRE BGTCRE > NUL
:: move override\ITHMEE.CRE BGTCRE > NUL
:: move override\ITHTYL.CRE BGTCRE > NUL
:: move override\IVANNE.CRE BGTCRE > NUL
:: move override\IXVART.CRE BGTCRE > NUL
:: move override\IZEFIA.CRE BGTCRE > NUL
:: move override\JACIL.CRE BGTCRE > NUL
:: move override\JAHEIR.CRE BGTCRE > NUL
:: move override\JAHEIR2.CRE BGTCRE > NUL
:: move override\JAHEIR4.CRE BGTCRE > NUL
:: move override\JAHEIR6.CRE BGTCRE > NUL
:: move override\JALANT.CRE BGTCRE > NUL
:: move override\JAMIE.CRE BGTCRE > NUL
:: move override\JARDAK.CRE BGTCRE > NUL
:: move override\JARED.CRE BGTCRE > NUL
:: move override\JASE.CRE BGTCRE > NUL
:: move override\JEBADO.CRE BGTCRE > NUL
:: move override\JELLGR.CRE BGTCRE > NUL
:: move override\JELLMU.CRE BGTCRE > NUL
:: move override\JELLMUL.CRE BGTCRE > NUL
:: move override\JELLOC.CRE BGTCRE > NUL
:: move override\JELLSPA.CRE BGTCRE > NUL
:: move override\JELLYGR.CRE BGTCRE > NUL
:: move override\JELLYGR2.CRE BGTCRE > NUL
:: move override\JELLYMU.CRE BGTCRE > NUL
:: move override\JEMBY.CRE BGTCRE > NUL
:: move override\JENKAL.CRE BGTCRE > NUL
:: move override\JESSUP.CRE BGTCRE > NUL
:: move override\JHASSO.CRE BGTCRE > NUL
:: move override\JOIA.CRE BGTCRE > NUL
:: move override\JONAVI.CRE BGTCRE > NUL
:: move override\JONDAL.CRE BGTCRE > NUL
:: move override\JONDAL3.CRE BGTCRE > NUL
:: move override\JONDALW.CRE BGTCRE > NUL
:: move override\JOPI.CRE BGTCRE > NUL
:: move override\JORIN.CRE BGTCRE > NUL
:: move override\JOULAR.CRE BGTCRE > NUL
:: move override\KAELLA.CRE BGTCRE > NUL
:: move override\KAGAIN.CRE BGTCRE > NUL
:: move override\KAGAIN2.CRE BGTCRE > NUL
:: move override\KAGAIN4.CRE BGTCRE > NUL
:: move override\KAGAIN6.CRE BGTCRE > NUL
:: move override\KAHRK.CRE BGTCRE > NUL
:: move override\KAISH2.CRE BGTCRE > NUL
:: move override\KAISHA.CRE BGTCRE > NUL
:: move override\KAISHWLF.CRE BGTCRE > NUL
:: move override\KALDRAN.CRE BGTCRE > NUL
:: move override\KALESS.CRE BGTCRE > NUL
:: move override\KARAN.CRE BGTCRE > NUL
:: move override\KARAN1.CRE BGTCRE > NUL
:: move override\KARAN3.CRE BGTCRE > NUL
:: move override\KARLAT.CRE BGTCRE > NUL
:: move override\KAROUG.CRE BGTCRE > NUL
:: move override\KARP.CRE BGTCRE > NUL
:: move override\KELDDA.CRE BGTCRE > NUL
:: move override\KENT.CRE BGTCRE > NUL
:: move override\KERRAC.CRE BGTCRE > NUL
:: move override\KESHEE.CRE BGTCRE > NUL
:: move override\KESTOR.CRE BGTCRE > NUL
:: move override\KHALID.CRE BGTCRE > NUL
:: move override\KHALID2.CRE BGTCRE > NUL
:: move override\KHALID4.CRE BGTCRE > NUL
:: move override\KHALID6.CRE BGTCRE > NUL
:: move override\KIEL2.CRE BGTCRE > NUL
:: move override\KIERES.CRE BGTCRE > NUL
:: move override\KIRIAN.CRE BGTCRE > NUL
:: move override\KIRINH.CRE BGTCRE > NUL
:: move override\KISSIQ.CRE BGTCRE > NUL
:: move override\KIVAN.CRE BGTCRE > NUL
:: move override\KIVAN4.CRE BGTCRE > NUL
:: move override\KIVAN6.CRE BGTCRE > NUL
:: move override\KNIGHT2.CRE BGTCRE > NUL
:: move override\KNIGHT3.CRE BGTCRE > NUL
:: move override\KNIGHT4.CRE BGTCRE > NUL
:: move override\KNIGHT5.CRE BGTCRE > NUL
:: move override\KNIGHT6.CRE BGTCRE > NUL
:: move override\KNIGHTSK.CRE BGTCRE > NUL
:: move override\KNOTT.CRE BGTCRE > NUL
:: move override\KOBCOMM.CRE BGTCRE > NUL
:: move override\KOBOLA_A.CRE BGTCRE > NUL
:: move override\KOBOLA_B.CRE BGTCRE > NUL
:: move override\KOBOLA_C.CRE BGTCRE > NUL
:: move override\KOBOLA_D.CRE BGTCRE > NUL
:: move override\KOBOLA_E.CRE BGTCRE > NUL
:: move override\KOBOLD.CRE BGTCRE > NUL
:: move override\KOBOLD3.CRE BGTCRE > NUL
:: move override\KOBOLD7.CRE BGTCRE > NUL
:: move override\KOBOLDA.CRE BGTCRE > NUL
:: move override\KOBOLDAB.CRE BGTCRE > NUL
:: move override\KOBOLDAL.CRE BGTCRE > NUL
:: move override\KOBOLDFL.CRE BGTCRE > NUL
:: move override\KOBOLDSU.CRE BGTCRE > NUL
:: move override\KOBOLD_A.CRE BGTCRE > NUL
:: move override\KOBOLD_B.CRE BGTCRE > NUL
:: move override\KOBOLD_C.CRE BGTCRE > NUL
:: move override\KOBOLD_D.CRE BGTCRE > NUL
:: move override\KOBOLD_E.CRE BGTCRE > NUL
:: move override\KOLVAR.CRE BGTCRE > NUL
:: move override\KORAX.CRE BGTCRE > NUL
:: move override\KOVERA.CRE BGTCRE > NUL
:: move override\KRUMM.CRE BGTCRE > NUL
:: move override\KRYLA.CRE BGTCRE > NUL
:: move override\KRYSTI.CRE BGTCRE > NUL
:: move override\KYLEE.CRE BGTCRE > NUL
:: move override\KYSUS.CRE BGTCRE > NUL
:: move override\LACHLU.CRE BGTCRE > NUL
:: move override\LAERTA.CRE BGTCRE > NUL
:: move override\LAHL.CRE BGTCRE > NUL
:: move override\LAKADA.CRE BGTCRE > NUL
:: move override\LAMALH.CRE BGTCRE > NUL
:: move override\LANDRI.CRE BGTCRE > NUL
:: move override\LANTAN.CRE BGTCRE > NUL
:: move override\LAOLA.CRE BGTCRE > NUL
:: move override\LARRIA.CRE BGTCRE > NUL
:: move override\LARRY.CRE BGTCRE > NUL
:: move override\LARYSS.CRE BGTCRE > NUL
:: move override\LARZE.CRE BGTCRE > NUL
:: move override\LASALA.CRE BGTCRE > NUL
:: move override\LASKAL.CRE BGTCRE > NUL
:: move override\LAUREL.CRE BGTCRE > NUL
:: move override\LEAGGU1.CRE BGTCRE > NUL
:: move override\LEAGGU2.CRE BGTCRE > NUL
:: move override\LEAGGU3.CRE BGTCRE > NUL
:: move override\LEAGGU4.CRE BGTCRE > NUL
:: move override\LEAGGU5.CRE BGTCRE > NUL
:: move override\LEAGGU6.CRE BGTCRE > NUL
:: move override\LEAGGU7.CRE BGTCRE > NUL
:: move override\LENA.CRE BGTCRE > NUL
:: move override\LENDAR.CRE BGTCRE > NUL
:: move override\LESLEY.CRE BGTCRE > NUL
:: move override\LESTOR.CRE BGTCRE > NUL
:: move override\LINDIN.CRE BGTCRE > NUL
:: move override\LOBAR.CRE BGTCRE > NUL
:: move override\LOTHAN.CRE BGTCRE > NUL
:: move override\LOUISE.CRE BGTCRE > NUL
:: move override\LOUPGAR.CRE BGTCRE > NUL
:: move override\LOVE.CRE BGTCRE > NUL
:: move override\LOVEM.CRE BGTCRE > NUL
:: move override\LUCKY.CRE BGTCRE > NUL
:: move override\LUSSEL.CRE BGTCRE > NUL
:: move override\MADARC.CRE BGTCRE > NUL
:: move override\MAKA.CRE BGTCRE > NUL
:: move override\MALKAX.CRE BGTCRE > NUL
:: move override\MALTZ.CRE BGTCRE > NUL
:: move override\MANEIR.CRE BGTCRE > NUL
:: move override\MAPLE.CRE BGTCRE > NUL
:: move override\MARALE.CRE BGTCRE > NUL
:: move override\MARALE2.CRE BGTCRE > NUL
:: move override\MARCEL.CRE BGTCRE > NUL
:: move override\MAREK.CRE BGTCRE > NUL
:: move override\MARL.CRE BGTCRE > NUL
:: move override\MARVIN.CRE BGTCRE > NUL
:: move override\MCOOK.CRE BGTCRE > NUL
:: move override\MCOOK2.CRE BGTCRE > NUL
:: move override\MCOOK3.CRE BGTCRE > NUL
:: move override\MCOOK4.CRE BGTCRE > NUL
:: move override\MCOOK5.CRE BGTCRE > NUL
:: move override\MEAKIN.CRE BGTCRE > NUL
:: move override\MEIALA.CRE BGTCRE > NUL
:: move override\MEILUM.CRE BGTCRE > NUL
:: move override\MELICA.CRE BGTCRE > NUL
:: move override\MENDAS.CRE BGTCRE > NUL
:: move override\MENDAS2.CRE BGTCRE > NUL
:: move override\MENDAS3.CRE BGTCRE > NUL
:: move override\MERC.CRE BGTCRE > NUL
:: move override\MERCH2.CRE BGTCRE > NUL
:: move override\MERCH4.CRE BGTCRE > NUL
:: move override\MERCH5.CRE BGTCRE > NUL
:: move override\MERCH6.CRE BGTCRE > NUL
:: move override\MERCHG.CRE BGTCRE > NUL
:: move override\MERLEA.CRE BGTCRE > NUL
:: move override\MERLIN.CRE BGTCRE > NUL
:: move override\MERSIL.CRE BGTCRE > NUL
:: move override\MERSIL2.CRE BGTCRE > NUL
:: move override\MERSIL3.CRE BGTCRE > NUL
:: move override\MEYM.CRE BGTCRE > NUL
:: move override\MICHAE.CRE BGTCRE > NUL
:: move override\MICK.CRE BGTCRE > NUL
:: move override\MINEC2.CRE BGTCRE > NUL
:: move override\MINEC3.CRE BGTCRE > NUL
:: move override\MINEC4.CRE BGTCRE > NUL
:: move override\MINEC5.CRE BGTCRE > NUL
:: move override\MINERC.CRE BGTCRE > NUL
:: move override\MINERN.CRE BGTCRE > NUL
:: move override\MINSC.CRE BGTCRE > NUL
:: move override\MINSC2.CRE BGTCRE > NUL
:: move override\MINSC4.CRE BGTCRE > NUL
:: move override\MINSC6.CRE BGTCRE > NUL
:: move override\MIRIAN.CRE BGTCRE > NUL
:: move override\MOLKAR.CRE BGTCRE > NUL
:: move override\MONKTU10.CRE BGTCRE > NUL
:: move override\MONKTU11.CRE BGTCRE > NUL
:: move override\MONKTU12.CRE BGTCRE > NUL
:: move override\MONKTU13.CRE BGTCRE > NUL
:: move override\MONKTU14.CRE BGTCRE > NUL
:: move override\MONKTU2.CRE BGTCRE > NUL
:: move override\MONKTU3.CRE BGTCRE > NUL
:: move override\MONKTU4.CRE BGTCRE > NUL
:: move override\MONKTU5.CRE BGTCRE > NUL
:: move override\MONKTU7.CRE BGTCRE > NUL
:: move override\MONKTU8.CRE BGTCRE > NUL
:: move override\MONKTU9.CRE BGTCRE > NUL
:: move override\MONTAR.CRE BGTCRE > NUL
:: move override\MONTAR2.CRE BGTCRE > NUL
:: move override\MONTAR4.CRE BGTCRE > NUL
:: move override\MONTAR6.CRE BGTCRE > NUL
:: move override\MOORLOCK.CRE BGTCRE > NUL
:: move override\MORDAI.CRE BGTCRE > NUL
:: move override\MORVIN.CRE BGTCRE > NUL
:: move override\MRSHADE.CRE BGTCRE > NUL
:: move override\MTBE10.CRE BGTCRE > NUL
:: move override\MTBE11.CRE BGTCRE > NUL
:: move override\MTBE2.CRE BGTCRE > NUL
:: move override\MTBE3.CRE BGTCRE > NUL
:: move override\MTBE4.CRE BGTCRE > NUL
:: move override\MTBE5.CRE BGTCRE > NUL
:: move override\MTBE6.CRE BGTCRE > NUL
:: move override\MTBE7.CRE BGTCRE > NUL
:: move override\MTBE8.CRE BGTCRE > NUL
:: move override\MTBE9.CRE BGTCRE > NUL
:: move override\MTOB2.CRE BGTCRE > NUL
:: move override\MTOB3.CRE BGTCRE > NUL
:: move override\MTOB6.CRE BGTCRE > NUL
:: move override\MTOB7.CRE BGTCRE > NUL
:: move override\MTOB8.CRE BGTCRE > NUL
:: move override\MTOB9.CRE BGTCRE > NUL
:: move override\MTOWBA.CRE BGTCRE > NUL
:: move override\MTOWBASC.CRE BGTCRE > NUL
:: move override\MTOWBASN.CRE BGTCRE > NUL
:: move override\MTOWBAST.CRE BGTCRE > NUL
:: move override\MTOWBAX.CRE BGTCRE > NUL
:: move override\MTOWBA_A.CRE BGTCRE > NUL
:: move override\MTOWBA_B.CRE BGTCRE > NUL
:: move override\MTOWBA_C.CRE BGTCRE > NUL
:: move override\MTOWBA_D.CRE BGTCRE > NUL
:: move override\MTOWBA_E.CRE BGTCRE > NUL
:: move override\MTOWBE.CRE BGTCRE > NUL
:: move override\MTOWBESC.CRE BGTCRE > NUL
:: move override\MTOWBESN.CRE BGTCRE > NUL
:: move override\MTOWBEST.CRE BGTCRE > NUL
:: move override\MTOWBEX.CRE BGTCRE > NUL
:: move override\MTOWBE_A.CRE BGTCRE > NUL
:: move override\MTOWBE_B.CRE BGTCRE > NUL
:: move override\MTOWBE_C.CRE BGTCRE > NUL
:: move override\MTOWBE_D.CRE BGTCRE > NUL
:: move override\MTOWBE_E.CRE BGTCRE > NUL
:: move override\MTOWF2.CRE BGTCRE > NUL
:: move override\MTOWFR.CRE BGTCRE > NUL
:: move override\MTOWFRSC.CRE BGTCRE > NUL
:: move override\MTOWFRST.CRE BGTCRE > NUL
:: move override\MTOWFR_A.CRE BGTCRE > NUL
:: move override\MTOWFR_B.CRE BGTCRE > NUL
:: move override\MTOWFR_C.CRE BGTCRE > NUL
:: move override\MTOWFR_D.CRE BGTCRE > NUL
:: move override\MTOWFR_E.CRE BGTCRE > NUL
:: move override\MTOWNA.CRE BGTCRE > NUL
:: move override\MTOWNASC.CRE BGTCRE > NUL
:: move override\MTOWNAST.CRE BGTCRE > NUL
:: move override\MTOWNA_A.CRE BGTCRE > NUL
:: move override\MTOWNA_B.CRE BGTCRE > NUL
:: move override\MTOWNA_C.CRE BGTCRE > NUL
:: move override\MTOWNA_D.CRE BGTCRE > NUL
:: move override\MTOWUB.CRE BGTCRE > NUL
:: move override\MTOWUBSC.CRE BGTCRE > NUL
:: move override\MTOWUBX.CRE BGTCRE > NUL
:: move override\MTOWUB_A.CRE BGTCRE > NUL
:: move override\MTOWUB_B.CRE BGTCRE > NUL
:: move override\MTOWUB_C.CRE BGTCRE > NUL
:: move override\MTOWUB_D.CRE BGTCRE > NUL
:: move override\MTOWUB_E.CRE BGTCRE > NUL
:: move override\MTOWWI.CRE BGTCRE > NUL
:: move override\MTOWWI_A.CRE BGTCRE > NUL
:: move override\MTOWWI_B.CRE BGTCRE > NUL
:: move override\MTOWWI_C.CRE BGTCRE > NUL
:: move override\MTOWWI_D.CRE BGTCRE > NUL
:: move override\MTOWWI_E.CRE BGTCRE > NUL
:: move override\MTWBAX_A.CRE BGTCRE > NUL
:: move override\MTWBAX_B.CRE BGTCRE > NUL
:: move override\MTWBAX_C.CRE BGTCRE > NUL
:: move override\MTWBAX_D.CRE BGTCRE > NUL
:: move override\MTWBAX_E.CRE BGTCRE > NUL
:: move override\MTWSLIM.CRE BGTCRE > NUL
:: move override\MTWSLIM2.CRE BGTCRE > NUL
:: move override\MTWSLIM3.CRE BGTCRE > NUL
:: move override\MULAHE.CRE BGTCRE > NUL
:: move override\MUTAMI.CRE BGTCRE > NUL
:: move override\MYSMER.CRE BGTCRE > NUL
:: move override\NAAMAN.CRE BGTCRE > NUL
:: move override\NADARI.CRE BGTCRE > NUL
:: move override\NADER.CRE BGTCRE > NUL
:: move override\NADINE.CRE BGTCRE > NUL
:: move override\NANTRI.CRE BGTCRE > NUL
:: move override\NARCIL.CRE BGTCRE > NUL
:: move override\NARLEN.CRE BGTCRE > NUL
:: move override\NARRAT.CRE BGTCRE > NUL
:: move override\NATASH.CRE BGTCRE > NUL
:: move override\NEIRA.CRE BGTCRE > NUL
:: move override\NELIK.CRE BGTCRE > NUL
:: move override\NEMPHR.CRE BGTCRE > NUL
:: move override\NESSIE.CRE BGTCRE > NUL
:: move override\NESTOR.CRE BGTCRE > NUL
:: move override\NEVILL.CRE BGTCRE > NUL
:: move override\NEXLIT.CRE BGTCRE > NUL
:: move override\NIEMAI.CRE BGTCRE > NUL
:: move override\NIKLOS.CRE BGTCRE > NUL
:: move override\NIKOLA.CRE BGTCRE > NUL
:: move override\NILA.CRE BGTCRE > NUL
:: move override\NIMBUL.CRE BGTCRE > NUL
:: move override\NIVEK.CRE BGTCRE > NUL
:: move override\NOBBAX_A.CRE BGTCRE > NUL
:: move override\NOBBAX_B.CRE BGTCRE > NUL
:: move override\NOBBAX_C.CRE BGTCRE > NUL
:: move override\NOBBAX_D.CRE BGTCRE > NUL
:: move override\NOBBAX_E.CRE BGTCRE > NUL
:: move override\NOBL10.CRE BGTCRE > NUL
:: move override\NOBL11.CRE BGTCRE > NUL
:: move override\NOBL12.CRE BGTCRE > NUL
:: move override\NOBL14.CRE BGTCRE > NUL
:: move override\NOBL2.CRE BGTCRE > NUL
:: move override\NOBL3.CRE BGTCRE > NUL
:: move override\NOBL4.CRE BGTCRE > NUL
:: move override\NOBL5.CRE BGTCRE > NUL
:: move override\NOBL6.CRE BGTCRE > NUL
:: move override\NOBL7.CRE BGTCRE > NUL
:: move override\NOBL8.CRE BGTCRE > NUL
:: move override\NOBL9.CRE BGTCRE > NUL
:: move override\NOBLBA_A.CRE BGTCRE > NUL
:: move override\NOBLBA_B.CRE BGTCRE > NUL
:: move override\NOBLBA_C.CRE BGTCRE > NUL
:: move override\NOBLBA_D.CRE BGTCRE > NUL
:: move override\NOBLBA_E.CRE BGTCRE > NUL
:: move override\NOBLPA.CRE BGTCRE > NUL
:: move override\NOBLPA1.CRE BGTCRE > NUL
:: move override\NOBLPA2.CRE BGTCRE > NUL
:: move override\NOBLPA3.CRE BGTCRE > NUL
:: move override\NOBLPA4.CRE BGTCRE > NUL
:: move override\NOBLPA5.CRE BGTCRE > NUL
:: move override\NOBW2.CRE BGTCRE > NUL
:: move override\NOBW3.CRE BGTCRE > NUL
:: move override\NOBW5.CRE BGTCRE > NUL
:: move override\NOBW7.CRE BGTCRE > NUL
:: move override\NOBW8.CRE BGTCRE > NUL
:: move override\NOBW9.CRE BGTCRE > NUL
:: move override\NOBWBA.CRE BGTCRE > NUL
:: move override\NOBWBA_A.CRE BGTCRE > NUL
:: move override\NOBWBA_D.CRE BGTCRE > NUL
:: move override\NOBWBA_E.CRE BGTCRE > NUL
:: move override\NOOBER.CRE BGTCRE > NUL
:: move override\NORALE.CRE BGTCRE > NUL
:: move override\NORTUA.CRE BGTCRE > NUL
:: move override\NOSFER.CRE BGTCRE > NUL
:: move override\NOWBAX_A.CRE BGTCRE > NUL
:: move override\NOWBAX_B.CRE BGTCRE > NUL
:: move override\NOWBAX_C.CRE BGTCRE > NUL
:: move override\NOWBAX_D.CRE BGTCRE > NUL
:: move override\NOWBAX_E.CRE BGTCRE > NUL
:: move override\OBE.CRE BGTCRE > NUL
:: move override\OBERAN.CRE BGTCRE > NUL
:: move override\OCELLI.CRE BGTCRE > NUL
:: move override\OGRE.CRE BGTCRE > NUL
:: move override\OGRE02.CRE BGTCRE > NUL
:: move override\OGREBERZ.CRE BGTCRE > NUL
:: move override\OGREBJOR.CRE BGTCRE > NUL
:: move override\OGRECO.CRE BGTCRE > NUL
:: move override\OGREGR.CRE BGTCRE > NUL
:: move override\OGREGRSU.CRE BGTCRE > NUL
:: move override\OGREGR_B.CRE BGTCRE > NUL
:: move override\OGREGR_C.CRE BGTCRE > NUL
:: move override\OGREGR_D.CRE BGTCRE > NUL
:: move override\OGREHA.CRE BGTCRE > NUL
:: move override\OGREHA_B.CRE BGTCRE > NUL
:: move override\OGREMA.CRE BGTCRE > NUL
:: move override\OGREMA02.CRE BGTCRE > NUL
:: move override\OGREMA03.CRE BGTCRE > NUL
:: move override\OGREMA_A.CRE BGTCRE > NUL
:: move override\OGREMA_B.CRE BGTCRE > NUL
:: move override\OGREMA_C.CRE BGTCRE > NUL
:: move override\OGREMA_D.CRE BGTCRE > NUL
:: move override\OGREMIRI.CRE BGTCRE > NUL
:: move override\OGRES.CRE BGTCRE > NUL
:: move override\OGREUNSH.CRE BGTCRE > NUL
:: move override\OGRMBA.CRE BGTCRE > NUL
:: move override\OOGIEW.CRE BGTCRE > NUL
:: move override\OOPAH.CRE BGTCRE > NUL
:: move override\OOPAH2.CRE BGTCRE > NUL
:: move override\ORDULI.CRE BGTCRE > NUL
:: move override\OSMADI.CRE BGTCRE > NUL
:: move override\OSPREY.CRE BGTCRE > NUL
:: move override\OUBLEK.CRE BGTCRE > NUL
:: move override\OULAM.CRE BGTCRE > NUL
:: move override\PALIN.CRE BGTCRE > NUL
:: move override\PALLON.CRE BGTCRE > NUL
:: move override\PANGWA.CRE BGTCRE > NUL
:: move override\PARDA.CRE BGTCRE > NUL
:: move override\PARDA1.CRE BGTCRE > NUL
:: move override\PARDA3.CRE BGTCRE > NUL
:: move override\PARGUS.CRE BGTCRE > NUL
:: move override\PERDUE.CRE BGTCRE > NUL
:: move override\PERMID.CRE BGTCRE > NUL
:: move override\PETER.CRE BGTCRE > NUL
:: move override\PETRIN.CRE BGTCRE > NUL
:: move override\PGOND.CRE BGTCRE > NUL
:: move override\PHAERS.CRE BGTCRE > NUL
:: move override\PHANDA.CRE BGTCRE > NUL
:: move override\PHEIRK.CRE BGTCRE > NUL
:: move override\PHEOARCH.CRE BGTCRE > NUL
:: move override\PHEOGURD.CRE BGTCRE > NUL
:: move override\PHLYDI2.CRE BGTCRE > NUL
:: move override\PHLYDI3.CRE BGTCRE > NUL
:: move override\PHOENIX.CRE BGTCRE > NUL
:: move override\PIATO.CRE BGTCRE > NUL
:: move override\PLYFLIND.CRE BGTCRE > NUL
:: move override\PLYOGRE.CRE BGTCRE > NUL
:: move override\PLYSPID.CRE BGTCRE > NUL
:: move override\PLYWOLF.CRE BGTCRE > NUL
:: move override\PNASHK.CRE BGTCRE > NUL
:: move override\POE.CRE BGTCRE > NUL
:: move override\POGHM10.CRE BGTCRE > NUL
:: move override\POGHM9.CRE BGTCRE > NUL
:: move override\POGHMA4.CRE BGTCRE > NUL
:: move override\POGHMA5.CRE BGTCRE > NUL
:: move override\POGHMA7.CRE BGTCRE > NUL
:: move override\POISOD.CRE BGTCRE > NUL
:: move override\PORTAL.CRE BGTCRE > NUL
:: move override\PRAT.CRE BGTCRE > NUL
:: move override\PRIDE.CRE BGTCRE > NUL
:: move override\PRIDEM.CRE BGTCRE > NUL
:: move override\PRIHEL.CRE BGTCRE > NUL
:: move override\PRIILMU.CRE BGTCRE > NUL
:: move override\PRISM.CRE BGTCRE > NUL
:: move override\PRISON.CRE BGTCRE > NUL
:: move override\PROSBA_B.CRE BGTCRE > NUL
:: move override\PROSBA_C.CRE BGTCRE > NUL
:: move override\PROSLAY.CRE BGTCRE > NUL
:: move override\PROST2.CRE BGTCRE > NUL
:: move override\PROST3.CRE BGTCRE > NUL
:: move override\PROST4.CRE BGTCRE > NUL
:: move override\PROST5.CRE BGTCRE > NUL
:: move override\PROST6.CRE BGTCRE > NUL
:: move override\PROST7.CRE BGTCRE > NUL
:: move override\PROST8.CRE BGTCRE > NUL
:: move override\PRSBAX_A.CRE BGTCRE > NUL
:: move override\PRSBAX_B.CRE BGTCRE > NUL
:: move override\PRSBAX_C.CRE BGTCRE > NUL
:: move override\PUMBER2.CRE BGTCRE > NUL
:: move override\PUMBERL.CRE BGTCRE > NUL
:: move override\QUAYLE4.CRE BGTCRE > NUL
:: move override\QUAYLE6.CRE BGTCRE > NUL
:: move override\QUENAS.CRE BGTCRE > NUL
:: move override\QUINN.CRE BGTCRE > NUL
:: move override\RAEMON.CRE BGTCRE > NUL
:: move override\RAHVIN.CRE BGTCRE > NUL
:: move override\RAIKEN.CRE BGTCRE > NUL
:: move override\RALEO.CRE BGTCRE > NUL
:: move override\RAMAZI.CRE BGTCRE > NUL
:: move override\RANCE.CRE BGTCRE > NUL
:: move override\RASHAD.CRE BGTCRE > NUL
:: move override\RAT2.CRE BGTCRE > NUL
:: move override\RATCHI.CRE BGTCRE > NUL
:: move override\READ2.CRE BGTCRE > NUL
:: move override\READ3.CRE BGTCRE > NUL
:: move override\REDEDG.CRE BGTCRE > NUL
:: move override\REEVOR.CRE BGTCRE > NUL
:: move override\REEVOR2.CRE BGTCRE > NUL
:: move override\REEVOR3.CRE BGTCRE > NUL
:: move override\REGINA.CRE BGTCRE > NUL
:: move override\RESAR.CRE BGTCRE > NUL
:: move override\REVENT.CRE BGTCRE > NUL
:: move override\REZDAN.CRE BGTCRE > NUL
:: move override\RIELTA.CRE BGTCRE > NUL
:: move override\RIGGILO.CRE BGTCRE > NUL
:: move override\RINNIE.CRE BGTCRE > NUL
:: move override\RODNIM.CRE BGTCRE > NUL
:: move override\RUFFIE.CRE BGTCRE > NUL
:: move override\RUFIE.CRE BGTCRE > NUL
:: move override\SAFANA.CRE BGTCRE > NUL
:: move override\SAFANA4.CRE BGTCRE > NUL
:: move override\SAFANA6.CRE BGTCRE > NUL
:: move override\SAILAL.CRE BGTCRE > NUL
:: move override\SAILDAN.CRE BGTCRE > NUL
:: move override\SAILFIN.CRE BGTCRE > NUL
:: move override\SAILJOS.CRE BGTCRE > NUL
:: move override\SAILNED.CRE BGTCRE > NUL
:: move override\SAILNEW.CRE BGTCRE > NUL
:: move override\SAKUL.CRE BGTCRE > NUL
:: move override\SAMANT.CRE BGTCRE > NUL
:: move override\SAMUEL.CRE BGTCRE > NUL
:: move override\SANADAL.CRE BGTCRE > NUL
:: move override\SAREV1.CRE BGTCRE > NUL
:: move override\SAREVO.CRE BGTCRE > NUL
:: move override\SAREVO2.CRE BGTCRE > NUL
:: move override\SARHED.CRE BGTCRE > NUL
:: move override\SATH.CRE BGTCRE > NUL
:: move override\SCAR.CRE BGTCRE > NUL
:: move override\SCHLUM.CRE BGTCRE > NUL
:: move override\SEAGUL.CRE BGTCRE > NUL
:: move override\SEMAJ.CRE BGTCRE > NUL
:: move override\SENIYA.CRE BGTCRE > NUL
:: move override\SERVA2.CRE BGTCRE > NUL
:: move override\SERVAN.CRE BGTCRE > NUL
:: move override\SEWERC.CRE BGTCRE > NUL
:: move override\SEWERF1.CRE BGTCRE > NUL
:: move override\SEWERF2.CRE BGTCRE > NUL
:: move override\SEWERF3.CRE BGTCRE > NUL
:: move override\SEWERF4.CRE BGTCRE > NUL
:: move override\SEWERF5.CRE BGTCRE > NUL
:: move override\SHADOW.CRE BGTCRE > NUL
:: move override\SHAELL.CRE BGTCRE > NUL
:: move override\SHALDR.CRE BGTCRE > NUL
:: move override\SHANDAL2.CRE BGTCRE > NUL
:: move override\SHARTE.CRE BGTCRE > NUL
:: move override\SHARTE4.CRE BGTCRE > NUL
:: move override\SHARTE6.CRE BGTCRE > NUL
:: move override\SHELLI.CRE BGTCRE > NUL
:: move override\SHEP.CRE BGTCRE > NUL
:: move override\SHISTA.CRE BGTCRE > NUL
:: move override\SHOAL.CRE BGTCRE > NUL
:: move override\SHOPKN.CRE BGTCRE > NUL
:: move override\SHVERT.CRE BGTCRE > NUL
:: move override\SIL.CRE BGTCRE > NUL
:: move override\SILENC.CRE BGTCRE > NUL
:: move override\SILKE.CRE BGTCRE > NUL
:: move override\SIRINE.CRE BGTCRE > NUL
:: move override\SIRINE02.CRE BGTCRE > NUL
:: move override\SIRINE_A.CRE BGTCRE > NUL
:: move override\SIRINE_B.CRE BGTCRE > NUL
:: move override\SIRLOT.CRE BGTCRE > NUL
:: move override\SKELACI.CRE BGTCRE > NUL
:: move override\SKELDED.CRE BGTCRE > NUL
:: move override\SKELDIS.CRE BGTCRE > NUL
:: move override\SKELE2.CRE BGTCRE > NUL
:: move override\SKELET.CRE BGTCRE > NUL
:: move override\SKELET02.CRE BGTCRE > NUL
:: move override\SKELET03.CRE BGTCRE > NUL
:: move override\SKELETB.CRE BGTCRE > NUL
:: move override\SKELETS.CRE BGTCRE > NUL
:: move override\SKELET_A.CRE BGTCRE > NUL
:: move override\SKELET_B.CRE BGTCRE > NUL
:: move override\SKELET_C.CRE BGTCRE > NUL
:: move override\SKELFIRE.CRE BGTCRE > NUL
:: move override\SKELICE.CRE BGTCRE > NUL
:: move override\SKELPETR.CRE BGTCRE > NUL
:: move override\SKIE.CRE BGTCRE > NUL
:: move override\SKIE6.CRE BGTCRE > NUL
:: move override\SLAVE.CRE BGTCRE > NUL
:: move override\SLAVE4.CRE BGTCRE > NUL
:: move override\SLAVE5.CRE BGTCRE > NUL
:: move override\SLAVE6.CRE BGTCRE > NUL
:: move override\SLAVFREE.CRE BGTCRE > NUL
:: move override\SLAVLEAD.CRE BGTCRE > NUL
:: move override\SLAVTELL.CRE BGTCRE > NUL
:: move override\SLEEPEL.CRE BGTCRE > NUL
:: move override\SLEEPFAT.CRE BGTCRE > NUL
:: move override\SLEEPHAL.CRE BGTCRE > NUL
:: move override\SLYTHE.CRE BGTCRE > NUL
:: move override\SMITH.CRE BGTCRE > NUL
:: move override\SMUGGL.CRE BGTCRE > NUL
:: move override\SOLIA1.CRE BGTCRE > NUL
:: move override\SONNER.CRE BGTCRE > NUL
:: move override\SORCED.CRE BGTCRE > NUL
:: move override\SORREL.CRE BGTCRE > NUL
:: move override\SPENGIL.CRE BGTCRE > NUL
:: move override\SPIDGI.CRE BGTCRE > NUL
:: move override\SPIDHU.CRE BGTCRE > NUL
:: move override\SPIDLAND.CRE BGTCRE > NUL
:: move override\SPIDPH.CRE BGTCRE > NUL
:: move override\SPIDPHAS.CRE BGTCRE > NUL
:: move override\SPIDSW.CRE BGTCRE > NUL
:: move override\SPIDWR.CRE BGTCRE > NUL
:: move override\SPRAT.CRE BGTCRE > NUL
:: move override\SQUIRR.CRE BGTCRE > NUL
:: move override\STALKE.CRE BGTCRE > NUL
:: move override\STEPHA.CRE BGTCRE > NUL
:: move override\STONEC.CRE BGTCRE > NUL
:: move override\STONED.CRE BGTCRE > NUL
:: move override\STONEDL.CRE BGTCRE > NUL
:: move override\STONEDW.CRE BGTCRE > NUL
:: move override\STONEG.CRE BGTCRE > NUL
:: move override\SUGAR.CRE BGTCRE > NUL
:: move override\SUNIN.CRE BGTCRE > NUL
:: move override\SURGEO.CRE BGTCRE > NUL
:: move override\SURREY.CRE BGTCRE > NUL
:: move override\TAEROM.CRE BGTCRE > NUL
:: move override\TAILAS.CRE BGTCRE > NUL
:: move override\TAKIYAH.CRE BGTCRE > NUL
:: move override\TALOUN.CRE BGTCRE > NUL
:: move override\TAM.CRE BGTCRE > NUL
:: move override\TAMAH.CRE BGTCRE > NUL
:: move override\TAMOKO.CRE BGTCRE > NUL
:: move override\TANAR.CRE BGTCRE > NUL
:: move override\TARNES.CRE BGTCRE > NUL
:: move override\TARTUS.CRE BGTCRE > NUL
:: move override\TASLGURK.CRE BGTCRE > NUL
:: move override\TASLOI.CRE BGTCRE > NUL
:: move override\TASLOISU.CRE BGTCRE > NUL
:: move override\TAUGOS.CRE BGTCRE > NUL
:: move override\TAXEK.CRE BGTCRE > NUL
:: move override\TAZOK2.CRE BGTCRE > NUL
:: move override\TELANO.CRE BGTCRE > NUL
:: move override\TELKA.CRE BGTCRE > NUL
:: move override\TELLAN.CRE BGTCRE > NUL
:: move override\TELMEN.CRE BGTCRE > NUL
:: move override\TENYA.CRE BGTCRE > NUL
:: move override\TENYA2.CRE BGTCRE > NUL
:: move override\TERSUS.CRE BGTCRE > NUL
:: move override\TETHTO.CRE BGTCRE > NUL
:: move override\TEVEN.CRE BGTCRE > NUL
:: move override\TEYNGA.CRE BGTCRE > NUL
:: move override\THALAN.CRE BGTCRE > NUL
:: move override\THALDO.CRE BGTCRE > NUL
:: move override\THEREL.CRE BGTCRE > NUL
:: move override\THIEF.CRE BGTCRE > NUL
:: move override\THIEFF.CRE BGTCRE > NUL
:: move override\THIEFG.CRE BGTCRE > NUL
:: move override\THIEFM.CRE BGTCRE > NUL
:: move override\TIAX.CRE BGTCRE > NUL
:: move override\TIAX4.CRE BGTCRE > NUL
:: move override\TIAX6.CRE BGTCRE > NUL
:: move override\TIBER.CRE BGTCRE > NUL
:: move override\TICK.CRE BGTCRE > NUL
:: move override\TIPIAN.CRE BGTCRE > NUL
:: move override\TORLO.CRE BGTCRE > NUL
:: move override\TORLOB.CRE BGTCRE > NUL
:: move override\TOURIST1.CRE BGTCRE > NUL
:: move override\TOURIST2.CRE BGTCRE > NUL
:: move override\TOURIST3.CRE BGTCRE > NUL
:: move override\TRACEA.CRE BGTCRE > NUL
:: move override\TRALIT.CRE BGTCRE > NUL
:: move override\TRANZI.CRE BGTCRE > NUL
:: move override\TRAVE2.CRE BGTCRE > NUL
:: move override\TREMAI.CRE BGTCRE > NUL
:: move override\TRIADO.CRE BGTCRE > NUL
:: move override\TURPIN.CRE BGTCRE > NUL
:: move override\TUTH.CRE BGTCRE > NUL
:: move override\UGHH.CRE BGTCRE > NUL
:: move override\ULCAST.CRE BGTCRE > NUL
:: move override\ULF.CRE BGTCRE > NUL
:: move override\ULRAUN.CRE BGTCRE > NUL
:: move override\UNSHEY.CRE BGTCRE > NUL
:: move override\URSA.CRE BGTCRE > NUL
:: move override\VAI.CRE BGTCRE > NUL
:: move override\VAIL.CRE BGTCRE > NUL
:: move override\VARCI.CRE BGTCRE > NUL
:: move override\VAX.CRE BGTCRE > NUL
:: move override\VAYYA.CRE BGTCRE > NUL
:: move override\VENKT.CRE BGTCRE > NUL
:: move override\VICONI.CRE BGTCRE > NUL
:: move override\VICONI4.CRE BGTCRE > NUL
:: move override\VICONI61.CRE BGTCRE > NUL
:: move override\VITIARE.CRE BGTCRE > NUL
:: move override\VIVIEN.CRE BGTCRE > NUL
:: move override\VOLETA.CRE BGTCRE > NUL
:: move override\VOLO.CRE BGTCRE > NUL
:: move override\VOLTIN.CRE BGTCRE > NUL
:: move override\VULTUR.CRE BGTCRE > NUL
:: move override\WAITER.CRE BGTCRE > NUL
:: move override\WASLEEP.CRE BGTCRE > NUL
:: move override\WATCH.CRE BGTCRE > NUL
:: move override\WATCH2.CRE BGTCRE > NUL
:: move override\WATCH3.CRE BGTCRE > NUL
:: move override\WATCH6.CRE BGTCRE > NUL
:: move override\WATCH9.CRE BGTCRE > NUL
:: move override\WATCHM.CRE BGTCRE > NUL
:: move override\WATCHN.CRE BGTCRE > NUL
:: move override\WATCHN2.CRE BGTCRE > NUL
:: move override\WENRIC.CRE BGTCRE > NUL
:: move override\WEREWO.CRE BGTCRE > NUL
:: move override\WHEBER.CRE BGTCRE > NUL
:: move override\WHELP.CRE BGTCRE > NUL
:: move override\WILCO.CRE BGTCRE > NUL
:: move override\WILF.CRE BGTCRE > NUL
:: move override\WILLIAM1.CRE BGTCRE > NUL
:: move override\WINSKI.CRE BGTCRE > NUL
:: move override\WINSKI2.CRE BGTCRE > NUL
:: move override\WINTHR2.CRE BGTCRE > NUL
:: move override\WINTHR3.CRE BGTCRE > NUL
:: move override\WIRTHI.CRE BGTCRE > NUL
:: move override\WIVEN.CRE BGTCRE > NUL
:: move override\WOLFCH.CRE BGTCRE > NUL
:: move override\WOLFCHAR.CRE BGTCRE > NUL
:: move override\WOLFD1.CRE BGTCRE > NUL
:: move override\WOLFDI.CRE BGTCRE > NUL
:: move override\WOLFDISU.CRE BGTCRE > NUL
:: move override\WOLFDR.CRE BGTCRE > NUL
:: move override\WOLFSU.CRE BGTCRE > NUL
:: move override\WOLFVA.CRE BGTCRE > NUL
:: move override\WOLFWE.CRE BGTCRE > NUL
:: move override\WOLFWEGL.CRE BGTCRE > NUL
:: move override\WOLFWEGR.CRE BGTCRE > NUL
:: move override\WOLFWI.CRE BGTCRE > NUL
:: move override\WORG.CRE BGTCRE > NUL
:: move override\WORGAR.CRE BGTCRE > NUL
:: move override\WORGSU.CRE BGTCRE > NUL
:: move override\WUDEI.CRE BGTCRE > NUL
:: move override\WYVERBA.CRE BGTCRE > NUL
:: move override\WYVERN.CRE BGTCRE > NUL
:: move override\WYVERNBI.CRE BGTCRE > NUL
:: move override\X#CORWYV.CRE BGTCRE > NUL
:: move override\XAN4.CRE BGTCRE > NUL
:: move override\XAN6.CRE BGTCRE > NUL
:: move override\XVART.CRE BGTCRE > NUL
:: move override\XVART2.CRE BGTCRE > NUL
:: move override\XVARTH.CRE BGTCRE > NUL
:: move override\XVARTSU.CRE BGTCRE > NUL
:: move override\XVART_A.CRE BGTCRE > NUL
:: move override\XVART_B.CRE BGTCRE > NUL
:: move override\XVART_C.CRE BGTCRE > NUL
:: move override\XZAR2.CRE BGTCRE > NUL
:: move override\XZAR4.CRE BGTCRE > NUL
:: move override\XZAR6.CRE BGTCRE > NUL
:: move override\YAGO.CRE BGTCRE > NUL
:: move override\YESLIC.CRE BGTCRE > NUL
:: move override\YESLIC5.CRE BGTCRE > NUL
:: move override\ZAL.CRE BGTCRE > NUL
:: move override\ZARGAL.CRE BGTCRE > NUL
:: move override\ZEELA.CRE BGTCRE > NUL
:: move override\ZEKAR.CRE BGTCRE > NUL
:: move override\ZEKE.CRE BGTCRE > NUL
:: move override\ZHALIM.CRE BGTCRE > NUL
:: move override\ZHURLO.CRE BGTCRE > NUL
:: move override\ZOMBIE.CRE BGTCRE > NUL
:: move override\ZOMBIEB.CRE BGTCRE > NUL
:: move override\ZOMBIEW.CRE BGTCRE > NUL
:: move override\ZOMBIE_A.CRE BGTCRE > NUL
:: move override\ZOMBIE_B.CRE BGTCRE > NUL
:: move override\ZOMBIE_C.CRE BGTCRE > NUL
:: move override\ZOMBIE_D.CRE BGTCRE > NUL
:: move override\ZOMBIE_E.CRE BGTCRE > NUL
:: move override\ZORDRA.CRE BGTCRE > NUL
:: move override\ZORL.CRE BGTCRE > NUL
move override\BPBGTMAP.MOS BGTCRE > NUL
_weidu --make-biff BGTCRE
call BGT\Install\deldir BG1CRE
call BGT\Install\deldir BGTCRE

md BG1DLG
:: move override\ABELA.DLG BG1DLG > NUL
:: move override\ACHEN.DLG BG1DLG > NUL
:: move override\ADDY.DLG BG1DLG > NUL
:: move override\AGNASI.DLG BG1DLG > NUL
:: move override\AJANTI.DLG BG1DLG > NUL
:: move override\AJANTJ.DLG BG1DLG > NUL
:: move override\AJANTP.DLG BG1DLG > NUL
:: move override\ALANBL.DLG BG1DLG > NUL
:: move override\ALATOS.DLG BG1DLG > NUL
:: move override\ALBERT.DLG BG1DLG > NUL
:: move override\ALDETH.DLG BG1DLG > NUL
:: move override\ALGERN.DLG BG1DLG > NUL
:: move override\ALORA.DLG BG1DLG > NUL
:: move override\ALORAJ.DLG BG1DLG > NUL
:: move override\ALORAP.DLG BG1DLG > NUL
:: move override\ALVAHE.DLG BG1DLG > NUL
:: move override\ALYTH.DLG BG1DLG > NUL
:: move override\AMARAN.DLG BG1DLG > NUL
:: move override\AMNIS.DLG BG1DLG > NUL
:: move override\AMNIS3.DLG BG1DLG > NUL
:: move override\AMNIS4.DLG BG1DLG > NUL
:: move override\AMNISE.DLG BG1DLG > NUL
:: move override\AMNISH.DLG BG1DLG > NUL
:: move override\AMSLEEP.DLG BG1DLG > NUL
:: move override\ANDARS.DLG BG1DLG > NUL
:: move override\ANDOUT.DLG BG1DLG > NUL
:: move override\ANDRIS.DLG BG1DLG > NUL
:: move override\ANGELO.DLG BG1DLG > NUL
:: move override\AOLN.DLG BG1DLG > NUL
:: move override\APPAR.DLG BG1DLG > NUL
:: move override\ARCAND.DLG BG1DLG > NUL
:: move override\ARDENO.DLG BG1DLG > NUL
:: move override\ARDROU.DLG BG1DLG > NUL
:: move override\ARGHAI.DLG BG1DLG > NUL
:: move override\ARKANI3.DLG BG1DLG > NUL
:: move override\ARKION.DLG BG1DLG > NUL
:: move override\ARKUSH.DLG BG1DLG > NUL
:: move override\ASHEN.DLG BG1DLG > NUL
:: move override\AVARICE.DLG BG1DLG > NUL
:: move override\BAJANT.DLG BG1DLG > NUL
:: move override\BALORA.DLG BG1DLG > NUL
:: move override\BANDCR.DLG BG1DLG > NUL
:: move override\BANDCT.DLG BG1DLG > NUL
:: move override\BANDIC.DLG BG1DLG > NUL
:: move override\BANDIT.DLG BG1DLG > NUL
:: move override\BANDITCY.DLG BG1DLG > NUL
:: move override\BARDOL.DLG BG1DLG > NUL
:: move override\BARESH.DLG BG1DLG > NUL
:: move override\BARSLIM.DLG BG1DLG > NUL
:: move override\BART10.DLG BG1DLG > NUL
:: move override\BART11.DLG BG1DLG > NUL
:: move override\BART12.DLG BG1DLG > NUL
:: move override\BART13.DLG BG1DLG > NUL
:: move override\BART14.DLG BG1DLG > NUL
:: move override\BART15.DLG BG1DLG > NUL
:: move override\BART16.DLG BG1DLG > NUL
:: move override\BART2.DLG BG1DLG > NUL
:: move override\BART3.DLG BG1DLG > NUL
:: move override\BART4.DLG BG1DLG > NUL
:: move override\BART5.DLG BG1DLG > NUL
:: move override\BART6.DLG BG1DLG > NUL
:: move override\BART7.DLG BG1DLG > NUL
:: move override\BART8.DLG BG1DLG > NUL
:: move override\BART9.DLG BG1DLG > NUL
:: move override\BARUK.DLG BG1DLG > NUL
:: move override\BASSIL.DLG BG1DLG > NUL
:: move override\BAYARD.DLG BG1DLG > NUL
:: move override\BBRANW.DLG BG1DLG > NUL
:: move override\BCORAN.DLG BG1DLG > NUL
:: move override\BDYNA.DLG BG1DLG > NUL
:: move override\BEDWIN.DLG BG1DLG > NUL
:: move override\BEGGBA.DLG BG1DLG > NUL
:: move override\BEGGNA.DLG BG1DLG > NUL
:: move override\BELAND.DLG BG1DLG > NUL
:: move override\BELDIN.DLG BG1DLG > NUL
:: move override\BELDOT.DLG BG1DLG > NUL
:: move override\BELLAM.DLG BG1DLG > NUL
:: move override\BELT.DLG BG1DLG > NUL
:: move override\BELTBRD.DLG BG1DLG > NUL
:: move override\BENDAL.DLG BG1DLG > NUL
:: move override\BENJY.DLG BG1DLG > NUL
:: move override\BENTAN.DLG BG1DLG > NUL
:: move override\BENTHA.DLG BG1DLG > NUL
:: move override\BENTLY.DLG BG1DLG > NUL
:: move override\BERRUN.DLG BG1DLG > NUL
:: move override\BFALDO.DLG BG1DLG > NUL
:: move override\BGARRI.DLG BG1DLG > NUL
:: move override\BGCALAHA.DLG BG1DLG > NUL
:: move override\BGCARBOS.DLG BG1DLG > NUL
:: move override\BGFTOWN2.DLG BG1DLG > NUL
:: move override\BGFTOWN3.DLG BG1DLG > NUL
:: move override\BGFTOWN4.DLG BG1DLG > NUL
:: move override\BGKNIGHT.DLG BG1DLG > NUL
:: move override\BGMTOWN2.DLG BG1DLG > NUL
:: move override\BGMTOWN3.DLG BG1DLG > NUL
:: move override\BGMTOWN4.DLG BG1DLG > NUL
:: move override\BGMTOWN5.DLG BG1DLG > NUL
:: move override\BGNEB.DLG BG1DLG > NUL
:: move override\BGQUAYLE.DLG BG1DLG > NUL
:: move override\BGROGER.DLG BG1DLG > NUL
:: move override\BGSENDAI.DLG BG1DLG > NUL
:: move override\BGSHANK.DLG BG1DLG > NUL
:: move override\BGSHOP01.DLG BG1DLG > NUL
:: move override\BGSHOP03.DLG BG1DLG > NUL
:: move override\BGSHOP04.DLG BG1DLG > NUL
:: move override\BGSHOP06.DLG BG1DLG > NUL
:: move override\BGSHOP07.DLG BG1DLG > NUL
:: move override\BGSHOP08.DLG BG1DLG > NUL
:: move override\BGTARNOR.DLG BG1DLG > NUL
:: move override\BGTAZOK.DLG BG1DLG > NUL
:: move override\BGVICONI.DLG BG1DLG > NUL
:: move override\BGWILLIA.DLG BG1DLG > NUL
:: move override\BHEREN.DLG BG1DLG > NUL
:: move override\BILL.DLG BG1DLG > NUL
:: move override\BINKOS.DLG BG1DLG > NUL
:: move override\BINKY.DLG BG1DLG > NUL
:: move override\BIP.DLG BG1DLG > NUL
:: move override\BJAHEIR.DLG BG1DLG > NUL
:: move override\BJORNI.DLG BG1DLG > NUL
:: move override\BKAGAI.DLG BG1DLG > NUL
:: move override\BKHALI.DLG BG1DLG > NUL
:: move override\BKIVAN.DLG BG1DLG > NUL
:: move override\BLACKL.DLG BG1DLG > NUL
:: move override\BLANE.DLG BG1DLG > NUL
:: move override\BMINSC.DLG BG1DLG > NUL
:: move override\BMONTA.DLG BG1DLG > NUL
:: move override\BOB.DLG BG1DLG > NUL
:: move override\BORDA.DLG BG1DLG > NUL
:: move override\BORIN.DLG BG1DLG > NUL
:: move override\BORK.DLG BG1DLG > NUL
:: move override\BOUNTY.DLG BG1DLG > NUL
:: move override\BOYBA1.DLG BG1DLG > NUL
:: move override\BOYBA2.DLG BG1DLG > NUL
:: move override\BOYBA3.DLG BG1DLG > NUL
:: move override\BOYBE1.DLG BG1DLG > NUL
:: move override\BOYBE2.DLG BG1DLG > NUL
:: move override\BQUAYL.DLG BG1DLG > NUL
:: move override\BRAGE.DLG BG1DLG > NUL
:: move override\BRAN.DLG BG1DLG > NUL
:: move override\BRANDI.DLG BG1DLG > NUL
:: move override\BRANWE.DLG BG1DLG > NUL
:: move override\BRANWJ.DLG BG1DLG > NUL
:: move override\BRANWP.DLG BG1DLG > NUL
:: move override\BRATHL.DLG BG1DLG > NUL
:: move override\BRENNA.DLG BG1DLG > NUL
:: move override\BREVLI.DLG BG1DLG > NUL
:: move override\BRIELB.DLG BG1DLG > NUL
:: move override\BRILLA.DLG BG1DLG > NUL
:: move override\BRUNO.DLG BG1DLG > NUL
:: move override\BSAFAN.DLG BG1DLG > NUL
:: move override\BSHART.DLG BG1DLG > NUL
:: move override\BSKIE.DLG BG1DLG > NUL
:: move override\BTIAX.DLG BG1DLG > NUL
:: move override\BUB.DLG BG1DLG > NUL
:: move override\BULLRUSH.DLG BG1DLG > NUL
:: move override\BVICONI.DLG BG1DLG > NUL
:: move override\BXANNN.DLG BG1DLG > NUL
:: move override\BXZAR.DLG BG1DLG > NUL
:: move override\BYESLI.DLG BG1DLG > NUL
:: move override\CADDER.DLG BG1DLG > NUL
:: move override\CAEDMO.DLG BG1DLG > NUL
:: move override\CAILAN.DLG BG1DLG > NUL
:: move override\CALDO.DLG BG1DLG > NUL
:: move override\CANTIC.DLG BG1DLG > NUL
:: move override\CANTO.DLG BG1DLG > NUL
:: move override\CARSA.DLG BG1DLG > NUL
:: move override\CASSON.DLG BG1DLG > NUL
:: move override\CATTAC.DLG BG1DLG > NUL
:: move override\CAUTER.DLG BG1DLG > NUL
:: move override\CENTEO.DLG BG1DLG > NUL
:: move override\CHANTE2.DLG BG1DLG > NUL
:: move override\CHANTH.DLG BG1DLG > NUL
:: move override\CHARLE.DLG BG1DLG > NUL
:: move override\CHARMC.DLG BG1DLG > NUL
:: move override\CHASE.DLG BG1DLG > NUL
:: move override\CHELAN.DLG BG1DLG > NUL
:: move override\CHESS.DLG BG1DLG > NUL
:: move override\CHILDULG.DLG BG1DLG > NUL
:: move override\CHILNA.DLG BG1DLG > NUL
:: move override\CHIMP5.DLG BG1DLG > NUL
:: move override\CHLOE.DLG BG1DLG > NUL
:: move override\CHOLGA.DLG BG1DLG > NUL
:: move override\CLAIRD.DLG BG1DLG > NUL
:: move override\COKSMTH.DLG BG1DLG > NUL
:: move override\CONNOL.DLG BG1DLG > NUL
:: move override\CORAN.DLG BG1DLG > NUL
:: move override\CORANJ.DLG BG1DLG > NUL
:: move override\CORANP.DLG BG1DLG > NUL
:: move override\CORDYR.DLG BG1DLG > NUL
:: move override\CORSON.DLG BG1DLG > NUL
:: move override\CORY.DLG BG1DLG > NUL
:: move override\CREDUS.DLG BG1DLG > NUL
:: move override\CREW.DLG BG1DLG > NUL
:: move override\CUCHOL.DLG BG1DLG > NUL
:: move override\CULT1.DLG BG1DLG > NUL
:: move override\CULT2.DLG BG1DLG > NUL
:: move override\CULT3.DLG BG1DLG > NUL
:: move override\CUTCHAR.DLG BG1DLG > NUL
:: move override\CUTGOR.DLG BG1DLG > NUL
:: move override\CUTSAR.DLG BG1DLG > NUL
:: move override\CUTSILK.DLG BG1DLG > NUL
:: move override\CYDERM.DLG BG1DLG > NUL
:: move override\CYTHAN.DLG BG1DLG > NUL
:: move override\DABRON.DLG BG1DLG > NUL
:: move override\DAERRAGH.DLG BG1DLG > NUL
:: move override\DAITEL.DLG BG1DLG > NUL
:: move override\DALTON.DLG BG1DLG > NUL
:: move override\DANDAL.DLG BG1DLG > NUL
:: move override\DARRYL.DLG BG1DLG > NUL
:: move override\DAVAEO.DLG BG1DLG > NUL
:: move override\DEAGAN.DLG BG1DLG > NUL
:: move override\DEAN.DLG BG1DLG > NUL
:: move override\DEATH1.DLG BG1DLG > NUL
:: move override\DEATH2.DLG BG1DLG > NUL
:: move override\DEGROD.DLG BG1DLG > NUL
:: move override\DELAINY1.DLG BG1DLG > NUL
:: move override\DELAINY2.DLG BG1DLG > NUL
:: move override\DELORN.DLG BG1DLG > NUL
:: move override\DELSVIR.DLG BG1DLG > NUL
:: move override\DELTAN.DLG BG1DLG > NUL
:: move override\DELTAN2.DLG BG1DLG > NUL
:: move override\DELTHY.DLG BG1DLG > NUL
:: move override\DENAK.DLG BG1DLG > NUL
:: move override\DENKOD.DLG BG1DLG > NUL
:: move override\DESRET.DLG BG1DLG > NUL
:: move override\DESSLO.DLG BG1DLG > NUL
:: move override\DESTUS.DLG BG1DLG > NUL
:: move override\DETRAN.DLG BG1DLG > NUL
:: move override\DEZKIEL.DLG BG1DLG > NUL
:: move override\DHANIA.DLG BG1DLG > NUL
:: move override\DIARMID.DLG BG1DLG > NUL
:: move override\DIGGER.DLG BG1DLG > NUL
:: move override\DILAK.DLG BG1DLG > NUL
:: move override\DILLAR.DLG BG1DLG > NUL
:: move override\DILOK.DLG BG1DLG > NUL
:: move override\DINK.DLG BG1DLG > NUL
:: move override\DIVINE.DLG BG1DLG > NUL
:: move override\DOOMSAY.DLG BG1DLG > NUL
:: move override\DOPDUR1.DLG BG1DLG > NUL
:: move override\DOPDUR2.DLG BG1DLG > NUL
:: move override\DOPDUR3.DLG BG1DLG > NUL
:: move override\DOPMER.DLG BG1DLG > NUL
:: move override\DOPPSE.DLG BG1DLG > NUL
:: move override\DOPPSM.DLG BG1DLG > NUL
:: move override\DORK.DLG BG1DLG > NUL
:: move override\DRADEE.DLG BG1DLG > NUL
:: move override\DRADEE2.DLG BG1DLG > NUL
:: move override\DRASUS.DLG BG1DLG > NUL
:: move override\DRATAN.DLG BG1DLG > NUL
:: move override\DRELIK.DLG BG1DLG > NUL
:: move override\DREPPI.DLG BG1DLG > NUL
:: move override\DREPPI2.DLG BG1DLG > NUL
:: move override\DREPPI3.DLG BG1DLG > NUL
:: move override\DRIENN.DLG BG1DLG > NUL
:: move override\DRIZZT.DLG BG1DLG > NUL
:: move override\DROTH.DLG BG1DLG > NUL
:: move override\DRUID2.DLG BG1DLG > NUL
:: move override\DRUIDC.DLG BG1DLG > NUL
:: move override\DRUNK.DLG BG1DLG > NUL
:: move override\DRYAD.DLG BG1DLG > NUL
:: move override\DUN.DLG BG1DLG > NUL
:: move override\DUNKIN.DLG BG1DLG > NUL
:: move override\DURLAGT.DLG BG1DLG > NUL
:: move override\DURLYLE.DLG BG1DLG > NUL
:: move override\DURLYLE1.DLG BG1DLG > NUL
:: move override\DURLYLE2.DLG BG1DLG > NUL
:: move override\DURSWORD.DLG BG1DLG > NUL
:: move override\DUSHAI.DLG BG1DLG > NUL
:: move override\DYNAHE.DLG BG1DLG > NUL
:: move override\DYNAJ.DLG BG1DLG > NUL
:: move override\DYNAP.DLG BG1DLG > NUL
:: move override\EDWIN.DLG BG1DLG > NUL
:: move override\EDWINJ.DLG BG1DLG > NUL
:: move override\EDWINP.DLG BG1DLG > NUL
:: move override\ELDOTH.DLG BG1DLG > NUL
:: move override\ELDOTJ.DLG BG1DLG > NUL
:: move override\ELDOTP.DLG BG1DLG > NUL
:: move override\ELKART.DLG BG1DLG > NUL
:: move override\ELMIN1.DLG BG1DLG > NUL
:: move override\ELMIN2.DLG BG1DLG > NUL
:: move override\ELMIN3.DLG BG1DLG > NUL
:: move override\ELMIN5.DLG BG1DLG > NUL
:: move override\ELMINS4.DLG BG1DLG > NUL
:: move override\EMERS2.DLG BG1DLG > NUL
:: move override\EMERSO.DLG BG1DLG > NUL
:: move override\EMITAR.DLG BG1DLG > NUL
:: move override\ENDER.DLG BG1DLG > NUL
:: move override\ENTAR.DLG BG1DLG > NUL
:: move override\ENTILL.DLG BG1DLG > NUL
:: move override\ERDANE.DLG BG1DLG > NUL
:: move override\ERIK.DLG BG1DLG > NUL
:: move override\EURIC.DLG BG1DLG > NUL
:: move override\EVALT.DLG BG1DLG > NUL
:: move override\FABER.DLG BG1DLG > NUL
:: move override\FAFIGHT.DLG BG1DLG > NUL
:: move override\FAHRIN.DLG BG1DLG > NUL
:: move override\FAIZAH.DLG BG1DLG > NUL
:: move override\FALDOJ.DLG BG1DLG > NUL
:: move override\FALDOP.DLG BG1DLG > NUL
:: move override\FALDOR.DLG BG1DLG > NUL
:: move override\FARM2.DLG BG1DLG > NUL
:: move override\FARM3.DLG BG1DLG > NUL
:: move override\FARM4.DLG BG1DLG > NUL
:: move override\FARM5.DLG BG1DLG > NUL
:: move override\FARMBE.DLG BG1DLG > NUL
:: move override\FARMBR.DLG BG1DLG > NUL
:: move override\FARTHI.DLG BG1DLG > NUL
:: move override\FATMBA.DLG BG1DLG > NUL
:: move override\FATWBA.DLG BG1DLG > NUL
:: move override\FCOOK2.DLG BG1DLG > NUL
:: move override\FCOOK3.DLG BG1DLG > NUL
:: move override\FEAR.DLG BG1DLG > NUL
:: move override\FECOOK.DLG BG1DLG > NUL
:: move override\FELDAN.DLG BG1DLG > NUL
:: move override\FELONI.DLG BG1DLG > NUL
:: move override\FENRUS.DLG BG1DLG > NUL
:: move override\FENTEN.DLG BG1DLG > NUL
:: move override\FERGUS.DLG BG1DLG > NUL
:: move override\FFHUNT.DLG BG1DLG > NUL
:: move override\FFSLEEP.DLG BG1DLG > NUL
:: move override\FIREB1.DLG BG1DLG > NUL
:: move override\FIREBE.DLG BG1DLG > NUL
:: move override\FLAM10.DLG BG1DLG > NUL
:: move override\FLAM11.DLG BG1DLG > NUL
:: move override\FLAM2.DLG BG1DLG > NUL
:: move override\FLAM4.DLG BG1DLG > NUL
:: move override\FLAM5.DLG BG1DLG > NUL
:: move override\FLAM6.DLG BG1DLG > NUL
:: move override\FLAM7.DLG BG1DLG > NUL
:: move override\FLAM8.DLG BG1DLG > NUL
:: move override\FLAM9.DLG BG1DLG > NUL
:: move override\FLAMAL.DLG BG1DLG > NUL
:: move override\FLAMBG.DLG BG1DLG > NUL
:: move override\FLAMBRID.DLG BG1DLG > NUL
:: move override\FLAMC7.DLG BG1DLG > NUL
:: move override\FLAMEN.DLG BG1DLG > NUL
:: move override\FLAMGG.DLG BG1DLG > NUL
:: move override\FLAMHUSB.DLG BG1DLG > NUL
:: move override\FLAMPUN.DLG BG1DLG > NUL
:: move override\FLAMVAI.DLG BG1DLG > NUL
:: move override\FOOLS.DLG BG1DLG > NUL
:: move override\FOOTY.DLG BG1DLG > NUL
:: move override\FORESH.DLG BG1DLG > NUL
:: move override\FORTHE.DLG BG1DLG > NUL
:: move override\FRIEND.DLG BG1DLG > NUL
:: move override\FTOBE2.DLG BG1DLG > NUL
:: move override\FTOBE3.DLG BG1DLG > NUL
:: move override\FTOBE4.DLG BG1DLG > NUL
:: move override\FTOBE5.DLG BG1DLG > NUL
:: move override\FTOBE6.DLG BG1DLG > NUL
:: move override\FTOBE8.DLG BG1DLG > NUL
:: move override\FTOBE9.DLG BG1DLG > NUL
:: move override\FTOWB3.DLG BG1DLG > NUL
:: move override\FTOWB4.DLG BG1DLG > NUL
:: move override\FTOWB5.DLG BG1DLG > NUL
:: move override\FTOWB6.DLG BG1DLG > NUL
:: move override\FTOWB7.DLG BG1DLG > NUL
:: move override\FTOWBA.DLG BG1DLG > NUL
:: move override\FTOWBAS.DLG BG1DLG > NUL
:: move override\FTOWBAZ.DLG BG1DLG > NUL
:: move override\FTOWBE.DLG BG1DLG > NUL
:: move override\FTOWBEZ.DLG BG1DLG > NUL
:: move override\FTOWFR.DLG BG1DLG > NUL
:: move override\FTOWNA.DLG BG1DLG > NUL
:: move override\FTOWNAZ.DLG BG1DLG > NUL
:: move override\FTOWUB.DLG BG1DLG > NUL
:: move override\FTOWWI.DLG BG1DLG > NUL
:: move override\FULLER.DLG BG1DLG > NUL
:: move override\FULLER2.DLG BG1DLG > NUL
:: move override\FULLER3.DLG BG1DLG > NUL
:: move override\GALILE.DLG BG1DLG > NUL
:: move override\GALKEN.DLG BG1DLG > NUL
:: move override\GALLOR.DLG BG1DLG > NUL
:: move override\GALTOK.DLG BG1DLG > NUL
:: move override\GAMES.DLG BG1DLG > NUL
:: move override\GAMES2.DLG BG1DLG > NUL
:: move override\GAMES3.DLG BG1DLG > NUL
:: move override\GAMES4.DLG BG1DLG > NUL
:: move override\GAMES5.DLG BG1DLG > NUL
:: move override\GANDOL.DLG BG1DLG > NUL
:: move override\GANTOL.DLG BG1DLG > NUL
:: move override\GARAN.DLG BG1DLG > NUL
:: move override\GARDEN.DLG BG1DLG > NUL
:: move override\GARKLA.DLG BG1DLG > NUL
:: move override\GARRIC.DLG BG1DLG > NUL
:: move override\GARRIJ.DLG BG1DLG > NUL
:: move override\GARRIP.DLG BG1DLG > NUL
:: move override\GATEWA.DLG BG1DLG > NUL
:: move override\GATEWA2.DLG BG1DLG > NUL
:: move override\GATEWARD.DLG BG1DLG > NUL
:: move override\GATEWERE.DLG BG1DLG > NUL
:: move override\GAXIR.DLG BG1DLG > NUL
:: move override\GAZIB.DLG BG1DLG > NUL
:: move override\GELLAN.DLG BG1DLG > NUL
:: move override\GERDE.DLG BG1DLG > NUL
:: move override\GERVIS.DLG BG1DLG > NUL
:: move override\GHORAK.DLG BG1DLG > NUL
:: move override\GIRBA1.DLG BG1DLG > NUL
:: move override\GIRBA2.DLG BG1DLG > NUL
:: move override\GIRBA3.DLG BG1DLG > NUL
:: move override\GIRLBE.DLG BG1DLG > NUL
:: move override\GLANMA.DLG BG1DLG > NUL
:: move override\GLART.DLG BG1DLG > NUL
:: move override\GNARL.DLG BG1DLG > NUL
:: move override\GNOLL5.DLG BG1DLG > NUL
:: move override\GOLINV.DLG BG1DLG > NUL
:: move override\GORD.DLG BG1DLG > NUL
:: move override\GORION.DLG BG1DLG > NUL
:: move override\GORION3.DLG BG1DLG > NUL
:: move override\GORPEL.DLG BG1DLG > NUL
:: move override\GRAEL.DLG BG1DLG > NUL
:: move override\GREGOR.DLG BG1DLG > NUL
:: move override\GRETEK.DLG BG1DLG > NUL
:: move override\GREYWO.DLG BG1DLG > NUL
:: move override\GURKE.DLG BG1DLG > NUL
:: move override\GYLLIA.DLG BG1DLG > NUL
:: move override\HACK.DLG BG1DLG > NUL
:: move override\HAFFG2.DLG BG1DLG > NUL
:: move override\HAFIZ.DLG BG1DLG > NUL
:: move override\HAIRTO.DLG BG1DLG > NUL
:: move override\HALBAZ.DLG BG1DLG > NUL
:: move override\HALFFG.DLG BG1DLG > NUL
:: move override\HALFG2.DLG BG1DLG > NUL
:: move override\HALFG3.DLG BG1DLG > NUL
:: move override\HALFG4.DLG BG1DLG > NUL
:: move override\HALFG5.DLG BG1DLG > NUL
:: move override\HALFG6.DLG BG1DLG > NUL
:: move override\HALFGU.DLG BG1DLG > NUL
:: move override\HALFTR.DLG BG1DLG > NUL
:: move override\HANNAH.DLG BG1DLG > NUL
:: move override\HARBOR.DLG BG1DLG > NUL
:: move override\HECITO.DLG BG1DLG > NUL
:: move override\HELSHA.DLG BG1DLG > NUL
:: move override\HENTOL.DLG BG1DLG > NUL
:: move override\HEPHIS.DLG BG1DLG > NUL
:: move override\HERSCH.DLG BG1DLG > NUL
:: move override\HICK.DLG BG1DLG > NUL
:: move override\HOBGO5.DLG BG1DLG > NUL
:: move override\HOUSEN.DLG BG1DLG > NUL
:: move override\HOUSG1.DLG BG1DLG > NUL
:: move override\HOUSG2.DLG BG1DLG > NUL
:: move override\HOUSG3.DLG BG1DLG > NUL
:: move override\HOUSG4.DLG BG1DLG > NUL
:: move override\HOUSG5.DLG BG1DLG > NUL
:: move override\HOUSG6.DLG BG1DLG > NUL
:: move override\HULL.DLG BG1DLG > NUL
:: move override\HULL2.DLG BG1DLG > NUL
:: move override\HULL3.DLG BG1DLG > NUL
:: move override\HULRIK.DLG BG1DLG > NUL
:: move override\HUNTER.DLG BG1DLG > NUL
:: move override\HURGAN.DLG BG1DLG > NUL
:: move override\HUSAM.DLG BG1DLG > NUL
:: move override\HUSAM2.DLG BG1DLG > NUL
:: move override\ICHARY.DLG BG1DLG > NUL
:: move override\IDRYAD1.DLG BG1DLG > NUL
:: move override\IGNATI.DLG BG1DLG > NUL
:: move override\IKE.DLG BG1DLG > NUL
:: move override\IKE2.DLG BG1DLG > NUL
:: move override\IMOEN.DLG BG1DLG > NUL
:: move override\IMOEN2.DLG BG1DLG > NUL
:: move override\IMOEN2J.DLG BG1DLG > NUL
:: move override\IMOEN2P.DLG BG1DLG > NUL
:: move override\INGOT.DLG BG1DLG > NUL
:: move override\INNKE2.DLG BG1DLG > NUL
:: move override\INNKE3.DLG BG1DLG > NUL
:: move override\INNKN2.DLG BG1DLG > NUL
:: move override\IRLENT.DLG BG1DLG > NUL
:: move override\IRON10.DLG BG1DLG > NUL
:: move override\IRON11.DLG BG1DLG > NUL
:: move override\IRON12.DLG BG1DLG > NUL
:: move override\IRON13.DLG BG1DLG > NUL
:: move override\IRON14.DLG BG1DLG > NUL
:: move override\IRON2.DLG BG1DLG > NUL
:: move override\IRON3.DLG BG1DLG > NUL
:: move override\IRON4.DLG BG1DLG > NUL
:: move override\IRON5.DLG BG1DLG > NUL
:: move override\IRON6.DLG BG1DLG > NUL
:: move override\IRON7.DLG BG1DLG > NUL
:: move override\IRON8.DLG BG1DLG > NUL
:: move override\IRON9.DLG BG1DLG > NUL
:: move override\IRONGU.DLG BG1DLG > NUL
:: move override\IRONHO.DLG BG1DLG > NUL
:: move override\IRONM2.DLG BG1DLG > NUL
:: move override\IRONM3.DLG BG1DLG > NUL
:: move override\IRONM4.DLG BG1DLG > NUL
:: move override\IRONME.DLG BG1DLG > NUL
:: move override\ISLANNE.DLG BG1DLG > NUL
:: move override\ISLSIR.DLG BG1DLG > NUL
:: move override\ITHMEE.DLG BG1DLG > NUL
:: move override\ITHTYL.DLG BG1DLG > NUL
:: move override\IVANNE.DLG BG1DLG > NUL
:: move override\IZEFIA.DLG BG1DLG > NUL
:: move override\JACIL.DLG BG1DLG > NUL
:: move override\JAHEIR.DLG BG1DLG > NUL
:: move override\JAHEIRAJ.DLG BG1DLG > NUL
:: move override\JAHEIRAP.DLG BG1DLG > NUL
:: move override\JALANT.DLG BG1DLG > NUL
:: move override\JAMIE.DLG BG1DLG > NUL
:: move override\JARDAK.DLG BG1DLG > NUL
:: move override\JARED.DLG BG1DLG > NUL
:: move override\JASE.DLG BG1DLG > NUL
:: move override\JEB.DLG BG1DLG > NUL
:: move override\JEBADO.DLG BG1DLG > NUL
:: move override\JENKAL.DLG BG1DLG > NUL
:: move override\JESSUP.DLG BG1DLG > NUL
:: move override\JHASSO.DLG BG1DLG > NUL
:: move override\JOIA.DLG BG1DLG > NUL
:: move override\JONAVI.DLG BG1DLG > NUL
:: move override\JONDAL.DLG BG1DLG > NUL
:: move override\JONDAL3.DLG BG1DLG > NUL
:: move override\JOPI.DLG BG1DLG > NUL
:: move override\JORIN.DLG BG1DLG > NUL
:: move override\KAELLA.DLG BG1DLG > NUL
:: move override\KAGAIJ.DLG BG1DLG > NUL
:: move override\KAGAIN.DLG BG1DLG > NUL
:: move override\KAGAIP.DLG BG1DLG > NUL
:: move override\KAHRK.DLG BG1DLG > NUL
:: move override\KAISH.DLG BG1DLG > NUL
:: move override\KAISH2.DLG BG1DLG > NUL
:: move override\KALESS.DLG BG1DLG > NUL
:: move override\KARAN.DLG BG1DLG > NUL
:: move override\KARAN1.DLG BG1DLG > NUL
:: move override\KARAN3.DLG BG1DLG > NUL
:: move override\KARLAT.DLG BG1DLG > NUL
:: move override\KAROUG.DLG BG1DLG > NUL
:: move override\KARP.DLG BG1DLG > NUL
:: move override\KEEPER.DLG BG1DLG > NUL
:: move override\KELDDA.DLG BG1DLG > NUL
:: move override\KENT.DLG BG1DLG > NUL
:: move override\KERRAC.DLG BG1DLG > NUL
:: move override\KESHEE.DLG BG1DLG > NUL
:: move override\KESTOR.DLG BG1DLG > NUL
:: move override\KEVIN.DLG BG1DLG > NUL
:: move override\KHALID.DLG BG1DLG > NUL
:: move override\KHALIJ.DLG BG1DLG > NUL
:: move override\KHALIP.DLG BG1DLG > NUL
:: move override\KIEL.DLG BG1DLG > NUL
:: move override\KIELPC.DLG BG1DLG > NUL
:: move override\KIERES.DLG BG1DLG > NUL
:: move override\KIRIAN.DLG BG1DLG > NUL
:: move override\KIRINHAL.DLG BG1DLG > NUL
:: move override\KISSIQ.DLG BG1DLG > NUL
:: move override\KIVAN.DLG BG1DLG > NUL
:: move override\KIVANJ.DLG BG1DLG > NUL
:: move override\KIVANP.DLG BG1DLG > NUL
:: move override\KNIGHTSK.DLG BG1DLG > NUL
:: move override\KNOTT.DLG BG1DLG > NUL
:: move override\KOLVAR.DLG BG1DLG > NUL
:: move override\KORAX.DLG BG1DLG > NUL
:: move override\KOVERA.DLG BG1DLG > NUL
:: move override\KRUMM.DLG BG1DLG > NUL
:: move override\KRYLA.DLG BG1DLG > NUL
:: move override\KRYSTI.DLG BG1DLG > NUL
:: move override\KYLEE.DLG BG1DLG > NUL
:: move override\LACHLU.DLG BG1DLG > NUL
:: move override\LAERTA.DLG BG1DLG > NUL
:: move override\LAHL.DLG BG1DLG > NUL
:: move override\LAKADA.DLG BG1DLG > NUL
:: move override\LAMALH.DLG BG1DLG > NUL
:: move override\LANDRI.DLG BG1DLG > NUL
:: move override\LANTAN.DLG BG1DLG > NUL
:: move override\LAOLA.DLG BG1DLG > NUL
:: move override\LARRIA.DLG BG1DLG > NUL
:: move override\LARRY.DLG BG1DLG > NUL
:: move override\LARYSS.DLG BG1DLG > NUL
:: move override\LARZE.DLG BG1DLG > NUL
:: move override\LASKAL.DLG BG1DLG > NUL
:: move override\LAUREL.DLG BG1DLG > NUL
:: move override\LEAGGU.DLG BG1DLG > NUL
:: move override\LENA.DLG BG1DLG > NUL
:: move override\LESLEY.DLG BG1DLG > NUL
:: move override\LESTOR.DLG BG1DLG > NUL
:: move override\LIIA.DLG BG1DLG > NUL
:: move override\LOBAR.DLG BG1DLG > NUL
:: move override\LOTHAN.DLG BG1DLG > NUL
:: move override\LOUISE.DLG BG1DLG > NUL
:: move override\LOVE.DLG BG1DLG > NUL
:: move override\LOWLGU.DLG BG1DLG > NUL
:: move override\LUCKY.DLG BG1DLG > NUL
:: move override\LUSSEL.DLG BG1DLG > NUL
:: move override\MALTZ.DLG BG1DLG > NUL
:: move override\MAPLE.DLG BG1DLG > NUL
:: move override\MARALE.DLG BG1DLG > NUL
:: move override\MARALE2.DLG BG1DLG > NUL
:: move override\MAREK.DLG BG1DLG > NUL
:: move override\MARL.DLG BG1DLG > NUL
:: move override\MARVIN.DLG BG1DLG > NUL
:: move override\MCOOK.DLG BG1DLG > NUL
:: move override\MCOOK2.DLG BG1DLG > NUL
:: move override\MCOOK3.DLG BG1DLG > NUL
:: move override\MCOOK4.DLG BG1DLG > NUL
:: move override\MCOOK5.DLG BG1DLG > NUL
:: move override\MCOOK6.DLG BG1DLG > NUL
:: move override\MEIALA.DLG BG1DLG > NUL
:: move override\MEILUM.DLG BG1DLG > NUL
:: move override\MELICA.DLG BG1DLG > NUL
:: move override\MENDA1.DLG BG1DLG > NUL
:: move override\MENDA2.DLG BG1DLG > NUL
:: move override\MENDA3.DLG BG1DLG > NUL
:: move override\MENDA4.DLG BG1DLG > NUL
:: move override\MERCH2.DLG BG1DLG > NUL
:: move override\MERCH4.DLG BG1DLG > NUL
:: move override\MERCH5.DLG BG1DLG > NUL
:: move override\MERCH6.DLG BG1DLG > NUL
:: move override\MERCHA.DLG BG1DLG > NUL
:: move override\MERCHG.DLG BG1DLG > NUL
:: move override\MERLEA.DLG BG1DLG > NUL
:: move override\MERSIL.DLG BG1DLG > NUL
:: move override\MEYM.DLG BG1DLG > NUL
:: move override\MICK.DLG BG1DLG > NUL
:: move override\MINEC2.DLG BG1DLG > NUL
:: move override\MINEC3.DLG BG1DLG > NUL
:: move override\MINEC4.DLG BG1DLG > NUL
:: move override\MINEC5.DLG BG1DLG > NUL
:: move override\MINERC.DLG BG1DLG > NUL
:: move override\MINERN.DLG BG1DLG > NUL
:: move override\MINSC.DLG BG1DLG > NUL
:: move override\MINSCJ.DLG BG1DLG > NUL
:: move override\MINSCP.DLG BG1DLG > NUL
:: move override\MIRIAN.DLG BG1DLG > NUL
:: move override\MOLKAR.DLG BG1DLG > NUL
:: move override\MONKEN.DLG BG1DLG > NUL
:: move override\MONKTU1.DLG BG1DLG > NUL
:: move override\MONKTU10.DLG BG1DLG > NUL
:: move override\MONKTU11.DLG BG1DLG > NUL
:: move override\MONKTU12.DLG BG1DLG > NUL
:: move override\MONKTU13.DLG BG1DLG > NUL
:: move override\MONKTU14.DLG BG1DLG > NUL
:: move override\MONKTU2.DLG BG1DLG > NUL
:: move override\MONKTU3.DLG BG1DLG > NUL
:: move override\MONKTU4.DLG BG1DLG > NUL
:: move override\MONKTU5.DLG BG1DLG > NUL
:: move override\MONKTU6.DLG BG1DLG > NUL
:: move override\MONKTU7.DLG BG1DLG > NUL
:: move override\MONKTU8.DLG BG1DLG > NUL
:: move override\MONKTU9.DLG BG1DLG > NUL
:: move override\MONTAJ.DLG BG1DLG > NUL
:: move override\MONTAP.DLG BG1DLG > NUL
:: move override\MONTAR.DLG BG1DLG > NUL
:: move override\MOORLOCK.DLG BG1DLG > NUL
:: move override\MRSHADE.DLG BG1DLG > NUL
:: move override\MTBE10.DLG BG1DLG > NUL
:: move override\MTBE11.DLG BG1DLG > NUL
:: move override\MTBE2.DLG BG1DLG > NUL
:: move override\MTBE3.DLG BG1DLG > NUL
:: move override\MTBE4.DLG BG1DLG > NUL
:: move override\MTBE5.DLG BG1DLG > NUL
:: move override\MTBE6.DLG BG1DLG > NUL
:: move override\MTBE7.DLG BG1DLG > NUL
:: move override\MTBE8.DLG BG1DLG > NUL
:: move override\MTBE9.DLG BG1DLG > NUL
:: move override\MTOB10.DLG BG1DLG > NUL
:: move override\MTOB2.DLG BG1DLG > NUL
:: move override\MTOB3.DLG BG1DLG > NUL
:: move override\MTOB6.DLG BG1DLG > NUL
:: move override\MTOB7.DLG BG1DLG > NUL
:: move override\MTOB8.DLG BG1DLG > NUL
:: move override\MTOWBA.DLG BG1DLG > NUL
:: move override\MTOWBAS.DLG BG1DLG > NUL
:: move override\MTOWBAZ.DLG BG1DLG > NUL
:: move override\MTOWBE.DLG BG1DLG > NUL
:: move override\MTOWBEZ.DLG BG1DLG > NUL
:: move override\MTOWF2.DLG BG1DLG > NUL
:: move override\MTOWFR.DLG BG1DLG > NUL
:: move override\MTOWNA.DLG BG1DLG > NUL
:: move override\MTOWNAZ.DLG BG1DLG > NUL
:: move override\MTOWUB.DLG BG1DLG > NUL
:: move override\MTOWWI.DLG BG1DLG > NUL
:: move override\MULAHE.DLG BG1DLG > NUL
:: move override\MUTAMI.DLG BG1DLG > NUL
:: move override\MYSMER.DLG BG1DLG > NUL
:: move override\NADARI.DLG BG1DLG > NUL
:: move override\NADIN.DLG BG1DLG > NUL
:: move override\NALIN.DLG BG1DLG > NUL
:: move override\NANTRI.DLG BG1DLG > NUL
:: move override\NARCIL.DLG BG1DLG > NUL
:: move override\NARLEN.DLG BG1DLG > NUL
:: move override\NARRAT.DLG BG1DLG > NUL
:: move override\NEIRA.DLG BG1DLG > NUL
:: move override\NEMPHR.DLG BG1DLG > NUL
:: move override\NESSIE.DLG BG1DLG > NUL
:: move override\NESTOR.DLG BG1DLG > NUL
:: move override\NEVILL.DLG BG1DLG > NUL
:: move override\NEXLIT.DLG BG1DLG > NUL
:: move override\NHUNTC.DLG BG1DLG > NUL
:: move override\NIEMAI.DLG BG1DLG > NUL
:: move override\NIKLOS.DLG BG1DLG > NUL
:: move override\NIKOLA.DLG BG1DLG > NUL
:: move override\NILA.DLG BG1DLG > NUL
:: move override\NIMBUL.DLG BG1DLG > NUL
:: move override\NOBL10.DLG BG1DLG > NUL
:: move override\NOBL11.DLG BG1DLG > NUL
:: move override\NOBL12.DLG BG1DLG > NUL
:: move override\NOBL14.DLG BG1DLG > NUL
:: move override\NOBL2.DLG BG1DLG > NUL
:: move override\NOBL3.DLG BG1DLG > NUL
:: move override\NOBL4.DLG BG1DLG > NUL
:: move override\NOBL5.DLG BG1DLG > NUL
:: move override\NOBL6.DLG BG1DLG > NUL
:: move override\NOBL7.DLG BG1DLG > NUL
:: move override\NOBL8.DLG BG1DLG > NUL
:: move override\NOBL9.DLG BG1DLG > NUL
:: move override\NOBLBA.DLG BG1DLG > NUL
:: move override\NOBLBAS.DLG BG1DLG > NUL
:: move override\NOBLBAZ.DLG BG1DLG > NUL
:: move override\NOBLPA.DLG BG1DLG > NUL
:: move override\NOBLPA1.DLG BG1DLG > NUL
:: move override\NOBLPA2.DLG BG1DLG > NUL
:: move override\NOBLPA3.DLG BG1DLG > NUL
:: move override\NOBW2.DLG BG1DLG > NUL
:: move override\NOBW3.DLG BG1DLG > NUL
:: move override\NOBW4.DLG BG1DLG > NUL
:: move override\NOBW5.DLG BG1DLG > NUL
:: move override\NOBW6.DLG BG1DLG > NUL
:: move override\NOBW7.DLG BG1DLG > NUL
:: move override\NOBW8.DLG BG1DLG > NUL
:: move override\NOBW9.DLG BG1DLG > NUL
:: move override\NOBWBA.DLG BG1DLG > NUL
:: move override\NOBWBAS.DLG BG1DLG > NUL
:: move override\NOBWBAZ.DLG BG1DLG > NUL
:: move override\NOOBER.DLG BG1DLG > NUL
:: move override\NORALE.DLG BG1DLG > NUL
:: move override\NORTUA.DLG BG1DLG > NUL
:: move override\NOSFER.DLG BG1DLG > NUL
:: move override\OBE.DLG BG1DLG > NUL
:: move override\OBERAN.DLG BG1DLG > NUL
:: move override\OCELLI.DLG BG1DLG > NUL
:: move override\OGRECO.DLG BG1DLG > NUL
:: move override\OGRELEAD.DLG BG1DLG > NUL
:: move override\OGRMA2.DLG BG1DLG > NUL
:: move override\OGRMA3.DLG BG1DLG > NUL
:: move override\OGRMBA.DLG BG1DLG > NUL
:: move override\OOGIEW.DLG BG1DLG > NUL
:: move override\ORDULI.DLG BG1DLG > NUL
:: move override\OSMADI.DLG BG1DLG > NUL
:: move override\OUBLEK.DLG BG1DLG > NUL
:: move override\PALIN.DLG BG1DLG > NUL
:: move override\PALLON.DLG BG1DLG > NUL
:: move override\PANGWA.DLG BG1DLG > NUL
:: move override\PARDA.DLG BG1DLG > NUL
:: move override\PARDA1.DLG BG1DLG > NUL
:: move override\PARDA3.DLG BG1DLG > NUL
:: move override\PERDUE.DLG BG1DLG > NUL
:: move override\PERMID.DLG BG1DLG > NUL
:: move override\PETRIN.DLG BG1DLG > NUL
:: move override\PGOND.DLG BG1DLG > NUL
:: move override\PHAERS.DLG BG1DLG > NUL
:: move override\PHANDA.DLG BG1DLG > NUL
:: move override\PHEIRK.DLG BG1DLG > NUL
:: move override\PHLYDI.DLG BG1DLG > NUL
:: move override\PHLYDI2.DLG BG1DLG > NUL
:: move override\PHLYDI3.DLG BG1DLG > NUL
:: move override\PIATO.DLG BG1DLG > NUL
:: move override\PNASHK.DLG BG1DLG > NUL
:: move override\POE.DLG BG1DLG > NUL
:: move override\POGHM10.DLG BG1DLG > NUL
:: move override\POGHM2.DLG BG1DLG > NUL
:: move override\POGHM4.DLG BG1DLG > NUL
:: move override\POGHM5.DLG BG1DLG > NUL
:: move override\POGHM7.DLG BG1DLG > NUL
:: move override\POGHM9.DLG BG1DLG > NUL
:: move override\PORTAL.DLG BG1DLG > NUL
:: move override\PRAT.DLG BG1DLG > NUL
:: move override\PRIDE.DLG BG1DLG > NUL
:: move override\PRIHEL.DLG BG1DLG > NUL
:: move override\PRIILM.DLG BG1DLG > NUL
:: move override\PRIILMU.DLG BG1DLG > NUL
:: move override\PRISM.DLG BG1DLG > NUL
:: move override\PROST1.DLG BG1DLG > NUL
:: move override\PROST2.DLG BG1DLG > NUL
:: move override\PROST3.DLG BG1DLG > NUL
:: move override\PROST4.DLG BG1DLG > NUL
:: move override\PROST5.DLG BG1DLG > NUL
:: move override\PROST6.DLG BG1DLG > NUL
:: move override\PROST7.DLG BG1DLG > NUL
:: move override\PROST8.DLG BG1DLG > NUL
:: move override\PUMBER2.DLG BG1DLG > NUL
:: move override\PUMBERL.DLG BG1DLG > NUL
:: move override\QUAYLJ.DLG BG1DLG > NUL
:: move override\QUAYLP.DLG BG1DLG > NUL
:: move override\QUENAS.DLG BG1DLG > NUL
:: move override\QUINN.DLG BG1DLG > NUL
:: move override\RAEMON.DLG BG1DLG > NUL
:: move override\RAGEFA.DLG BG1DLG > NUL
:: move override\RAHVIN.DLG BG1DLG > NUL
:: move override\RAIKEN.DLG BG1DLG > NUL
:: move override\RALEO.DLG BG1DLG > NUL
:: move override\RAMAZI.DLG BG1DLG > NUL
:: move override\RANCE.DLG BG1DLG > NUL
:: move override\RASHAD.DLG BG1DLG > NUL
:: move override\RATCHI.DLG BG1DLG > NUL
:: move override\RBALDU.DLG BG1DLG > NUL
:: move override\RBEREG.DLG BG1DLG > NUL
:: move override\RCANDL.DLG BG1DLG > NUL
:: move override\READ2.DLG BG1DLG > NUL
:: move override\READ3.DLG BG1DLG > NUL
:: move override\REDEDG.DLG BG1DLG > NUL
:: move override\REEVOR.DLG BG1DLG > NUL
:: move override\REEVOR2.DLG BG1DLG > NUL
:: move override\REEVOR3.DLG BG1DLG > NUL
:: move override\REGINA.DLG BG1DLG > NUL
:: move override\RESAR.DLG BG1DLG > NUL
:: move override\REVEN3.DLG BG1DLG > NUL
:: move override\RFRIEN.DLG BG1DLG > NUL
:: move override\RIELTA.DLG BG1DLG > NUL
:: move override\RIGGILO.DLG BG1DLG > NUL
:: move override\RINNIE.DLG BG1DLG > NUL
:: move override\RNASHK.DLG BG1DLG > NUL
:: move override\RODNIM.DLG BG1DLG > NUL
:: move override\RUFFIE.DLG BG1DLG > NUL
:: move override\SAFANA.DLG BG1DLG > NUL
:: move override\SAFANJ.DLG BG1DLG > NUL
:: move override\SAFANP.DLG BG1DLG > NUL
:: move override\SAILAL.DLG BG1DLG > NUL
:: move override\SAILDAN.DLG BG1DLG > NUL
:: move override\SAILFIN.DLG BG1DLG > NUL
:: move override\SAILJOS.DLG BG1DLG > NUL
:: move override\SAILNED.DLG BG1DLG > NUL
:: move override\SAILNEW.DLG BG1DLG > NUL
:: move override\SAMANT.DLG BG1DLG > NUL
:: move override\SAMUEL.DLG BG1DLG > NUL
:: move override\SANADAL.DLG BG1DLG > NUL
:: move override\SARDEAD.DLG BG1DLG > NUL
:: move override\SAREVO.DLG BG1DLG > NUL
:: move override\SARHED.DLG BG1DLG > NUL
:: move override\SCAR.DLG BG1DLG > NUL
:: move override\SCHLUM.DLG BG1DLG > NUL
:: move override\SENIYA.DLG BG1DLG > NUL
:: move override\SERVA2.DLG BG1DLG > NUL
:: move override\SERVAN.DLG BG1DLG > NUL
:: move override\SERWEN.DLG BG1DLG > NUL
:: move override\SEWERC.DLG BG1DLG > NUL
:: move override\SEWERF.DLG BG1DLG > NUL
:: move override\SHADOW.DLG BG1DLG > NUL
:: move override\SHADOW2.DLG BG1DLG > NUL
:: move override\SHAELL.DLG BG1DLG > NUL
:: move override\SHALAS.DLG BG1DLG > NUL
:: move override\SHANDAL.DLG BG1DLG > NUL
:: move override\SHANDAL2.DLG BG1DLG > NUL
:: move override\SHARTE.DLG BG1DLG > NUL
:: move override\SHARTJ.DLG BG1DLG > NUL
:: move override\SHARTP.DLG BG1DLG > NUL
:: move override\SHELLI.DLG BG1DLG > NUL
:: move override\SHEP.DLG BG1DLG > NUL
:: move override\SHISTA.DLG BG1DLG > NUL
:: move override\SHOAL.DLG BG1DLG > NUL
:: move override\SHOPKN.DLG BG1DLG > NUL
:: move override\SHVERT.DLG BG1DLG > NUL
:: move override\SIL.DLG BG1DLG > NUL
:: move override\SILENC.DLG BG1DLG > NUL
:: move override\SILKE.DLG BG1DLG > NUL
:: move override\SILVGU.DLG BG1DLG > NUL
:: move override\SIRLOT.DLG BG1DLG > NUL
:: move override\SKIE.DLG BG1DLG > NUL
:: move override\SKIEJ.DLG BG1DLG > NUL
:: move override\SKIEP.DLG BG1DLG > NUL
:: move override\SLAVE.DLG BG1DLG > NUL
:: move override\SLAVE2.DLG BG1DLG > NUL
:: move override\SLAVE4.DLG BG1DLG > NUL
:: move override\SLAVE5.DLG BG1DLG > NUL
:: move override\SLAVE6.DLG BG1DLG > NUL
:: move override\SLAVFREE.DLG BG1DLG > NUL
:: move override\SLAVLEAD.DLG BG1DLG > NUL
:: move override\SLAVTELL.DLG BG1DLG > NUL
:: move override\SLYTHE.DLG BG1DLG > NUL
:: move override\SMITH.DLG BG1DLG > NUL
:: move override\SMUGGL.DLG BG1DLG > NUL
:: move override\SOLIA1.DLG BG1DLG > NUL
:: move override\SONNER.DLG BG1DLG > NUL
:: move override\SORREL.DLG BG1DLG > NUL
:: move override\SPENGIL.DLG BG1DLG > NUL
:: move override\SPRAT.DLG BG1DLG > NUL
:: move override\SSUNGU.DLG BG1DLG > NUL
:: move override\STEPHA.DLG BG1DLG > NUL
:: move override\STONE.DLG BG1DLG > NUL
:: move override\STONEC.DLG BG1DLG > NUL
:: move override\STONED.DLG BG1DLG > NUL
:: move override\STONEDL.DLG BG1DLG > NUL
:: move override\STONEDW.DLG BG1DLG > NUL
:: move override\SUGAR.DLG BG1DLG > NUL
:: move override\SUNIN.DLG BG1DLG > NUL
:: move override\SURGEO.DLG BG1DLG > NUL
:: move override\SURREY.DLG BG1DLG > NUL
:: move override\TAEROM.DLG BG1DLG > NUL
:: move override\TAILAS.DLG BG1DLG > NUL
:: move override\TAKIYAH.DLG BG1DLG > NUL
:: move override\TALOUN.DLG BG1DLG > NUL
:: move override\TAMAH.DLG BG1DLG > NUL
:: move override\TAMOKO.DLG BG1DLG > NUL
:: move override\TAMOKO3.DLG BG1DLG > NUL
:: move override\TARNES.DLG BG1DLG > NUL
:: move override\TARTUS.DLG BG1DLG > NUL
:: move override\TAUGOS.DLG BG1DLG > NUL
:: move override\TAXEK.DLG BG1DLG > NUL
:: move override\TELANO.DLG BG1DLG > NUL
:: move override\TELLAN.DLG BG1DLG > NUL
:: move override\TELMAN.DLG BG1DLG > NUL
:: move override\TENYA.DLG BG1DLG > NUL
:: move override\TENYA2.DLG BG1DLG > NUL
:: move override\TERSUS.DLG BG1DLG > NUL
:: move override\TETHTO.DLG BG1DLG > NUL
:: move override\TETHTO2.DLG BG1DLG > NUL
:: move override\TETHTO3.DLG BG1DLG > NUL
:: move override\TEVEN.DLG BG1DLG > NUL
:: move override\TEYNGA.DLG BG1DLG > NUL
:: move override\THALAN.DLG BG1DLG > NUL
:: move override\THALDO.DLG BG1DLG > NUL
:: move override\THEREL.DLG BG1DLG > NUL
:: move override\THIEFF.DLG BG1DLG > NUL
:: move override\THIEFG.DLG BG1DLG > NUL
:: move override\THIEFM.DLG BG1DLG > NUL
:: move override\TIAX.DLG BG1DLG > NUL
:: move override\TIAXJ.DLG BG1DLG > NUL
:: move override\TIAXP.DLG BG1DLG > NUL
:: move override\TIBER.DLG BG1DLG > NUL
:: move override\TICK.DLG BG1DLG > NUL
:: move override\TIPIAN.DLG BG1DLG > NUL
:: move override\TORLO.DLG BG1DLG > NUL
:: move override\TORLOB.DLG BG1DLG > NUL
:: move override\TOURIST.DLG BG1DLG > NUL
:: move override\TOWNCR.DLG BG1DLG > NUL
:: move override\TRACEA.DLG BG1DLG > NUL
:: move override\TRALIT.DLG BG1DLG > NUL
:: move override\TRANZI.DLG BG1DLG > NUL
:: move override\TRAVE2.DLG BG1DLG > NUL
:: move override\TRAVEL.DLG BG1DLG > NUL
:: move override\TREMAI.DLG BG1DLG > NUL
:: move override\TRIADO.DLG BG1DLG > NUL
:: move override\TUTH.DLG BG1DLG > NUL
:: move override\ULCAST.DLG BG1DLG > NUL
:: move override\ULF.DLG BG1DLG > NUL
:: move override\ULRAUN.DLG BG1DLG > NUL
:: move override\UNSHEY.DLG BG1DLG > NUL
:: move override\VAI.DLG BG1DLG > NUL
:: move override\VAIL.DLG BG1DLG > NUL
:: move override\VARCI.DLG BG1DLG > NUL
:: move override\VAX.DLG BG1DLG > NUL
:: move override\VICONIJ.DLG BG1DLG > NUL
:: move override\VICONIP.DLG BG1DLG > NUL
:: move override\VITIAR.DLG BG1DLG > NUL
:: move override\VIVIEN.DLG BG1DLG > NUL
:: move override\VOLETA.DLG BG1DLG > NUL
:: move override\VOLO.DLG BG1DLG > NUL
:: move override\VOLOSE.DLG BG1DLG > NUL
:: move override\VOLTIN.DLG BG1DLG > NUL
:: move override\WAITER.DLG BG1DLG > NUL
:: move override\WASLEEP.DLG BG1DLG > NUL
:: move override\WATCH.DLG BG1DLG > NUL
:: move override\WATCH2.DLG BG1DLG > NUL
:: move override\WATCH6.DLG BG1DLG > NUL
:: move override\WATCH9.DLG BG1DLG > NUL
:: move override\WATCHM.DLG BG1DLG > NUL
:: move override\WENRIC.DLG BG1DLG > NUL
:: move override\WHELP.DLG BG1DLG > NUL
:: move override\WILCO.DLG BG1DLG > NUL
:: move override\WILTON.DLG BG1DLG > NUL
:: move override\WINSKI.DLG BG1DLG > NUL
:: move override\WINTHR2.DLG BG1DLG > NUL
:: move override\WINTHR3.DLG BG1DLG > NUL
:: move override\WIRTHI.DLG BG1DLG > NUL
:: move override\WIVEN.DLG BG1DLG > NUL
:: move override\XAN.DLG BG1DLG > NUL
:: move override\XANJ.DLG BG1DLG > NUL
:: move override\XANP.DLG BG1DLG > NUL
:: move override\XZAR.DLG BG1DLG > NUL
:: move override\XZARJ.DLG BG1DLG > NUL
:: move override\XZARP.DLG BG1DLG > NUL
:: move override\YAGO.DLG BG1DLG > NUL
:: move override\YESLIC.DLG BG1DLG > NUL
:: move override\YESLIJ.DLG BG1DLG > NUL
:: move override\YESLIP.DLG BG1DLG > NUL
:: move override\ZARGAL.DLG BG1DLG > NUL
:: move override\ZEKE.DLG BG1DLG > NUL
:: move override\ZHALIM.DLG BG1DLG > NUL
:: move override\ZHURLO.DLG BG1DLG > NUL
:: move override\ZOMBIE.DLG BG1DLG > NUL
:: move override\ZORDRAL.DLG BG1DLG > NUL
:: move override\ZORL.DLG BG1DLG > NUL
move override\DRMTXT-2.MOS BG1DLG > NUL
_weidu --make-biff BG1DLG
call BGT\Install\deldir BG1DLG
call BGT\Install\deldir BG1D

md BG1ITM
:: move override\AMUL18.ITM BG1ITM > NUL
:: move override\AROW05.ITM BG1ITM > NUL
:: move override\AROW12.ITM BG1ITM > NUL
:: move override\AROW14.ITM BG1ITM > NUL
:: move override\AX1H01.ITM BG1ITM > NUL
:: move override\BGAMUL13.ITM BG1ITM > NUL
:: move override\BGHELM15.ITM BG1ITM > NUL
:: move override\BGMINHP1.ITM BG1ITM > NUL
:: move override\BGMISC45.ITM BG1ITM > NUL
:: move override\BGMISC56.ITM BG1ITM > NUL
:: move override\BGMISC79.ITM BG1ITM > NUL
:: move override\BGMISC83.ITM BG1ITM > NUL
:: move override\BGPOTN14.ITM BG1ITM > NUL
:: move override\BGRING08.ITM BG1ITM > NUL
:: move override\BGRING12.ITM BG1ITM > NUL
:: move override\BGRING16.ITM BG1ITM > NUL
:: move override\BGSCRL1V.ITM BG1ITM > NUL
:: move override\BGSCRL3I.ITM BG1ITM > NUL
:: move override\BGSTAF04.ITM BG1ITM > NUL
:: move override\BGSW2H07.ITM BG1ITM > NUL
:: move override\BGWAND12.ITM BG1ITM > NUL
:: move override\BLUN02.ITM BG1ITM > NUL
:: move override\BLUN04.ITM BG1ITM > NUL
:: move override\BLUN06.ITM BG1ITM > NUL
:: move override\BLUN11.ITM BG1ITM > NUL
:: move override\BOOK07.ITM BG1ITM > NUL
:: move override\BOOK08.ITM BG1ITM > NUL
:: move override\BOOK87.ITM BG1ITM > NUL
:: move override\BOOK88.ITM BG1ITM > NUL
:: move override\BOOTDRIZ.ITM BG1ITM > NUL
:: move override\BOW06.ITM BG1ITM > NUL
:: move override\BOW07.ITM BG1ITM > NUL
:: move override\BOW08.ITM BG1ITM > NUL
:: move override\BRAC06.ITM BG1ITM > NUL
:: move override\CLCK08.ITM BG1ITM > NUL
:: move override\DAGG01.ITM BG1ITM > NUL
:: move override\DAGG06.ITM BG1ITM > NUL
:: move override\DAGG07.ITM BG1ITM > NUL
:: move override\DAGG09.ITM BG1ITM > NUL
:: move override\DAGG10.ITM BG1ITM > NUL
:: move override\GIBBERIL.ITM BG1ITM > NUL
:: move override\HALB01.ITM BG1ITM > NUL
:: move override\HELM14.ITM BG1ITM > NUL
:: move override\ISHLD02.ITM BG1ITM > NUL
:: move override\MISC1B.ITM BG1ITM > NUL
:: move override\MISC1F.ITM BG1ITM > NUL
:: move override\MISC1H.ITM BG1ITM > NUL
:: move override\MISC1J.ITM BG1ITM > NUL
:: move override\MISC2H.ITM BG1ITM > NUL
:: move override\MISC2M.ITM BG1ITM > NUL
:: move override\MISC2N.ITM BG1ITM > NUL
:: move override\MISC2P.ITM BG1ITM > NUL
:: move override\MISC70.ITM BG1ITM > NUL
:: move override\MISC86.ITM BG1ITM > NUL
:: move override\MISC87.ITM BG1ITM > NUL
:: move override\MISC94.ITM BG1ITM > NUL
:: move override\MISC95.ITM BG1ITM > NUL
:: move override\MISC98.ITM BG1ITM > NUL
:: move override\PLAT08.ITM BG1ITM > NUL
:: move override\RINGJOIA.ITM BG1ITM > NUL
:: move override\RND*.ITM BG1ITM > NUL
:: move override\SCRL2J.ITM BG1ITM > NUL
:: move override\SCRL2K.ITM BG1ITM > NUL
:: move override\SCRL2L.ITM BG1ITM > NUL
:: move override\SCRL2M.ITM BG1ITM > NUL
:: move override\SCRL2N.ITM BG1ITM > NUL
:: move override\SCRL2O.ITM BG1ITM > NUL
:: move override\SCRL2P.ITM BG1ITM > NUL
:: move override\SCRL2Q.ITM BG1ITM > NUL
:: move override\SCRL2R.ITM BG1ITM > NUL
:: move override\SCRL2S.ITM BG1ITM > NUL
:: move override\SCRL2T.ITM BG1ITM > NUL
:: move override\SCRL2U.ITM BG1ITM > NUL
:: move override\SCRL2V.ITM BG1ITM > NUL
:: move override\SCRL2W.ITM BG1ITM > NUL
:: move override\SCRL2X.ITM BG1ITM > NUL
:: move override\SCRL2Y.ITM BG1ITM > NUL
:: move override\SCRL2Z.ITM BG1ITM > NUL
:: move override\SCRL3A.ITM BG1ITM > NUL
:: move override\SCRL3B.ITM BG1ITM > NUL
:: move override\SCRL3C.ITM BG1ITM > NUL
:: move override\SCRL3D.itm BG1ITM > NUL
:: move override\SCRL3E.ITM BG1ITM > NUL
:: move override\SCRL3F.ITM BG1ITM > NUL
:: move override\SCRL3Z.ITM BG1ITM > NUL
:: move override\SCRL5R.ITM BG1ITM > NUL
:: move override\SCRL5S.ITM BG1ITM > NUL
:: move override\SCRL83.ITM BG1ITM > NUL
:: move override\SCRLAUTO.ITM BG1ITM > NUL
:: move override\SCRLDRA.ITM BG1ITM > NUL
:: move override\SCRLJALA.ITM BG1ITM > NUL
:: move override\SCRLKAR.ITM BG1ITM > NUL
:: move override\SCRLNEI.ITM BG1ITM > NUL
:: move override\SCRLTAR.ITM BG1ITM > NUL
:: move override\SCRLVAIL.ITM BG1ITM > NUL
:: move override\SCRLZHA.ITM BG1ITM > NUL
:: move override\SHARTHP1.ITM BG1ITM > NUL
:: move override\SPER01.ITM BG1ITM > NUL
:: move override\SW1H01.ITM BG1ITM > NUL
:: move override\SW1H04.ITM BG1ITM > NUL
:: move override\SW1H07.ITM BG1ITM > NUL
:: move override\SW1H12.ITM BG1ITM > NUL
:: move override\SW1H13.ITM BG1ITM > NUL
:: move override\SW1H17.ITM BG1ITM > NUL
:: move override\SW1H18.ITM BG1ITM > NUL
:: move override\SW1H19.ITM BG1ITM > NUL
:: move override\SW1H20.ITM BG1ITM > NUL
:: move override\SW1H22.ITM BG1ITM > NUL
:: move override\SW1H23.ITM BG1ITM > NUL
:: move override\SW1H43.ITM BG1ITM > NUL
:: move override\SW1H46.ITM BG1ITM > NUL
:: move override\SW1H48.ITM BG1ITM > NUL
:: move override\SW2H01.ITM BG1ITM > NUL
:: move override\TASLOIIL.ITM BG1ITM > NUL
:: move override\TAZOKHP1.ITM BG1ITM > NUL
:: move override\XVARTIL.ITM BG1ITM > NUL
move override\DRMTXT-3.MOS BG1ITM > NUL
_weidu --make-biff BG1ITM
call BGT\Install\deldir BG1ITM

md BG1MISC
::Extracts tasloi and basilisk animations
_weidu --game "%BG1PATH%" --out override --biff-get-rest MBASG.*
_weidu --game "%BG1PATH%" --out override --biff-get-rest MTASG.*
::Extracts item graphics
_weidu --game "%BG1PATH%" --out override --biff-get-rest CMISC1B.BAM CMISC1G.BAM CMISC1H.BAM CMISC1I.BAM
_weidu --game "%BG1PATH%" --out override --biff-get-rest CMISC2A.BAM CMISC2B.BAM CMISC2C.BAM CMISC2F.BAM CMISC2G.BAM CMISC2H.BAM CMISC2I.BAM CMISC2K.BAM CMISC2L.BAM CMISC2M.BAM CMISC2N.BAM CMISC2P.BAM
_weidu --game "%BG1PATH%" --out override --biff-get-rest CMISC91.BAM CMISC92.BAM CMISC94.BAM CMISC95.BAM CMISC98.BAM
_weidu --game "%BG1PATH%" --out override --biff-get-rest CPLAT08.BAM ISW1H06.BAM
_weidu --game "%BG1PATH%" --out BG1MISC --biff-get-rest ISW1H18.BAM ISW2H07.BAM
ren BG1MISC\ISW2H07.BAM BGISW2H7.BAM
ren BG1MISC\ISW1H18.BAM ISW1HBAL.BAM
move BG1MISC\*.bam override
:: move override\BG1START.2DA BG1MISC > NUL
:: move override\BGTCRED.2DA BG1MISC > NUL
:: move override\CHPTXT-0.2DA BG1MISC > NUL
:: move override\CHPTXT-1.2DA BG1MISC > NUL
:: move override\CHPTXT-2.2DA BG1MISC > NUL
:: move override\CHPTXT-3.2DA BG1MISC > NUL
:: move override\CHPTXT-4.2DA BG1MISC > NUL
:: move override\CHPTXT-5.2DA BG1MISC > NUL
:: move override\CHPTXT-6.2DA BG1MISC > NUL
:: move override\CHPTXT-7.2DA BG1MISC > NUL
:: move override\DRMTXT-2.2DA BG1MISC > NUL
:: move override\DRMTXT-3.2DA BG1MISC > NUL
:: move override\DRMTXT-4.2DA BG1MISC > NUL
:: move override\DRMTXT-5.2DA BG1MISC > NUL
:: move override\DRMTXT-6.2DA BG1MISC > NUL
:: move override\DRMTXT-7.2DA BG1MISC > NUL
:: move override\ISLOFF.2DA BG1MISC > NUL
:: move override\ISLON.2DA BG1MISC > NUL
:: move override\bpbgtmap.BAM BG1MISC > NUL
:: move override\SSIWM.BAM BG1MISC > NUL
:: move override\MBAS_GR.BMP BG1MISC > NUL
:: move override\BPBGTMAP.MOS BG1MISC > NUL
:: move override\DRMTXT-2.MOS BG1MISC > NUL
:: move override\DRMTXT-3.MOS BG1MISC > NUL
move override\DRMTXT-4.MOS BG1MISC > NUL
:: move override\DRMTXT-5.MOS BG1MISC > NUL
:: move override\DRMTXT-6.MOS BG1MISC > NUL
move override\DRMTXT-7.MOS BG1MISC > NUL
move override\GUICHP0B.MOS BG1MISC > NUL
:: move override\WORLDMAP.WMP BG1MISC > NUL
_weidu --make-biff BG1MISC
call BGT\Install\deldir BG1MISC

md BG1SPL
:: move override\BADDRM2.SPL BG1SPL > NUL
:: move override\BADDRM4.SPL BG1SPL > NUL
:: move override\BADDRM6.SPL BG1SPL > NUL
:: move override\BGCH1CUT.SPL BG1SPL > NUL
:: move override\BGCON16.SPL BG1SPL > NUL
:: move override\BGDEATH.SPL BG1SPL > NUL
:: move override\BGDEX16.SPL BG1SPL > NUL
:: move override\BGDEX17.SPL BG1SPL > NUL
:: move override\BGDISPEL.SPL BG1SPL > NUL
:: move override\BGEDPORT.SPL BG1SPL > NUL
:: move override\BGHP-1.SPL BG1SPL > NUL
:: move override\BGHP-2.SPL BG1SPL > NUL
:: move override\BGHP+1.SPL BG1SPL > NUL
:: move override\BGHP+2.SPL BG1SPL > NUL
:: move override\BGHP+3.SPL BG1SPL > NUL
:: move override\BGHP+4.SPL BG1SPL > NUL
:: move override\BGHP+5.SPL BG1SPL > NUL
:: move override\BGHP10.SPL BG1SPL > NUL
:: move override\BGHP4.SPL BG1SPL > NUL
:: move override\BGHP5.SPL BG1SPL > NUL
:: move override\BGHP6.SPL BG1SPL > NUL
:: move override\BGHP7.SPL BG1SPL > NUL
:: move override\BGHP8.SPL BG1SPL > NUL
:: move override\BGHP9.SPL BG1SPL > NUL
:: move override\BGIMPORT.SPL BG1SPL > NUL
:: move override\BGIN996.SPL BG1SPL > NUL
:: move override\BGJAPORT.SPL BG1SPL > NUL
:: move override\BGLIVE.SPL BG1SPL > NUL
:: move override\BGMAG65.SPL BG1SPL > NUL
:: move override\BGMIPORT.SPL BG1SPL > NUL
:: move override\BGSILENC.SPL BG1SPL > NUL
:: move override\BGSLEEP.SPL BG1SPL > NUL
:: move override\BGSLEEPP.SPL BG1SPL > NUL
:: move override\BGSTR10.SPL BG1SPL > NUL
:: move override\BGTERSUS.SPL BG1SPL > NUL
:: move override\BGVIPORT.SPL BG1SPL > NUL
:: move override\BGWI925.SPL BG1SPL > NUL
:: move override\BGWI947.SPL BG1SPL > NUL
:: move override\BGWIS10.SPL BG1SPL > NUL
:: move override\BGWIS18.SPL BG1SPL > NUL
:: move override\GOODDRM2.SPL BG1SPL > NUL
:: move override\GOODDRM4.SPL BG1SPL > NUL
:: move override\GOODDRM6.SPL BG1SPL > NUL
:: move override\SPIN115.SPL BG1SPL > NUL
:: move override\SPWI003.SPL BG1SPL > NUL
:: move override\SPWI112.SPL BG1SPL > NUL
:: move override\SPWI202.SPL BG1SPL > NUL
:: move override\SPWI946.SPL BG1SPL > NUL
move override\DRMTXT-5.MOS BG1SPL > NUL
_weidu --make-biff BG1SPL
call BGT\Install\deldir BG1SPL

md BG1STO
:: move override\ERDANE.STO BG1STO > NUL
:: move override\FRIEND.STO BG1STO > NUL
:: move override\HIGHHEDG.STO BG1STO > NUL
:: move override\INN0103.STO BG1STO > NUL
:: move override\INN0105.STO BG1STO > NUL
:: move override\INN0116.STO BG1STO > NUL
:: move override\INN0119.STO BG1STO > NUL
:: move override\INN1306.STO BG1STO > NUL
:: move override\INN2616.STO BG1STO > NUL
:: move override\INN3304.STO BG1STO > NUL
:: move override\INN3307.STO BG1STO > NUL
:: move override\INN3351.STO BG1STO > NUL
:: move override\INN3357.STO BG1STO > NUL
:: move override\INN4801.STO BG1STO > NUL
:: move override\STO0703.STO BG1STO > NUL
:: move override\STO1112.STO BG1STO > NUL
:: move override\STO1115.STO BG1STO > NUL
:: move override\STO4803.STO BG1STO > NUL
:: move override\STO4901.STO BG1STO > NUL
:: move override\STO4905.STO BG1STO > NUL
:: move override\STO4906.STO BG1STO > NUL
:: move override\STO4908.STO BG1STO > NUL
:: move override\STO4909.STO BG1STO > NUL
:: move override\STOBLACK.STO BG1STO > NUL
:: move override\STOCHEAP.STO BG1STO > NUL
:: move override\STOSILEN.STO BG1STO > NUL
:: move override\STOVAI.STO BG1STO > NUL
:: move override\TAERUM.STO BG1STO > NUL
:: move override\TAV0114.STO BG1STO > NUL
:: move override\TAV0154.STO BG1STO > NUL
:: move override\TAV0705.STO BG1STO > NUL
:: move override\TAV0721.STO BG1STO > NUL
:: move override\TAV1215.STO BG1STO > NUL
:: move override\TAV4809.STO BG1STO > NUL
:: move override\TEM0002.STO BG1STO > NUL
:: move override\TEM0131.STO BG1STO > NUL
:: move override\TEM0132.STO BG1STO > NUL
:: move override\TEM2304.STO BG1STO > NUL
:: move override\TEM2601.STO BG1STO > NUL
:: move override\TEM3402.STO BG1STO > NUL
:: move override\TEM4003.STO BG1STO > NUL
:: move override\TEM4802.STO BG1STO > NUL
:: move override\ULGOTH.STO BG1STO > NUL
move override\DRMTXT-6.MOS BG1STO > NUL
_weidu --make-biff BG1STO
call BGT\Install\deldir BG1STO

FOR %%s IN (
override\*.baf
override\*.d
override\*.ogg
override\*.tiz
) DO del %%s

more BGT\Language\%LANGUAGE1%\EndSetup\012.txt

ren "%BG1PATH%\baldur.bak" baldur.ini
del _weidu.exe

IF EXIST "BGT\Autoinst.txt" GOTO POSTSHOWN
IF NOT EXIST "BGT\Help\[%LANGUAGE1%]PostInstall.htm" GOTO DEFAULTPOST
BGT\Help\[%LANGUAGE1%]PostInstall.htm
GOTO POSTSHOWN
:DEFAULTPOST
BGT\Help\[English]PostInstall.htm
:POSTSHOWN
