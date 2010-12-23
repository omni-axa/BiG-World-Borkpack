@ ECHO OFF


del override\*.tiz
move override\tisunpack.exe tisunpack.exe
copy Setup-NeJ2.exe Weidu.exe

md NEJ-BAM
md NEJ-BCS
md NEJ-CRE
md NEJ-DLG
md NEJ-ITM
md NEJ-STO
md NEJ-RULE
md NEJ-SFX
md NEJ-SPL

md NEJ-TIS1

tisunpack -s -h -o NEJ-TIS1\TT0001.tis NeJ\tiz\TT0001.tiz
tisunpack -s -h -o NEJ-TIS1\TT0002.tis NeJ\tiz\TT0002.tiz
tisunpack -s -h -o NEJ-TIS1\TT0003.tis NeJ\tiz\TT0003.tiz
tisunpack -s -h -o NEJ-TIS1\TT0007.tis NeJ\tiz\TT0007.tiz
tisunpack -s -h -o NEJ-TIS1\TT1000.tis NeJ\tiz\TT1000.tiz
tisunpack -s -h -o NEJ-TIS1\TT1001.tis NeJ\tiz\TT1001.tiz
tisunpack -s -h -o NEJ-TIS1\TT1002.tis NeJ\tiz\TT1002.tiz
tisunpack -s -h -o NEJ-TIS1\TT1003.tis NeJ\tiz\TT1003.tiz
tisunpack -s -h -o NEJ-TIS1\TT1005.tis NeJ\tiz\TT1005.tiz
tisunpack -s -h -o NEJ-TIS1\TT1006.tis NeJ\tiz\TT1006.tiz
tisunpack -s -h -o NEJ-TIS1\TT1007.tis NeJ\tiz\TT1007.tiz
tisunpack -s -h -o NEJ-TIS1\TT1008.tis NeJ\tiz\TT1008.tiz
tisunpack -s -h -o NEJ-TIS1\TT1009.tis NeJ\tiz\TT1009.tiz
tisunpack -s -h -o NEJ-TIS1\TT1010.tis NeJ\tiz\TT1010.tiz
tisunpack -s -h -o NEJ-TIS1\TT1011.tis NeJ\tiz\TT1011.tiz
tisunpack -s -h -o NEJ-TIS1\TT1012.tis NeJ\tiz\TT1012.tiz
tisunpack -s -h -o NEJ-TIS1\TT1014.tis NeJ\tiz\TT1014.tiz
tisunpack -s -h -o NEJ-TIS1\TT1015.tis NeJ\tiz\TT1015.tiz
tisunpack -s -h -o NEJ-TIS1\TT1016.tis NeJ\tiz\TT1016.tiz
tisunpack -s -h -o NEJ-TIS1\TT1200.tis NeJ\tiz\TT1200.tiz
tisunpack -s -h -o NEJ-TIS1\TT1201.tis NeJ\tiz\TT1201.tiz
tisunpack -s -h -o NEJ-TIS1\TT2000.tis NeJ\tiz\TT2000.tiz
tisunpack -s -h -o NEJ-TIS1\TT2001.tis NeJ\tiz\TT2001.tiz
tisunpack -s -h -o NEJ-TIS1\TT2002.tis NeJ\tiz\TT2002.tiz
tisunpack -s -h -o NEJ-TIS1\TT2003.tis NeJ\tiz\TT2003.tiz
tisunpack -s -h -o NEJ-TIS1\TT2004.tis NeJ\tiz\TT2004.tiz
tisunpack -s -h -o NEJ-TIS1\TT2005.tis NeJ\tiz\TT2005.tiz
tisunpack -s -h -o NEJ-TIS1\TT2006.tis NeJ\tiz\TT2006.tiz
tisunpack -s -h -o NEJ-TIS1\TT2100.tis NeJ\tiz\TT2100.tiz
tisunpack -s -h -o NEJ-TIS1\TT2101.tis NeJ\tiz\TT2101.tiz
tisunpack -s -h -o NEJ-TIS1\TT2102.tis NeJ\tiz\TT2102.tiz
tisunpack -s -h -o NEJ-TIS1\TT2103.tis NeJ\tiz\TT2103.tiz
tisunpack -s -h -o NEJ-TIS1\TT2104.tis NeJ\tiz\TT2104.tiz
tisunpack -s -h -o NEJ-TIS1\TT2105.tis NeJ\tiz\TT2105.tiz
tisunpack -s -h -o NEJ-TIS1\TT2106.tis NeJ\tiz\TT2106.tiz
tisunpack -s -h -o NEJ-TIS1\TT2107.tis NeJ\tiz\TT2107.tiz
tisunpack -s -h -o NEJ-TIS1\TT2108.tis NeJ\tiz\TT2108.tiz
tisunpack -s -h -o NEJ-TIS1\TT2109.tis NeJ\tiz\TT2109.tiz
tisunpack -s -h -o NEJ-TIS1\TT2110.tis NeJ\tiz\TT2110.tiz
tisunpack -s -h -o NEJ-TIS1\TT2111.tis NeJ\tiz\TT2111.tiz
tisunpack -s -h -o NEJ-TIS1\TT2112.tis NeJ\tiz\TT2112.tiz
tisunpack -s -h -o NEJ-TIS1\TT2113.tis NeJ\tiz\TT2113.tiz
tisunpack -s -h -o NEJ-TIS1\TT2114.tis NeJ\tiz\TT2114.tiz
tisunpack -s -h -o NEJ-TIS1\TT2115.tis NeJ\tiz\TT2115.tiz
tisunpack -s -h -o NEJ-TIS1\TT2116.tis NeJ\tiz\TT2116.tiz
tisunpack -s -h -o NEJ-BAM\TT3000.tis NeJ\tiz\TT3000.tiz
tisunpack -s -h -o NEJ-BCS\TT3001.tis NeJ\tiz\TT3001.tiz
tisunpack -s -h -o NEJ-CRE\TT3101.tis NeJ\tiz\TT3101.tiz
tisunpack -s -h -o NEJ-DLG\TT3201.tis NeJ\tiz\TT3201.tiz
tisunpack -s -h -o NEJ-ITM\TT3301.tis NeJ\tiz\TT3301.tiz
tisunpack -s -h -o NEJ-STO\TT3401.tis NeJ\tiz\TT3401.tiz
tisunpack -s -h -o NEJ-RULE\TT3501.tis NeJ\tiz\TT3501.tiz
tisunpack -s -h -o NEJ-SFX\TT3502.tis NeJ\tiz\TT3502.tiz
tisunpack -s -h -o NEJ-SPL\TT3503.tis NeJ\tiz\TT3503.tiz

