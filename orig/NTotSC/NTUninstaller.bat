@ECHO off

attrib -r data\NTOTSC1.bif
del data\NTOTSC1.bif

attrib -r data\NTOTSC2.bif
del data\NTOTSC2.bif

attrib -r data\NTOTSC3.bif
del data\NTOTSC3.bif

del chitin.key
copy NTotSC\chitin.nts chitin.key
del NTotSC\chitin.nts

call NTotSC\deldir override
md override
xcopy /y /s /q NTotSC\over.bak override
call NTotSC\deldir NTotSC\over.bak

