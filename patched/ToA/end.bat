@echo off
md ToA1
copy ToA\tools\tisunpack.exe tisunpack.exe
tisunpack -s -h -o ToA1\Z2BCAV.tis ToA\tiz\Z2BCAV.TIZ
tisunpack -s -h -o ToA1\Z2BERG.tis ToA\tiz\Z2BERG.TIZ
tisunpack -s -h -o ToA1\Z2BZEL.tis ToA\tiz\Z2BZEL.TIZ
tisunpack -s -h -o ToA1\Z2CAVL.tis ToA\tiz\Z2CAVL.TIZ
tisunpack -s -h -o ToA1\Z2GZEL.tis ToA\tiz\Z2GZEL.TIZ
tisunpack -s -h -o ToA1\z2lcave.tis ToA\tiz\z2lcave.tiz
tisunpack -s -h -o ToA1\Z2SCHL.tis ToA\tiz\Z2SCHL.TIZ
tisunpack -s -h -o ToA1\Z2VCAV.tis ToA\tiz\Z2VCAV.TIZ
tisunpack -s -h -o ToA1\ZAHAU1.tis ToA\tiz\ZAHAU1.TIZ
tisunpack -s -h -o ToA1\ZAHAU2.tis ToA\tiz\ZAHAU2.TIZ
tisunpack -s -h -o ToA1\ZANEGH.tis ToA\tiz\ZANEGH.TIZ
tisunpack -s -h -o ToA1\ZBERGE.tis ToA\tiz\ZBERGE.TIZ
tisunpack -s -h -o ToA1\ZBHAU1.tis ToA\tiz\ZBHAU1.TIZ
tisunpack -s -h -o ToA1\ZBHAU2.tis ToA\tiz\ZBHAU2.TIZ
tisunpack -s -h -o ToA1\ZBHAUS.tis ToA\tiz\ZBHAUS.TIZ
tisunpack -s -h -o ToA1\ZBZEG2.tis ToA\tiz\ZBZEG2.TIZ
tisunpack -s -h -o ToA1\ZBZEL1.tis ToA\tiz\ZBZEL1.TIZ
tisunpack -s -h -o ToA1\ZBZEL2.tis ToA\tiz\ZBZEL2.TIZ
tisunpack -s -h -o ToA1\ZBZEL3.tis ToA\tiz\ZBZEL3.TIZ
tisunpack -s -h -o ToA1\ZBZEL4.tis ToA\tiz\ZBZEL4.TIZ
tisunpack -s -h -o ToA1\ZBZEL5.tis ToA\tiz\ZBZEL5.TIZ
tisunpack -s -h -o ToA1\ZBZEL6.tis ToA\tiz\ZBZEL6.TIZ
tisunpack -s -h -o ToA1\ZBZEL7.tis ToA\tiz\ZBZEL7.TIZ
tisunpack -s -h -o ToA1\ZBZEL8.tis ToA\tiz\ZBZEL8.TIZ
tisunpack -s -h -o ToA1\ZBZELG.tis ToA\tiz\ZBZELG.TIZ
tisunpack -s -h -o ToA1\ZCAVE1.tis ToA\tiz\ZCAVE1.TIZ
tisunpack -s -h -o ToA1\ZCAVE2.tis ToA\tiz\ZCAVE2.TIZ
tisunpack -s -h -o ToA1\ZCAVE3.tis ToA\tiz\ZCAVE3.TIZ
tisunpack -s -h -o ToA1\ZCAVE4.tis ToA\tiz\ZCAVE4.TIZ
tisunpack -s -h -o ToA1\ZCAVE5.tis ToA\tiz\ZCAVE5.TIZ
tisunpack -s -h -o ToA1\ZCLIFF.tis ToA\tiz\ZCLIFF.TIZ
tisunpack -s -h -o ToA1\ZDREA2.tis ToA\tiz\ZDREA2.TIZ
tisunpack -s -h -o ToA1\ZDREAM.tis ToA\tiz\ZDREAM.TIZ
tisunpack -s -h -o ToA1\ZGAST.tis ToA\tiz\ZGAST.TIZ
tisunpack -s -h -o ToA1\ZGEFE.tis ToA\tiz\ZGEFE.TIZ
tisunpack -s -h -o ToA1\ZHAU1.tis ToA\tiz\ZHAU1.TIZ
tisunpack -s -h -o ToA1\ZHAU2.tis ToA\tiz\ZHAU2.TIZ
tisunpack -s -h -o ToA1\ZHAU3.tis ToA\tiz\ZHAU3.TIZ
tisunpack -s -h -o ToA1\ZHBERG.tis ToA\tiz\ZHBERG.TIZ
tisunpack -s -h -o ToA1\ZHEL1.tis ToA\tiz\ZHEL1.TIZ
tisunpack -s -h -o ToA1\ZHHAUS.tis ToA\tiz\ZHHAUS.TIZ
tisunpack -s -h -o ToA1\ZLADE1.tis ToA\tiz\ZLADE1.TIZ
tisunpack -s -h -o ToA1\ZPALA.tis ToA\tiz\ZPALA.TIZ
tisunpack -s -h -o ToA1\ZPALA1.tis ToA\tiz\ZPALA1.TIZ
tisunpack -s -h -o ToA1\ZPALA2.tis ToA\tiz\ZPALA2.TIZ
tisunpack -s -h -o ToA1\ZPALA3.tis ToA\tiz\ZPALA3.TIZ
tisunpack -s -h -o ToA1\ZSCHMI.tis ToA\tiz\ZSCHMI.TIZ
tisunpack -s -h -o ToA1\ZTEMP.tis ToA\tiz\ZTEMP.TIZ
tisunpack -s -h -o ToA1\ZZELT1.tis ToA\tiz\ZZELT1.TIZ
tisunpack -s -h -o ToA1\ZZELT2.tis ToA\tiz\ZZELT2.TIZ
tisunpack -s -h -o ToA1\ZZELT3.tis ToA\tiz\ZZELT3.TIZ
tisunpack -s -h -o ToA1\ZZELT4.tis ToA\tiz\ZZELT4.TIZ
tisunpack -s -h -o ToA1\ZZELTG.tis ToA\tiz\ZZELTG.TIZ
tisunpack -s -h -o ToA1\ZZHAU.tis ToA\tiz\ZZHAU.TIZ
tisunpack -s -h -o ToA1\ZZHAU1.tis ToA\tiz\ZZHAU1.TIZ
tisunpack -s -h -o ToA1\ZZHAU2.tis ToA\tiz\ZZHAU2.TIZ
del tisunpack.exe