weidu --make-biff NEJ-TIS1
rd NEJ-TIS1 /s /q

md NEJ-TIS2

tisunpack -s -h -o NEJ-TIS2\TT3600.tis NeJ\tiz\TT3600.tiz
tisunpack -s -h -o NEJ-TIS2\TT3601.tis NeJ\tiz\TT3601.tiz
tisunpack -s -h -o NEJ-TIS2\TT3602.tis NeJ\tiz\TT3602.tiz
tisunpack -s -h -o NEJ-TIS2\TT3603.tis NeJ\tiz\TT3603.tiz
tisunpack -s -h -o NEJ-TIS2\TT4000.tis NeJ\tiz\TT4000.tiz
tisunpack -s -h -o NEJ-TIS2\TT4001.tis NeJ\tiz\TT4001.tiz
tisunpack -s -h -o NEJ-TIS2\TT4002.tis NeJ\tiz\TT4002.tiz
tisunpack -s -h -o NEJ-TIS2\TT4003.tis NeJ\tiz\TT4003.tiz
tisunpack -s -h -o NEJ-TIS2\TT4004.tis NeJ\tiz\TT4004.tiz
tisunpack -s -h -o NEJ-TIS2\TT4005.tis NeJ\tiz\TT4005.tiz
tisunpack -s -h -o NEJ-TIS2\TT5000.tis NeJ\tiz\TT5000.tiz
tisunpack -s -h -o NEJ-TIS2\TT5001.tis NeJ\tiz\TT5001.tiz
tisunpack -s -h -o NEJ-TIS2\TT5002.tis NeJ\tiz\TT5002.tiz
tisunpack -s -h -o NEJ-TIS2\TT5003.tis NeJ\tiz\TT5003.tiz
tisunpack -s -h -o NEJ-TIS2\TT5004.tis NeJ\tiz\TT5004.tiz
tisunpack -s -h -o NEJ-TIS2\TT5101.tis NeJ\tiz\TT5101.tiz
tisunpack -s -h -o NEJ-TIS2\TT5102.tis NeJ\tiz\TT5102.tiz
tisunpack -s -h -o NEJ-TIS2\TT5103.tis NeJ\tiz\TT5103.tiz
tisunpack -s -h -o NEJ-TIS2\TT5104.tis NeJ\tiz\TT5104.tiz
tisunpack -s -h -o NEJ-TIS2\TT5201.tis NeJ\tiz\TT5201.tiz
tisunpack -s -h -o NEJ-TIS2\TT5202.tis NeJ\tiz\TT5202.tiz
tisunpack -s -h -o NEJ-TIS2\TT5203.tis NeJ\tiz\TT5203.tiz
tisunpack -s -h -o NEJ-TIS2\TT5204.tis NeJ\tiz\TT5204.tiz
tisunpack -s -h -o NEJ-TIS2\TT5301.tis NeJ\tiz\TT5301.tiz
tisunpack -s -h -o NEJ-TIS2\TT5302.tis NeJ\tiz\TT5302.tiz
tisunpack -s -h -o NEJ-TIS2\TT5303.tis NeJ\tiz\TT5303.tiz
tisunpack -s -h -o NEJ-TIS2\TT5304.tis NeJ\tiz\TT5304.tiz
tisunpack -s -h -o NEJ-TIS2\TT5401.tis NeJ\tiz\TT5401.tiz
tisunpack -s -h -o NEJ-TIS2\TT5402.tis NeJ\tiz\TT5402.tiz
tisunpack -s -h -o NEJ-TIS2\TT5403.tis NeJ\tiz\TT5403.tiz
tisunpack -s -h -o NEJ-TIS2\TT5404.tis NeJ\tiz\TT5404.tiz
tisunpack -s -h -o NEJ-TIS2\TT5502.tis NeJ\tiz\TT5502.tiz

weidu --make-biff NEJ-TIS2
rd NEJ-TIS2 /s /q

md NEJ2-TIS

tisunpack -s -h -o NEJ2-TIS\AR9800.tis NeJ2\tiz\AR9800.tiz
tisunpack -s -h -o NEJ2-TIS\AR9801.tis NeJ2\tiz\AR9801.tiz
tisunpack -s -h -o NEJ2-TIS\TT0069.tis NeJ2\tiz\TT0069.tiz
tisunpack -s -h -o NEJ2-TIS\TT0068.tis NeJ2\tiz\TT0068.tiz
tisunpack -s -h -o NEJ2-TIS\TT0067.tis NeJ2\tiz\TT0067.tiz
tisunpack -s -h -o NEJ2-TIS\TT0066.tis NeJ2\tiz\TT0066.tiz
tisunpack -s -h -o NEJ2-TIS\TT0065.tis NeJ2\tiz\TT0065.tiz
tisunpack -s -h -o NEJ2-TIS\TT0064.tis NeJ2\tiz\TT0064.tiz
tisunpack -s -h -o NEJ2-TIS\TT0063.tis NeJ2\tiz\TT0063.tiz
tisunpack -s -h -o NEJ2-TIS\TT0062.tis NeJ2\tiz\TT0062.tiz
tisunpack -s -h -o NEJ2-TIS\TT0060.tis NeJ2\tiz\TT0060.tiz
tisunpack -s -h -o NEJ2-TIS\TT0057.tis NeJ2\tiz\TT0057.tiz
tisunpack -s -h -o NEJ2-TIS\TT0058.tis NeJ2\tiz\TT0058.tiz
tisunpack -s -h -o NEJ2-TIS\TT0059.tis NeJ2\tiz\TT0059.tiz
tisunpack -s -h -o NEJ2-TIS\TT0071.tis NeJ2\tiz\TT0071.tiz
tisunpack -s -h -o NEJ2-TIS\TT0072.tis NeJ2\tiz\TT0072.tiz
tisunpack -s -h -o NEJ2-TIS\TT0073.tis NeJ2\tiz\TT0073.tiz
tisunpack -s -h -o NEJ2-TIS\TT0074.tis NeJ2\tiz\TT0074.tiz
tisunpack -s -h -o NEJ2-TIS\TT0077.tis NeJ2\tiz\TT0077.tiz
tisunpack -s -h -o NEJ2-TIS\TT0078.tis NeJ2\tiz\TT0078.tiz
tisunpack -s -h -o NEJ2-TIS\TT0079.tis NeJ2\tiz\TT0079.tiz
tisunpack -s -h -o NEJ2-TIS\TT0070.tis NeJ2\tiz\TT0070.tiz
tisunpack -s -h -o NEJ2-TIS\TT0080.tis NeJ2\tiz\TT0080.tiz

