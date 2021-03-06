@echo off

copy CtB\tisunpack.exe tisunpack.exe
tisunpack -s -h -o CTB-CHRS\AR3500.tis CtB\Chores\TIZ\AR3500.TIZ
tisunpack -s -h -o CTB-CHRS\AR3501.tis CtB\Chores\TIZ\AR3501.TIZ
tisunpack -s -h -o CTB-CHRS\AR3502.tis CtB\Chores\TIZ\AR3502.TIZ
tisunpack -s -h -o CTB-CHRS\AR3503.tis CtB\Chores\TIZ\AR3503.TIZ
tisunpack -s -h -o CTB-CHRS\AR3504.tis CtB\Chores\TIZ\AR3504.TIZ
tisunpack -s -h -o CTB-CHRS\AR3505.tis CtB\Chores\TIZ\AR3505.TIZ
tisunpack -s -h -o CTB-CHRS\AR3506.tis CtB\Chores\TIZ\AR3506.TIZ
tisunpack -s -h -o CTB-CHRS\AR3507.tis CtB\Chores\TIZ\AR3507.TIZ
tisunpack -s -h -o CTB-CHRS\AR3510.tis CtB\Chores\TIZ\AR3510.TIZ
tisunpack -s -h -o CTB-CHRS\AR3511.tis CtB\Chores\TIZ\AR3511.TIZ
tisunpack -s -h -o CTB-CHRS\AR3512.tis CtB\Chores\TIZ\AR3512.TIZ
tisunpack -s -h -o CTB-CHRS\AR3513.tis CtB\Chores\TIZ\AR3513.TIZ
del tisunpack.exe

xcopy /q CtB\Chores\movies\*.* CTB-CHRS
xcopy /q CtB\Chores\bitmaps\*.* CTB-CHRS
xcopy /q CtB\Chores\wed\*.* CTB-CHRS

xcopy /q CtB\Chores\sound\*.* CTB-CHRS


move override\MASTAREA.2DA CTB-CHRS