copy ToA\tools\mpg123.exe mpg123.exe
IF NOT EXIST override\ZMYST01.wav mpg123.exe -w ToA1\ZMYST01.wav ToA\mp3\ZMYST01.mp3
IF NOT EXIST override\ZMYST02.wav mpg123.exe -w ToA1\ZMYST02.wav ToA\mp3\ZMYST02.mp3
IF NOT EXIST override\ZMYST03.wav mpg123.exe -w ToA1\ZMYST03.wav ToA\mp3\ZMYST03.mp3
IF NOT EXIST override\ZMYST04.wav mpg123.exe -w ToA1\ZMYST04.wav ToA\mp3\ZMYST04.mp3
IF NOT EXIST override\ZMYST05.wav mpg123.exe -w ToA1\ZMYST05.wav ToA\mp3\ZMYST05.mp3
IF NOT EXIST override\ZMYST07.wav mpg123.exe -w ToA1\ZMYST07.wav ToA\mp3\ZMYST07.mp3
IF NOT EXIST override\ZMYST08.wav mpg123.exe -w ToA1\ZMYST08.wav ToA\mp3\ZMYST08.mp3
IF NOT EXIST override\ZMYST09.wav mpg123.exe -w ToA1\ZMYST09.wav ToA\mp3\ZMYST09.mp3
IF NOT EXIST override\ZMYST10.wav mpg123.exe -w ToA1\ZMYST10.wav ToA\mp3\ZMYST10.mp3
IF NOT EXIST override\ZMYST11.wav mpg123.exe -w ToA1\ZMYST11.wav ToA\mp3\ZMYST11.mp3
IF NOT EXIST override\ZMYST12.wav mpg123.exe -w ToA1\ZMYST12.wav ToA\mp3\ZMYST12.mp3
IF NOT EXIST override\ZNOMOR01.wav mpg123.exe -w ToA1\ZNOMOR01.wav ToA\mp3\ZNOMOR01.mp3
IF NOT EXIST override\ZNOMOR02.wav mpg123.exe -w ToA1\ZNOMOR02.wav ToA\mp3\ZNOMOR02.mp3
IF NOT EXIST override\ZNOMOR03.wav mpg123.exe -w ToA1\ZNOMOR03.wav ToA\mp3\ZNOMOR03.mp3
IF NOT EXIST override\ZNOMOR04.wav mpg123.exe -w ToA1\ZNOMOR04.wav ToA\mp3\ZNOMOR04.mp3
IF NOT EXIST override\ZNOMOR05.wav mpg123.exe -w ToA1\ZNOMOR05.wav ToA\mp3\ZNOMOR05.mp3
IF NOT EXIST override\ZNOMOR06.wav mpg123.exe -w ToA1\ZNOMOR06.wav ToA\mp3\ZNOMOR06.mp3
IF NOT EXIST override\ZNOMOR07.wav mpg123.exe -w ToA1\ZNOMOR07.wav ToA\mp3\ZNOMOR07.mp3
IF NOT EXIST override\ZNOMOR08.wav mpg123.exe -w ToA1\ZNOMOR08.wav ToA\mp3\ZNOMOR08.mp3
IF NOT EXIST override\ZNOMOR09.wav mpg123.exe -w ToA1\ZNOMOR09.wav ToA\mp3\ZNOMOR09.mp3
IF NOT EXIST override\ZNOMOR10.wav mpg123.exe -w ToA1\ZNOMOR10.wav ToA\mp3\ZNOMOR10.mp3
IF NOT EXIST override\ZNOMOR11.wav mpg123.exe -w ToA1\ZNOMOR11.wav ToA\mp3\ZNOMOR11.mp3
IF NOT EXIST override\ZNOMOR12.wav mpg123.exe -w ToA1\ZNOMOR12.wav ToA\mp3\ZNOMOR12.mp3
IF NOT EXIST override\ZNOMOR13.wav mpg123.exe -w ToA1\ZNOMOR13.wav ToA\mp3\ZNOMOR13.mp3
IF NOT EXIST override\ZNOMOR14.wav mpg123.exe -w ToA1\ZNOMOR14.wav ToA\mp3\ZNOMOR14.mp3
IF NOT EXIST override\ZNOMOR15.wav mpg123.exe -w ToA1\ZNOMOR15.wav ToA\mp3\ZNOMOR15.mp3
IF NOT EXIST override\ZNOMOR16.wav mpg123.exe -w ToA1\ZNOMOR16.wav ToA\mp3\ZNOMOR16.mp3
IF NOT EXIST override\ZNOMOR17.wav mpg123.exe -w ToA1\ZNOMOR17.wav ToA\mp3\ZNOMOR17.mp3
IF NOT EXIST override\ZNOMOR18.wav mpg123.exe -w ToA1\ZNOMOR18.wav ToA\mp3\ZNOMOR18.mp3
IF NOT EXIST override\ZNOMOR19.wav mpg123.exe -w ToA1\ZNOMOR19.wav ToA\mp3\ZNOMOR19.mp3
IF NOT EXIST override\ZNOMOR20.wav mpg123.exe -w ToA1\ZNOMOR20.wav ToA\mp3\ZNOMOR20.mp3
IF NOT EXIST override\ZNOMOR21.wav mpg123.exe -w ToA1\ZNOMOR21.wav ToA\mp3\ZNOMOR21.mp3
IF NOT EXIST override\ZNOMOR22.wav mpg123.exe -w ToA1\ZNOMOR22.wav ToA\mp3\ZNOMOR22.mp3
IF NOT EXIST override\ZNOMOR23.wav mpg123.exe -w ToA1\ZNOMOR23.wav ToA\mp3\ZNOMOR23.mp3
IF NOT EXIST override\ZNOMOR24.wav mpg123.exe -w ToA1\ZNOMOR24.wav ToA\mp3\ZNOMOR24.mp3
IF NOT EXIST override\ZNOMOR25.wav mpg123.exe -w ToA1\ZNOMOR25.wav ToA\mp3\ZNOMOR25.mp3
IF NOT EXIST override\ZNOMOR26.wav mpg123.exe -w ToA1\ZNOMOR26.wav ToA\mp3\ZNOMOR26.mp3
IF NOT EXIST override\ZNOMOR27.wav mpg123.exe -w ToA1\ZNOMOR27.wav ToA\mp3\ZNOMOR27.mp3
IF NOT EXIST override\ZNOMOR28.wav mpg123.exe -w ToA1\ZNOMOR28.wav ToA\mp3\ZNOMOR28.mp3
IF NOT EXIST override\ZNOMOR29.wav mpg123.exe -w ToA1\ZNOMOR29.wav ToA\mp3\ZNOMOR29.mp3
IF NOT EXIST override\ZNOMOR30.wav mpg123.exe -w ToA1\ZNOMOR30.wav ToA\mp3\ZNOMOR30.mp3
IF NOT EXIST override\ZNOMOR31.wav mpg123.exe -w ToA1\ZNOMOR31.wav ToA\mp3\ZNOMOR31.mp3
IF NOT EXIST override\ZNOMOR32.wav mpg123.exe -w ToA1\ZNOMOR32.wav ToA\mp3\ZNOMOR32.mp3
IF NOT EXIST override\ZNOMOR33.wav mpg123.exe -w ToA1\ZNOMOR33.wav ToA\mp3\ZNOMOR33.mp3
IF NOT EXIST override\ZNOMOR34.wav mpg123.exe -w ToA1\ZNOMOR34.wav ToA\mp3\ZNOMOR34.mp3
IF NOT EXIST override\ZNOMOR35.wav mpg123.exe -w ToA1\ZNOMOR35.wav ToA\mp3\ZNOMOR35.mp3
IF NOT EXIST override\ZNOMOR36.wav mpg123.exe -w ToA1\ZNOMOR36.wav ToA\mp3\ZNOMOR36.mp3
IF NOT EXIST override\ZNOMOR37.wav mpg123.exe -w ToA1\ZNOMOR37.wav ToA\mp3\ZNOMOR37.mp3
IF NOT EXIST override\ZNOMOR38.wav mpg123.exe -w ToA1\ZNOMOR38.wav ToA\mp3\ZNOMOR38.mp3
IF NOT EXIST override\ZNOMOR39.wav mpg123.exe -w ToA1\ZNOMOR39.wav ToA\mp3\ZNOMOR39.mp3
IF NOT EXIST override\ZNOMOR40.wav mpg123.exe -w ToA1\ZNOMOR40.wav ToA\mp3\ZNOMOR40.mp3
IF NOT EXIST override\ZNOMOR41.wav mpg123.exe -w ToA1\ZNOMOR41.wav ToA\mp3\ZNOMOR41.mp3
IF NOT EXIST override\ZNOMOR42.wav mpg123.exe -w ToA1\ZNOMOR42.wav ToA\mp3\ZNOMOR42.mp3
IF NOT EXIST override\ZNOMOR43.wav mpg123.exe -w ToA1\ZNOMOR43.wav ToA\mp3\ZNOMOR43.mp3
IF NOT EXIST override\ZNOMOR44.wav mpg123.exe -w ToA1\ZNOMOR44.wav ToA\mp3\ZNOMOR44.mp3
IF NOT EXIST override\ZNOMOR45.wav mpg123.exe -w ToA1\ZNOMOR45.wav ToA\mp3\ZNOMOR45.mp3
IF NOT EXIST override\ZNOMOR46.wav mpg123.exe -w ToA1\ZNOMOR46.wav ToA\mp3\ZNOMOR46.mp3
IF NOT EXIST override\ZNOMOR47.wav mpg123.exe -w ToA1\ZNOMOR47.wav ToA\mp3\ZNOMOR47.mp3
IF NOT EXIST override\ZNOMOR48.wav mpg123.exe -w ToA1\ZNOMOR48.wav ToA\mp3\ZNOMOR48.mp3
IF NOT EXIST override\ZNOMOR49.wav mpg123.exe -w ToA1\ZNOMOR49.wav ToA\mp3\ZNOMOR49.mp3
IF NOT EXIST override\ZNOMOR50.wav mpg123.exe -w ToA1\ZNOMOR50.wav ToA\mp3\ZNOMOR50.mp3
IF NOT EXIST override\ZNOMOR51.wav mpg123.exe -w ToA1\ZNOMOR51.wav ToA\mp3\ZNOMOR51.mp3
IF NOT EXIST override\ZNOMOR52.wav mpg123.exe -w ToA1\ZNOMOR52.wav ToA\mp3\ZNOMOR52.mp3
IF NOT EXIST override\ZNOMOR53.wav mpg123.exe -w ToA1\ZNOMOR53.wav ToA\mp3\ZNOMOR53.mp3
IF NOT EXIST override\ZNOMOR54.wav mpg123.exe -w ToA1\ZNOMOR54.wav ToA\mp3\ZNOMOR54.mp3
IF NOT EXIST override\ZNOMOR55.wav mpg123.exe -w ToA1\ZNOMOR55.wav ToA\mp3\ZNOMOR55.mp3
IF NOT EXIST override\ZNOMOR56.wav mpg123.exe -w ToA1\ZNOMOR56.wav ToA\mp3\ZNOMOR56.mp3
IF NOT EXIST override\ZNOMOR57.wav mpg123.exe -w ToA1\ZNOMOR57.wav ToA\mp3\ZNOMOR57.mp3
IF NOT EXIST override\ZNOMOR58.wav mpg123.exe -w ToA1\ZNOMOR58.wav ToA\mp3\ZNOMOR58.mp3
IF NOT EXIST override\ZNOMOR59.wav mpg123.exe -w ToA1\ZNOMOR59.wav ToA\mp3\ZNOMOR59.mp3
del mpg123.exe