weidu --make-biff NEJ2-TIS
rd NEJ2-TIS /s /q

copy NeJ2\Leina\ogg\leina_01.ogg override\leina_01.ogg
copy NeJ2\Melora\ogg\Melor11b.ogg override\Melor11b.ogg

cd override
oggdec ARUN_01.ogg                                       
oggdec ARUN_02.ogg                                       
oggdec ARUN_03.ogg                                       
oggdec ARUN_04.ogg                                       
oggdec ARUN_05.ogg                                       
oggdec ARUN_06.ogg                                       
oggdec ARUN_07.ogg                                       
oggdec ARUN_08.ogg                                       
oggdec ARUN_09.ogg                                       
oggdec ARUN_12.ogg                                       
oggdec ARUN_13.ogg                                       
oggdec ARUN_14.ogg                                       
oggdec ARUN_15.ogg                                       
oggdec ARUN_16.ogg                                       
oggdec ARUN_17.ogg                                       
oggdec ARUN_18.ogg                                       
oggdec ARUN_19.ogg                                       
oggdec ARUN_20.ogg                                       
oggdec ARUN_21.ogg                                       
oggdec ARUN_22.ogg                                       
oggdec ARUN_23.ogg                                       
oggdec ARUN_24.ogg                                       
oggdec ARUN_25.ogg                                       
oggdec ARUN_26.ogg                                       
oggdec ARUN_27.ogg                                       
oggdec ARUN_28.ogg                                       
oggdec ARUN_29.ogg                                       
oggdec ARUN_30.ogg                                       
oggdec ARUN_31.ogg                                       
oggdec ARUN_32.ogg                                       
oggdec ARUN_33.ogg                                       
oggdec ARUN_34.ogg                                       
oggdec ARUN_35.ogg                                       
oggdec ARUN_36.ogg                                       
oggdec ARUN_37.ogg                                       
oggdec ARUN_38.ogg                                       
oggdec ARUN_39.ogg                                       
oggdec ARUN_40.ogg                                       
oggdec ARUN_41.ogg                                       
oggdec ARUN_42.ogg                                       
oggdec ARUN_43.ogg                                       
oggdec ARUN_44.ogg                                       
oggdec ARUN_45.ogg                                       
oggdec ARUN_46.ogg                                       
oggdec ARUN_47.ogg                                       
oggdec ARUN_48.ogg                                       
oggdec ARUN_49.ogg                                       
oggdec ARUN_50.ogg                                       
oggdec ARUN_51.ogg                                       
oggdec ARUN_52.ogg                                       
oggdec ARUN_53.ogg                                       
oggdec ARUN_54.ogg                                       
oggdec ARUN_55.ogg                                       
oggdec ARUN_56.ogg                                       
oggdec ARUN_57.ogg                                       
oggdec ARUN_58.ogg                                       
oggdec ARUN_59.ogg                                       
oggdec ARUN_60.ogg                                       
oggdec ARUN_62.ogg                                       
oggdec ARUN_63.ogg                                       
oggdec ARUN_64.ogg                                       
oggdec ARUN_65.ogg                                       
oggdec ARUN_66.ogg                                       
oggdec ARUN_67.ogg                                       
oggdec ARUN_68.ogg                                       
oggdec ARUN_69.ogg                                       
oggdec ARUN_70.ogg                                       
oggdec ARUN_71.ogg                                       
oggdec ARUN_72.ogg                                       
oggdec ARUN_73.ogg                                       
oggdec ARUN_74.ogg                                       
oggdec ARUN_75.ogg                                       
oggdec ARUN_76.ogg                                       
oggdec ARUN_77.ogg                                       
oggdec ARUN_78.ogg                                       
oggdec ARUN_79.ogg                                       
oggdec ARUN_81.ogg                                       
oggdec ARUN_82.ogg                                       
oggdec ARUN_83.ogg                                       
oggdec ARUN_84.ogg                                       
oggdec ARUN_85.ogg                                       
oggdec ARUN_86.ogg                                       
oggdec ARUN_87.ogg                                       
oggdec Beetboom.ogg                                      
oggdec BRANW01.ogg                                       
oggdec BRANW02.ogg                                       
oggdec BRANW03.ogg                                       
oggdec BRANW04.ogg                                       
oggdec BRANW05.ogg                                       
oggdec BRANW06.ogg                                       
oggdec BRANW07.ogg                                       
oggdec BRANW08.ogg                                       
oggdec BRANW09.ogg                                       
oggdec BRANW10.ogg                                       
oggdec BRANW11.ogg                                       
oggdec BRANW17.ogg                                       
oggdec BRANW18.ogg                                       
oggdec BRANW19.ogg                                       
oggdec BRANW20.ogg                                       
oggdec BRANW21.ogg                                       
oggdec BRANW22.ogg                                       
oggdec BRANW23.ogg                                       
oggdec BRANW24.ogg                                       
oggdec BRANW25.ogg                                       
oggdec BRANW26.ogg                                       
oggdec BRANW27.ogg                                       
oggdec BRANW28.ogg                                       
oggdec BRANW29.ogg                                       
oggdec BRANW30.ogg                                       
oggdec BRANW31.ogg                                       
oggdec BRANW32.ogg                                       
oggdec BRANW33.ogg                                       
oggdec BRANW34.ogg                                       
oggdec BRANW35.ogg                                       
oggdec BRANW36.ogg                                       
oggdec BRANW37.ogg                                       
oggdec BRANW38.ogg                                       
oggdec BRANW39.ogg                                       
oggdec BRANW40.ogg                                       
oggdec BRANW41.ogg
oggdec DAR_01.ogg
oggdec DAR_02.ogg
oggdec DAR_03.ogg
oggdec DAR_04.ogg
oggdec DAR_05.ogg
oggdec DAR_06.ogg
oggdec DAR_07.ogg
oggdec DAR_08.ogg
oggdec DAR_09.ogg
oggdec DAR_10.ogg
oggdec DAR_11.ogg
oggdec DAR_12.ogg
oggdec DAR_13.ogg
oggdec DAR_14.ogg
oggdec DAR_15.ogg
oggdec DAR_16.ogg
oggdec DAR_17.ogg
oggdec DAR_18.ogg
oggdec DAR_19.ogg
oggdec DAR_20.ogg
oggdec DAR_21.ogg
oggdec DAR_22.ogg
oggdec DAR_23.ogg
oggdec DAR_24.ogg
oggdec DAR_25.ogg
oggdec DAR_26.ogg
oggdec DAR_27.ogg
oggdec DAR_28.ogg
oggdec DAR_29.ogg
oggdec DAR_30.ogg
oggdec DAR_31.ogg
oggdec DAR_32.ogg
oggdec DAR_33.ogg
oggdec DAR_34.ogg
oggdec DAR_35.ogg
oggdec DAR_36.ogg
oggdec DAR_37.ogg
oggdec DAR_38.ogg
oggdec DAR_39.ogg
oggdec DAR_C01.ogg
oggdec DAR_C02.ogg
oggdec DAR_C03.ogg
oggdec DAR_C04.ogg
oggdec DAR_C05.ogg
oggdec DAR_C06.ogg
oggdec DAR_C07.ogg
oggdec DAR_C08.ogg
oggdec DAR_C09.ogg
oggdec DAR_C10.ogg
oggdec DAR_C11.ogg
oggdec DAR_C12.ogg
oggdec DAR_C13.ogg
oggdec DAR_C14.ogg
oggdec DAR_C15.ogg
oggdec DAR_C16.ogg
oggdec DAR_C17.ogg
oggdec DAR_C18.ogg
oggdec DAR_C19.ogg
oggdec DAR_C20.ogg
oggdec DAR_C21.ogg
oggdec DAR_C22.ogg
oggdec DAR_C23.ogg
oggdec DAR_C24.ogg
oggdec DAR_C25.ogg
oggdec DAR_C26.ogg
oggdec DAR_C27.ogg
oggdec DAR_C28.ogg
oggdec DAR_C29.ogg
oggdec DAR_C30.ogg
oggdec DAR_C31.ogg
oggdec DAR_C32.ogg
oggdec DAR_C33.ogg
oggdec DAR_L01.ogg
oggdec DAR_L02.ogg
oggdec DAR_L03.ogg
oggdec DAR_L04.ogg
oggdec DAR_L05.ogg
oggdec DAR_L06.ogg
oggdec DAR_L07.ogg
oggdec DAR_L08.ogg
oggdec DAR_L09.ogg
oggdec DAR_L10.ogg
oggdec hrot_01.ogg                                       
oggdec hrot_02.ogg                                       
oggdec hrot_03.ogg                                       
oggdec hrot_04.ogg                                       
oggdec hrot_05.ogg                                       
oggdec hrot_06.ogg                                       
oggdec hrot_07.ogg                                       
oggdec hrot_08.ogg                                       
oggdec hrot_09.ogg                                       
oggdec hrot_10.ogg                                       
oggdec hrot_101.ogg                                      
oggdec hrot_102.ogg                                      
oggdec hrot_103.ogg                                      
oggdec hrot_104.ogg                                      
oggdec hrot_105.ogg                                      
oggdec hrot_106.ogg                                      
oggdec hrot_107.ogg                                      
oggdec hrot_108.ogg                                      
oggdec hrot_109.ogg                                      
oggdec hrot_11.ogg                                       
oggdec hrot_110.ogg                                      
oggdec hrot_12.ogg                                       
oggdec hrot_13.ogg                                       
oggdec hrot_14.ogg                                       
oggdec hrot_15.ogg                                       
oggdec hrot_16.ogg                                       
oggdec hrot_17.ogg                                       
oggdec hrot_18.ogg                                       
oggdec hrot_19.ogg                                       
oggdec hrot_20.ogg                                       
oggdec hrot_21.ogg                                       
oggdec hrot_22.ogg                                       
oggdec hrot_23.ogg                                       
oggdec hrot_24.ogg                                       
oggdec hrot_25.ogg                                       
oggdec hrot_26.ogg                                       
oggdec hrot_27.ogg                                       
oggdec hrot_29.ogg                                       
oggdec hrot_30.ogg                                       
oggdec hrot_301.ogg                                      
oggdec hrot_302.ogg                                      
oggdec hrot_303.ogg                                      
oggdec hrot_304.ogg                                      
oggdec hrot_305.ogg                                      
oggdec hrot_306.ogg                                      
oggdec hrot_307.ogg                                      
oggdec hrot_308.ogg                                      
oggdec hrot_309.ogg                                      
oggdec hrot_31.ogg                                       
oggdec hrot_310.ogg                                      
oggdec hrot_311.ogg                                      
oggdec hrot_312.ogg                                      
oggdec hrot_313.ogg                                      
oggdec hrot_314.ogg                                      
oggdec hrot_315.ogg                                      
oggdec hrot_316.ogg                                      
oggdec hrot_317.ogg                                      
oggdec hrot_318.ogg                                      
oggdec hrot_319.ogg                                      
oggdec hrot_32.ogg                                       
oggdec hrot_320.ogg                                      
oggdec hrot_321.ogg                                      
oggdec hrot_322.ogg                                      
oggdec hrot_323.ogg                                      
oggdec hrot_33.ogg                                       
oggdec hrot_34.ogg                                       
oggdec hrot_35.ogg                                       
oggdec hrot_36.ogg                                       
oggdec hrot_37.ogg                                       
oggdec hrot_38.ogg                                       
oggdec hrot_39.ogg                                       
oggdec hrot_40.ogg                                       
oggdec hrot_401.ogg                                      
oggdec hrot_402.ogg                                      
oggdec hrot_403.ogg                                      
oggdec hrot_404.ogg                                      
oggdec hrot_405.ogg                                      
oggdec hrot_406.ogg                                      
oggdec hrot_407.ogg                                      
oggdec hrot_408.ogg                                      
oggdec hrot_409.ogg                                      
oggdec hrot_41.ogg                                       
oggdec hrot_410.ogg                                      
oggdec hrot_411.ogg                                      
oggdec hrot_42.ogg                                       
oggdec hrot_43.ogg                                       
oggdec hrot_44.ogg                                       
oggdec hrot_45.ogg                                       
oggdec hrot_46.ogg                                       
oggdec hrot_47.ogg                                       
oggdec hrot_48.ogg                                       
oggdec hrot_49.ogg                                       
oggdec hrot_50.ogg                                       
oggdec hrot_501.ogg                                      
oggdec hrot_502.ogg                                      
oggdec hrot_503a.ogg
oggdec hrot_503b.ogg                                       
oggdec hrot_504.ogg                                      
oggdec hrot_505.ogg                                      
oggdec hrot_506.ogg                                      
oggdec hrot_507.ogg                                      
oggdec hrot_508.ogg                                      
oggdec hrot_509.ogg                                      
oggdec hrot_51.ogg                                       
oggdec hrot_510.ogg                                      
oggdec hrot_511.ogg                                      
oggdec hrot_512.ogg                                      
oggdec hrot_514.ogg                                      
oggdec hrot_515.ogg                                      
oggdec hrot_516.ogg                                      
oggdec hrot_517.ogg                                      
oggdec hrot_518.ogg                                      
oggdec hrot_519.ogg                                      
oggdec hrot_52.ogg                                       
oggdec hrot_520.ogg                                      
oggdec hrot_521.ogg                                      
oggdec hrot_522.ogg
oggdec hrot_523.ogg
oggdec hrot_524.ogg
oggdec hrot_525.ogg
oggdec hrot_526.ogg
oggdec hrot_527.ogg                                      
oggdec hrot_53.ogg                                       
oggdec hrot_54.ogg                                       
oggdec hrot_55.ogg                                       
oggdec hrot_56.ogg                                       
oggdec hrot_57.ogg                                       
oggdec hrot_58a.ogg                                      
oggdec hrot_58b.ogg                                      
oggdec hrot_59a.ogg                                      
oggdec hrot_59b.ogg                                      
oggdec hrot_59c.ogg                                      
oggdec hrot_60.ogg                                       
oggdec hrot_61.ogg                                       
oggdec hrot_62a.ogg                                      
oggdec hrot_62b.ogg                                      
oggdec hrot_63.ogg                                       
oggdec hrot_64.ogg                                       
oggdec hrot_65.ogg                                       
oggdec hrot_66a.ogg                                      
oggdec hrot_66b.ogg                                      
oggdec hrot_67.ogg                                       
oggdec hrot_68a.ogg                                      
oggdec hrot_68b.ogg                                      
oggdec hrot_68c.ogg                                      
oggdec hrot_69.ogg                                       
oggdec hrot_72.ogg                                       
oggdec hrot_73.ogg                                       
oggdec hrot_74.ogg                                       
oggdec hrot_75.ogg                                       
oggdec hrot_76.ogg                                       
oggdec hrot_77.ogg                                       
oggdec hrot_78.ogg                                       
oggdec hrot_79.ogg                                       
oggdec hrot_80.ogg                                       
oggdec hrot_81.ogg                                       
oggdec hrot_82.ogg                                       
oggdec hrot_83.ogg                                       
oggdec hrot_84.ogg                                       
oggdec hrot_86.ogg                                       
oggdec hrot_87.ogg                                       
oggdec hrot_88.ogg                                       
oggdec hrot_89.ogg                                       
oggdec hrot_90.ogg                                       
oggdec hrot_91.ogg                                       
oggdec hrot_92.ogg                                       
oggdec hrot_93.ogg                                       
oggdec hrot_94.ogg                                       
oggdec hrot_95.ogg                                       
oggdec hrot_96.ogg                                       
oggdec hrot_97.ogg                                       
oggdec hrot_c01.ogg                                      
oggdec hrot_c02.ogg                                      
oggdec hrot_c03.ogg                                      
oggdec hrot_c04.ogg                                      
oggdec hrot_c05.ogg                                      
oggdec hrot_c06.ogg                                      
oggdec hrot_c07.ogg                                      
oggdec hrot_c08.ogg                                      
oggdec hrot_c09.ogg                                      
oggdec hrot_c10.ogg                                      
oggdec hrot_c11.ogg                                      
oggdec hrot_c12.ogg                                      
oggdec hrot_c13.ogg                                      
oggdec hrot_c14.ogg                                      
oggdec hrot_c15.ogg                                      
oggdec hrot_c16.ogg                                      
oggdec hrot_c17.ogg                                      
oggdec hrot_c18.ogg                                      
oggdec hrot_c19.ogg                                      
oggdec hrot_c20.ogg                                      
oggdec hrot_c21.ogg                                      
oggdec hrot_c22.ogg                                      
oggdec hrot_c23.ogg                                      
oggdec hrot_c24.ogg                                      
oggdec hrot_c25.ogg                                      
oggdec hrot_c26.ogg                                      
oggdec hrot_c27.ogg                                      
oggdec hrot_c28.ogg                                      
oggdec hrot_c29.ogg                                      
oggdec hrot_c30.ogg                                      
oggdec hrot_l01.ogg                                      
oggdec hrot_l02.ogg                                      
oggdec hrot_l03.ogg                                      
oggdec hrot_l04.ogg                                      
oggdec hrot_l05.ogg                                      
oggdec hrot_l06.ogg                                      
oggdec hrot_l07.ogg                                      
oggdec hrot_l08.ogg                                      
oggdec hrot_l09.ogg                                      
oggdec hrot_l10.ogg                                      
oggdec hrot_l11.ogg                                      
oggdec hrot_l12.ogg                                      
oggdec hrot_l13.ogg                                       
oggdec KRES_01.ogg                                       
oggdec KRES_02.ogg                                       
oggdec KRES_03.ogg                                       
oggdec KRES_04.ogg                                       
oggdec KRES_05.ogg                                       
oggdec KRES_06.ogg                                       
oggdec KRES_07.ogg                                       
oggdec KRES_08.ogg                                       
oggdec KRES_09.ogg                                       
oggdec KRES_10.ogg                                       
oggdec KRES_11.ogg                                       
oggdec KRES_12.ogg                                       
oggdec KRES_13.ogg                                       
oggdec KRES_14.ogg                                       
oggdec KRES_15.ogg                                       
oggdec KRES_16.ogg                                       
oggdec KRES_17.ogg                                       
oggdec KRES_18.ogg                                       
oggdec KRES_19.ogg                                       
oggdec KRES_20.ogg                                       
oggdec KRES_21.ogg                                       
oggdec KRES_22.ogg                                       
oggdec KRES_23.ogg                                       
oggdec KRES_24.ogg                                       
oggdec KRES_25.ogg                                       
oggdec KRES_26.ogg                                       
oggdec KRES_27.ogg                                       
oggdec KRES_28.ogg                                       
oggdec KRES_29.ogg                                       
oggdec KRES_30.ogg                                       
oggdec KRES_31.ogg                                       
oggdec KRES_32.ogg                                       
oggdec KRES_33.ogg                                       
oggdec KRES_34.ogg                                       
oggdec KRES_35.ogg                                       
oggdec KRES_36.ogg                                       
oggdec KRES_39.ogg                                       
oggdec KRES_40.ogg                                       
oggdec KRES_41.ogg                                       
oggdec KRES_42.ogg                                                                            
oggdec VERBEE01.ogg                                      
oggdec VERBEE02.ogg                                      
oggdec VERBEE03.ogg                                      
oggdec VERBEE04.ogg                                      
oggdec VERBEE07.ogg                                      
oggdec VERBEE08.ogg                                      
oggdec VERBEE09.ogg                                      
oggdec VERBEE10.ogg                                      
oggdec VERBEE11.ogg                                      
oggdec YETI01.ogg                                        
oggdec YETI02.ogg                                        
oggdec YETI03.ogg                                        
oggdec YETI04.ogg                                        
oggdec YETI07.ogg                                        
oggdec YETI08.ogg                                        
oggdec YETI09.ogg                                        
oggdec YETI10.ogg                                        
oggdec YETI11.ogg                                        
oggdec YETI12.ogg                                        
oggdec YXUN_01.ogg                                       
oggdec YXUN_02.ogg                                       
oggdec YXUN_03.ogg                                       
oggdec YXUN_04.ogg                                       
oggdec YXUN_05.ogg                                       
oggdec YXUN_06.ogg                                       
oggdec YXUN_07.ogg                                       
oggdec YXUN_08.ogg                                       
oggdec YXUN_09.ogg                                       
oggdec YXUN_10.ogg                                       
oggdec YXUN_11.ogg                                       
oggdec YXUN_12.ogg                                       
oggdec YXUN_13.ogg                                       
oggdec YXUN_14.ogg                                       
oggdec YXUN_15.ogg                                       
oggdec YXUN_16.ogg                                       
oggdec YXUN_17.ogg                                       
oggdec YXUN_18.ogg                                       
oggdec YXUN_19.ogg                                       
oggdec YXUN_20.ogg                                       
oggdec YXUN_21.ogg                                       
oggdec YXUN_22.ogg                                       
oggdec YXUN_23.ogg                                       
oggdec YXUN_24.ogg                                       
oggdec YXUN_25.ogg                                       
oggdec YXUN_26.ogg                                       
oggdec YXUN_27.ogg                                       
oggdec YXUN_28.ogg                                       
oggdec YXUN_29.ogg                                       
oggdec YXUN_30.ogg                                       
oggdec YXUN_31.ogg                                       
oggdec YXUN_32.ogg                                       
oggdec YXUN_33.ogg                                       
oggdec YXUN_34.ogg                                       
oggdec YXUN_35.ogg                                       
oggdec YXUN_36.ogg                                       
oggdec YXUN_37.ogg                                       
oggdec YXUN_38.ogg                                       
oggdec YXUN_39.ogg                                       
oggdec YXUN_40.ogg                                       
oggdec YXUN_41.ogg                                       
oggdec YXUN_42.ogg
oggdec avalanch.ogg                                      
oggdec LARR_01.ogg                                       
oggdec LARR_02.ogg                                       
oggdec LARR_10.ogg                                       
oggdec LARR_12.ogg                                       
oggdec LARR_13.ogg                                       
oggdec LARR_14.ogg                                       
oggdec LARR_15.ogg                                       
oggdec LARR_16.ogg                                       
oggdec LARR_17.ogg                                       
oggdec LARR_18.ogg                                       
oggdec LARR_19.ogg                                       
oggdec LARR_20.ogg                                       
oggdec LARR_21.ogg                                       
oggdec LARR_22.ogg                                       
oggdec LARR_23.ogg                                       
oggdec LARR_24.ogg                                       
oggdec LARR_25.ogg                                       
oggdec LARR_26.ogg                                       
oggdec LARR_27.ogg                                       
oggdec LARR_28.ogg                                       
oggdec LARR_30.ogg                                       
oggdec LARR_32.ogg                                       
oggdec LARR_33.ogg                                       
oggdec LARR_34.ogg                                       
oggdec LARR_35.ogg                                       
oggdec LARR_36.ogg                                       
oggdec LARR_37.ogg                                       
oggdec LARR_38.ogg                                       
oggdec LARR_39.ogg                                       
oggdec LARR_40.ogg                                       
oggdec LARR_41.ogg                                       
oggdec LARR_42.ogg                                       
oggdec LARR_43.ogg                                       
oggdec LARR_44.ogg                                       
oggdec LARR_45.ogg                                       
oggdec LARR_46.ogg                                       
oggdec LARR_47.ogg                                       
oggdec LARR_48.ogg                                       
oggdec LARR_49.ogg                                       
oggdec LARR_50.ogg                                       
oggdec LARR_51.ogg                                       
oggdec LARR_52.ogg                                       
oggdec LARR_53.ogg                                       
oggdec LARR_54.ogg                                       
oggdec LARR_55.ogg                                       
oggdec LARR_56.ogg                                       
oggdec scry.ogg
oggdec intro1.ogg
oggdec intro2.ogg
oggdec intro3.ogg
oggdec intro4.ogg
oggdec intro5.ogg
oggdec ThemeNEJ.ogg
oggdec tilorn01.ogg
oggdec tilorn02.ogg
oggdec tilorn03.ogg
oggdec tilorn04.ogg
oggdec tilorn05.ogg
oggdec tilorn06.ogg
oggdec tilorn07.ogg
oggdec tilorn08.ogg
oggdec tilorn09.ogg
oggdec tilorn10.ogg
oggdec tilorn11.ogg
oggdec tilorn12.ogg
oggdec tilorn13.ogg
oggdec tilorn14.ogg
oggdec tilorn15.ogg
oggdec tilorn16.ogg
oggdec tilorn17.ogg
oggdec tilorn18.ogg
oggdec tilorn19.ogg
oggdec tilorn20.ogg
oggdec tilorn21.ogg
oggdec tilorn22.ogg
oggdec tilorn23.ogg
oggdec tilorn24.ogg
oggdec tilorn25.ogg
oggdec tilorn26.ogg
oggdec tilorn27.ogg
oggdec tilorn28.ogg
oggdec tilorn29.ogg
oggdec tilorn30.ogg
oggdec tilorn31.ogg
oggdec tilorn32.ogg
oggdec tilorn33.ogg
oggdec melorc01.ogg
oggdec melorc02.ogg
oggdec melorc03.ogg
oggdec melorc04.ogg
oggdec melorc05.ogg
oggdec melorc06.ogg
oggdec melorc07.ogg
oggdec melorc08.ogg
oggdec melorc09.ogg
oggdec melorc10.ogg
oggdec melorc11.ogg
oggdec melorc12.ogg
oggdec melorc13.ogg
oggdec melorc14.ogg
oggdec melorc15.ogg
oggdec melorc16.ogg
oggdec melorc17.ogg
oggdec melorc18.ogg
oggdec melorc19.ogg
oggdec melorc20.ogg
oggdec melorc21.ogg
oggdec melorc22.ogg
oggdec melorc23.ogg
oggdec melorc24.ogg
oggdec melorc25.ogg
oggdec melorc26.ogg
oggdec melorc27.ogg
oggdec melorc28.ogg
oggdec melorc29.ogg
oggdec melorc30.ogg
oggdec melorc31.ogg
oggdec melorc32.ogg
oggdec melorc33.ogg
oggdec melora01.ogg
oggdec melora02.ogg
oggdec melora03.ogg
oggdec melora04.ogg
oggdec melora05.ogg
oggdec melora06.ogg
oggdec melora07.ogg
oggdec melora08.ogg
oggdec melora09.ogg
oggdec melora10.ogg
oggdec melora11.ogg
oggdec melorl01.ogg
oggdec melorl02.ogg
oggdec melorl03.ogg
oggdec melorl04.ogg
oggdec melorl05.ogg
oggdec melorl06.ogg
oggdec melorl07.ogg
oggdec melorl08.ogg
oggdec melorl09.ogg
oggdec melora0d.ogg
oggdec melorl10.ogg
oggdec melora1d.ogg
oggdec melora1h.ogg
oggdec melora1p.ogg
oggdec melora2d.ogg
oggdec melora2h.ogg
oggdec melora2p.ogg
oggdec melora3d.ogg
oggdec melora3h.ogg
oggdec melora3p.ogg
oggdec melora4d.ogg
oggdec melora4h.ogg
oggdec melora4p.ogg
oggdec melora5d.ogg
oggdec melora5h.ogg
oggdec melora5p.ogg
oggdec melora6d.ogg
oggdec melora6h.ogg
oggdec melora6p.ogg
oggdec melora7d.ogg
oggdec melora7h.ogg
oggdec melora7p.ogg
oggdec melora8d.ogg
oggdec melora8h.ogg
oggdec melora9d.ogg
oggdec melora1g.ogg
oggdec melora2g.ogg
oggdec melora3g.ogg
oggdec Melor11n.ogg
oggdec Melor11b.ogg
oggdec Melor11c.ogg
oggdec Melora12.ogg
oggdec Melora52.ogg
oggdec Melora53.ogg
oggdec Melora54.ogg
oggdec Melora55.ogg
oggdec Melora56.ogg
oggdec Melora57.ogg
oggdec Melora58.ogg
oggdec Melora59.ogg
oggdec Melora60.ogg
oggdec Melora61.ogg
oggdec Melora62.ogg
oggdec Melora63.ogg
oggdec Melora64.ogg
oggdec Melora65.ogg
oggdec Melora67.ogg
oggdec leinac01.ogg
oggdec leinac02.ogg
oggdec leinac04.ogg
oggdec leinac05.ogg
oggdec leinac06.ogg
oggdec leinac07.ogg
oggdec leinac08.ogg
oggdec leinac09.ogg
oggdec leinac11.ogg
oggdec leinac12.ogg
oggdec leinac13.ogg
oggdec leinac14.ogg
oggdec leinac15.ogg
oggdec leinac16.ogg
oggdec leinac17.ogg
oggdec leinac18.ogg
oggdec leinac19.ogg
oggdec leinac20.ogg
oggdec leinac21.ogg
oggdec leinac22.ogg
oggdec leinac23.ogg
oggdec leinac24.ogg
oggdec leinac25.ogg
oggdec leinac26.ogg
oggdec leinac27.ogg
oggdec leinac28.ogg
oggdec leinac29.ogg
oggdec leinac30.ogg
oggdec leinac31.ogg
oggdec leinac32.ogg
oggdec leinac33.ogg
oggdec leina_01.ogg
oggdec leina_02.ogg
oggdec leina_03.ogg
oggdec leina_04.ogg
oggdec leina_05.ogg
oggdec leina_06.ogg
oggdec leina_07.ogg
oggdec leina_08.ogg
oggdec leina_09.ogg
oggdec leina_10.ogg
oggdec leina_11.ogg
oggdec leina_12.ogg
oggdec leina_13.ogg
oggdec leina_14.ogg
oggdec leina_15.ogg
oggdec leina_16.ogg
oggdec leina_17.ogg
oggdec leina_18.ogg
oggdec leina_19.ogg
oggdec leina_20.ogg
oggdec leina_21.ogg
oggdec leina_22.ogg
oggdec leina_23.ogg
oggdec leina_24.ogg
oggdec leina_25.ogg
oggdec leinab01.ogg
oggdec leinab02.ogg
oggdec leinab03.ogg
oggdec leinab04.ogg
oggdec leinab05.ogg
oggdec leinab06.ogg
oggdec leinap01.ogg
oggdec leinap02.ogg
oggdec leinap03.ogg
oggdec leinap04.ogg
oggdec leinap05.ogg
oggdec leinap06.ogg
oggdec leinap07.ogg
oggdec leinap08.ogg
oggdec CBooAct1.ogg
oggdec CBooAct2.ogg
oggdec CBooAct3.ogg
oggdec CBooAtt1.ogg
oggdec CBooAtt2.ogg
oggdec CBooAtt3.ogg
oggdec CBooCrHi.ogg
oggdec CBooCrMi.ogg
oggdec CBooHurt.ogg
oggdec CBooSel1.ogg
oggdec CBooSel2.ogg
oggdec CBooSel3.ogg
oggdec CBooSpFa.ogg
oggdec laval01.ogg
oggdec laval02.ogg
oggdec laval03.ogg
oggdec laval04a.ogg
oggdec laval04b.ogg
oggdec laval05.ogg
oggdec laval06a.ogg
oggdec laval06b.ogg
oggdec laval07a.ogg
oggdec laval07b.ogg
oggdec laval08.ogg
oggdec laval09.ogg
oggdec laval10.ogg
oggdec laval11.ogg
oggdec laval12.ogg
oggdec laval13.ogg
oggdec laval14a.ogg
oggdec laval14b.ogg
oggdec laval15.ogg
oggdec laval16.ogg
oggdec laval17.ogg
oggdec laval18a.ogg
oggdec laval18b.ogg
oggdec laval18c.ogg
oggdec laval19a.ogg
oggdec laval19b.ogg
oggdec laval20.ogg
oggdec laval21.ogg
oggdec laval22a.ogg
oggdec laval22b.ogg
oggdec laval22c.ogg
oggdec laval23.ogg
oggdec laval24.ogg                             
del *.ogg
del oggdec.exe
cd..

