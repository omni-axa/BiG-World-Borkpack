@ECHO off

attrib -r data\TDD-ARE.bif
del data\TDD-ARE.bif
attrib -r data\TDD-BCS.bif
del data\TDD-BCS.bif
attrib -r data\TDD-CRE.bif
del data\TDD-CRE.bif
attrib -r data\TDD-BAM.bif
del data\TDD-BAM.bif
attrib -r data\TDD-DLG.bif
del data\TDD-DLG.bif
attrib -r data\TDD-ITM.bif
del data\TDD-ITM.bif
attrib -r data\TDD-MOS.bif
del data\TDD-MOS.bif
attrib -r data\TDD-RULE.bif
del data\TDD-RULE.bif
attrib -r data\TDD-SPL.bif
del data\TDD-SPL.bif
attrib -r data\TDD-TIS1.bif
del data\TDD-TIS1.bif
attrib -r data\TDD-TIS2.bif
del data\TDD-TIS2.bif
attrib -r data\TDD-TIS3.bif
del data\TDD-TIS3.bif
attrib -r data\TDD-TIS4.bif
del data\TDD-TIS4.bif
attrib -r data\TDD-WAV.bif
del data\TDD-WAV.bif

del chitin.key
copy TDD\chitin.tdd chitin.key
del TDD\chitin.tdd

call TDD\deldir override
md override
xcopy /y /s /q TDD\over.bak override
call TDD\deldir TDD\over.bak

call TDD\deldir TDD-ARE
call TDD\deldir TDD-BAM
call TDD\deldir TDD-BCS
call TDD\deldir TDD-CRE
call TDD\deldir TDD-DLG
call TDD\deldir DLGCASH
call TDD\deldir TDD-ITM
call TDD\deldir TDD-MOS
call TDD\deldir TDD-RULE
call TDD\deldir TDD-SPL
call TDD\deldir TDD-TIS1
call TDD\deldir TDD-TIS2
call TDD\deldir TDD-TIS3
call TDD\deldir TDD-TIS4
call TDD\deldir TDD-WAV

@echo.
@echo Bif removal complete. 
@echo Original .key file restored
@echo Original \override\ folder also restored.
@echo.