IF EXIST override\ZMYST*.wav move override\ZMYST*.wav ToA1
IF EXIST override\ZNOMOR*.wav move override\ZNOMOR*.wav ToA1

:: move override\ZSCENE1.2DA ToA1
:: move override\ZSCENE2.2DA ToA1

:: move override\Z2BCAV.ARE ToA1
:: move override\Z2BERG.ARE ToA1
:: move override\Z2BZEL.ARE ToA1
:: move override\Z2CAVL.ARE ToA1
:: move override\Z2GZEL.ARE ToA1
:: move override\Z2LCAVE.are ToA1
:: move override\Z2SCHL.ARE ToA1
:: move override\Z2VCAV.ARE ToA1
:: move override\ZAHAU1.ARE ToA1
:: move override\ZAHAU2.ARE ToA1
:: move override\ZANEGH.are ToA1
:: move override\ZBERGE.ARE ToA1
:: move override\ZBHAU1.ARE ToA1
:: move override\ZBHAU2.ARE ToA1
:: move override\ZBHAUS.ARE ToA1
:: move override\ZBZEG2.ARE ToA1
:: move override\ZBZEL1.ARE ToA1
:: move override\ZBZEL2.ARE ToA1
:: move override\ZBZEL3.ARE ToA1
:: move override\ZBZEL4.ARE ToA1
:: move override\ZBZEL5.ARE ToA1
:: move override\ZBZEL6.ARE ToA1
:: move override\ZBZEL7.ARE ToA1
:: move override\ZBZEL8.ARE ToA1
:: move override\ZBZELG.ARE ToA1
:: move override\ZCAVE1.ARE ToA1
:: move override\ZCAVE2.ARE ToA1
:: move override\ZCAVE3.ARE ToA1
:: move override\ZCAVE4.ARE ToA1
:: move override\ZCAVE5.ARE ToA1
:: move override\ZCLIFF.are ToA1
:: move override\ZDREA2.are ToA1
:: move override\ZDREAM.ARE ToA1
:: move override\ZGAST.ARE ToA1
:: move override\ZGEFE.ARE ToA1
:: move override\ZHAU1.ARE ToA1
:: move override\ZHAU2.ARE ToA1
:: move override\ZHAU3.ARE ToA1
:: move override\ZHBERG.ARE ToA1
:: move override\ZHEL1.ARE ToA1
:: move override\ZHHAUS.are ToA1
:: move override\ZLADE1.ARE ToA1
:: move override\ZPALA.ARE ToA1
:: move override\ZPALA1.ARE ToA1
:: move override\ZPALA2.ARE ToA1
:: move override\ZPALA3.ARE ToA1
:: move override\ZSCHMI.ARE ToA1
:: move override\ZTEMP.ARE ToA1
:: move override\ZZELT1.ARE ToA1
:: move override\ZZELT2.ARE ToA1
:: move override\ZZELT3.ARE ToA1
:: move override\ZZELT4.ARE ToA1
:: move override\ZZELTG.ARE ToA1
:: move override\ZZHAU.ARE ToA1
:: move override\ZZHAU1.ARE ToA1
:: move override\ZZHAU2.ARE ToA1

