@ECHO OFF
copy NTotSC\tisunpack.exe tisunpack.exe
tisunpack -s -h -o NTotSC2\AR01PB.tis NTotSC\TIZ\AR01PB.tiz
tisunpack -s -h -o NTotSC2\AR02PB.tis NTotSC\TIZ\AR02PB.tiz
tisunpack -s -h -o NTotSC2\AR9PBA.tis NTotSC\TIZ\AR9PBA.tiz
tisunpack -s -h -o NTotSC2\AR10PB.tis NTotSC\TIZ\AR10PB.tiz
tisunpack -s -h -o NTotSC2\AR11PB.tis NTotSC\TIZ\AR11PB.tiz
tisunpack -s -h -o NTotSC2\AR20PB.tis NTotSC\TIZ\AR20PB.tiz
tisunpack -s -h -o NTotSC2\AR25PB.tis NTotSC\TIZ\AR25PB.tiz
tisunpack -s -h -o NTotSC2\AR30PB.tis NTotSC\TIZ\AR30PB.tiz

tisunpack -s -h -o NTotSC3\AR32PB.tis NTotSC\TIZ\AR32PB.tiz
tisunpack -s -h -o NTotSC3\AR34PB.tis NTotSC\TIZ\AR34PB.tiz
tisunpack -s -h -o NTotSC3\AR51PB.tis NTotSC\TIZ\AR51PB.tiz
tisunpack -s -h -o NTotSC3\AR52PB.tis NTotSC\TIZ\AR52PB.tiz
tisunpack -s -h -o NTotSC3\AR53PB.tis NTotSC\TIZ\AR53PB.tiz
tisunpack -s -h -o NTotSC3\AR60PB.tis NTotSC\TIZ\AR60PB.tiz
tisunpack -s -h -o NTotSC3\AR61PB.tis NTotSC\TIZ\AR61PB.tiz
tisunpack -s -h -o NTotSC3\AR80PB.tis NTotSC\TIZ\AR80PB.tiz
tisunpack -s -h -o NTotSC3\AR81PB.tis NTotSC\TIZ\AR81PB.tiz
tisunpack -s -h -o NTotSC3\AR82PB.tis NTotSC\TIZ\AR82PB.tiz
tisunpack -s -h -o NTotSC3\AR90PB.tis NTotSC\TIZ\AR90PB.tiz
tisunpack -s -h -o NTotSC3\AR9001.tis NTotSC\TIZ\AR9001.tiz
tisunpack -s -h -o NTotSC3\AR9002.tis NTotSC\TIZ\AR9002.tiz
tisunpack -s -h -o NTotSC3\AR9300.tis NTotSC\TIZ\AR9300.tiz
tisunpack -s -h -o NTotSC3\AR9305.tis NTotSC\TIZ\AR9305.tiz
del tisunpack.exe

xcopy /q NTotSC\OGG\*.* NTotSC1\*.*
copy NTotSC\oggdec.exe NTotSC1\*.*
cd NTotSC1
oggdec *.ogg
del *.ogg
del oggdec.exe
cd..

xcopy /q NTotSC\BAM\*.* NTotSC1\*.*

move override\AR??PB.* NTotSC1
move override\AR9PBA.* NTotSC1
move override\AR??PB??.BMP NTotSC1
move override\AR9PBA??.BMP NTotSC1
move override\AR3400.ARE NTotSC1
move override\AR3900.ARE NTotSC1
move override\AR4300.ARE NTotSC1
move override\AR670?.ARE NTotSC1
move override\AR674?.ARE NTotSC1
move override\AR7500.ARE NTotSC1
move override\AR7500*.BMP NTotSC1
move override\AR900?.* NTotSC1
move override\AR900???.BMP NTotSC1
move override\AR9300.ARE NTotSC1
move override\AR9300*.BMP NTotSC1
move override\AR9305.* NTotSC1
move override\AR9305??.BMP NTotSC1
move override\AR9700.ARE NTotSC1
move override\AR3499.ARE NTotSC1

