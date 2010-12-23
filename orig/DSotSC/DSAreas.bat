@ECHO OFF
copy DSotSC\tisunpack.exe tisunpack.exe
tisunpack -s -h -o DSotSC1\DSC006.tis DSotSC\TIZ\DSC006.tiz
tisunpack -s -h -o DSotSC1\DSC007.tis DSotSC\TIZ\DSC007.tiz
tisunpack -s -h -o DSotSC1\DSC009.tis DSotSC\TIZ\DSC009.tiz
tisunpack -s -h -o DSotSC1\DSC035.tis DSotSC\TIZ\DSC035.tiz
tisunpack -s -h -o DSotSC1\DSC037.tis DSotSC\TIZ\DSC037.tiz
del tisunpack.exe

xcopy /q DSotSC\OGG\*.* DSotSC1\*.*
copy DSotSC\oggdec.exe DSotSC1\*.*
cd DSotSC1
oggdec *.ogg
del *.ogg
del oggdec.exe
cd..

move override\DSC0??.ARE DSOTSC1
move override\DSC0??.WED DSOTSC1
move override\DSC0??.MOS DSOTSC1
move override\DSC0??.BCS DSOTSC1
move override\DSC0????.BMP DSOTSC1
move override\AR3200.ARE DSOTSC1
move override\AR3400.ARE DSOTSC1
move override\AR3499.ARE DSOTSC1
move override\AR3701.ARE DSOTSC1
move override\AR3704.ARE DSOTSC1
move override\AR3705.ARE DSOTSC1
move override\AR4403.ARE DSOTSC1
move override\AR4600.ARE DSOTSC1
move override\AR6515.ARE DSOTSC1
move override\AR6701.ARE DSOTSC1
move override\AR6707.ARE DSOTSC1
move override\AR8703.ARE DSOTSC1
move override\AR8703.WED DSOTSC1
move override\AR8900.ARE DSOTSC1
move override\AR8900.WED DSOTSC1
move override\AR8900SR.BMP DSOTSC1
move override\AR9200.ARE DSOTSC1
move override\AR9700.ARE DSOTSC1
move override\AR4600SR.BMP DSOTSC1

move override\DS*.ITM DSOTSC1
move override\arow50.ITM DSOTSC1
move override\SCRLDS??.ITM DSOTSC1
move override\MIEL.ITM DSOTSC1

move override\DSBAG01.STO DSOTSC1
move override\DSTRUNGL.STO DSOTSC1
move override\FRIEND.STO DSOTSC1
move override\HIGHHEDG.STO DSOTSC1
move override\INN3304.STO DSOTSC1
move override\INN3351.STO DSOTSC1
move override\STO0703.STO DSOTSC1
move override\STO4803.STO DSOTSC1
move override\STO4909.STO DSOTSC1
move override\STOBLACK.STO DSOTSC1
move override\STOSILEN.STO DSOTSC1
move override\TAERUM.STO DSOTSC1
move override\TEM0131.STO DSOTSC1
move override\TEM0132.STO DSOTSC1
move override\TEM2304.STO DSOTSC1
move override\TEM2601.STO DSOTSC1
move override\TEM3402.STO DSOTSC1
move override\TEM4802.STO DSOTSC1

move override\DSSPWI??.SPL DSOTSC1
move override\SPINDS?.SPL DSOTSC1
move override\SPPR???.SPL DSOTSC1