:: move override\Z2BERG.bcs ToA1
:: move override\Z2CAVL.bcs ToA1
:: move override\Z2SCHL.bcs ToA1
:: move override\Z2VCAV.bcs ToA1
:: move override\ZANEGH.bcs ToA1
:: move override\ZBERGE.bcs ToA1
:: move override\ZBHAUS.bcs ToA1
:: move override\ZBZEL2.bcs ToA1
:: move override\ZCAVE1.bcs ToA1
:: move override\ZCAVE2.bcs ToA1
:: move override\ZCAVE4.bcs ToA1
:: move override\ZCAVE5.bcs ToA1
:: move override\ZCLIFF.bcs ToA1
:: move override\ZDREA2.bcs ToA1
:: move override\ZDREAM.bcs ToA1
:: move override\ZGEFE.bcs ToA1
:: move override\ZHAU1.bcs ToA1
:: move override\ZHEL1.bcs ToA1
:: move override\ZHHAUS.bcs ToA1
:: move override\ZPALA2.bcs ToA1
:: move override\ZPALA3.bcs ToA1
:: move override\ZZELT2.bcs ToA1
:: move override\ZZELT3.bcs ToA1
:: move override\ZZELT4.bcs ToA1
:: move override\ZZHAUN.bcs ToA1
:: move override\Z_2ARUB.bcs ToA1
:: move override\Z_2BALOR.bcs ToA1
:: move override\Z_2BARBA.bcs ToA1
:: move override\Z_2BDRA.bcs ToA1
:: move override\Z_2BELA.bcs ToA1
:: move override\Z_2CAVE.bcs ToA1
:: move override\Z_2DEVAB.bcs ToA1
:: move override\Z_2DROK.bcs ToA1
:: move override\Z_2DYRI.bcs ToA1
:: move override\Z_2ELSAS.bcs ToA1
:: move override\Z_2ERIT.bcs ToA1
:: move override\Z_2GHAN.bcs ToA1
:: move override\Z_2HBRUN.bcs ToA1
:: move override\Z_2HER1.bcs ToA1
:: move override\Z_2HER2.bcs ToA1
:: move override\Z_2HER3.bcs ToA1
:: move override\Z_2HER4.bcs ToA1
:: move override\Z_2HER5.bcs ToA1
:: move override\Z_2HER6.bcs ToA1
:: move override\Z_2HIBIT.bcs ToA1
:: move override\Z_2HOB.bcs ToA1
:: move override\Z_2LE1.bcs ToA1
:: move override\Z_2LE2.bcs ToA1
:: move override\Z_2LE3.bcs ToA1
:: move override\Z_2LE4.bcs ToA1
:: move override\Z_2LE5.bcs ToA1
:: move override\Z_2LEIB.bcs ToA1
:: move override\Z_2MAND.bcs ToA1
:: move override\Z_2MYST.bcs ToA1
:: move override\Z_2NEKER.bcs ToA1
:: move override\Z_2PBHAL.bcs ToA1
:: move override\Z_2RIT.bcs ToA1
:: move override\Z_2SARG1.bcs ToA1
:: move override\Z_2SARG2.bcs ToA1
:: move override\Z_2SARG3.bcs ToA1
:: move override\Z_2SARG4.bcs ToA1
:: move override\Z_2SARG5.bcs ToA1
:: move override\Z_2SARG6.bcs ToA1
:: move override\Z_2SBB.bcs ToA1
:: move override\Z_2SBG.bcs ToA1
:: move override\Z_2SCB.bcs ToA1
:: move override\Z_2SCG.bcs ToA1
:: move override\Z_2SERIN.bcs ToA1
:: move override\Z_2SLE1.bcs ToA1
:: move override\Z_2SLE2.bcs ToA1
:: move override\Z_2SLE3.bcs ToA1
:: move override\Z_2SLE4.bcs ToA1
:: move override\Z_2SLE5.bcs ToA1
:: move override\Z_2SLE6.bcs ToA1
:: move override\Z_2SMB.bcs ToA1
:: move override\Z_2SMG.bcs ToA1
:: move override\Z_2SOL0.bcs ToA1
:: move override\Z_2SOL1.bcs ToA1
:: move override\Z_2SPB.bcs ToA1
:: move override\Z_2SPE2.bcs ToA1
:: move override\Z_2SPG.bcs ToA1
:: move override\Z_2SSB.bcs ToA1
:: move override\Z_2SSG.bcs ToA1
:: move override\Z_2STB.bcs ToA1
:: move override\Z_2TARA.bcs ToA1
:: move override\Z_2TSAD.bcs ToA1
:: move override\Z_2VAMP.bcs ToA1
:: move override\Z_2VDOOR.bcs ToA1
:: move override\Z_2VTRAP.bcs ToA1
:: move override\Z_2YANF.bcs ToA1
:: move override\Z_2YANF2.bcs ToA1
:: move override\Z_2YANM.bcs ToA1
:: move override\Z_ALAST.bcs ToA1
:: move override\Z_AMBOS.bcs ToA1
:: move override\Z_ARYA.bcs ToA1
:: move override\Z_BDRAG.bcs ToA1
:: move override\Z_BERED.bcs ToA1
:: move override\Z_BERG1.bcs ToA1
:: move override\Z_BERGF2.bcs ToA1
:: move override\Z_BURGM.bcs ToA1
:: move override\Z_CAV2N.bcs ToA1
:: move override\Z_DAEMO.bcs ToA1
:: move override\Z_DALMAR.bcs ToA1
:: move override\Z_DANAN.bcs ToA1
:: move override\Z_DAVIAN.bcs ToA1
:: move override\Z_DERIA.bcs ToA1
:: move override\Z_DERIA2.bcs ToA1
:: move override\Z_DOMP.bcs ToA1
:: move override\Z_DONO.bcs ToA1
:: move override\Z_DROW10.bcs ToA1
:: move override\Z_DROWK.bcs ToA1
:: move override\Z_DUEGA1.bcs ToA1
:: move override\Z_DUEGA3.bcs ToA1
:: move override\Z_ELF1.bcs ToA1
:: move override\Z_ELF2.bcs ToA1
:: move override\Z_ELF3.bcs ToA1
:: move override\Z_ELMI.bcs ToA1
:: move override\Z_EMIR.bcs ToA1
:: move override\Z_FEAR.bcs ToA1
:: move override\Z_FMAGE.bcs ToA1
:: move override\Z_FREE2.bcs ToA1
:: move override\Z_FREE3.bcs ToA1
:: move override\Z_FREE4.bcs ToA1
:: move override\Z_GALA2.bcs ToA1
:: move override\Z_GALA3.bcs ToA1
:: move override\Z_GALF2.bcs ToA1
:: move override\Z_GALF3.bcs ToA1
:: move override\Z_GALORA.bcs ToA1
:: move override\Z_GALORF.bcs ToA1
:: move override\Z_GENER1.bcs ToA1
:: move override\Z_GNOLLF.bcs ToA1
:: move override\Z_GOLIAT.bcs ToA1
:: move override\Z_GUARD1.bcs ToA1
:: move override\Z_GUARD2.bcs ToA1
:: move override\Z_HEAD1.bcs ToA1
:: move override\Z_HEAD2.bcs ToA1
:: move override\Z_HMAGE.bcs ToA1
:: move override\Z_HOBGOB.bcs ToA1
:: move override\Z_HSTONE.bcs ToA1
:: move override\Z_IBAR.bcs ToA1
:: move override\Z_IGOR.bcs ToA1
:: move override\Z_JAHORI.bcs ToA1
:: move override\Z_KALAK.bcs ToA1
:: move override\Z_KCHICK.bcs ToA1
:: move override\Z_LIND.bcs ToA1
:: move override\Z_LORET.bcs ToA1
:: move override\Z_MAHAN.bcs ToA1
:: move override\Z_MALAK.bcs ToA1
:: move override\Z_MARLIK.bcs ToA1
:: move override\Z_MARY.bcs ToA1
:: move override\Z_MBARD.bcs ToA1
:: move override\Z_MCLER.bcs ToA1
:: move override\Z_MFIGT.bcs ToA1
:: move override\Z_MIRRT.bcs ToA1
:: move override\Z_MMAGE.bcs ToA1
:: move override\Z_MPLY1.bcs ToA1
:: move override\Z_MPLY2.bcs ToA1
:: move override\Z_MPLY3.bcs ToA1
:: move override\Z_MPLY4.bcs ToA1
:: move override\Z_MPLY5.bcs ToA1
:: move override\Z_MPLY6.bcs ToA1
:: move override\Z_MSHA1.bcs ToA1
:: move override\Z_MSHA2.bcs ToA1
:: move override\Z_MSHA3.bcs ToA1
:: move override\Z_MSHA4.bcs ToA1
:: move override\Z_MSHA5.bcs ToA1
:: move override\Z_MSHA6.bcs ToA1
:: move override\Z_MTHIF.bcs ToA1
:: move override\Z_MYSTRA.bcs ToA1
:: move override\Z_NAUR.bcs ToA1
:: move override\Z_NIP.bcs ToA1
:: move override\Z_NOMO3.bcs ToA1
:: move override\Z_NOMO4.bcs ToA1
:: move override\Z_NOMO5.bcs ToA1
:: move override\Z_NOMORA.bcs ToA1
:: move override\Z_NUMA.bcs ToA1
:: move override\Z_PAT.bcs ToA1
:: move override\Z_PICAR.bcs ToA1
:: move override\Z_PIRI.bcs ToA1
:: move override\Z_PORTW1.bcs ToA1
:: move override\Z_RASAM.bcs ToA1
:: move override\Z_SARAH.bcs ToA1
:: move override\Z_SLAT.bcs ToA1
:: move override\Z_SMAGE.bcs ToA1
:: move override\Z_SOLDA0.bcs ToA1
:: move override\Z_SOLDA1.bcs ToA1
:: move override\Z_SOLDA2.bcs ToA1
:: move override\Z_SOLDNM.bcs ToA1
:: move override\Z_STOPAN.bcs ToA1
:: move override\Z_TANDOS.bcs ToA1
:: move override\Z_TFRB.bcs ToA1
:: move override\Z_TOLON.bcs ToA1
:: move override\Z_TORTA.bcs ToA1
:: move override\Z_TRANK1.bcs ToA1
:: move override\Z_TRANK2.bcs ToA1
:: move override\Z_TRANK3.bcs ToA1
:: move override\Z_TRANK4.bcs ToA1
:: move override\Z_TRANK5.bcs ToA1
:: move override\Z_TRANK6.bcs ToA1
:: move override\Z_TRANK7.bcs ToA1
:: move override\Z_TRANK8.bcs ToA1
:: move override\Z_TRAPD.bcs ToA1
:: move override\Z_TRSLIM.bcs ToA1
:: move override\Z_TULUK.bcs ToA1
:: move override\Z_VKAMER.bcs ToA1
:: move override\Z_VPIRI.bcs ToA1
:: move override\Z_WHEL1.bcs ToA1
:: move override\Z_WINIF.bcs ToA1
:: move override\Z_WINNI.bcs ToA1
:: move override\Z_WMAGE.bcs ToA1
:: move override\Z_YANTIF.bcs ToA1
:: move override\Z_YANTIM.bcs ToA1
:: move override\Z_ZAHIKI.bcs ToA1

:: move override\Z_AAMU.BAM ToA1
:: move override\Z_ANATH.BAM ToA1
:: move override\Z_ANATH1.BAM ToA1
:: move override\Z_ANATH2.BAM ToA1
:: move override\Z_ANATH3.BAM ToA1
:: move override\Z_ANATHZ.BAM ToA1
:: move override\Z_ASW1.BAM ToA1
:: move override\Z_ASWC1.BAM ToA1
:: move override\Z_BAMU.BAM ToA1
:: move override\Z_BBLADE.BAM ToA1
:: move override\Z_BELWB.BAM ToA1
:: move override\Z_DKSW.BAM ToA1
:: move override\Z_EAMU.BAM ToA1
:: move override\Z_FREE.BAM ToA1
:: move override\Z_FREE1.BAM ToA1
:: move override\Z_FREE2.BAM ToA1
:: move override\Z_FREE3.BAM ToA1
:: move override\Z_FREE4.BAM ToA1
:: move override\Z_GHAM.BAM ToA1
:: move override\Z_GHP1.BAM ToA1
:: move override\Z_GHP2.BAM ToA1
:: move override\Z_GOLA.BAM ToA1
:: move override\Z_HACK.BAM ToA1
:: move override\Z_HORN.BAM ToA1
:: move override\Z_RAMU.BAM ToA1
:: move override\Z_SCRLD.BAM ToA1
:: move override\Z_SOPAM.BAM ToA1
:: move override\Z_SPE1.BAM ToA1
:: move override\Z_SPEKU.BAM ToA1
:: move override\Z_SPOT.BAM ToA1
:: move override\Z_SSW2H.BAM ToA1
:: move override\Z_SW901.BAM ToA1
:: move override\Z_SW901B.BAM ToA1
:: move override\Z_SW901C.BAM ToA1
:: move override\Z_TAFEL1.BAM ToA1
:: move override\Z_TAFEL2.BAM ToA1

