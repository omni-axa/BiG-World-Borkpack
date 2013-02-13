@ECHO off

attrib -r data\ROT-ARE.bif
del data\ROT-ARE.bif
attrib -r data\ROT-CRE.bif
del data\ROT-CRE.bif
attrib -r data\ROT-BAM.bif
del data\ROT-BAM.bif
attrib -r data\ROT-DLG.bif
del data\ROT-DLG.bif
attrib -r data\ROT-ITM.bif
del data\ROT-ITM.bif
attrib -r data\ROT-MOS.bif
del data\ROT-MOS.bif
attrib -r data\ROT-RULE.bif
del data\ROT-RULE.bif
attrib -r data\ROT-SPL.bif
del data\ROT-SPL.bif
attrib -r data\ROT-TIS1.bif
del data\ROT-TIS1.bif
attrib -r data\ROT-TIS2.bif
del data\ROT-TIS2.bif
attrib -r data\ROT-TIS3.bif
del data\ROT-TIS3.bif
attrib -r data\ROT-WAV1.bif
del data\ROT-WAV1.bif
attrib -r data\ROT-WAV2.bif
del data\ROT-WAV2.bif
attrib -r data\ROT-BCS.bif
del data\ROT-BCS.bif

del chitin.key
copy RoTerror\chitin.rot chitin.key
del RoTerror\chitin.rot

call RoTerror\deldir override
md override
xcopy /y /s /q RoTerror\over.bak override
call RoTerror\deldir RoTerror\over.bak

del tisunpack.exe
call RoTerror\deldir ROT-ARE
call RoTerror\deldir ROT-BAM
call RoTerror\deldir ROT-BCS
call RoTerror\deldir ROT-CRE
call RoTerror\deldir ROT-DLG
call RoTerror\deldir ROTDLG
call RoTerror\deldir ROT-ITM
call RoTerror\deldir ROT-MOS
call RoTerror\deldir ROT-RULE
call RoTerror\deldir ROT-SPL
call RoTerror\deldir ROT-TIS1
call RoTerror\deldir ROT-TIS2
call RoTerror\deldir ROT-TIS3
call RoTerror\deldir ROT-WAV1
call RoTerror\deldir ROT-WAV2

call RoTerror\deldir music\Mx2102
call RoTerror\deldir music\mx5411
call RoTerror\deldir music\MxFff6
call RoTerror\deldir music\MxIwd2

@echo.
@echo Bif removal complete.
@echo Original .key file restored
@echo Original \override\ folder also restored.
@echo.
