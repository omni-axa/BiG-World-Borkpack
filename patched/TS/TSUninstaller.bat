@ECHO off

attrib -r data\TS-ARE.bif
del data\TS-ARE.bif
attrib -r data\TS-BCS.bif
del data\TS-BCS.bif
attrib -r data\TS-CRE.bif
del data\TS-CRE.bif
attrib -r data\TS-BAM.bif
del data\TS-BAM.bif
attrib -r data\TS-DLG.bif
del data\TS-DLG.bif
attrib -r data\TS-ITM.bif
del data\TS-ITM.bif
attrib -r data\TS-MOS.bif
del data\TS-MOS.bif
attrib -r data\TS-RULE.bif
del data\TS-RULE.bif
attrib -r data\TS-TIS.bif
del data\TS-TIS.bif
attrib -r data\TS-WAV.bif
del data\TS-WAV.bif

:: del chitin.key
:: copy TS\chitin.TS chitin.key
:: del TS\chitin.TS

:: call TS\deldir override
:: md override
:: xcopy /y /s /q TS\over.bak override
:: call TS\deldir TS\over.bak

call TS\deldir music\MxKachi
call TS\deldir music\MxSimel
call TS\deldir music\MxValyg

call TS\deldir TS-ARE
call TS\deldir TS-BAM
call TS\deldir TS-BCS
call TS\deldir TS-CRE
call TS\deldir TS-DLG
call TS\deldir TSDLG
call TS\deldir TS-ITM
call TS\deldir TS-MOS
call TS\deldir TS-RULE
call TS\deldir TS-TIS
call TS\deldir TS-WAV

@echo.
@echo Bif removal complete.
:: @echo Original .key file restored
:: @echo Original \override\ folder also restored.
@echo.