move override\Z2LCAVEHT.bmp ToA1
move override\Z2LCAVELM.bmp ToA1
move override\Z2LCAVESR.bmp ToA1
move override\Z2BCAVHT.BMP ToA1
move override\Z2BCAVLM.BMP ToA1
move override\Z2BCAVSR.BMP ToA1
move override\Z2BERGHT.BMP ToA1
move override\Z2BERGLM.BMP ToA1
move override\Z2BERGSR.BMP ToA1
move override\Z2BZELHT.BMP ToA1
move override\Z2BZELLM.BMP ToA1
move override\Z2BZELSR.BMP ToA1
move override\Z2CAVLHT.BMP ToA1
move override\Z2CAVLLM.BMP ToA1
move override\Z2CAVLSR.BMP ToA1
move override\Z2GZELHT.BMP ToA1
move override\Z2GZELLM.BMP ToA1
move override\Z2GZELSR.BMP ToA1
move override\Z2SCHLHT.BMP ToA1
move override\Z2SCHLLM.BMP ToA1
move override\Z2SCHLSR.BMP ToA1
move override\Z2VCAVHT.BMP ToA1
move override\Z2VCAVLM.BMP ToA1
move override\Z2VCAVSR.BMP ToA1
move override\ZAHAU1HT.BMP ToA1
move override\ZAHAU1LM.BMP ToA1
move override\ZAHAU1SR.BMP ToA1
move override\ZAHAU2HT.BMP ToA1
move override\ZAHAU2LM.BMP ToA1
move override\ZAHAU2SR.BMP ToA1
move override\ZANEGHHT.BMP ToA1
move override\ZANEGHLM.BMP ToA1
move override\ZANEGHSR.BMP ToA1
move override\ZBERGEHT.BMP ToA1
move override\ZBERGELM.BMP ToA1
move override\ZBERGESR.BMP ToA1
move override\ZBHAU1HT.BMP ToA1
move override\ZBHAU1LM.BMP ToA1
move override\ZBHAU1SR.BMP ToA1
move override\ZBHAU2HT.BMP ToA1
move override\ZBHAU2LM.BMP ToA1
move override\ZBHAU2SR.BMP ToA1
move override\ZBHAUSHT.BMP ToA1
move override\ZBHAUSLM.BMP ToA1
move override\ZBHAUSSR.BMP ToA1
move override\ZBZEG2HT.BMP ToA1
move override\ZBZEG2LM.BMP ToA1
move override\ZBZEG2SR.BMP ToA1
move override\ZBZEL1HT.BMP ToA1
move override\ZBZEL1LM.BMP ToA1
move override\ZBZEL1SR.BMP ToA1
move override\ZBZEL2HT.BMP ToA1
move override\ZBZEL2LM.BMP ToA1
move override\ZBZEL2SR.BMP ToA1
move override\ZBZEL3HT.BMP ToA1
move override\ZBZEL3LM.BMP ToA1
move override\ZBZEL3SR.BMP ToA1
move override\ZBZEL4HT.BMP ToA1
move override\ZBZEL4LM.BMP ToA1
move override\ZBZEL4SR.BMP ToA1
move override\ZBZEL5HT.BMP ToA1
move override\ZBZEL5LM.BMP ToA1
move override\ZBZEL5SR.BMP ToA1
move override\ZBZEL6HT.BMP ToA1
move override\ZBZEL6LM.BMP ToA1
move override\ZBZEL6SR.BMP ToA1
move override\ZBZEL7HT.BMP ToA1
move override\ZBZEL7LM.BMP ToA1
move override\ZBZEL7SR.BMP ToA1
move override\ZBZEL8HT.BMP ToA1
move override\ZBZEL8LM.BMP ToA1
move override\ZBZEL8SR.BMP ToA1
move override\ZBZELGHT.BMP ToA1
move override\ZBZELGLM.BMP ToA1
move override\ZBZELGSR.BMP ToA1
move override\ZCAVE1HT.BMP ToA1
move override\ZCAVE1LM.BMP ToA1
move override\ZCAVE1SR.BMP ToA1
move override\ZCAVE2HT.BMP ToA1
move override\ZCAVE2LM.BMP ToA1
move override\ZCAVE2SR.BMP ToA1
move override\ZCAVE3HT.BMP ToA1
move override\ZCAVE3LM.BMP ToA1
move override\ZCAVE3SR.BMP ToA1
move override\ZCAVE4HT.BMP ToA1
move override\ZCAVE4LM.BMP ToA1
move override\ZCAVE4SR.BMP ToA1
move override\ZCAVE5HT.BMP ToA1
move override\ZCAVE5LM.BMP ToA1
move override\ZCAVE5SR.BMP ToA1
move override\ZCLIFFHT.BMP ToA1
move override\ZCLIFFLM.BMP ToA1
move override\ZCLIFFSR.BMP ToA1
move override\ZDREA2HT.BMP ToA1
move override\ZDREA2LM.BMP ToA1
move override\ZDREA2SR.BMP ToA1
move override\ZDREAMHT.BMP ToA1
move override\ZDREAMLM.BMP ToA1
move override\ZDREAMSR.BMP ToA1
move override\ZGASTHT.BMP ToA1
move override\ZGASTLM.BMP ToA1
move override\ZGASTSR.BMP ToA1
move override\ZGEFEHT.BMP ToA1
move override\ZGEFELM.BMP ToA1
move override\ZGEFESR.BMP ToA1
move override\ZHAU1HT.BMP ToA1
move override\ZHAU1LM.BMP ToA1
move override\ZHAU1SR.BMP ToA1
move override\ZHAU2HT.BMP ToA1
move override\ZHAU2LM.BMP ToA1
move override\ZHAU2SR.BMP ToA1
move override\ZHAU3HT.BMP ToA1
move override\ZHAU3LM.BMP ToA1
move override\ZHAU3SR.BMP ToA1
move override\ZHBERGHT.BMP ToA1
move override\ZHBERGLM.BMP ToA1
move override\ZHBERGSR.BMP ToA1
move override\ZHEL1HT.BMP ToA1
move override\ZHEL1LM.BMP ToA1
move override\ZHEL1SR.BMP ToA1
move override\ZHHAUSHT.BMP ToA1
move override\ZHHAUSLM.BMP ToA1
move override\ZHHAUSSR.BMP ToA1
move override\ZLADE1HT.BMP ToA1
move override\ZLADE1LM.BMP ToA1
move override\ZLADE1SR.BMP ToA1
move override\ZNOMORAN.BMP ToA1
move override\ZNOMORAS.BMP ToA1
move override\ZPALA1HT.BMP ToA1
move override\ZPALA1LM.BMP ToA1
move override\ZPALA1SR.BMP ToA1
move override\ZPALA2HT.BMP ToA1
move override\ZPALA2LM.BMP ToA1
move override\ZPALA2SR.BMP ToA1
move override\ZPALA3HT.BMP ToA1
move override\ZPALA3LM.BMP ToA1
move override\ZPALA3SR.BMP ToA1
move override\ZPALAHT.BMP ToA1
move override\ZPALALM.BMP ToA1
move override\ZPALASR.BMP ToA1
move override\ZSCHMIHT.BMP ToA1
move override\ZSCHMILM.BMP ToA1
move override\ZSCHMISR.BMP ToA1
move override\ZTEMPHT.BMP ToA1
move override\ZTEMPLM.BMP ToA1
move override\ZTEMPSR.BMP ToA1
move override\ZZELT1HT.BMP ToA1
move override\ZZELT1LM.BMP ToA1
move override\ZZELT1SR.BMP ToA1
move override\ZZELT2HT.BMP ToA1
move override\ZZELT2LM.BMP ToA1
move override\ZZELT2SR.BMP ToA1
move override\ZZELT3HT.BMP ToA1
move override\ZZELT3LM.BMP ToA1
move override\ZZELT3SR.BMP ToA1
move override\ZZELT4HT.BMP ToA1
move override\ZZELT4LM.BMP ToA1
move override\ZZELT4SR.BMP ToA1
move override\ZZELTGHT.BMP ToA1
move override\ZZELTGLM.BMP ToA1
move override\ZZELTGSR.BMP ToA1
move override\ZZHAU1HT.BMP ToA1
move override\ZZHAU1LM.BMP ToA1
move override\ZZHAU1SR.BMP ToA1
move override\ZZHAU2HT.BMP ToA1
move override\ZZHAU2LM.BMP ToA1
move override\ZZHAU2SR.BMP ToA1
move override\ZZHAUHT.BMP ToA1
move override\ZZHAULM.BMP ToA1
move override\ZZHAUSR.BMP ToA1