md NeJ2\GUI
md NeJ2\GUImusic
move override\guiload.chu NeJ2\GUI\guiload.chu
move override\guiopt.chu NeJ2\GUI\guiopt.chu
move override\guisave.chu NeJ2\GUI\guisave.chu
move override\start.chu NeJ2\GUI\start.chu
move override\106x32.bam NeJ2\GUI\106x32.bam
move override\guierr1b.bam NeJ2\GUI\guierr1b.bam
move override\guierr2b.bam NeJ2\GUI\guierr2b.bam
move override\guimplgv.bam NeJ2\GUI\guimplgv.bam
move override\guisrsvb.bam NeJ2\GUI\guisrsvb.bam
move override\guiwsbr.bam NeJ2\GUI\guiwsbr.bam
move override\normal.bam NeJ2\GUI\normal.bam
move override\stbsbbar.bam NeJ2\GUI\stbsbbar.bam
move override\stonesml.bam NeJ2\GUI\stonesml.bam
move override\guierr0b.mos NeJ2\GUI\guierr0b.mos
move override\guierr1b.mos NeJ2\GUI\guierr1b.mos
move override\guierr2b.mos NeJ2\GUI\guierr2b.mos
move override\guisrrqb.mos NeJ2\GUI\guisrrqb.mos
move override\guisrsvb.mos NeJ2\GUI\guisrsvb.mos
move override\guiverb.mos NeJ2\GUI\guiverb.mos
move override\guiwrsp.mos NeJ2\GUI\guiwrsp.mos
move override\start.mos NeJ2\GUI\start.mos
move override\startm.mos NeJ2\GUI\startm.mos
move override\start25.mos NeJ2\GUI\start25.mos
move override\startold.mos NeJ2\GUI\startold.mos
move override\stoneopt.mos NeJ2\GUI\stoneopt.mos
move music\combo1\combo1a.acm NeJ2\GUImusic\combo1a.acm
move music\combo1\combo1b.acm NeJ2\GUImusic\combo1b.acm
move music\theme\themea.acm NeJ2\GUImusic\themea.acm
move override\GUImusic\combo1a.acm music\combo1\combo1a.acm
move override\GUImusic\combo1b.acm music\combo1\combo1b.acm
move override\GUImusic\themea.acm music\theme\themea.acm

