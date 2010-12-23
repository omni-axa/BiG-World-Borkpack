@ECHO OFF

copy TDD\tisunpack.exe tisunpack.exe
tisunpack -s -h -o TDD-TIS1/DD9X00.tis TDD\TIZ/DD9X00.tiz
tisunpack -s -h -o TDD-TIS1/DD0118.tis TDD\TIZ/DD0118.tiz
tisunpack -s -h -o TDD-TIS1/DD0119.tis TDD\TIZ/DD0119.tiz
tisunpack -s -h -o TDD-TIS1/DD0200.tis TDD\TIZ/DD0200.tiz
tisunpack -s -h -o TDD-TIS1/DD1000.tis TDD\TIZ/DD1000.tiz
tisunpack -s -h -o TDD-TIS1/DD1200.tis TDD\TIZ/DD1200.tiz
tisunpack -s -h -o TDD-TIS1/DD1401.tis TDD\TIZ/DD1401.tiz
tisunpack -s -h -o TDD-TIS1/DD1900.tis TDD\TIZ/DD1900.tiz
tisunpack -s -h -o TDD-TIS1/DD2001.tis TDD\TIZ/DD2001.tiz
tisunpack -s -h -o TDD-TIS1/DD2300.tis TDD\TIZ/DD2300.tiz
tisunpack -s -h -o TDD-TIS2/DD3000.tis TDD\TIZ/DD3000.tiz
tisunpack -s -h -o TDD-TIS2/DD3300.tis TDD\TIZ/DD3300.tiz
tisunpack -s -h -o TDD-TIS2/DD3304.tis TDD\TIZ/DD3304.tiz
tisunpack -s -h -o TDD-TIS2/DD3305.tis TDD\TIZ/DD3305.tiz
tisunpack -s -h -o TDD-TIS2/DD3314.tis TDD\TIZ/DD3314.tiz
tisunpack -s -h -o TDD-TIS2/DD3334.tis TDD\TIZ/DD3334.tiz
tisunpack -s -h -o TDD-TIS2/DD3335.tis TDD\TIZ/DD3335.tiz
tisunpack -s -h -o TDD-TIS2/DD3336.tis TDD\TIZ/DD3336.tiz
tisunpack -s -h -o TDD-TIS2/DD3337.tis TDD\TIZ/DD3337.tiz
tisunpack -s -h -o TDD-TIS2/DD3338.tis TDD\TIZ/DD3338.tiz
tisunpack -s -h -o TDD-TIS2/DD3501.tis TDD\TIZ/DD3501.tiz
tisunpack -s -h -o TDD-TIS2/DD3503.tis TDD\TIZ/DD3503.tiz
tisunpack -s -h -o TDD-TIS2/DD3602.tis TDD\TIZ/DD3602.tiz
tisunpack -s -h -o TDD-TIS2/DD3603.tis TDD\TIZ/DD3603.tiz
tisunpack -s -h -o TDD-TIS2/DD4002.tis TDD\TIZ/DD4002.tiz
tisunpack -s -h -o TDD-TIS2/DD4003.tis TDD\TIZ/DD4003.tiz
tisunpack -s -h -o TDD-TIS3/DD5000.tis TDD\TIZ/DD5000.tiz
tisunpack -s -h -o TDD-TIS3/DD5401.tis TDD\TIZ/DD5401.tiz
tisunpack -s -h -o TDD-TIS3/DD8000.tis TDD\TIZ/DD8000.tiz
tisunpack -s -h -o TDD-TIS3/DD8001.tis TDD\TIZ/DD8001.tiz
tisunpack -s -h -o TDD-TIS3/DD8013.tis TDD\TIZ/DD8013.tiz
tisunpack -s -h -o TDD-TIS3/DD9201.tis TDD\TIZ/DD9201.tiz
tisunpack -s -h -o TDD-TIS3/DD9400.tis TDD\TIZ/DD9400.tiz
tisunpack -s -h -o TDD-TIS3/DD9501.tis TDD\TIZ/DD9501.tiz
tisunpack -s -h -o TDD-TIS3/DD9601.tis TDD\TIZ/DD9601.tiz
tisunpack -s -h -o TDD-TIS3/DDKIV1.tis TDD\TIZ/DDKIV1.tiz
tisunpack -s -h -o TDD-TIS3/DX2001.tis TDD\TIZ/DX2001.tiz
tisunpack -s -h -o TDD-TIS3/MM5102.tis TDD\TIZ/MM5102.tiz
tisunpack -s -h -o TDD-TIS3/MM5103.tis TDD\TIZ/MM5103.tiz
tisunpack -s -h -o TDD-TIS4/ARPO05.tis TDD\TIZ/ARPO05.TIZ
tisunpack -s -h -o TDD-TIS4/ARPO06.tis TDD\TIZ/ARPO06.TIZ
tisunpack -s -h -o TDD-TIS4/ARPO07.tis TDD\TIZ/ARPO07.TIZ
tisunpack -s -h -o TDD-TIS4/ARPO08.tis TDD\TIZ/ARPO08.TIZ
tisunpack -s -h -o TDD-BAM/ARPO10.tis TDD\TIZ/ARPO10.TIZ
tisunpack -s -h -o TDD-BCS/ARPO25.tis TDD\TIZ/ARPO25.TIZ
tisunpack -s -h -o TDD-CRE/ARPO27.tis TDD\TIZ/ARPO27.TIZ
tisunpack -s -h -o TDD-DLG/ARPO28.tis TDD\TIZ/ARPO28.TIZ
tisunpack -s -h -o TDD-ITM/ARPO29.tis TDD\TIZ/ARPO29.TIZ
tisunpack -s -h -o TDD-RULE/ARPO30.tis TDD\TIZ/ARPO30.TIZ
tisunpack -s -h -o TDD-SPL/ARPO31.tis TDD\TIZ/ARPO31.TIZ
del tisunpack.exe