:: move override\Z_2ARUB.CRE ToA1
:: move override\Z_2BALOR.CRE ToA1
:: move override\Z_2BARBA.CRE ToA1
:: move override\Z_2BDRA.CRE ToA1
:: move override\Z_2BELA.CRE ToA1
:: move override\Z_2BIBLI.CRE ToA1
:: move override\Z_2BOTE.CRE ToA1
:: move override\Z_2DEVAB.CRE ToA1
:: move override\Z_2DROF.CRE ToA1
:: move override\Z_2DROK.CRE ToA1
:: move override\Z_2DYRI.CRE ToA1
:: move override\Z_2ELSA2.CRE ToA1
:: move override\Z_2ELSAS.CRE ToA1
:: move override\Z_2ERIT.CRE ToA1
:: move override\Z_2GE1.CRE ToA1
:: move override\Z_2GE2.CRE ToA1
:: move override\Z_2GE3.CRE ToA1
:: move override\Z_2GE4.CRE ToA1
:: move override\Z_2GHAN.CRE ToA1
:: move override\Z_2HER1.CRE ToA1
:: move override\Z_2HER2.CRE ToA1
:: move override\Z_2HER3.CRE ToA1
:: move override\Z_2HER4.CRE ToA1
:: move override\Z_2HER5.CRE ToA1
:: move override\Z_2HER6.CRE ToA1
:: move override\Z_2HIBI2.CRE ToA1
:: move override\Z_2HIBIT.CRE ToA1
:: move override\Z_2HOB.CRE ToA1
:: move override\Z_2LE1.CRE ToA1
:: move override\Z_2LE2.CRE ToA1
:: move override\Z_2LE3.CRE ToA1
:: move override\Z_2LE4.CRE ToA1
:: move override\Z_2LE5.CRE ToA1
:: move override\Z_2LEIB.CRE ToA1
:: move override\Z_2MAG1.CRE ToA1
:: move override\Z_2MAND.CRE ToA1
:: move override\Z_2MYST.CRE ToA1
:: move override\Z_2NAUR2.CRE ToA1
:: move override\Z_2NEK.CRE ToA1
:: move override\Z_2NEKER.CRE ToA1
:: move override\Z_2PBHAL.CRE ToA1
:: move override\Z_2SBB.CRE ToA1
:: move override\Z_2SBG.CRE ToA1
:: move override\Z_2SCB.CRE ToA1
:: move override\Z_2SCG.CRE ToA1
:: move override\Z_2SERIN.CRE ToA1
:: move override\Z_2SLE1.CRE ToA1
:: move override\Z_2SLE2.CRE ToA1
:: move override\Z_2SLE3.CRE ToA1
:: move override\Z_2SLE4.CRE ToA1
:: move override\Z_2SLE5.CRE ToA1
:: move override\Z_2SLE6.CRE ToA1
:: move override\Z_2SMB.CRE ToA1
:: move override\Z_2SMG.CRE ToA1
:: move override\Z_2SOL0.CRE ToA1
:: move override\Z_2SOL1.CRE ToA1
:: move override\Z_2SPB.CRE ToA1
:: move override\Z_2SPE.CRE ToA1
:: move override\Z_2SPE2.CRE ToA1
:: move override\Z_2SPG.CRE ToA1
:: move override\Z_2SSB.CRE ToA1
:: move override\Z_2SSG.CRE ToA1
:: move override\Z_2STB.CRE ToA1
:: move override\Z_2STRA.CRE ToA1
:: move override\Z_2TARA.CRE ToA1
:: move override\Z_2TSAD.CRE ToA1
:: move override\Z_2VAMPF.CRE ToA1
:: move override\Z_2VAMPM.CRE ToA1
:: move override\Z_2YANF.CRE ToA1
:: move override\Z_2YANF2.CRE ToA1
:: move override\Z_2YANM.CRE ToA1
:: move override\Z_ADON.CRE ToA1
:: move override\Z_ALAST.CRE ToA1
:: move override\Z_ARYA.CRE ToA1
:: move override\Z_BDRAG.CRE ToA1
:: move override\Z_BERED.CRE ToA1
:: move override\Z_BERFOT.CRE ToA1
:: move override\Z_BERGF.CRE ToA1
:: move override\Z_BERGF2.CRE ToA1
:: move override\Z_BERSER.CRE ToA1
:: move override\Z_BHAAL.CRE ToA1
:: move override\Z_BIANCA.CRE ToA1
:: move override\Z_BLACK.CRE ToA1
:: move override\Z_BURGM.CRE ToA1
:: move override\Z_CLERI1.CRE ToA1
:: move override\Z_CYRIC.CRE ToA1
:: move override\Z_DAEMO.CRE ToA1
:: move override\Z_DALMAR.CRE ToA1
:: move override\Z_DANAN.CRE ToA1
:: move override\Z_DARAK.CRE ToA1
:: move override\Z_DAVIAN.CRE ToA1
:: move override\Z_DERIA.CRE ToA1
:: move override\Z_DERIA2.CRE ToA1
:: move override\Z_DOMP.CRE ToA1
:: move override\Z_DONO.CRE ToA1
:: move override\Z_DORE.CRE ToA1
:: move override\Z_DROW1.CRE ToA1
:: move override\Z_DROW10.CRE ToA1
:: move override\Z_DROW11.CRE ToA1
:: move override\Z_DROW2.CRE ToA1
:: move override\Z_DROW3.CRE ToA1
:: move override\Z_DROW4.CRE ToA1
:: move override\Z_DROW5.CRE ToA1
:: move override\Z_DROW6.CRE ToA1
:: move override\Z_DROWF.CRE ToA1
:: move override\Z_DROWK.CRE ToA1
:: move override\Z_DUEGA1.CRE ToA1
:: move override\Z_DUEGA2.CRE ToA1
:: move override\Z_DUEGA3.CRE ToA1
:: move override\Z_ELF1.CRE ToA1
:: move override\Z_ELF2.CRE ToA1
:: move override\Z_ELF3.CRE ToA1
:: move override\Z_ELMI.CRE ToA1
:: move override\Z_EMIR.CRE ToA1
:: move override\Z_FEAR.CRE ToA1
:: move override\Z_FMAGE.CRE ToA1
:: move override\Z_GALA2.CRE ToA1
:: move override\Z_GALA3.CRE ToA1
:: move override\Z_GALF2.CRE ToA1
:: move override\Z_GALF3.CRE ToA1
:: move override\Z_GALORA.CRE ToA1
:: move override\Z_GALORF.CRE ToA1
:: move override\Z_GENER1.CRE ToA1
:: move override\Z_GNOLLF.CRE ToA1
:: move override\Z_GOLIAT.CRE ToA1
:: move override\Z_GUARD1.CRE ToA1
:: move override\Z_GUARD2.CRE ToA1
:: move override\Z_HEAD1.CRE ToA1
:: move override\Z_HEAD2.CRE ToA1
:: move override\Z_HMAGE.CRE ToA1
:: move override\Z_HOBGOB.CRE ToA1
:: move override\Z_IBAR.CRE ToA1
:: move override\Z_IGOR.CRE ToA1
:: move override\Z_JAHORI.CRE ToA1
:: move override\Z_JUNG1.CRE ToA1
:: move override\Z_JUNG2.CRE ToA1
:: move override\Z_JUNG3.CRE ToA1
:: move override\Z_KALAK.CRE ToA1
:: move override\Z_KCHICK.CRE ToA1
:: move override\Z_KELEM.CRE ToA1
:: move override\Z_LIND.CRE ToA1
:: move override\Z_LORET.CRE ToA1
:: move override\Z_MAEL.CRE ToA1
:: move override\Z_MAGE1.CRE ToA1
:: move override\Z_MAGE2.CRE ToA1
:: move override\Z_MAGE3.CRE ToA1
:: move override\Z_MAGTER.CRE ToA1
:: move override\Z_MAHAN.CRE ToA1
:: move override\Z_MALAK.CRE ToA1
:: move override\Z_MARL2.CRE ToA1
:: move override\Z_MARL3.CRE ToA1
:: move override\Z_MARLIK.CRE ToA1
:: move override\Z_MARY.CRE ToA1
:: move override\Z_MBARD1.CRE ToA1
:: move override\Z_MBARD2.CRE ToA1
:: move override\Z_MBARD3.CRE ToA1
:: move override\Z_MBARD4.CRE ToA1
:: move override\Z_MBARD5.CRE ToA1
:: move override\Z_MBARD6.CRE ToA1
:: move override\Z_MCLER1.CRE ToA1
:: move override\Z_MCLER2.CRE ToA1
:: move override\Z_MCLER3.CRE ToA1
:: move override\Z_MCLER4.CRE ToA1
:: move override\Z_MCLER5.CRE ToA1
:: move override\Z_MCLER6.CRE ToA1
:: move override\Z_MEFIZ.CRE ToA1
:: move override\Z_MFIGT1.CRE ToA1
:: move override\Z_MFIGT2.CRE ToA1
:: move override\Z_MFIGT3.CRE ToA1
:: move override\Z_MFIGT4.CRE ToA1
:: move override\Z_MFIGT5.CRE ToA1
:: move override\Z_MFIGT6.CRE ToA1
:: move override\Z_MMAGE1.CRE ToA1
:: move override\Z_MMAGE2.CRE ToA1
:: move override\Z_MMAGE3.CRE ToA1
:: move override\Z_MMAGE4.CRE ToA1
:: move override\Z_MMAGE5.CRE ToA1
:: move override\Z_MMAGE6.CRE ToA1
:: move override\Z_MPLY1.CRE ToA1
:: move override\Z_MPLY2.CRE ToA1
:: move override\Z_MPLY3.CRE ToA1
:: move override\Z_MPLY4.CRE ToA1
:: move override\Z_MPLY5.CRE ToA1
:: move override\Z_MPLY6.CRE ToA1
:: move override\Z_MTHIF1.CRE ToA1
:: move override\Z_MTHIF2.CRE ToA1
:: move override\Z_MTHIF3.CRE ToA1
:: move override\Z_MTHIF4.CRE ToA1
:: move override\Z_MTHIF5.CRE ToA1
:: move override\Z_MTHIF6.CRE ToA1
:: move override\Z_MYST2.CRE ToA1
:: move override\Z_MYSTRA.CRE ToA1
:: move override\Z_NAUR.CRE ToA1
:: move override\Z_NICKI.CRE ToA1
:: move override\Z_NIP.CRE ToA1
:: move override\Z_NOMO2.CRE ToA1
:: move override\Z_NOMO3.CRE ToA1
:: move override\Z_NOMO4.CRE ToA1
:: move override\Z_NOMO5.CRE ToA1
:: move override\Z_NOMORA.CRE ToA1
:: move override\Z_NUMA.CRE ToA1
:: move override\Z_OROG.CRE ToA1
:: move override\Z_PAT.CRE ToA1
:: move override\Z_PICAR.CRE ToA1
:: move override\Z_PIRI.CRE ToA1
:: move override\Z_PORTW1.CRE ToA1
:: move override\Z_RASAM.CRE ToA1
:: move override\Z_SARAH.CRE ToA1
:: move override\Z_SLAT.CRE ToA1
:: move override\Z_SMAGE.CRE ToA1
:: move override\Z_SOLDA1.CRE ToA1
:: move override\Z_SOLDA2.CRE ToA1
:: move override\Z_SOLDA3.CRE ToA1
:: move override\Z_SOLDAT.CRE ToA1
:: move override\Z_SOLDNF.CRE ToA1
:: move override\Z_SOLDNM.CRE ToA1
:: move override\Z_SOUL1.CRE ToA1
:: move override\Z_SOUL2.CRE ToA1
:: move override\Z_SOUL3.CRE ToA1
:: move override\Z_TANDOS.CRE ToA1
:: move override\Z_TEST.CRE ToA1
:: move override\Z_TOLON.CRE ToA1
:: move override\Z_TORTA.CRE ToA1
:: move override\Z_TULUK.CRE ToA1
:: move override\Z_VPIRI.CRE ToA1
:: move override\Z_WHEL1.CRE ToA1
:: move override\Z_WHEL2.CRE ToA1
:: move override\Z_WHEL3.CRE ToA1
:: move override\Z_WHEL4.CRE ToA1
:: move override\Z_WHITE.CRE ToA1
:: move override\Z_WINIF.CRE ToA1
:: move override\Z_WINNI.CRE ToA1
:: move override\Z_WMAGE.CRE ToA1
:: move override\Z_YANTIE.CRE ToA1
:: move override\Z_YANTIF.CRE ToA1
:: move override\Z_YANTIM.CRE ToA1
:: move override\Z_ZAH.CRE ToA1
:: move override\Z_ZAHIKI.CRE ToA1
:: move override\Z_ZANAI.CRE ToA1