copy Setup-NeJ2.exe Setup-NEJGUI.exe
Setup-NEJGUI.exe --yes

move override\GUISAVE\*.* override
rd override\GUISAVE /s /q
rd override\GUImusic /s /q

md NEJ-ARE
:: move override\*.are NEJ-ARE
move override\*.wed NEJ-ARE
move override\AR*.mos NEJ-ARE
move override\AR*.bmp NEJ-ARE
move override\TT*.mos NEJ-ARE
move override\TT*.bmp NEJ-ARE

weidu --make-biff NEJ-ARE
rd NEJ-ARE /s /q

:: md NEJ-BAM
:: move override\*.bam NEJ-BAM

weidu --make-biff NEJ-BAM
rd NEJ-BAM /s /q

:: md NEJ-BCS
:: move override\*.bcs NEJ-BCS

weidu --make-biff NEJ-BCS
rd NEJ-BCS /s /q

:: md NEJ-CRE
:: move override\*.cre NEJ-CRE

weidu --make-biff NEJ-CRE
rd NEJ-CRE /s /q

:: md NEJ-DLG
:: move override\*.dlg NEJ-DLG
:: move NEJ-DLG\HROTHJ.DLG override
:: move NEJ-DLG\DARJ.DLG override
:: move NEJ-DLG\GOVAN2.DLG override

