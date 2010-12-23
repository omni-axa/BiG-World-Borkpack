@echo off

copy TS\tisunpack.exe tisunpack.exe
tisunpack -s -h -o TS-TIS/TT0010.tis TS\TIZ/TT0010.tiz
tisunpack -s -h -o TS-TIS/TT0100.tis TS\TIZ/TT0100.tiz
tisunpack -s -h -o TS-TIS/TT0101.tis TS\TIZ/TT0101.tiz
tisunpack -s -h -o TS-TIS/TT0101AC.tis TS\TIZ/TT0101AC.tiz
tisunpack -s -h -o TS-TIS/TT0101AO.tis TS\TIZ/TT0101AO.tiz
tisunpack -s -h -o TS-TIS/TT0102.tis TS\TIZ/TT0102.tiz
tisunpack -s -h -o TS-TIS/TT0201.tis TS\TIZ/TT0201.tiz
tisunpack -s -h -o TS-TIS/TT0202.tis TS\TIZ/TT0202.tiz
tisunpack -s -h -o TS-TIS/TT0203.tis TS\TIZ/TT0203.tiz
tisunpack -s -h -o TS-TIS/TT0204.tis TS\TIZ/TT0204.tiz
tisunpack -s -h -o TS-TIS/TT0301.tis TS\TIZ/TT0301.tiz
tisunpack -s -h -o TS-TIS/TT0302.tis TS\TIZ/TT0302.tiz
tisunpack -s -h -o TS-TIS/TT0303.tis TS\TIZ/TT0303.tiz
tisunpack -s -h -o TS-TIS/TT0304.tis TS\TIZ/TT0304.tiz
tisunpack -s -h -o TS-TIS/TT0305.tis TS\TIZ/TT0305.tiz
tisunpack -s -h -o TS-TIS/TT0306.tis TS\TIZ/TT0306.tiz
tisunpack -s -h -o TS-TIS/TT0307.tis TS\TIZ/TT0307.tiz
tisunpack -s -h -o TS-TIS/TT0308.tis TS\TIZ/TT0308.tiz
del tisunpack.exe

xcopy /q TS\OGG\*.* TS-WAV\*.*
xcopy /q TS\OGG2\*.* TS-WAV\*.*

move override\*.ogg TS-WAV
copy TS\oggdec.exe TS-WAV\*.*
cd TS-WAV
oggdec *.ogg
del *.ogg
del oggdec.exe
cd..

xcopy /q /e /y TS\music\*.* music\*.*

move override\*.ARE TS-ARE
move override\*.WED TS-ARE
weidu --make-biff TS-ARE
call TS\deldir TS-ARE

move override\*.BAM TS-BAM
weidu --make-biff TS-BAM
call TS\deldir TS-BAM

move override\*.BCS TS-BCS
weidu --make-biff TS-BCS
call TS\deldir TS-BCS

move override\*.CRE TS-CRE
weidu --make-biff TS-CRE
call TS\deldir TS-CRE

move override\*.DLG TS-DLG
weidu --make-biff TS-DLG
call TS\deldir TS-DLG
call TS\deldir TSDLG

move override\*.ITM TS-ITM
weidu --make-biff TS-ITM
call TS\deldir TS-ITM

move override\*.MOS TS-MOS
move override\*.BMP TS-MOS
weidu --make-biff TS-MOS
call TS\deldir TS-MOS

move override\*.2DA TS-RULE
move override\*.CH* TS-RULE
::move override\*.IDS TS-RULE
move override\*.WMP TS-RULE
move override\*.EFF TS-RULE
move override\*.PRO TS-RULE
move override\*.VVC TS-RULE
move override\*.SPL TS-RULE
move override\*.STO TS-RULE
weidu --make-biff TS-RULE
call TS\deldir TS-RULE

weidu --make-biff TS-TIS
call TS\deldir TS-TIS

move override\*.WAV TS-WAV
weidu --make-biff TS-WAV
call TS\deldir TS-WAV

@echo.
@echo Installation complete.
@echo.
pause

notepad TS\ReadMeTS-BP.txt
notepad TS\ReadMe.txt
notepad TS\progress.txt