:: move override\Z_2ARUB.dlg ToA1
:: move override\Z_2BARBA.dlg ToA1
:: move override\Z_2BDRA.dlg ToA1
:: move override\Z_2BDRAG.dlg ToA1
:: move override\Z_2BELA.dlg ToA1
:: move override\Z_2BIBLI.dlg ToA1
:: move override\Z_2BOTE.dlg ToA1
:: move override\Z_2DYRI.dlg ToA1
:: move override\Z_2ELSA2.dlg ToA1
:: move override\Z_2ELSAS.dlg ToA1
:: move override\Z_2ERIT.dlg ToA1
:: move override\Z_2GE1.dlg ToA1
:: move override\Z_2GE2.dlg ToA1
:: move override\Z_2HIBI2.dlg ToA1
:: move override\Z_2HIBIT.dlg ToA1
:: move override\Z_2LE1.dlg ToA1
:: move override\Z_2LE2.dlg ToA1
:: move override\Z_2LE3.dlg ToA1
:: move override\Z_2LE4.dlg ToA1
:: move override\Z_2LE5.dlg ToA1
:: move override\Z_2MAG1.dlg ToA1
:: move override\Z_2MAG2.dlg ToA1
:: move override\Z_2MAND.dlg ToA1
:: move override\Z_2MYST.dlg ToA1
:: move override\Z_2NAUR2.dlg ToA1
:: move override\Z_2NEKER.dlg ToA1
:: move override\Z_2SERIN.dlg ToA1
:: move override\Z_2SPE.dlg ToA1
:: move override\Z_2STRA.dlg ToA1
:: move override\Z_2TARA.dlg ToA1
:: move override\Z_2TSAD.dlg ToA1
:: move override\Z_2VAMP.dlg ToA1
:: move override\Z_2YANF.dlg ToA1
:: move override\Z_ARYA.dlg ToA1
:: move override\Z_BERED.dlg ToA1
:: move override\Z_BERFOT.dlg ToA1
:: move override\Z_BERGF.dlg ToA1
:: move override\Z_BERGF2.dlg ToA1
:: move override\Z_BIANCA.dlg ToA1
:: move override\Z_BURGM.dlg ToA1
:: move override\Z_DALMAR.dlg ToA1
:: move override\Z_DANAN.dlg ToA1
:: move override\Z_DAVIAN.dlg ToA1
:: move override\Z_DERIA.dlg ToA1
:: move override\Z_DERIA2.dlg ToA1
:: move override\Z_DOMP.dlg ToA1
:: move override\Z_DONO.dlg ToA1
:: move override\Z_DORE.dlg ToA1
:: move override\Z_DROW1.dlg ToA1
:: move override\Z_DROW10.dlg ToA1
:: move override\Z_DUEGA1.dlg ToA1
:: move override\Z_DUEGA2.dlg ToA1
:: move override\Z_ELF1.dlg ToA1
:: move override\Z_ELF2.dlg ToA1
:: move override\Z_ELF3.dlg ToA1
:: move override\Z_ELMI.dlg ToA1
:: move override\Z_EMIR.dlg ToA1
:: move override\Z_GALA2.dlg ToA1
:: move override\Z_GALA3.dlg ToA1
:: move override\Z_GALA4.dlg ToA1
:: move override\Z_GALF2.dlg ToA1
:: move override\Z_GALF3.dlg ToA1
:: move override\Z_GALORA.dlg ToA1
:: move override\Z_GALORF.dlg ToA1
:: move override\Z_GENER1.dlg ToA1
:: move override\Z_GOLIAT.dlg ToA1
:: move override\Z_GUARD1.dlg ToA1
:: move override\Z_GUARD2.dlg ToA1
:: move override\Z_HEAD1.dlg ToA1
:: move override\Z_HEAD2.dlg ToA1
:: move override\Z_IBAR.dlg ToA1
:: move override\Z_IGOR.dlg ToA1
:: move override\Z_JAHORI.dlg ToA1
:: move override\Z_JUNG1.dlg ToA1
:: move override\Z_KALAK.dlg ToA1
:: move override\Z_LORET.dlg ToA1
:: move override\Z_MAGE2.dlg ToA1
:: move override\Z_MAGTER.dlg ToA1
:: move override\Z_MAHAN.dlg ToA1
:: move override\Z_MALAK.dlg ToA1
:: move override\Z_MAR.dlg ToA1
:: move override\Z_MARL2.dlg ToA1
:: move override\Z_MARLIK.dlg ToA1
:: move override\Z_MARY.dlg ToA1
:: move override\Z_MEFIZ.dlg ToA1
:: move override\Z_MYSTRA.dlg ToA1
:: move override\Z_NAUR.dlg ToA1
:: move override\Z_NICKI.dlg ToA1
:: move override\Z_NIP.dlg ToA1
:: move override\Z_NOMO2.dlg ToA1
:: move override\Z_NOMO3.dlg ToA1
:: move override\Z_NOMO4.dlg ToA1
:: move override\Z_NOMO5.dlg ToA1
:: move override\Z_NOMORA.dlg ToA1
:: move override\Z_NUMA.dlg ToA1
:: move override\Z_PAT.dlg ToA1
:: move override\Z_PICAR.dlg ToA1
:: move override\Z_PIRI.dlg ToA1
:: move override\Z_PORTW1.dlg ToA1
:: move override\Z_SARAH.dlg ToA1
:: move override\Z_SARAH2.dlg ToA1
:: move override\Z_SOLDA0.dlg ToA1
:: move override\Z_SOLDA1.dlg ToA1
:: move override\Z_SOLDA2.dlg ToA1
:: move override\Z_STOPAN.dlg ToA1
:: move override\Z_STOPP1.dlg ToA1
:: move override\Z_TANDOS.dlg ToA1
:: move override\Z_TEST.dlg ToA1
:: move override\Z_TOLON.dlg ToA1
:: move override\Z_TORTA.dlg ToA1
:: move override\Z_TULUK.dlg ToA1
:: move override\Z_VPIRI.dlg ToA1
:: move override\Z_WHEL1.dlg ToA1
:: move override\Z_WHEL2.dlg ToA1
:: move override\Z_WHEL3.dlg ToA1
:: move override\Z_WHEL4.dlg ToA1
:: move override\Z_WINIF.dlg ToA1
:: move override\Z_WINNI.dlg ToA1
:: move override\Z_ZAH.dlg ToA1
:: move override\Z_ZAHIKI.dlg ToA1
:: move override\Z_ZANAI.dlg ToA1