move override\AR0602.bcs CTB-CHRS
move override\AR3500.bcs CTB-CHRS
move override\AR3501.bcs CTB-CHRS
move override\AR3502.bcs CTB-CHRS
move override\AR3503.bcs CTB-CHRS
move override\AR3504.bcs CTB-CHRS
move override\AR3505.bcs CTB-CHRS
move override\AR3506.bcs CTB-CHRS
move override\AR3513.bcs CTB-CHRS
move override\CB3513BW.bcs CTB-CHRS
move override\CB3513IM.bcs CTB-CHRS
move override\CB502LBR.bcs CTB-CHRS
move override\CBCT3510.bcs CTB-CHRS
move override\CBCT3511.bcs CTB-CHRS
move override\CBCT3512.bcs CTB-CHRS
move override\CBCT3513.bcs CTB-CHRS
move override\CBCT3515.bcs CTB-CHRS
move override\CBCT3500.bcs CTB-CHRS
move override\CBGORCLD.bcs CTB-CHRS
move override\CBGORDSP.bcs CTB-CHRS
move override\CBGORPRO.bcs CTB-CHRS
move override\CBGORPRY.bcs CTB-CHRS
move override\CBGORRTN.bcs CTB-CHRS
move override\CBGORSEE.bcs CTB-CHRS
move override\CBGORWEP.bcs CTB-CHRS
move override\CBHULDEF.bcs CTB-CHRS
move override\CBHULHRD.bcs CTB-CHRS
move override\CBHULOFF.bcs CTB-CHRS
move override\CBHULTRK.bcs CTB-CHRS
move override\CBIMOENL.bcs CTB-CHRS
move override\CBIMOENM.bcs CTB-CHRS
move override\CBIMOENN.bcs CTB-CHRS
move override\CBIMOENO.bcs CTB-CHRS
move override\CBIMOENP.bcs CTB-CHRS
move override\CBIMOENQ.bcs CTB-CHRS
move override\CBKPBD41.bcs CTB-CHRS
move override\CBKPBD42.bcs CTB-CHRS
move override\CBKPBD43.bcs CTB-CHRS
move override\CBKPBD44.bcs CTB-CHRS
move override\CBKPBD45.bcs CTB-CHRS
move override\CBKPBD46.bcs CTB-CHRS
move override\CBKPBD47.bcs CTB-CHRS
move override\CBKPBD48.bcs CTB-CHRS
move override\CBKPBD51.bcs CTB-CHRS
move override\CBKPBD52.bcs CTB-CHRS
move override\CBKPBD53.bcs CTB-CHRS
move override\CBKPBD54.bcs CTB-CHRS
move override\CBKPBD55.bcs CTB-CHRS
move override\CBKPBD56.bcs CTB-CHRS
move override\CBKPBD57.bcs CTB-CHRS
move override\CBKPBD58.bcs CTB-CHRS
move override\CBKPBD61.bcs CTB-CHRS
move override\CBKPBD62.bcs CTB-CHRS
move override\CBKPBD63.bcs CTB-CHRS
move override\CBKPBD64.bcs CTB-CHRS
move override\CBKPBD65.bcs CTB-CHRS
move override\CBMILKMD.bcs CTB-CHRS
move override\CBNEWGMF.bcs CTB-CHRS
move override\CBNEWGMM.bcs CTB-CHRS
move override\CBPHYTCH.bcs CTB-CHRS
move override\CBPHYTHA.bcs CTB-CHRS
move override\CBREST.bcs   CTB-CHRS
move override\CBREST2.bcs  CTB-CHRS
move override\CBREST3.bcs  CTB-CHRS
move override\CBREST4.bcs  CTB-CHRS
move override\CBSRVDED.bcs CTB-CHRS
move override\CBSTLKEP.bcs CTB-CHRS
move override\CBSTLKP2.bcs CTB-CHRS
move override\CBSTLKPA.bcs CTB-CHRS
move override\CBSTLKPB.bcs CTB-CHRS
move override\CBSTLKPC.bcs CTB-CHRS
move override\CBSTLKPD.bcs CTB-CHRS
move override\CBUNFRID.bcs CTB-CHRS
move override\CBTAG01.bcs CTB-CHRS
move override\CBTAG02.bcs CTB-CHRS
move override\CBTAG03.bcs CTB-CHRS
move override\CBTAG04.bcs CTB-CHRS
move override\CBTEACH1.bcs CTB-CHRS
move override\CBTEACH2.bcs CTB-CHRS
move override\CBTEACH3.bcs CTB-CHRS
move override\CBTEACH4.bcs CTB-CHRS
move override\CBTEACH5.bcs CTB-CHRS
move override\CBTETTCH.bcs CTB-CHRS
move override\CBTETTHA.bcs CTB-CHRS
move override\CBTHALAN.bcs CTB-CHRS
move override\CB__6000.bcs CTB-CHRS
move override\CB__6001.bcs CTB-CHRS
move override\CB__6002.bcs CTB-CHRS
move override\CB__6003.bcs CTB-CHRS
move override\CB__6004.bcs CTB-CHRS
move override\CB__6005.bcs CTB-CHRS
move override\CB__6010.bcs CTB-CHRS
move override\CB__6011.bcs CTB-CHRS
move override\CB__6012.bcs CTB-CHRS
move override\CB__6013.bcs CTB-CHRS
move override\CB__6014.bcs CTB-CHRS
move override\CB__6015.bcs CTB-CHRS
move override\CB__6100.bcs CTB-CHRS
move override\CB__6101.bcs CTB-CHRS
move override\CB__6102.bcs CTB-CHRS
move override\CB__6103.bcs CTB-CHRS
move override\CB__6104.bcs CTB-CHRS
move override\CB__6105.bcs CTB-CHRS
move override\CB__6110.bcs CTB-CHRS
move override\CB__6111.bcs CTB-CHRS
move override\CB__6112.bcs CTB-CHRS
move override\CB__6113.bcs CTB-CHRS
move override\CB__6114.bcs CTB-CHRS
move override\CB__6115.bcs CTB-CHRS
move override\CB__6200.bcs CTB-CHRS
move override\CB__6201.bcs CTB-CHRS
move override\CB__6202.bcs CTB-CHRS
move override\CB__6204.bcs CTB-CHRS
move override\CB__6205.bcs CTB-CHRS
move override\CB__6210.bcs CTB-CHRS
move override\CB__6211.bcs CTB-CHRS
move override\CB__6212.bcs CTB-CHRS
move override\CB__6214.bcs CTB-CHRS
move override\CB__6215.bcs CTB-CHRS
move override\CB__6300.bcs CTB-CHRS
move override\CB__6301.bcs CTB-CHRS
move override\CB__6302.bcs CTB-CHRS
move override\CB__6303.bcs CTB-CHRS
move override\CB__6304.bcs CTB-CHRS
move override\CB__6305.bcs CTB-CHRS
move override\CB__6310.bcs CTB-CHRS
move override\CB__6311.bcs CTB-CHRS
move override\CB__6312.bcs CTB-CHRS
move override\CB__6313.bcs CTB-CHRS
move override\CB__6314.bcs CTB-CHRS
move override\CB__6315.bcs CTB-CHRS
move override\CB__6500.bcs CTB-CHRS
move override\CB__6510.bcs CTB-CHRS

move override\CB502LBR.DLG CTB-CHRS
move override\CBDYNDED.DLG CTB-CHRS
move override\CBGORCLD.DLG CTB-CHRS
move override\CBGORTCH.DLG CTB-CHRS
move override\CBHULTCH.DLG CTB-CHRS
move override\CBIMOENL.DLG CTB-CHRS
move override\CBJAHDED.DLG CTB-CHRS
move override\CBKAHDED.DLG CTB-CHRS
move override\CBKHELCK.DLG CTB-CHRS
move override\CBMILKC1.DLG CTB-CHRS
move override\CBMILKC2.DLG CTB-CHRS
move override\CBMILKMD.DLG CTB-CHRS
move override\CBMINDED.DLG CTB-CHRS
move override\CBPHYTCH.DLG CTB-CHRS
move override\CBPOGHMA.DLG CTB-CHRS
move override\CBREADER.DLG CTB-CHRS
move override\CBSCRB01.DLG CTB-CHRS
move override\CBSCRB02.DLG CTB-CHRS
move override\CBSCRB03.DLG CTB-CHRS
move override\CBSCRB04.DLG CTB-CHRS
move override\CBSTLKP1.DLG CTB-CHRS
move override\CBSTLKP2.DLG CTB-CHRS
move override\CBTETTCH.DLG CTB-CHRS
move override\CBTHALAN.DLG CTB-CHRS
move override\CBWACHBD.DLG CTB-CHRS
move override\CBWATCHR.DLG CTB-CHRS

weidu --make-biff CTB-CHRS
call CtB\deldir CTB-CHRS

@echo.
@echo Candlekeep Chores installation complete.
@echo.
pause