weidu --make-biff NEJ-DLG
rd NEJ-DLG /s /q

:: md NEJ-ITM
:: move override\*.itm NEJ-ITM

weidu --make-biff NEJ-ITM
rd NEJ-ITM /s /q

md NEJ-LENA
move override\leina*.wav NEJ-LENA

weidu --make-biff NEJ-LENA
rd NEJ-LENA /s /q

md NEJ-MELO
move override\melor*.wav NEJ-MELO

weidu --make-biff NEJ-MELO
rd NEJ-MELO /s /q

md NEJ-PIC
move override\*.mos NEJ-PIC
move override\*.bmp NEJ-PIC

weidu --make-biff NEJ-PIC
rd NEJ-PIC /s /q

:: md NEJ-STO
:: move override\*.sto NEJ-STO

weidu --make-biff NEJ-STO
rd NEJ-STO /s /q

:: md NEJ-RULE
:: move override\*.2da NEJ-RULE
:: move override\*.ids NEJ-RULE
:: move override\*.chu NEJ-RULE

weidu --make-biff NEJ-RULE
rd NEJ-RULE /s /q

:: md NEJ-SFX
:: move override\*.eff NEJ-SFX
:: move override\*.pro NEJ-SFX
:: move override\*.vvc NEJ-SFX