:: move override\Z_DKSD.EFF ToA1
:: move override\Z_DKST.EFF ToA1
:: move override\Z_SPE1D.EFF ToA1
:: move override\Z_SPE1T.EFF ToA1

:: move override\Z_2PLATB.ITM ToA1
:: move override\Z_AAMU.ITM ToA1
:: move override\Z_ANATH.ITM ToA1
:: move override\Z_ANATH1.ITM ToA1
:: move override\Z_ANATH2.ITM ToA1
:: move override\Z_ANATH3.ITM ToA1
:: move override\Z_ANATH4.ITM ToA1
:: move override\Z_ANATHZ.ITM ToA1
:: move override\Z_BAMU.ITM ToA1
:: move override\Z_BBLADE.ITM ToA1
:: move override\Z_BELWB.ITM ToA1
:: move override\Z_BER1.ITM ToA1
:: move override\Z_BER2.ITM ToA1
:: move override\Z_BER3.ITM ToA1
:: move override\Z_BOOK1.ITM ToA1
:: move override\Z_DKSW.ITM ToA1
:: move override\Z_EAMU.ITM ToA1
:: move override\Z_EKRAUT.ITM ToA1
:: move override\Z_ELBOW.ITM ToA1
:: move override\Z_EPFEIF.ITM ToA1
:: move override\Z_FREE.ITM ToA1
:: move override\Z_FREE1.ITM ToA1
:: move override\Z_FREE2.ITM ToA1
:: move override\Z_FREE3.ITM ToA1
:: move override\Z_FREE4.ITM ToA1
:: move override\Z_GHAM.ITM ToA1
:: move override\Z_GHP1.ITM ToA1
:: move override\Z_GHP2.ITM ToA1
:: move override\Z_GOLA.ITM ToA1
:: move override\Z_HACK.ITM ToA1
:: move override\Z_HORN.ITM ToA1
:: move override\Z_KEY1.ITM ToA1
:: move override\Z_MARS.ITM ToA1
:: move override\Z_PKEY.ITM ToA1
:: move override\Z_PLATM.ITM ToA1
:: move override\Z_RAMU.ITM ToA1
:: move override\Z_RWEIN.ITM ToA1
:: move override\Z_SCL1.ITM ToA1
:: move override\Z_SCRLD.ITM ToA1
:: move override\Z_SOPAM.ITM ToA1
:: move override\Z_SPE1.ITM ToA1
:: move override\Z_SPEKU.ITM ToA1
:: move override\Z_SPOT.ITM ToA1
:: move override\Z_SSW2H.ITM ToA1
:: move override\Z_SWTHF.ITM ToA1
:: move override\Z_TAFEL1.ITM ToA1
:: move override\Z_TAFEL2.ITM ToA1

move override\ZSCHMI.MOS ToA1
move override\Z2BCAV.MOS ToA1
move override\Z2BERG.MOS ToA1
move override\Z2BZEL.MOS ToA1
move override\Z2CAVL.MOS ToA1
move override\Z2GZEL.MOS ToA1
move override\Z2LCAVE.MOS ToA1
move override\Z2SCHL.MOS ToA1
move override\Z2VCAV.MOS ToA1
move override\ZAHAU1.MOS ToA1
move override\ZAHAU2.MOS ToA1
move override\ZANEGH.MOS ToA1
move override\ZBERGE.MOS ToA1
move override\ZBHAU1.MOS ToA1
move override\ZBHAU2.MOS ToA1
move override\ZBHAUS.MOS ToA1
move override\ZBZEG2.MOS ToA1
move override\ZBZEL1.MOS ToA1
move override\ZBZEL2.MOS ToA1
move override\ZBZEL3.MOS ToA1
move override\ZBZEL4.MOS ToA1
move override\ZBZEL5.MOS ToA1
move override\ZBZEL6.MOS ToA1
move override\ZBZEL7.MOS ToA1
move override\ZBZEL8.MOS ToA1
move override\ZBZELG.MOS ToA1
move override\ZCAVE1.MOS ToA1
move override\ZCAVE2.MOS ToA1
move override\ZCAVE3.MOS ToA1
move override\ZCAVE4.MOS ToA1
move override\ZCAVE5.MOS ToA1
move override\ZCLIFF.MOS ToA1
move override\ZDREA2.MOS ToA1
move override\ZDREAM.MOS ToA1
move override\ZGAST.MOS ToA1
move override\ZGEFE.MOS ToA1
move override\ZHAU1.MOS ToA1
move override\ZHAU2.MOS ToA1
move override\ZHAU3.MOS ToA1
move override\ZHBERG.MOS ToA1
move override\ZHEL1.MOS ToA1
move override\ZHHAUS.MOS ToA1
move override\ZLADE1.MOS ToA1
move override\ZPALA.MOS ToA1
move override\ZPALA1.MOS ToA1
move override\ZPALA2.MOS ToA1
move override\ZPALA3.MOS ToA1
move override\ZSCENE1.MOS ToA1
move override\ZSCENE2.MOS ToA1
move override\ZTEMP.MOS ToA1
move override\ZZELT1.MOS ToA1
move override\ZZELT2.MOS ToA1
move override\ZZELT3.MOS ToA1
move override\ZZELT4.MOS ToA1
move override\ZZELTG.MOS ToA1
move override\ZZHAU.MOS ToA1
move override\ZZHAU1.MOS ToA1
move override\ZZHAU2.MOS ToA1

:: move override\Z_SW901.SPL ToA1

:: move override\Z_2BIBLI.STO ToA1
:: move override\Z_BIBLI.STO ToA1
:: move override\Z_DAVIAN.STO ToA1
:: move override\Z_EMIR.STO ToA1
:: move override\Z_MEFIZ.STO ToA1

move override\Z2BCAV.WED ToA1
move override\Z2BERG.WED ToA1
move override\Z2BZEL.WED ToA1
move override\Z2CAVL.WED ToA1
move override\Z2GZEL.WED ToA1
move override\Z2LCAVE.WED ToA1
move override\Z2SCHL.WED ToA1
move override\Z2VCAV.WED ToA1
move override\ZAHAU1.WED ToA1
move override\ZAHAU2.WED ToA1
move override\ZANEGH.WED ToA1
move override\ZBERGE.WED ToA1
move override\ZBHAU1.WED ToA1
move override\ZBHAU2.WED ToA1
move override\ZBHAUS.WED ToA1
move override\ZBZEG2.WED ToA1
move override\ZBZEL1.WED ToA1
move override\ZBZEL2.WED ToA1
move override\ZBZEL3.WED ToA1
move override\ZBZEL4.WED ToA1
move override\ZBZEL5.WED ToA1
move override\ZBZEL6.WED ToA1
move override\ZBZEL7.WED ToA1
move override\ZBZEL8.WED ToA1
move override\ZBZELG.WED ToA1
move override\ZCAVE1.WED ToA1
move override\ZCAVE2.WED ToA1
move override\ZCAVE3.WED ToA1
move override\ZCAVE4.WED ToA1
move override\ZCAVE5.WED ToA1
move override\ZCLIFF.WED ToA1
move override\ZDREA2.WED ToA1
move override\ZDREAM.WED ToA1
move override\ZGAST.WED ToA1
move override\ZGEFE.WED ToA1
move override\ZHAU1.WED ToA1
move override\ZHAU2.WED ToA1
move override\ZHAU3.WED ToA1
move override\ZHBERG.WED ToA1
move override\ZHEL1.WED ToA1
move override\ZHHAUS.WED ToA1
move override\ZLADE1.WED ToA1
move override\ZPALA.WED ToA1
move override\ZPALA1.WED ToA1
move override\ZPALA2.WED ToA1
move override\ZPALA3.WED ToA1
move override\ZSCHMI.WED ToA1
move override\ZTEMP.WED ToA1
move override\ZZELT1.WED ToA1
move override\ZZELT2.WED ToA1
move override\ZZELT3.WED ToA1
move override\ZZELT4.WED ToA1
move override\ZZELTG.WED ToA1
move override\ZZHAU.WED ToA1
move override\ZZHAU1.WED ToA1
move override\ZZHAU2.WED ToA1

weidu --make-biff ToA1

rd /s /q ToA1

FOR %%s IN (
override\*.baf
override\*.d
override\*.ogg
override\*.tiz
) DO del %%s