move override\*.ogg TDD-WAV
xcopy /q /y TDD\OGG\*.* TDD-WAV\*.*
copy TDD\oggdec.exe TDD-WAV\*.*
cd TDD-WAV
oggdec *.ogg
del *.ogg
del oggdec.exe
cd..

:: move override\*.ARE TDD-ARE
move override\*.WED TDD-ARE
weidu --make-biff TDD-ARE
call TDD\deldir TDD-ARE

:: move override\*.BAM TDD-BAM
weidu --make-biff TDD-BAM
call TDD\deldir TDD-BAM

:: move override\*.BCS TDD-BCS
weidu --make-biff TDD-BCS
call TDD\deldir TDD-BCS

:: move override\*.CRE TDD-CRE
weidu --make-biff TDD-CRE
call TDD\deldir TDD-CRE

:: move override\*.DLG TDD-DLG
weidu --make-biff TDD-DLG
call TDD\deldir TDD-DLG
call TDD\deldir DLGCASH

:: move override\*.ITM TDD-ITM
weidu --make-biff TDD-ITM
call TDD\deldir TDD-ITM

move override\*.BMP TDD-MOS
move override\*.MOS TDD-MOS
:: move override\*.PLT TDD-MOS
weidu --make-biff TDD-MOS
call TDD\deldir TDD-MOS

:: move override\*.2DA TDD-RULE
:: move override\*.CH* TDD-RULE
::move override\*.IDS TDD-RULE
:: move override\*.WMP TDD-RULE
:: move override\*.EFF TDD-RULE
:: move override\*.VVC TDD-RULE
:: move override\*.PRO TDD-RULE
:: move override\*.STO TDD-RULE
weidu --make-biff TDD-RULE
call TDD\deldir TDD-RULE

:: move override\*.SPL TDD-SPL
weidu --make-biff TDD-SPL
call TDD\deldir TDD-SPL

weidu --make-biff TDD-TIS1
call TDD\deldir TDD-TIS1

weidu --make-biff TDD-TIS2
call TDD\deldir TDD-TIS2

weidu --make-biff TDD-TIS3
call TDD\deldir TDD-TIS3

weidu --out TDD-TIS4 --biff-get-rest AM1100.WAV AM1100N.WAV
weidu --make-biff TDD-TIS4
call TDD\deldir TDD-TIS4

move override\*.WAV TDD-WAV
weidu --make-biff TDD-WAV
call TDD\deldir TDD-WAV

FOR %%s IN (
override\*.baf
override\*.d
override\*.ogg
override\*.tiz
) DO del %%s

@echo.
@echo Installation complete.
@echo.
pause

notepad TDD\README.txt