move override\NT*.ITM NTotSC1
move override\ADISEASE.ITM NTotSC1
move override\CLOAKSC.ITM NTotSC1
move override\F1-10.ITM NTotSC1
move override\NAMJI.ITM NTotSC1
move override\WYVERNF.ITM NTotSC1
move override\TRANSBP.ITM NTotSC1
move override\SCRLNT??.ITM NTotSC1

move override\FRIEND.STO NTotSC1
move override\HIGHHEDG.STO NTotSC1
move override\INNABIG.STO NTotSC1
move OVERRIDE\SELANIO.STO NTotSC1
move override\STHAEBAL.STO NTotSC1
move override\STO0703.STO NTotSC1
move override\TAERUM.STO NTotSC1
move override\TEM0131.STO NTotSC1
move override\TEM4801.STO NTotSC1

move override\TROLHIT4.EFF NTotSC1
move override\TROLDAM3.EFF NTotSC1

move override\NTSPWI??.SPL NTotSC1
move override\SPINNT??.SPL NTotSC1

move OVERRIDE\nt*.CRE NTotSC1
move OVERRIDE\BTELITE.CRE NTotSC1
move override\BELTBRD.CRE NTotSC1
move override\BOYBE1.CRE NTotSC1
move override\FTOWB5.CRE NTotSC1
move override\IRON6.CRE NTotSC1
move override\MTOWBE_C.CRE NTotSC1
move override\ORC03.CRE NTotSC1
move override\RAT.CRE NTotSC1
move override\SLEEPFH.CRE NTotSC1
move override\SLEEPMH.CRE NTotSC1
move override\TELKA.CRE NTotSC1
move override\TRACEA.CRE NTotSC1
move override\WENRIC.CRE NTotSC1
move override\DSFEYDO.CRE NTotSC1

move override\NT*.DLG NTotSC1
move override\BART5.DLG NTotSC1
move override\CHARLE.DLG NTotSC1
move override\DELTAN.DLG NTotSC1
move override\GOLINV.DLG NTotSC1
move override\KELDDA.DLG NTotSC1
move override\LAUREL.DLG NTotSC1
move override\LOBAR.DLG NTotSC1
move override\TAEROM.DLG NTotSC1
move override\WENRIC.DLG NTotSC1
move override\WIL*.DLG NTotSC1

move override\AR3400.BCS NTotSC1
move override\AR3900.BCS NTotSC1
move override\AR4300.BCS NTotSC1
move override\AR67??.BCS NTotSC1
move override\AR6800.BCS NTotSC1
move override\AR72??.BCS NTotSC1
move override\AR7400.BCS NTotSC1
move override\AR7500.BCS NTotSC1
move override\AR7800.BCS NTotSC1
move override\AR7900.BCS NTotSC1
move override\AR8100.BCS NTotSC1
move override\AR8200.BCS NTotSC1
move override\AR8500.BCS NTotSC1
move override\AR860?.BCS NTotSC1
move override\AR8900.BCS NTotSC1
move override\AR9300.BCS NTotSC1
move override\AR9903.BCS NTotSC1
move override\ARA020.BCS NTotSC1
move override\ARA101.BCS NTotSC1
move override\ARD001.BCS NTotSC1
move override\ARU000.BCS NTotSC1

move override\CUTREST.BCS NTotSC1
move override\GHOTALE.BCS NTotSC1
move override\INITGHOT.BCS NTotSC1
move override\NT*.BCS NTotSC1
move override\SEEENEM?.BCS NTotSC1
move override\SHIP.BCS NTotSC1
move override\SHIP1.BCS NTotSC1
move override\TRAPWERE.BCS NTotSC1

move override\MASTAREA.2DA NTotSC1
move override\PDIALOG.2DA NTotSC1
move override\TOOLTIP.2DA NTotSC1

weidu --out NTotSC1 --biff-get-rest AM0310.WAV AM0310B.WAV

weidu --make-biff NTotSC1
call NTotSC\deldir NTotSC1

weidu --make-biff NTotSC2
call NTotSC\deldir NTotSC2

weidu --make-biff NTotSC3
call NTotSC\deldir NTotSC3

pause

notepad NTotSC/Readme-NTotSC.txt
