@ECHO off

attrib -r data\SOS-ARE.bif
del data\SOS-ARE.bif
attrib -r data\SOS-BCS.bif
del data\SOS-BCS.bif
attrib -r data\SOS-CRE.bif
del data\SOS-CRE.bif
attrib -r data\SOS-BAM.bif
del data\SOS-BAM.bif
attrib -r data\SOS-DLG.bif
del data\SOS-DLG.bif
attrib -r data\SOS-ITM.bif
del data\SOS-ITM.bif
attrib -r data\SOS-MOS.bif
del data\SOS-MOS.bif
attrib -r data\SOS-RULE.bif
del data\SOS-RULE.bif
attrib -r data\SOS-SPL.bif
del data\SOS-SPL.bif
attrib -r data\SOS-TIS1.bif
del data\SOS-TIS1.bif
attrib -r data\SOS-TIS2.bif
del data\SOS-TIS2.bif
attrib -r data\SOS-WAV1.bif
del data\SOS-WAV1.bif
attrib -r data\SOS-WAV2.bif
del data\SOS-WAV2.bif
attrib -r data\SOS-MVE.bif
del data\SOS-MVE.bif

del chitin.key
copy SOS\chitin.sos chitin.key
del SOS\chitin.sos

call SOS\deldir override
md override
xcopy /y /s /q SOS\over.bak override
call SOS\deldir SOS\over.bak

del tisunpack.exe
call SOS\deldir SOS-ARE
call SOS\deldir SOS-BAM
call SOS\deldir SOS-BCS
call SOS\deldir SOS-CRE
call SOS\deldir SOS-DLG
call SOS\deldir SOSDLG
call SOS\deldir SOS-ITM
call SOS\deldir SOS-MOS
call SOS\deldir SOS-RULE
call SOS\deldir SOS-SPL
call SOS\deldir SOS-TIS1
call SOS\deldir SOS-TIS2
call SOS\deldir SOS-WAV1
call SOS\deldir SOS-WAV2
call SOS\deldir SOS-MVE

@echo.
@echo Bif removal complete. 
@echo Original .key file restored
@echo Original \override\ folder also restored.
@echo.