weidu --make-biff NEJ-SFX
rd NEJ-SFX /s /q

:: md NEJ-SPL
:: move override\*.spl NEJ-SPL
:: del NEJ-SPL\SPCL221.SPL /s /q
:: del NEJ-SPL\SPCL242.SPL /s /q

weidu --make-biff NEJ-SPL
rd NEJ-SPL /s /q

md NEJ-WAV1
move override\25*.wav NEJ-WAV1
move override\a*.wav NEJ-WAV1

weidu --make-biff NEJ-WAV1
rd NEJ-WAV1 /s /q

md NEJ-WAV2
move override\b*.wav NEJ-WAV2
move override\c*.wav NEJ-WAV2
move override\d*.wav NEJ-WAV2
move override\e*.wav NEJ-WAV2
move override\f*.wav NEJ-WAV2
move override\i*.wav NEJ-WAV2

weidu --make-biff NEJ-WAV2
rd NEJ-WAV2 /s /q

md NEJ-WAV3
move override\h*.wav NEJ-WAV3

weidu --make-biff NEJ-WAV3
rd NEJ-WAV3 /s /q

md NEJ-WAV4
move override\k*.wav NEJ-WAV4
move override\l*.wav NEJ-WAV4

weidu --make-biff NEJ-WAV4
rd NEJ-WAV4 /s /q

md NEJ-WAV5
move override\m*.wav NEJ-WAV5
move override\n*.wav NEJ-WAV5
move override\o*.wav NEJ-WAV5
move override\s*.wav NEJ-WAV5
move override\t*.wav NEJ-WAV5
move override\v*.wav NEJ-WAV5
move override\y*.wav NEJ-WAV5

weidu --make-biff NEJ-WAV5
rd NEJ-WAV5 /s /q

FOR %%s IN (
override\*.baf
override\*.d
override\*.ogg
override\*.tiz
) DO del %%s

@echo ////////////////////////////
@echo // Installation complete. //
@echo ////////////////////////////

notepad NeJ-Readme.txt
NoCD.exe
@echo on
