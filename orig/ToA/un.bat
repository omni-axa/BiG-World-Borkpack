@ECHO off

attrib -r data\ToA1.bif
del data\ToA1.bif

del chitin.key
copy ToA\chitin.toa chitin.key
del ToA\chitin.toa

xcopy /y /s /q ToA\over.bak override
rd /s /q ToA\over.bak