move override\DS*.CRE DSOTSC1
move override\SKELLORD.CRE DSOTSC1
move override\KOBLDGD.CRE DSOTSC1
move override\AMARAN.CRE DSOTSC1
move override\ANDRIS.CRE DSOTSC1
move override\ARLIN.CRE DSOTSC1
move override\BOR.CRE DSOTSC1
move override\BRUNOS.CRE DSOTSC1
move override\COKSMTH.CRE DSOTSC1
move override\CORSONE.CRE DSOTSC1
move override\DENAK.CRE DSOTSC1
move override\DRAKAR.CRE DSOTSC1
move override\DRASUS.CRE DSOTSC1
move override\GALDOR.CRE DSOTSC1
move override\IZEFIA.CRE DSOTSC1
move override\KAHRK.CRE DSOTSC1
move override\KESTOR.CRE DSOTSC1
move override\KRYSTI.CRE DSOTSC1
move override\LASALA.CRE DSOTSC1
move override\LASKAL.CRE DSOTSC1
move override\LAUREL.CRE DSOTSC1
move override\MOLKAR.CRE DSOTSC1
move override\MORVIN.CRE DSOTSC1
move override\MULAHE.CRE DSOTSC1
move override\OGRECO.CRE DSOTSC1
move override\OSMADI.CRE DSOTSC1
move override\RAGEFA.CRE DSOTSC1
move override\RIELTA.CRE DSOTSC1
move override\SEMAJ.CRE DSOTSC1
move override\SLYTHE.CRE DSOTSC1
move override\TAKIYAH.CRE DSOTSC1
move override\VAX.CRE DSOTSC1
move override\ZAL.CRE DSOTSC1
move override\ZEELA.CRE DSOTSC1

move override\GNOLL02.CRE DSOTSC1
move override\GNOLL03.CRE DSOTSC1
move override\GNOLL3.CRE DSOTSC1
move override\SKELET02.CRE DSOTSC1
move override\KOBOLD02.CRE DSOTSC1
move override\KOBOLD11.CRE DSOTSC1


move override\DS*.DLG DSOTSC1
move override\BARD*.DLG DSOTSC1
move override\BUB*.DLG DSOTSC1
move override\CONCH*.DLG DSOTSC1
move override\CUCH*.DLG DSOTSC1
move override\DRUID2.DLG DSOTSC1
move override\ELMIN3.DLG DSOTSC1
move override\FERTH*.DLG DSOTSC1
move override\JETL*.DLG DSOTSC1
move override\KEIR*.DLG DSOTSC1
move override\LASKAL.DLG DSOTSC1
move override\LAUREL.DLG DSOTSC1
move override\SKEEZ*.DLG DSOTSC1


move override\ATTKSPEC.BCS DSOTSC1
move override\DS*.BCS DSOTSC1
move override\FERTHALM.BCS DSOTSC1
move override\MEGACUT.BCS DSOTSC1
move override\SKELLORD.BCS DSOTSC1
move override\AR3200.BCS DSOTSC1
move override\AR3400.BCS DSOTSC1
move override\AR349?.BCS DSOTSC1
move override\AR370?.BCS DSOTSC1
move override\AR3800.BCS DSOTSC1
move override\AR440?.BCS DSOTSC1
move override\AR4600.BCS DSOTSC1
move override\AR6515.BCS DSOTSC1
move override\AR6600.BCS DSOTSC1
move override\AR67??.BCS DSOTSC1
move override\AR6800.BCS DSOTSC1
move override\AR7211.BCS DSOTSC1
move override\AR740?.BCS DSOTSC1
move override\AR840?.BCS DSOTSC1
move override\AR860?.BCS DSOTSC1
move override\AR8700.BCS DSOTSC1
move override\AR8900.BCS DSOTSC1
move override\AR9200.BCS DSOTSC1
move override\AR9302.BCS DSOTSC1
move override\AR9501.BCS DSOTSC1
move override\AR9600.BCS DSOTSC1
move override\AR9700.BCS DSOTSC1

move override\CHPTXT-9.2DA DSOTSC1
move override\MASTAREA.2DA DSOTSC1
move override\PDIALOG.2DA DSOTSC1
move override\TOOLTIP.2DA DSOTSC1

move override\*.CRE DSOTSC1
move override\*.IDS DSOTSC1
move override\*.BMP DSOTSC1
move override\*.DLG DSOTSC1
move override\*.2DA DSOTSC1
move override\*.GAM DSOTSC1


::xcopy /q DSotSC\BAM\*.* DSotSC1\*.*

weidu --make-biff DSOTSC1

call DSotSC\deldir DSOTSC1

pause

notepad DSotSC\Readme-DSotSC.txt

