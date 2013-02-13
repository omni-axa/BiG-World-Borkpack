@ECHO off

attrib -r data\CTB-ARE.bif
del data\CTB-ARE.bif
attrib -r data\CTB-BCS.bif
del data\CTB-BCS.bif
attrib -r data\CTB-CRE.bif
del data\CTB-CRE.bif
attrib -r data\CTB-BAM.bif
del data\CTB-BAM.bif
attrib -r data\CTB-ITM.bif
del data\CTB-ITM.bif
attrib -r data\CTB-MOS.bif
del data\CTB-MOS.bif
attrib -r data\CTB-RULE.bif
del data\CTB-RULE.bif
attrib -r data\CTB-TIS1.bif
del data\CTB-TIS1.bif
attrib -r data\CTB-TIS2.bif
del data\CTB-TIS2.bif
attrib -r data\CTB-TIS3.bif
del data\CTB-TIS3.bif
attrib -r data\CTB-WAV.bif
del data\CTB-WAV.bif

del chitin.key
copy CTB\chitin.ctb chitin.key
del CTB\chitin.ctb

call CTB\deldir override
md override
xcopy /y /s /q CTB\over.bak override
call CTB\deldir CTB\over.bak

call CTB\deldir music\84
call CTB\deldir music\85
call CTB\deldir music\86
call CTB\deldir music\87
call CTB\deldir music\88
call CTB\deldir music\89
call CTB\deldir music\90
call CTB\deldir music\91

call CtB\deldir CTB-ARE
call CtB\deldir CTB-BAM
call CtB\deldir CTB-BCS
call CtB\deldir CTB-CRE
call CtB\deldir CTBDLG
call CtB\deldir CTB-ITM
call CtB\deldir CTB-MOS
call CtB\deldir CTB-RULE
call CtB\deldir CTB-TIS1
call CtB\deldir CTB-TIS2
call CtB\deldir CTB-TIS3
call CtB\deldir CTB-WAV

@echo.
@echo Original .key file and \override\ folder restored.
@echo.

