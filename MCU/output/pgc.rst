                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module pgc
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _Delay_5us
                                     13 	.globl _Delay_polling
                                     14 	.globl _Serial_ReadFloat
                                     15 	.globl _Serial_ReadByte
                                     16 	.globl _Serial_SendFloat
                                     17 	.globl _Serial_SendByte
                                     18 	.globl _Display_Write
                                     19 	.globl _MAX7219_Write
                                     20 	.globl _MAX7219_Select
                                     21 	.globl _MAX7219_SPI_Write_Byte
                                     22 	.globl _Keyboard_Read
                                     23 	.globl _fabsf
                                     24 	.globl _sqrtf
                                     25 	.globl _atan2f
                                     26 	.globl _CY
                                     27 	.globl _AC
                                     28 	.globl _F0
                                     29 	.globl _RS1
                                     30 	.globl _RS0
                                     31 	.globl _OV
                                     32 	.globl _FL
                                     33 	.globl _P
                                     34 	.globl _TF2
                                     35 	.globl _EXF2
                                     36 	.globl _RCLK
                                     37 	.globl _TCLK
                                     38 	.globl _EXEN2
                                     39 	.globl _TR2
                                     40 	.globl _C_T2
                                     41 	.globl _CP_RL2
                                     42 	.globl _T2CON_7
                                     43 	.globl _T2CON_6
                                     44 	.globl _T2CON_5
                                     45 	.globl _T2CON_4
                                     46 	.globl _T2CON_3
                                     47 	.globl _T2CON_2
                                     48 	.globl _T2CON_1
                                     49 	.globl _T2CON_0
                                     50 	.globl _PT2
                                     51 	.globl _PS
                                     52 	.globl _PT1
                                     53 	.globl _PX1
                                     54 	.globl _PT0
                                     55 	.globl _PX0
                                     56 	.globl _RD
                                     57 	.globl _WR
                                     58 	.globl _T1
                                     59 	.globl _T0
                                     60 	.globl _INT1
                                     61 	.globl _INT0
                                     62 	.globl _TXD
                                     63 	.globl _RXD
                                     64 	.globl _P3_7
                                     65 	.globl _P3_6
                                     66 	.globl _P3_5
                                     67 	.globl _P3_4
                                     68 	.globl _P3_3
                                     69 	.globl _P3_2
                                     70 	.globl _P3_1
                                     71 	.globl _P3_0
                                     72 	.globl _EA
                                     73 	.globl _ET2
                                     74 	.globl _ES
                                     75 	.globl _ET1
                                     76 	.globl _EX1
                                     77 	.globl _ET0
                                     78 	.globl _EX0
                                     79 	.globl _P2_7
                                     80 	.globl _P2_6
                                     81 	.globl _P2_5
                                     82 	.globl _P2_4
                                     83 	.globl _P2_3
                                     84 	.globl _P2_2
                                     85 	.globl _P2_1
                                     86 	.globl _P2_0
                                     87 	.globl _SM0
                                     88 	.globl _SM1
                                     89 	.globl _SM2
                                     90 	.globl _REN
                                     91 	.globl _TB8
                                     92 	.globl _RB8
                                     93 	.globl _TI
                                     94 	.globl _RI
                                     95 	.globl _T2EX
                                     96 	.globl _T2
                                     97 	.globl _P1_7
                                     98 	.globl _P1_6
                                     99 	.globl _P1_5
                                    100 	.globl _P1_4
                                    101 	.globl _P1_3
                                    102 	.globl _P1_2
                                    103 	.globl _P1_1
                                    104 	.globl _P1_0
                                    105 	.globl _TF1
                                    106 	.globl _TR1
                                    107 	.globl _TF0
                                    108 	.globl _TR0
                                    109 	.globl _IE1
                                    110 	.globl _IT1
                                    111 	.globl _IE0
                                    112 	.globl _IT0
                                    113 	.globl _P0_7
                                    114 	.globl _P0_6
                                    115 	.globl _P0_5
                                    116 	.globl _P0_4
                                    117 	.globl _P0_3
                                    118 	.globl _P0_2
                                    119 	.globl _P0_1
                                    120 	.globl _P0_0
                                    121 	.globl _B
                                    122 	.globl _A
                                    123 	.globl _ACC
                                    124 	.globl _PSW
                                    125 	.globl _TH2
                                    126 	.globl _TL2
                                    127 	.globl _RCAP2H
                                    128 	.globl _RCAP2L
                                    129 	.globl _T2MOD
                                    130 	.globl _T2CON
                                    131 	.globl _IP
                                    132 	.globl _P3
                                    133 	.globl _IE
                                    134 	.globl _P2
                                    135 	.globl _SBUF
                                    136 	.globl _SCON
                                    137 	.globl _P1
                                    138 	.globl _TH1
                                    139 	.globl _TH0
                                    140 	.globl _TL1
                                    141 	.globl _TL0
                                    142 	.globl _TMOD
                                    143 	.globl _TCON
                                    144 	.globl _PCON
                                    145 	.globl _DPH
                                    146 	.globl _DPL
                                    147 	.globl _SP
                                    148 	.globl _P0
                                    149 	.globl _gravity_y
                                    150 	.globl _ut
                                    151 	.globl _av_accel_ang
                                    152 	.globl _av_accel
                                    153 	.globl _ang_vel
                                    154 	.globl _angle
                                    155 	.globl _vel_y
                                    156 	.globl _vel_x
                                    157 	.globl _pos_y
                                    158 	.globl _pos_x
                                    159 	.globl _dsky_key_pressed
                                    160 	.globl _dsky_state
                                    161 	.globl _dsky_buffer
                                    162 	.globl _t_go
                                    163 	.globl _a0_y
                                    164 	.globl _a0_x
                                    165 	.globl _NOUN
                                    166 	.globl _VERB
                                    167 	.globl _PROG
                                    168 	.globl _gimbal
                                    169 	.globl _throttle
                                    170 	.globl _Display_Write_PARM_3
                                    171 	.globl _Display_Write_PARM_2
                                    172 	.globl _MAX7219_Write_PARM_2
                                    173 ;--------------------------------------------------------
                                    174 ; special function registers
                                    175 ;--------------------------------------------------------
                                    176 	.area RSEG    (ABS,DATA)
      000000                        177 	.org 0x0000
                           000080   178 _P0	=	0x0080
                           000081   179 _SP	=	0x0081
                           000082   180 _DPL	=	0x0082
                           000083   181 _DPH	=	0x0083
                           000087   182 _PCON	=	0x0087
                           000088   183 _TCON	=	0x0088
                           000089   184 _TMOD	=	0x0089
                           00008A   185 _TL0	=	0x008a
                           00008B   186 _TL1	=	0x008b
                           00008C   187 _TH0	=	0x008c
                           00008D   188 _TH1	=	0x008d
                           000090   189 _P1	=	0x0090
                           000098   190 _SCON	=	0x0098
                           000099   191 _SBUF	=	0x0099
                           0000A0   192 _P2	=	0x00a0
                           0000A8   193 _IE	=	0x00a8
                           0000B0   194 _P3	=	0x00b0
                           0000B8   195 _IP	=	0x00b8
                           0000C8   196 _T2CON	=	0x00c8
                           0000C9   197 _T2MOD	=	0x00c9
                           0000CA   198 _RCAP2L	=	0x00ca
                           0000CB   199 _RCAP2H	=	0x00cb
                           0000CC   200 _TL2	=	0x00cc
                           0000CD   201 _TH2	=	0x00cd
                           0000D0   202 _PSW	=	0x00d0
                           0000E0   203 _ACC	=	0x00e0
                           0000E0   204 _A	=	0x00e0
                           0000F0   205 _B	=	0x00f0
                                    206 ;--------------------------------------------------------
                                    207 ; special function bits
                                    208 ;--------------------------------------------------------
                                    209 	.area RSEG    (ABS,DATA)
      000000                        210 	.org 0x0000
                           000080   211 _P0_0	=	0x0080
                           000081   212 _P0_1	=	0x0081
                           000082   213 _P0_2	=	0x0082
                           000083   214 _P0_3	=	0x0083
                           000084   215 _P0_4	=	0x0084
                           000085   216 _P0_5	=	0x0085
                           000086   217 _P0_6	=	0x0086
                           000087   218 _P0_7	=	0x0087
                           000088   219 _IT0	=	0x0088
                           000089   220 _IE0	=	0x0089
                           00008A   221 _IT1	=	0x008a
                           00008B   222 _IE1	=	0x008b
                           00008C   223 _TR0	=	0x008c
                           00008D   224 _TF0	=	0x008d
                           00008E   225 _TR1	=	0x008e
                           00008F   226 _TF1	=	0x008f
                           000090   227 _P1_0	=	0x0090
                           000091   228 _P1_1	=	0x0091
                           000092   229 _P1_2	=	0x0092
                           000093   230 _P1_3	=	0x0093
                           000094   231 _P1_4	=	0x0094
                           000095   232 _P1_5	=	0x0095
                           000096   233 _P1_6	=	0x0096
                           000097   234 _P1_7	=	0x0097
                           000090   235 _T2	=	0x0090
                           000091   236 _T2EX	=	0x0091
                           000098   237 _RI	=	0x0098
                           000099   238 _TI	=	0x0099
                           00009A   239 _RB8	=	0x009a
                           00009B   240 _TB8	=	0x009b
                           00009C   241 _REN	=	0x009c
                           00009D   242 _SM2	=	0x009d
                           00009E   243 _SM1	=	0x009e
                           00009F   244 _SM0	=	0x009f
                           0000A0   245 _P2_0	=	0x00a0
                           0000A1   246 _P2_1	=	0x00a1
                           0000A2   247 _P2_2	=	0x00a2
                           0000A3   248 _P2_3	=	0x00a3
                           0000A4   249 _P2_4	=	0x00a4
                           0000A5   250 _P2_5	=	0x00a5
                           0000A6   251 _P2_6	=	0x00a6
                           0000A7   252 _P2_7	=	0x00a7
                           0000A8   253 _EX0	=	0x00a8
                           0000A9   254 _ET0	=	0x00a9
                           0000AA   255 _EX1	=	0x00aa
                           0000AB   256 _ET1	=	0x00ab
                           0000AC   257 _ES	=	0x00ac
                           0000AD   258 _ET2	=	0x00ad
                           0000AF   259 _EA	=	0x00af
                           0000B0   260 _P3_0	=	0x00b0
                           0000B1   261 _P3_1	=	0x00b1
                           0000B2   262 _P3_2	=	0x00b2
                           0000B3   263 _P3_3	=	0x00b3
                           0000B4   264 _P3_4	=	0x00b4
                           0000B5   265 _P3_5	=	0x00b5
                           0000B6   266 _P3_6	=	0x00b6
                           0000B7   267 _P3_7	=	0x00b7
                           0000B0   268 _RXD	=	0x00b0
                           0000B1   269 _TXD	=	0x00b1
                           0000B2   270 _INT0	=	0x00b2
                           0000B3   271 _INT1	=	0x00b3
                           0000B4   272 _T0	=	0x00b4
                           0000B5   273 _T1	=	0x00b5
                           0000B6   274 _WR	=	0x00b6
                           0000B7   275 _RD	=	0x00b7
                           0000B8   276 _PX0	=	0x00b8
                           0000B9   277 _PT0	=	0x00b9
                           0000BA   278 _PX1	=	0x00ba
                           0000BB   279 _PT1	=	0x00bb
                           0000BC   280 _PS	=	0x00bc
                           0000BD   281 _PT2	=	0x00bd
                           0000C8   282 _T2CON_0	=	0x00c8
                           0000C9   283 _T2CON_1	=	0x00c9
                           0000CA   284 _T2CON_2	=	0x00ca
                           0000CB   285 _T2CON_3	=	0x00cb
                           0000CC   286 _T2CON_4	=	0x00cc
                           0000CD   287 _T2CON_5	=	0x00cd
                           0000CE   288 _T2CON_6	=	0x00ce
                           0000CF   289 _T2CON_7	=	0x00cf
                           0000C8   290 _CP_RL2	=	0x00c8
                           0000C9   291 _C_T2	=	0x00c9
                           0000CA   292 _TR2	=	0x00ca
                           0000CB   293 _EXEN2	=	0x00cb
                           0000CC   294 _TCLK	=	0x00cc
                           0000CD   295 _RCLK	=	0x00cd
                           0000CE   296 _EXF2	=	0x00ce
                           0000CF   297 _TF2	=	0x00cf
                           0000D0   298 _P	=	0x00d0
                           0000D1   299 _FL	=	0x00d1
                           0000D2   300 _OV	=	0x00d2
                           0000D3   301 _RS0	=	0x00d3
                           0000D4   302 _RS1	=	0x00d4
                           0000D5   303 _F0	=	0x00d5
                           0000D6   304 _AC	=	0x00d6
                           0000D7   305 _CY	=	0x00d7
                                    306 ;--------------------------------------------------------
                                    307 ; overlayable register banks
                                    308 ;--------------------------------------------------------
                                    309 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        310 	.ds 8
                                    311 ;--------------------------------------------------------
                                    312 ; internal ram data
                                    313 ;--------------------------------------------------------
                                    314 	.area DSEG    (DATA)
      000021                        315 _MAX7219_Write_PARM_2:
      000021                        316 	.ds 1
      000022                        317 _Display_Write_PARM_2:
      000022                        318 	.ds 4
      000026                        319 _Display_Write_PARM_3:
      000026                        320 	.ds 1
      000027                        321 _Display_Write_number_10000_50:
      000027                        322 	.ds 4
      00002B                        323 _throttle::
      00002B                        324 	.ds 4
      00002F                        325 _gimbal::
      00002F                        326 	.ds 4
      000033                        327 _PROG::
      000033                        328 	.ds 1
      000034                        329 _VERB::
      000034                        330 	.ds 1
      000035                        331 _NOUN::
      000035                        332 	.ds 1
      000036                        333 _a0_x::
      000036                        334 	.ds 4
      00003A                        335 _a0_y::
      00003A                        336 	.ds 4
      00003E                        337 _t_go::
      00003E                        338 	.ds 4
      000042                        339 _dsky_buffer::
      000042                        340 	.ds 1
      000043                        341 _dsky_state::
      000043                        342 	.ds 1
      000044                        343 _dsky_key_pressed::
      000044                        344 	.ds 1
      000045                        345 _main_counter_10000_82:
      000045                        346 	.ds 1
      000046                        347 _main__a_50000_115:
      000046                        348 	.ds 4
      00004A                        349 _main__b_50000_115:
      00004A                        350 	.ds 4
                                    351 ;--------------------------------------------------------
                                    352 ; overlayable items in internal ram
                                    353 ;--------------------------------------------------------
                                    354 	.area	OSEG    (OVR,DATA)
                                    355 	.area	OSEG    (OVR,DATA)
                                    356 	.area	OSEG    (OVR,DATA)
                                    357 	.area	OSEG    (OVR,DATA)
                                    358 	.area	OSEG    (OVR,DATA)
                                    359 	.area	OSEG    (OVR,DATA)
      00004E                        360 _Serial_ReadFloat_value_10000_64:
      00004E                        361 	.ds 4
                                    362 	.area	OSEG    (OVR,DATA)
                                    363 	.area	OSEG    (OVR,DATA)
                                    364 ;--------------------------------------------------------
                                    365 ; Stack segment in internal ram
                                    366 ;--------------------------------------------------------
                                    367 	.area SSEG
      000059                        368 __start__stack:
      000059                        369 	.ds	1
                                    370 
                                    371 ;--------------------------------------------------------
                                    372 ; indirectly addressable internal ram data
                                    373 ;--------------------------------------------------------
                                    374 	.area ISEG    (DATA)
                                    375 ;--------------------------------------------------------
                                    376 ; absolute internal ram data
                                    377 ;--------------------------------------------------------
                                    378 	.area IABS    (ABS,DATA)
                                    379 	.area IABS    (ABS,DATA)
                                    380 ;--------------------------------------------------------
                                    381 ; bit data
                                    382 ;--------------------------------------------------------
                                    383 	.area BSEG    (BIT)
                                    384 ;--------------------------------------------------------
                                    385 ; paged external ram data
                                    386 ;--------------------------------------------------------
                                    387 	.area PSEG    (PAG,XDATA)
                                    388 ;--------------------------------------------------------
                                    389 ; uninitialized external ram data
                                    390 ;--------------------------------------------------------
                                    391 	.area XSEG    (XDATA)
      000001                        392 _pos_x::
      000001                        393 	.ds 4
      000005                        394 _pos_y::
      000005                        395 	.ds 4
      000009                        396 _vel_x::
      000009                        397 	.ds 4
      00000D                        398 _vel_y::
      00000D                        399 	.ds 4
      000011                        400 _angle::
      000011                        401 	.ds 4
      000015                        402 _ang_vel::
      000015                        403 	.ds 4
      000019                        404 _av_accel::
      000019                        405 	.ds 4
      00001D                        406 _av_accel_ang::
      00001D                        407 	.ds 4
      000021                        408 _ut::
      000021                        409 	.ds 4
      000025                        410 _gravity_y::
      000025                        411 	.ds 4
                                    412 ;--------------------------------------------------------
                                    413 ; absolute external ram data
                                    414 ;--------------------------------------------------------
                                    415 	.area XABS    (ABS,XDATA)
                                    416 ;--------------------------------------------------------
                                    417 ; initialized external ram data
                                    418 ;--------------------------------------------------------
                                    419 	.area XISEG   (XDATA)
                                    420 	.area HOME    (CODE)
                                    421 	.area GSINIT0 (CODE)
                                    422 	.area GSINIT1 (CODE)
                                    423 	.area GSINIT2 (CODE)
                                    424 	.area GSINIT3 (CODE)
                                    425 	.area GSINIT4 (CODE)
                                    426 	.area GSINIT5 (CODE)
                                    427 	.area GSINIT  (CODE)
                                    428 	.area GSFINAL (CODE)
                                    429 	.area CSEG    (CODE)
                                    430 ;--------------------------------------------------------
                                    431 ; interrupt vector
                                    432 ;--------------------------------------------------------
                                    433 	.area HOME    (CODE)
      000000                        434 __interrupt_vect:
      000000 02 00 4C         [24]  435 	ljmp	__sdcc_gsinit_startup
                                    436 ; restartable atomic support routines
      000003                        437 	.ds	5
      000008                        438 sdcc_atomic_exchange_rollback_start::
      000008 00               [12]  439 	nop
      000009 00               [12]  440 	nop
      00000A                        441 sdcc_atomic_exchange_pdata_impl:
      00000A E2               [24]  442 	movx	a, @r0
      00000B FB               [12]  443 	mov	r3, a
      00000C EA               [12]  444 	mov	a, r2
      00000D F2               [24]  445 	movx	@r0, a
      00000E 80 2C            [24]  446 	sjmp	sdcc_atomic_exchange_exit
      000010 00               [12]  447 	nop
      000011 00               [12]  448 	nop
      000012                        449 sdcc_atomic_exchange_xdata_impl:
      000012 E0               [24]  450 	movx	a, @dptr
      000013 FB               [12]  451 	mov	r3, a
      000014 EA               [12]  452 	mov	a, r2
      000015 F0               [24]  453 	movx	@dptr, a
      000016 80 24            [24]  454 	sjmp	sdcc_atomic_exchange_exit
      000018                        455 sdcc_atomic_compare_exchange_idata_impl:
      000018 E6               [12]  456 	mov	a, @r0
      000019 B5 02 02         [24]  457 	cjne	a, ar2, .+#5
      00001C EB               [12]  458 	mov	a, r3
      00001D F6               [12]  459 	mov	@r0, a
      00001E 22               [24]  460 	ret
      00001F 00               [12]  461 	nop
      000020                        462 sdcc_atomic_compare_exchange_pdata_impl:
      000020 E2               [24]  463 	movx	a, @r0
      000021 B5 02 02         [24]  464 	cjne	a, ar2, .+#5
      000024 EB               [12]  465 	mov	a, r3
      000025 F2               [24]  466 	movx	@r0, a
      000026 22               [24]  467 	ret
      000027 00               [12]  468 	nop
      000028                        469 sdcc_atomic_compare_exchange_xdata_impl:
      000028 E0               [24]  470 	movx	a, @dptr
      000029 B5 02 02         [24]  471 	cjne	a, ar2, .+#5
      00002C EB               [12]  472 	mov	a, r3
      00002D F0               [24]  473 	movx	@dptr, a
      00002E 22               [24]  474 	ret
      00002F                        475 sdcc_atomic_exchange_rollback_end::
                                    476 
      00002F                        477 sdcc_atomic_exchange_gptr_impl::
      00002F 30 F6 E0         [24]  478 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      000032 A8 82            [24]  479 	mov	r0, dpl
      000034 20 F5 D3         [24]  480 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      000037                        481 sdcc_atomic_exchange_idata_impl:
      000037 EA               [12]  482 	mov	a, r2
      000038 C6               [12]  483 	xch	a, @r0
      000039 F5 82            [12]  484 	mov	dpl, a
      00003B 22               [24]  485 	ret
      00003C                        486 sdcc_atomic_exchange_exit:
      00003C 8B 82            [24]  487 	mov	dpl, r3
      00003E 22               [24]  488 	ret
      00003F                        489 sdcc_atomic_compare_exchange_gptr_impl::
      00003F 30 F6 E6         [24]  490 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      000042 A8 82            [24]  491 	mov	r0, dpl
      000044 20 F5 D9         [24]  492 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      000047 80 CF            [24]  493 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    494 ;--------------------------------------------------------
                                    495 ; global & static initialisations
                                    496 ;--------------------------------------------------------
                                    497 	.area HOME    (CODE)
                                    498 	.area GSINIT  (CODE)
                                    499 	.area GSFINAL (CODE)
                                    500 	.area GSINIT  (CODE)
                                    501 	.globl __sdcc_gsinit_startup
                                    502 	.globl __sdcc_program_startup
                                    503 	.globl __start__stack
                                    504 	.globl __mcs51_genXINIT
                                    505 	.globl __mcs51_genXRAMCLEAR
                                    506 	.globl __mcs51_genRAMCLEAR
                                    507 ;	pgc.c:28: byte_t dsky_buffer = 0x00;
      0000A5 75 42 00         [24]  508 	mov	_dsky_buffer,#0x00
                                    509 ;	pgc.c:29: byte_t dsky_state = 0;
      0000A8 75 43 00         [24]  510 	mov	_dsky_state,#0x00
                                    511 ;	pgc.c:30: bool dsky_key_pressed = false;
      0000AB 75 44 00         [24]  512 	mov	_dsky_key_pressed,#0x00
                                    513 	.area GSFINAL (CODE)
      0000AE 02 00 49         [24]  514 	ljmp	__sdcc_program_startup
                                    515 ;--------------------------------------------------------
                                    516 ; Home
                                    517 ;--------------------------------------------------------
                                    518 	.area HOME    (CODE)
                                    519 	.area HOME    (CODE)
      000049                        520 __sdcc_program_startup:
      000049 02 03 10         [24]  521 	ljmp	_main
                                    522 ;	return from main will return to caller
                                    523 ;--------------------------------------------------------
                                    524 ; code
                                    525 ;--------------------------------------------------------
                                    526 	.area CSEG    (CODE)
                                    527 ;------------------------------------------------------------
                                    528 ;Allocation info for local variables in function 'Keyboard_Read'
                                    529 ;------------------------------------------------------------
                                    530 ;x             Allocated to registers r7 
                                    531 ;y             Allocated to registers r7 
                                    532 ;i             Allocated to registers r6 
                                    533 ;__400000004   Allocated to registers r3 
                                    534 ;__400000001   Allocated to registers r4 
                                    535 ;__400000002   Allocated to registers 
                                    536 ;value         Allocated to registers 
                                    537 ;__400000005   Allocated to registers 
                                    538 ;value         Allocated to registers 
                                    539 ;------------------------------------------------------------
                                    540 ;	keyboard.h:16: byte_t Keyboard_Read(void) {
                                    541 ;	-----------------------------------------
                                    542 ;	 function Keyboard_Read
                                    543 ;	-----------------------------------------
      0000B1                        544 _Keyboard_Read:
                           000007   545 	ar7 = 0x07
                           000006   546 	ar6 = 0x06
                           000005   547 	ar5 = 0x05
                           000004   548 	ar4 = 0x04
                           000003   549 	ar3 = 0x03
                           000002   550 	ar2 = 0x02
                           000001   551 	ar1 = 0x01
                           000000   552 	ar0 = 0x00
                                    553 ;	keyboard.h:23: byte_t x, y = 0x01;
      0000B1 7F 01            [12]  554 	mov	r7,#0x01
                                    555 ;	keyboard.h:25: for (byte_t i=0; i<=2; i++) {
      0000B3 7E 00            [12]  556 	mov	r6,#0x00
      0000B5                        557 00134$:
      0000B5 EE               [12]  558 	mov	a,r6
      0000B6 24 FD            [12]  559 	add	a,#0xff - 0x02
      0000B8 50 03            [24]  560 	jnc	00257$
      0000BA 02 01 40         [24]  561 	ljmp	00110$
      0000BD                        562 00257$:
                                    563 ;	keyboard.h:26: KEYBOARD_PORT = 0xFF & ~y;
      0000BD EF               [12]  564 	mov	a,r7
      0000BE F4               [12]  565 	cpl	a
      0000BF F5 90            [12]  566 	mov	_P1,a
                                    567 ;	keyboard.h:28: x = ~((KEYBOARD_PORT & 0xF0) >> 4) & 0x0F;
      0000C1 AC 90            [24]  568 	mov	r4,_P1
      0000C3 53 04 F0         [24]  569 	anl	ar4,#0xf0
      0000C6 E4               [12]  570 	clr	a
      0000C7 CC               [12]  571 	xch	a,r4
      0000C8 C4               [12]  572 	swap	a
      0000C9 54 0F            [12]  573 	anl	a,#0x0f
      0000CB 6C               [12]  574 	xrl	a,r4
      0000CC CC               [12]  575 	xch	a,r4
      0000CD 54 0F            [12]  576 	anl	a,#0x0f
      0000CF CC               [12]  577 	xch	a,r4
      0000D0 6C               [12]  578 	xrl	a,r4
      0000D1 CC               [12]  579 	xch	a,r4
      0000D2 30 E3 02         [24]  580 	jnb	acc.3,00258$
      0000D5 44 F0            [12]  581 	orl	a,#0xfffffff0
      0000D7                        582 00258$:
      0000D7 EC               [12]  583 	mov	a,r4
      0000D8 F4               [12]  584 	cpl	a
      0000D9 FC               [12]  585 	mov	r4,a
      0000DA 74 0F            [12]  586 	mov	a,#0x0f
      0000DC 5C               [12]  587 	anl	a,r4
      0000DD FD               [12]  588 	mov	r5,a
                                    589 ;	keyboard.h:30: if (x==8) { // last column - special functions
      0000DE BD 08 1B         [24]  590 	cjne	r5,#0x08,00107$
                                    591 ;	keyboard.h:31: switch (y) {
      0000E1 BF 01 02         [24]  592 	cjne	r7,#0x01,00261$
      0000E4 80 0A            [24]  593 	sjmp	00101$
      0000E6                        594 00261$:
      0000E6 BF 02 02         [24]  595 	cjne	r7,#0x02,00262$
      0000E9 80 09            [24]  596 	sjmp	00102$
      0000EB                        597 00262$:
                                    598 ;	keyboard.h:32: case 1:
      0000EB BF 04 0E         [24]  599 	cjne	r7,#0x04,00107$
      0000EE 80 08            [24]  600 	sjmp	00103$
      0000F0                        601 00101$:
                                    602 ;	keyboard.h:33: return 0x0C; // PROG
      0000F0 75 82 0C         [24]  603 	mov	dpl, #0x0c
      0000F3 22               [24]  604 	ret
                                    605 ;	keyboard.h:34: case 2:
      0000F4                        606 00102$:
                                    607 ;	keyboard.h:35: return 0x0D; // VERB
      0000F4 75 82 0D         [24]  608 	mov	dpl, #0x0d
      0000F7 22               [24]  609 	ret
                                    610 ;	keyboard.h:36: case 4:
      0000F8                        611 00103$:
                                    612 ;	keyboard.h:37: return 0x0E; // NOUN
      0000F8 75 82 0E         [24]  613 	mov	dpl, #0x0e
      0000FB 22               [24]  614 	ret
                                    615 ;	keyboard.h:40: }
      0000FC                        616 00107$:
                                    617 ;	keyboard.h:43: if (x != 0) return 3*(log2_table(y)-1) + log2_table(x); 
      0000FC ED               [12]  618 	mov	a,r5
      0000FD 60 3A            [24]  619 	jz	00109$
                                    620 ;	keyboard.h:10: if (value == 0x01) return 1;
      0000FF BF 01 04         [24]  621 	cjne	r7,#0x01,00120$
      000102 7C 01            [12]  622 	mov	r4,#0x01
      000104 80 10            [24]  623 	sjmp	00125$
      000106                        624 00120$:
                                    625 ;	keyboard.h:11: if (value == 0x02) return 2;
      000106 BF 02 04         [24]  626 	cjne	r7,#0x02,00122$
      000109 7C 02            [12]  627 	mov	r4,#0x02
      00010B 80 09            [24]  628 	sjmp	00125$
      00010D                        629 00122$:
                                    630 ;	keyboard.h:12: if (value == 0x04) return 3;
      00010D BF 04 04         [24]  631 	cjne	r7,#0x04,00124$
      000110 7C 03            [12]  632 	mov	r4,#0x03
      000112 80 02            [24]  633 	sjmp	00125$
      000114                        634 00124$:
                                    635 ;	keyboard.h:13: return 0;
      000114 7C 00            [12]  636 	mov	r4,#0x00
                                    637 ;	keyboard.h:43: if (x != 0) return 3*(log2_table(y)-1) + log2_table(x); 
      000116                        638 00125$:
      000116 EC               [12]  639 	mov	a,r4
      000117 14               [12]  640 	dec	a
      000118 75 F0 03         [24]  641 	mov	b,#0x03
      00011B A4               [48]  642 	mul	ab
      00011C FC               [12]  643 	mov	r4,a
                                    644 ;	keyboard.h:10: if (value == 0x01) return 1;
      00011D BD 01 04         [24]  645 	cjne	r5,#0x01,00127$
      000120 7B 01            [12]  646 	mov	r3,#0x01
      000122 80 10            [24]  647 	sjmp	00132$
      000124                        648 00127$:
                                    649 ;	keyboard.h:11: if (value == 0x02) return 2;
      000124 BD 02 04         [24]  650 	cjne	r5,#0x02,00129$
      000127 7B 02            [12]  651 	mov	r3,#0x02
      000129 80 09            [24]  652 	sjmp	00132$
      00012B                        653 00129$:
                                    654 ;	keyboard.h:12: if (value == 0x04) return 3;
      00012B BD 04 04         [24]  655 	cjne	r5,#0x04,00131$
      00012E 7B 03            [12]  656 	mov	r3,#0x03
      000130 80 02            [24]  657 	sjmp	00132$
      000132                        658 00131$:
                                    659 ;	keyboard.h:13: return 0;
      000132 7B 00            [12]  660 	mov	r3,#0x00
                                    661 ;	keyboard.h:43: if (x != 0) return 3*(log2_table(y)-1) + log2_table(x); 
      000134                        662 00132$:
      000134 EB               [12]  663 	mov	a,r3
      000135 2C               [12]  664 	add	a, r4
      000136 F5 82            [12]  665 	mov	dpl,a
      000138 22               [24]  666 	ret
      000139                        667 00109$:
                                    668 ;	keyboard.h:45: y <<= 1;
      000139 EF               [12]  669 	mov	a,r7
      00013A 2F               [12]  670 	add	a,r7
      00013B FF               [12]  671 	mov	r7,a
                                    672 ;	keyboard.h:25: for (byte_t i=0; i<=2; i++) {
      00013C 0E               [12]  673 	inc	r6
      00013D 02 00 B5         [24]  674 	ljmp	00134$
      000140                        675 00110$:
                                    676 ;	keyboard.h:49: KEYBOARD_PORT = 0xFF & ~y;
      000140 EF               [12]  677 	mov	a,r7
      000141 F4               [12]  678 	cpl	a
      000142 F5 90            [12]  679 	mov	_P1,a
                                    680 ;	keyboard.h:51: x = ~((KEYBOARD_PORT & 0xF0) >> 4) & 0x0F;
      000144 AE 90            [24]  681 	mov	r6,_P1
      000146 53 06 F0         [24]  682 	anl	ar6,#0xf0
      000149 E4               [12]  683 	clr	a
      00014A CE               [12]  684 	xch	a,r6
      00014B C4               [12]  685 	swap	a
      00014C 54 0F            [12]  686 	anl	a,#0x0f
      00014E 6E               [12]  687 	xrl	a,r6
      00014F CE               [12]  688 	xch	a,r6
      000150 54 0F            [12]  689 	anl	a,#0x0f
      000152 CE               [12]  690 	xch	a,r6
      000153 6E               [12]  691 	xrl	a,r6
      000154 CE               [12]  692 	xch	a,r6
      000155 30 E3 02         [24]  693 	jnb	acc.3,00277$
      000158 44 F0            [12]  694 	orl	a,#0xfffffff0
      00015A                        695 00277$:
      00015A EE               [12]  696 	mov	a,r6
      00015B F4               [12]  697 	cpl	a
      00015C FE               [12]  698 	mov	r6,a
      00015D 74 0F            [12]  699 	mov	a,#0x0f
      00015F 5E               [12]  700 	anl	a,r6
                                    701 ;	keyboard.h:53: if (x == 0) return 0xFF; // none key
      000160 FF               [12]  702 	mov	r7,a
      000161 70 04            [24]  703 	jnz	00112$
      000163 75 82 FF         [24]  704 	mov	dpl, #0xff
      000166 22               [24]  705 	ret
      000167                        706 00112$:
                                    707 ;	keyboard.h:55: if (x == 1) return 0x0A; // *
      000167 BF 01 04         [24]  708 	cjne	r7,#0x01,00114$
      00016A 75 82 0A         [24]  709 	mov	dpl, #0x0a
      00016D 22               [24]  710 	ret
      00016E                        711 00114$:
                                    712 ;	keyboard.h:56: if (x == 2) return 0x00; // 0
      00016E BF 02 04         [24]  713 	cjne	r7,#0x02,00116$
      000171 75 82 00         [24]  714 	mov	dpl, #0x00
      000174 22               [24]  715 	ret
      000175                        716 00116$:
                                    717 ;	keyboard.h:57: if (x == 4) return 0x0B; // #
      000175 BF 04 04         [24]  718 	cjne	r7,#0x04,00118$
      000178 75 82 0B         [24]  719 	mov	dpl, #0x0b
      00017B 22               [24]  720 	ret
      00017C                        721 00118$:
                                    722 ;	keyboard.h:59: return 0xFF;
      00017C 75 82 FF         [24]  723 	mov	dpl, #0xff
                                    724 ;	keyboard.h:60: }
      00017F 22               [24]  725 	ret
                                    726 ;------------------------------------------------------------
                                    727 ;Allocation info for local variables in function 'MAX7219_SPI_Write_Byte'
                                    728 ;------------------------------------------------------------
                                    729 ;data          Allocated to registers 
                                    730 ;i             Allocated to registers r7 
                                    731 ;------------------------------------------------------------
                                    732 ;	display.h:17: void MAX7219_SPI_Write_Byte(byte_t data) {
                                    733 ;	-----------------------------------------
                                    734 ;	 function MAX7219_SPI_Write_Byte
                                    735 ;	-----------------------------------------
      000180                        736 _MAX7219_SPI_Write_Byte:
                                    737 ;	display.h:22: for(i=0; i<8; i++) {
      000180 7F 00            [12]  738 	mov	r7,#0x00
      000182                        739 00102$:
                                    740 ;	display.h:23: MAX7219_CLK_PIN = 0;
                                    741 ;	assignBit
      000182 C2 B5            [12]  742 	clr	_P3_5
                                    743 ;	display.h:31: __endasm;
      000184 E5 82            [12]  744 	mov	a, dpl
      000186 33               [12]  745 	rlc	a
                                    746 ;	display.h:32: ASM_MOV_C_TO_PIN(MAX7219_DIN_PIN);
      000187 92 B3            [24]  747 	mov	_P3_3, c 
                                    748 ;	display.h:35: __endasm;
      000189 F5 82            [12]  749 	mov	dpl, a
                                    750 ;	display.h:37: MAX7219_CLK_PIN = 1;
                                    751 ;	assignBit
      00018B D2 B5            [12]  752 	setb	_P3_5
                                    753 ;	display.h:22: for(i=0; i<8; i++) {
      00018D 0F               [12]  754 	inc	r7
      00018E BF 08 00         [24]  755 	cjne	r7,#0x08,00113$
      000191                        756 00113$:
      000191 40 EF            [24]  757 	jc	00102$
                                    758 ;	display.h:39: }
      000193 22               [24]  759 	ret
                                    760 ;------------------------------------------------------------
                                    761 ;Allocation info for local variables in function 'MAX7219_Select'
                                    762 ;------------------------------------------------------------
                                    763 ;index         Allocated to registers 
                                    764 ;------------------------------------------------------------
                                    765 ;	display.h:41: void MAX7219_Select(byte_t index) {
                                    766 ;	-----------------------------------------
                                    767 ;	 function MAX7219_Select
                                    768 ;	-----------------------------------------
      000194                        769 _MAX7219_Select:
                                    770 ;	display.h:50: __endasm;
      000194 E5 82            [12]  771 	mov	a, dpl
      000196 13               [12]  772 	rrc	a
                                    773 ;	display.h:51: ASM_MOV_C_TO_PIN(MAX7219_CS0_PIN);
      000197 92 A5            [24]  774 	mov	_P2_5, c 
                                    775 ;	display.h:55: __endasm;
      000199 13               [12]  776 	rrc	a
                                    777 ;	display.h:56: ASM_MOV_C_TO_PIN(MAX7219_CS1_PIN);
      00019A 92 A6            [24]  778 	mov	_P2_6, c 
                                    779 ;	display.h:57: }
      00019C 22               [24]  780 	ret
                                    781 ;------------------------------------------------------------
                                    782 ;Allocation info for local variables in function 'MAX7219_Write'
                                    783 ;------------------------------------------------------------
                                    784 ;value         Allocated with name '_MAX7219_Write_PARM_2'
                                    785 ;reg           Allocated to registers r7 
                                    786 ;------------------------------------------------------------
                                    787 ;	display.h:59: void MAX7219_Write(byte_t reg, byte_t value) {
                                    788 ;	-----------------------------------------
                                    789 ;	 function MAX7219_Write
                                    790 ;	-----------------------------------------
      00019D                        791 _MAX7219_Write:
      00019D AF 82            [24]  792 	mov	r7, dpl
                                    793 ;	display.h:60: MAX7219_CS_PIN = 1; // enable CS
                                    794 ;	assignBit
      00019F D2 A7            [12]  795 	setb	_P2_7
                                    796 ;	display.h:61: MAX7219_SPI_Write_Byte(reg);   // send address
      0001A1 8F 82            [24]  797 	mov	dpl, r7
      0001A3 12 01 80         [24]  798 	lcall	_MAX7219_SPI_Write_Byte
                                    799 ;	display.h:62: MAX7219_SPI_Write_Byte(value); // send value
      0001A6 85 21 82         [24]  800 	mov	dpl, _MAX7219_Write_PARM_2
      0001A9 12 01 80         [24]  801 	lcall	_MAX7219_SPI_Write_Byte
                                    802 ;	display.h:63: MAX7219_CS_PIN = 0; // disable CS
                                    803 ;	assignBit
      0001AC C2 A7            [12]  804 	clr	_P2_7
                                    805 ;	display.h:64: }
      0001AE 22               [24]  806 	ret
                                    807 ;------------------------------------------------------------
                                    808 ;Allocation info for local variables in function 'Display_Write'
                                    809 ;------------------------------------------------------------
                                    810 ;register_value Allocated with name '_Display_Write_PARM_2'
                                    811 ;digit_value   Allocated with name '_Display_Write_PARM_3'
                                    812 ;index         Allocated to registers r7 
                                    813 ;digit         Allocated to registers r0 r1 
                                    814 ;number        Allocated with name '_Display_Write_number_10000_50'
                                    815 ;i             Allocated to registers r7 
                                    816 ;------------------------------------------------------------
                                    817 ;	display.h:74: void Display_Write(byte_t index, float register_value, byte_t digit_value) {
                                    818 ;	-----------------------------------------
                                    819 ;	 function Display_Write
                                    820 ;	-----------------------------------------
      0001AF                        821 _Display_Write:
      0001AF AF 82            [24]  822 	mov	r7, dpl
                                    823 ;	display.h:76: long number = (long) (register_value * 100);
      0001B1 C0 07            [24]  824 	push	ar7
      0001B3 C0 22            [24]  825 	push	_Display_Write_PARM_2
      0001B5 C0 23            [24]  826 	push	(_Display_Write_PARM_2 + 1)
      0001B7 C0 24            [24]  827 	push	(_Display_Write_PARM_2 + 2)
      0001B9 C0 25            [24]  828 	push	(_Display_Write_PARM_2 + 3)
      0001BB 90 00 00         [24]  829 	mov	dptr,#0x0000
      0001BE 75 F0 C8         [24]  830 	mov	b, #0xc8
      0001C1 74 42            [12]  831 	mov	a, #0x42
      0001C3 12 0B 2E         [24]  832 	lcall	___fsmul
      0001C6 AB 82            [24]  833 	mov	r3, dpl
      0001C8 AC 83            [24]  834 	mov	r4, dph
      0001CA AD F0            [24]  835 	mov	r5, b
      0001CC FE               [12]  836 	mov	r6, a
      0001CD E5 81            [12]  837 	mov	a,sp
      0001CF 24 FC            [12]  838 	add	a,#0xfc
      0001D1 F5 81            [12]  839 	mov	sp,a
      0001D3 8B 82            [24]  840 	mov	dpl, r3
      0001D5 8C 83            [24]  841 	mov	dph, r4
      0001D7 8D F0            [24]  842 	mov	b, r5
      0001D9 EE               [12]  843 	mov	a, r6
      0001DA 12 0C 97         [24]  844 	lcall	___fs2slong
      0001DD 85 82 27         [24]  845 	mov	_Display_Write_number_10000_50,dpl
      0001E0 85 83 28         [24]  846 	mov	(_Display_Write_number_10000_50 + 1),dph
      0001E3 85 F0 29         [24]  847 	mov	(_Display_Write_number_10000_50 + 2),b
      0001E6 F5 2A            [12]  848 	mov	(_Display_Write_number_10000_50 + 3),a
      0001E8 D0 07            [24]  849 	pop	ar7
                                    850 ;	display.h:78: MAX7219_Select(index);
      0001EA 8F 82            [24]  851 	mov	dpl, r7
      0001EC 12 01 94         [24]  852 	lcall	_MAX7219_Select
                                    853 ;	display.h:80: for(byte_t i=6; i>0; i--) {
      0001EF 7F 06            [12]  854 	mov	r7,#0x06
      0001F1                        855 00103$:
      0001F1 EF               [12]  856 	mov	a,r7
      0001F2 60 6C            [24]  857 	jz	00101$
                                    858 ;	display.h:81: digit = number % 10;
      0001F4 75 4E 0A         [24]  859 	mov	__modslong_PARM_2,#0x0a
      0001F7 E4               [12]  860 	clr	a
      0001F8 F5 4F            [12]  861 	mov	(__modslong_PARM_2 + 1),a
      0001FA F5 50            [12]  862 	mov	(__modslong_PARM_2 + 2),a
      0001FC F5 51            [12]  863 	mov	(__modslong_PARM_2 + 3),a
      0001FE 85 27 82         [24]  864 	mov	dpl, _Display_Write_number_10000_50
      000201 85 28 83         [24]  865 	mov	dph, (_Display_Write_number_10000_50 + 1)
      000204 85 29 F0         [24]  866 	mov	b, (_Display_Write_number_10000_50 + 2)
      000207 E5 2A            [12]  867 	mov	a, (_Display_Write_number_10000_50 + 3)
      000209 C0 07            [24]  868 	push	ar7
      00020B 12 12 68         [24]  869 	lcall	__modslong
      00020E A8 82            [24]  870 	mov	r0, dpl
      000210 A9 83            [24]  871 	mov	r1, dph
      000212 D0 07            [24]  872 	pop	ar7
                                    873 ;	display.h:82: number = number / 10;
      000214 75 4E 0A         [24]  874 	mov	__divslong_PARM_2,#0x0a
      000217 E4               [12]  875 	clr	a
      000218 F5 4F            [12]  876 	mov	(__divslong_PARM_2 + 1),a
      00021A F5 50            [12]  877 	mov	(__divslong_PARM_2 + 2),a
      00021C F5 51            [12]  878 	mov	(__divslong_PARM_2 + 3),a
                                    879 ;	display.h:84: MAX7219_Write(i, i==4 ? digit | 0x80 : digit);
      00021E 85 27 82         [24]  880 	mov	dpl, _Display_Write_number_10000_50
      000221 85 28 83         [24]  881 	mov	dph, (_Display_Write_number_10000_50 + 1)
      000224 85 29 F0         [24]  882 	mov	b, (_Display_Write_number_10000_50 + 2)
      000227 E5 2A            [12]  883 	mov	a, (_Display_Write_number_10000_50 + 3)
      000229 C0 07            [24]  884 	push	ar7
      00022B C0 01            [24]  885 	push	ar1
      00022D C0 00            [24]  886 	push	ar0
      00022F 12 13 94         [24]  887 	lcall	__divslong
      000232 85 82 27         [24]  888 	mov	_Display_Write_number_10000_50,dpl
      000235 85 83 28         [24]  889 	mov	(_Display_Write_number_10000_50 + 1),dph
      000238 85 F0 29         [24]  890 	mov	(_Display_Write_number_10000_50 + 2),b
      00023B F5 2A            [12]  891 	mov	(_Display_Write_number_10000_50 + 3),a
      00023D D0 00            [24]  892 	pop	ar0
      00023F D0 01            [24]  893 	pop	ar1
      000241 D0 07            [24]  894 	pop	ar7
      000243 BF 04 08         [24]  895 	cjne	r7,#0x04,00109$
      000246 74 80            [12]  896 	mov	a,#0x80
      000248 48               [12]  897 	orl	a,r0
      000249 FD               [12]  898 	mov	r5,a
      00024A 89 06            [24]  899 	mov	ar6,r1
      00024C 80 04            [24]  900 	sjmp	00110$
      00024E                        901 00109$:
      00024E 88 05            [24]  902 	mov	ar5,r0
      000250 89 06            [24]  903 	mov	ar6,r1
      000252                        904 00110$:
      000252 8D 21            [24]  905 	mov	_MAX7219_Write_PARM_2,r5
      000254 8F 82            [24]  906 	mov	dpl, r7
      000256 C0 07            [24]  907 	push	ar7
      000258 12 01 9D         [24]  908 	lcall	_MAX7219_Write
      00025B D0 07            [24]  909 	pop	ar7
                                    910 ;	display.h:80: for(byte_t i=6; i>0; i--) {
      00025D 1F               [12]  911 	dec	r7
      00025E 80 91            [24]  912 	sjmp	00103$
      000260                        913 00101$:
                                    914 ;	display.h:87: MAX7219_Write(7, digit_value/10);
      000260 AF 26            [24]  915 	mov	r7,_Display_Write_PARM_3
      000262 8F 06            [24]  916 	mov	ar6,r7
      000264 75 F0 0A         [24]  917 	mov	b,#0x0a
      000267 EE               [12]  918 	mov	a,r6
      000268 84               [48]  919 	div	ab
      000269 F5 21            [12]  920 	mov	_MAX7219_Write_PARM_2, a
      00026B 75 82 07         [24]  921 	mov	dpl, #0x07
      00026E C0 07            [24]  922 	push	ar7
      000270 12 01 9D         [24]  923 	lcall	_MAX7219_Write
      000273 D0 07            [24]  924 	pop	ar7
                                    925 ;	display.h:88: MAX7219_Write(8, digit_value%10);
      000275 75 F0 0A         [24]  926 	mov	b,#0x0a
      000278 EF               [12]  927 	mov	a,r7
      000279 84               [48]  928 	div	ab
      00027A AF F0            [24]  929 	mov	r7,b
      00027C 8F 21            [24]  930 	mov	_MAX7219_Write_PARM_2,r7
      00027E 75 82 08         [24]  931 	mov	dpl, #0x08
                                    932 ;	display.h:89: }
      000281 02 01 9D         [24]  933 	ljmp	_MAX7219_Write
                                    934 ;------------------------------------------------------------
                                    935 ;Allocation info for local variables in function 'Serial_SendByte'
                                    936 ;------------------------------------------------------------
                                    937 ;value         Allocated to registers 
                                    938 ;------------------------------------------------------------
                                    939 ;	serial.h:21: void Serial_SendByte(byte_t value) {
                                    940 ;	-----------------------------------------
                                    941 ;	 function Serial_SendByte
                                    942 ;	-----------------------------------------
      000284                        943 _Serial_SendByte:
                                    944 ;	serial.h:28: __endasm;
      000284 85 82 99         [24]  945 	mov	_SBUF, dpl
      000287                        946 1$:
      000287 30 99 FD         [24]  947 	jnb _TI, 1$
      00028A C2 99            [12]  948 	clr	_TI
                                    949 ;	serial.h:29: }
      00028C 22               [24]  950 	ret
                                    951 ;------------------------------------------------------------
                                    952 ;Allocation info for local variables in function 'Serial_SendFloat'
                                    953 ;------------------------------------------------------------
                                    954 ;value         Allocated to registers 
                                    955 ;------------------------------------------------------------
                                    956 ;	serial.h:31: void Serial_SendFloat(float value) {
                                    957 ;	-----------------------------------------
                                    958 ;	 function Serial_SendFloat
                                    959 ;	-----------------------------------------
      00028D                        960 _Serial_SendFloat:
                                    961 ;	serial.h:50: __endasm;
      00028D 85 82 99         [24]  962 	mov	_SBUF, dpl
      000290                        963 1$:
      000290 30 99 FD         [24]  964 	jnb _TI, 1$
      000293 C2 99            [12]  965 	clr	_TI
      000295 85 83 99         [24]  966 	mov	_SBUF, dph
      000298                        967 2$:
      000298 30 99 FD         [24]  968 	jnb _TI, 2$
      00029B C2 99            [12]  969 	clr	_TI
      00029D 85 F0 99         [24]  970 	mov	_SBUF, b
      0002A0                        971 3$:
      0002A0 30 99 FD         [24]  972 	jnb _TI, 3$
      0002A3 C2 99            [12]  973 	clr	_TI
      0002A5 F5 99            [12]  974 	mov	_SBUF, a
      0002A7                        975 4$:
      0002A7 30 99 FD         [24]  976 	jnb _TI, 4$
      0002AA C2 99            [12]  977 	clr	_TI
                                    978 ;	serial.h:69: }
      0002AC 22               [24]  979 	ret
                                    980 ;------------------------------------------------------------
                                    981 ;Allocation info for local variables in function 'Serial_ReadByte'
                                    982 ;------------------------------------------------------------
                                    983 ;	serial.h:73: byte_t Serial_ReadByte(void) {
                                    984 ;	-----------------------------------------
                                    985 ;	 function Serial_ReadByte
                                    986 ;	-----------------------------------------
      0002AD                        987 _Serial_ReadByte:
                                    988 ;	serial.h:76: __asm__("1$: jnb _RI, 1$");
      0002AD                        989 1$:
      0002AD 30 98 FD         [24]  990 	jnb _RI, 1$
                                    991 ;	serial.h:77: __asm__("clr _RI");
      0002B0 C2 98            [12]  992 	clr	_RI
                                    993 ;	serial.h:78: return SBUF;
      0002B2 85 99 82         [24]  994 	mov	dpl, _SBUF
                                    995 ;	serial.h:79: }
      0002B5 22               [24]  996 	ret
                                    997 ;------------------------------------------------------------
                                    998 ;Allocation info for local variables in function 'Serial_ReadFloat'
                                    999 ;------------------------------------------------------------
                                   1000 ;value         Allocated with name '_Serial_ReadFloat_value_10000_64'
                                   1001 ;p             Allocated to registers 
                                   1002 ;------------------------------------------------------------
                                   1003 ;	serial.h:81: float Serial_ReadFloat(void) {
                                   1004 ;	-----------------------------------------
                                   1005 ;	 function Serial_ReadFloat
                                   1006 ;	-----------------------------------------
      0002B6                       1007 _Serial_ReadFloat:
                                   1008 ;	serial.h:83: byte_t *p = (byte_t*)&value;
                                   1009 ;	serial.h:85: __asm__("1$: jnb _RI, 1$");
      0002B6                       1010 1$:
      0002B6 30 98 FD         [24] 1011 	jnb _RI, 1$
                                   1012 ;	serial.h:86: __asm__("clr _RI");
      0002B9 C2 98            [12] 1013 	clr	_RI
                                   1014 ;	serial.h:87: p[0] = SBUF;
      0002BB 85 99 4E         [24] 1015 	mov	_Serial_ReadFloat_value_10000_64,_SBUF
                                   1016 ;	serial.h:89: __asm__("2$: jnb _RI, 2$");
      0002BE                       1017 2$:
      0002BE 30 98 FD         [24] 1018 	jnb _RI, 2$
                                   1019 ;	serial.h:90: __asm__("clr _RI");
      0002C1 C2 98            [12] 1020 	clr	_RI
                                   1021 ;	serial.h:91: p[1] = SBUF;
      0002C3 78 4F            [12] 1022 	mov	r0,#(_Serial_ReadFloat_value_10000_64 + 0x0001)
      0002C5 A6 99            [24] 1023 	mov	@r0,_SBUF
                                   1024 ;	serial.h:93: __asm__("3$: jnb _RI, 3$");
      0002C7                       1025 3$:
      0002C7 30 98 FD         [24] 1026 	jnb _RI, 3$
                                   1027 ;	serial.h:94: __asm__("clr _RI");
      0002CA C2 98            [12] 1028 	clr	_RI
                                   1029 ;	serial.h:95: p[2] = SBUF;
      0002CC 78 50            [12] 1030 	mov	r0,#(_Serial_ReadFloat_value_10000_64 + 0x0002)
      0002CE A6 99            [24] 1031 	mov	@r0,_SBUF
                                   1032 ;	serial.h:97: __asm__("4$: jnb _RI, 4$");
      0002D0                       1033 4$:
      0002D0 30 98 FD         [24] 1034 	jnb _RI, 4$
                                   1035 ;	serial.h:98: __asm__("clr _RI");
      0002D3 C2 98            [12] 1036 	clr	_RI
                                   1037 ;	serial.h:99: p[3] = SBUF;
      0002D5 78 51            [12] 1038 	mov	r0,#(_Serial_ReadFloat_value_10000_64 + 0x0003)
      0002D7 A6 99            [24] 1039 	mov	@r0,_SBUF
                                   1040 ;	serial.h:101: return value;
      0002D9 85 4E 82         [24] 1041 	mov	dpl, _Serial_ReadFloat_value_10000_64
      0002DC 85 4F 83         [24] 1042 	mov	dph, (_Serial_ReadFloat_value_10000_64 + 1)
      0002DF 85 50 F0         [24] 1043 	mov	b, (_Serial_ReadFloat_value_10000_64 + 2)
      0002E2 E5 51            [12] 1044 	mov	a, (_Serial_ReadFloat_value_10000_64 + 3)
                                   1045 ;	serial.h:102: }
      0002E4 22               [24] 1046 	ret
                                   1047 ;------------------------------------------------------------
                                   1048 ;Allocation info for local variables in function 'Delay_polling'
                                   1049 ;------------------------------------------------------------
                                   1050 ;ms            Allocated to registers r6 r7 
                                   1051 ;------------------------------------------------------------
                                   1052 ;	delay.h:6: void Delay_polling(unsigned int ms) {
                                   1053 ;	-----------------------------------------
                                   1054 ;	 function Delay_polling
                                   1055 ;	-----------------------------------------
      0002E5                       1056 _Delay_polling:
      0002E5 AE 82            [24] 1057 	mov	r6, dpl
      0002E7 AF 83            [24] 1058 	mov	r7, dph
                                   1059 ;	delay.h:7: TMOD |= 0x01;
      0002E9 43 89 01         [24] 1060 	orl	_TMOD,#0x01
                                   1061 ;	delay.h:9: while(ms--) {
      0002EC                       1062 00104$:
      0002EC 8E 04            [24] 1063 	mov	ar4,r6
      0002EE 8F 05            [24] 1064 	mov	ar5,r7
      0002F0 1E               [12] 1065 	dec	r6
      0002F1 BE FF 01         [24] 1066 	cjne	r6,#0xff,00134$
      0002F4 1F               [12] 1067 	dec	r7
      0002F5                       1068 00134$:
      0002F5 EC               [12] 1069 	mov	a,r4
      0002F6 4D               [12] 1070 	orl	a,r5
      0002F7 60 11            [24] 1071 	jz	00107$
                                   1072 ;	delay.h:10: TH0 = 0xFC;
      0002F9 75 8C FC         [24] 1073 	mov	_TH0,#0xfc
                                   1074 ;	delay.h:11: TL0 = 0x17;
      0002FC 75 8A 17         [24] 1075 	mov	_TL0,#0x17
                                   1076 ;	delay.h:12: TR0 = 1;
                                   1077 ;	assignBit
      0002FF D2 8C            [12] 1078 	setb	_TR0
                                   1079 ;	delay.h:13: while(!TF0);
      000301                       1080 00101$:
                                   1081 ;	delay.h:14: TF0 = 0;
                                   1082 ;	assignBit
      000301 10 8D 02         [24] 1083 	jbc	_TF0,00136$
      000304 80 FB            [24] 1084 	sjmp	00101$
      000306                       1085 00136$:
                                   1086 ;	delay.h:15: TR0 = 0;
                                   1087 ;	assignBit
      000306 C2 8C            [12] 1088 	clr	_TR0
      000308 80 E2            [24] 1089 	sjmp	00104$
      00030A                       1090 00107$:
                                   1091 ;	delay.h:17: }
      00030A 22               [24] 1092 	ret
                                   1093 ;------------------------------------------------------------
                                   1094 ;Allocation info for local variables in function 'Delay_5us'
                                   1095 ;------------------------------------------------------------
                                   1096 ;i             Allocated to registers r7 
                                   1097 ;------------------------------------------------------------
                                   1098 ;	delay.h:19: void Delay_5us(void) {
                                   1099 ;	-----------------------------------------
                                   1100 ;	 function Delay_5us
                                   1101 ;	-----------------------------------------
      00030B                       1102 _Delay_5us:
                                   1103 ;	delay.h:21: for(i=0; i<5; i++);
      00030B 7F 05            [12] 1104 	mov	r7,#0x05
      00030D                       1105 00104$:
      00030D DF FE            [24] 1106 	djnz	r7,00104$
                                   1107 ;	delay.h:22: }
      00030F 22               [24] 1108 	ret
                                   1109 ;------------------------------------------------------------
                                   1110 ;Allocation info for local variables in function 'main'
                                   1111 ;------------------------------------------------------------
                                   1112 ;key           Allocated to registers r7 
                                   1113 ;t_go0         Allocated to registers 
                                   1114 ;counter       Allocated with name '_main_counter_10000_82'
                                   1115 ;__300000007   Allocated to registers 
                                   1116 ;th1           Allocated to registers 
                                   1117 ;__300000009   Allocated to registers 
                                   1118 ;n_SCON        Allocated to registers 
                                   1119 ;_a            Allocated with name '_main__a_50000_115'
                                   1120 ;_b            Allocated with name '_main__b_50000_115'
                                   1121 ;__400000018   Allocated to registers r4 r5 r6 r7 
                                   1122 ;__400000014   Allocated to registers r4 r5 r6 r7 
                                   1123 ;delta_angle   Allocated to registers r4 r5 r6 r7 
                                   1124 ;__400000015   Allocated to registers r0 r1 r2 r3 
                                   1125 ;__400000016   Allocated to registers r4 r5 r6 r7 
                                   1126 ;vx            Allocated to registers 
                                   1127 ;vy            Allocated to registers 
                                   1128 ;__400000019   Allocated to registers 
                                   1129 ;value         Allocated to registers 
                                   1130 ;------------------------------------------------------------
                                   1131 ;	pgc.c:71: int main(void) {    
                                   1132 ;	-----------------------------------------
                                   1133 ;	 function main
                                   1134 ;	-----------------------------------------
      000310                       1135 _main:
                                   1136 ;	pgc.c:74: byte_t counter = 0;
      000310 75 45 00         [24] 1137 	mov	_main_counter_10000_82,#0x00
                                   1138 ;	serial.h:14: TMOD |= 0x20;
      000313 43 89 20         [24] 1139 	orl	_TMOD,#0x20
                                   1140 ;	serial.h:15: TH1 = th1;
      000316 75 8D FD         [24] 1141 	mov	_TH1,#0xfd
                                   1142 ;	serial.h:16: TL1 = th1;
      000319 75 8B FD         [24] 1143 	mov	_TL1,#0xfd
                                   1144 ;	serial.h:17: TR1 = 1;
                                   1145 ;	assignBit
      00031C D2 8E            [12] 1146 	setb	_TR1
                                   1147 ;	serial.h:9: SCON = n_SCON;
      00031E 75 98 50         [24] 1148 	mov	_SCON,#0x50
                                   1149 ;	pgc.c:81: Serial_SendByte(0x09); // request gravity y
      000321 75 82 09         [24] 1150 	mov	dpl, #0x09
      000324 12 02 84         [24] 1151 	lcall	_Serial_SendByte
                                   1152 ;	pgc.c:82: gravity_y = Serial_ReadFloat(); // wait answer and save
      000327 12 02 B6         [24] 1153 	lcall	_Serial_ReadFloat
      00032A AB 82            [24] 1154 	mov	r3, dpl
      00032C AC 83            [24] 1155 	mov	r4, dph
      00032E AD F0            [24] 1156 	mov	r5, b
      000330 FE               [12] 1157 	mov	r6, a
      000331 90 00 25         [24] 1158 	mov	dptr,#_gravity_y
      000334 EB               [12] 1159 	mov	a,r3
      000335 F0               [24] 1160 	movx	@dptr,a
      000336 EC               [12] 1161 	mov	a,r4
      000337 A3               [24] 1162 	inc	dptr
      000338 F0               [24] 1163 	movx	@dptr,a
      000339 ED               [12] 1164 	mov	a,r5
      00033A A3               [24] 1165 	inc	dptr
      00033B F0               [24] 1166 	movx	@dptr,a
      00033C EE               [12] 1167 	mov	a,r6
      00033D A3               [24] 1168 	inc	dptr
      00033E F0               [24] 1169 	movx	@dptr,a
                                   1170 ;	pgc.c:86: TMOD &= 0xF0;
      00033F 53 89 F0         [24] 1171 	anl	_TMOD,#0xf0
                                   1172 ;	pgc.c:87: TMOD |= 0x01;
      000342 43 89 01         [24] 1173 	orl	_TMOD,#0x01
                                   1174 ;	pgc.c:89: TH0 = 0x00;
      000345 75 8C 00         [24] 1175 	mov	_TH0,#0x00
                                   1176 ;	pgc.c:90: TL0 = 0x00;
      000348 75 8A 00         [24] 1177 	mov	_TL0,#0x00
                                   1178 ;	pgc.c:92: ET0 = 0; // ignore for now
                                   1179 ;	assignBit
      00034B C2 A9            [12] 1180 	clr	_ET0
                                   1181 ;	pgc.c:94: EA = 1;
                                   1182 ;	assignBit
      00034D D2 AF            [12] 1183 	setb	_EA
                                   1184 ;	pgc.c:96: TR0 = 1;
                                   1185 ;	assignBit
      00034F D2 8C            [12] 1186 	setb	_TR0
                                   1187 ;	pgc.c:101: for (key=1; key<=3; key++) {
      000351 7E 01            [12] 1188 	mov	r6,#0x01
      000353                       1189 00150$:
                                   1190 ;	pgc.c:102: MAX7219_Select(key);
      000353 8E 82            [24] 1191 	mov	dpl, r6
      000355 C0 06            [24] 1192 	push	ar6
      000357 12 01 94         [24] 1193 	lcall	_MAX7219_Select
                                   1194 ;	display.h:67: MAX7219_Write(MAX7219_REG_SHUTDOWN, 0x01);  // wake up
      00035A 75 21 01         [24] 1195 	mov	_MAX7219_Write_PARM_2,#0x01
      00035D 75 82 0C         [24] 1196 	mov	dpl, #0x0c
      000360 12 01 9D         [24] 1197 	lcall	_MAX7219_Write
                                   1198 ;	display.h:68: MAX7219_Write(MAX7219_REG_TEST, 0x00);      // normal mode
      000363 75 21 00         [24] 1199 	mov	_MAX7219_Write_PARM_2,#0x00
      000366 75 82 0F         [24] 1200 	mov	dpl, #0x0f
      000369 12 01 9D         [24] 1201 	lcall	_MAX7219_Write
                                   1202 ;	display.h:69: MAX7219_Write(MAX7219_REG_DECODE, 0xFF);    // decode mode
      00036C 75 21 FF         [24] 1203 	mov	_MAX7219_Write_PARM_2,#0xff
      00036F 75 82 09         [24] 1204 	mov	dpl, #0x09
      000372 12 01 9D         [24] 1205 	lcall	_MAX7219_Write
                                   1206 ;	display.h:70: MAX7219_Write(MAX7219_REG_SCANLIMIT, 0x07); // amount digits
      000375 75 21 07         [24] 1207 	mov	_MAX7219_Write_PARM_2,#0x07
      000378 75 82 0B         [24] 1208 	mov	dpl, #0x0b
      00037B 12 01 9D         [24] 1209 	lcall	_MAX7219_Write
                                   1210 ;	display.h:71: MAX7219_Write(MAX7219_REG_INTENSITY, 0x0F); // brightness
      00037E 75 21 0F         [24] 1211 	mov	_MAX7219_Write_PARM_2,#0x0f
      000381 75 82 0A         [24] 1212 	mov	dpl, #0x0a
      000384 12 01 9D         [24] 1213 	lcall	_MAX7219_Write
      000387 D0 06            [24] 1214 	pop	ar6
                                   1215 ;	pgc.c:101: for (key=1; key<=3; key++) {
      000389 0E               [12] 1216 	inc	r6
      00038A EE               [12] 1217 	mov	a,r6
      00038B 24 FC            [12] 1218 	add	a,#0xff - 0x03
      00038D 50 C4            [24] 1219 	jnc	00150$
                                   1220 ;	pgc.c:107: while (1) {
      00038F                       1221 00141$:
                                   1222 ;	pgc.c:108: counter++;
      00038F 05 45            [12] 1223 	inc	_main_counter_10000_82
                                   1224 ;	pgc.c:58: Serial_SendByte(0x20); // request package
      000391 75 82 20         [24] 1225 	mov	dpl, #0x20
      000394 12 02 84         [24] 1226 	lcall	_Serial_SendByte
                                   1227 ;	pgc.c:60: ut = Serial_ReadFloat();
      000397 12 02 B6         [24] 1228 	lcall	_Serial_ReadFloat
      00039A AB 82            [24] 1229 	mov	r3, dpl
      00039C AC 83            [24] 1230 	mov	r4, dph
      00039E AD F0            [24] 1231 	mov	r5, b
      0003A0 FE               [12] 1232 	mov	r6, a
      0003A1 90 00 21         [24] 1233 	mov	dptr,#_ut
      0003A4 EB               [12] 1234 	mov	a,r3
      0003A5 F0               [24] 1235 	movx	@dptr,a
      0003A6 EC               [12] 1236 	mov	a,r4
      0003A7 A3               [24] 1237 	inc	dptr
      0003A8 F0               [24] 1238 	movx	@dptr,a
      0003A9 ED               [12] 1239 	mov	a,r5
      0003AA A3               [24] 1240 	inc	dptr
      0003AB F0               [24] 1241 	movx	@dptr,a
      0003AC EE               [12] 1242 	mov	a,r6
      0003AD A3               [24] 1243 	inc	dptr
      0003AE F0               [24] 1244 	movx	@dptr,a
                                   1245 ;	pgc.c:61: pos_x = Serial_ReadFloat();
      0003AF 12 02 B6         [24] 1246 	lcall	_Serial_ReadFloat
      0003B2 AB 82            [24] 1247 	mov	r3, dpl
      0003B4 AC 83            [24] 1248 	mov	r4, dph
      0003B6 AD F0            [24] 1249 	mov	r5, b
      0003B8 FE               [12] 1250 	mov	r6, a
      0003B9 90 00 01         [24] 1251 	mov	dptr,#_pos_x
      0003BC EB               [12] 1252 	mov	a,r3
      0003BD F0               [24] 1253 	movx	@dptr,a
      0003BE EC               [12] 1254 	mov	a,r4
      0003BF A3               [24] 1255 	inc	dptr
      0003C0 F0               [24] 1256 	movx	@dptr,a
      0003C1 ED               [12] 1257 	mov	a,r5
      0003C2 A3               [24] 1258 	inc	dptr
      0003C3 F0               [24] 1259 	movx	@dptr,a
      0003C4 EE               [12] 1260 	mov	a,r6
      0003C5 A3               [24] 1261 	inc	dptr
      0003C6 F0               [24] 1262 	movx	@dptr,a
                                   1263 ;	pgc.c:62: pos_y = Serial_ReadFloat();
      0003C7 12 02 B6         [24] 1264 	lcall	_Serial_ReadFloat
      0003CA AB 82            [24] 1265 	mov	r3, dpl
      0003CC AC 83            [24] 1266 	mov	r4, dph
      0003CE AD F0            [24] 1267 	mov	r5, b
      0003D0 FE               [12] 1268 	mov	r6, a
      0003D1 90 00 05         [24] 1269 	mov	dptr,#_pos_y
      0003D4 EB               [12] 1270 	mov	a,r3
      0003D5 F0               [24] 1271 	movx	@dptr,a
      0003D6 EC               [12] 1272 	mov	a,r4
      0003D7 A3               [24] 1273 	inc	dptr
      0003D8 F0               [24] 1274 	movx	@dptr,a
      0003D9 ED               [12] 1275 	mov	a,r5
      0003DA A3               [24] 1276 	inc	dptr
      0003DB F0               [24] 1277 	movx	@dptr,a
      0003DC EE               [12] 1278 	mov	a,r6
      0003DD A3               [24] 1279 	inc	dptr
      0003DE F0               [24] 1280 	movx	@dptr,a
                                   1281 ;	pgc.c:63: vel_x = Serial_ReadFloat();
      0003DF 12 02 B6         [24] 1282 	lcall	_Serial_ReadFloat
      0003E2 AB 82            [24] 1283 	mov	r3, dpl
      0003E4 AC 83            [24] 1284 	mov	r4, dph
      0003E6 AD F0            [24] 1285 	mov	r5, b
      0003E8 FE               [12] 1286 	mov	r6, a
      0003E9 90 00 09         [24] 1287 	mov	dptr,#_vel_x
      0003EC EB               [12] 1288 	mov	a,r3
      0003ED F0               [24] 1289 	movx	@dptr,a
      0003EE EC               [12] 1290 	mov	a,r4
      0003EF A3               [24] 1291 	inc	dptr
      0003F0 F0               [24] 1292 	movx	@dptr,a
      0003F1 ED               [12] 1293 	mov	a,r5
      0003F2 A3               [24] 1294 	inc	dptr
      0003F3 F0               [24] 1295 	movx	@dptr,a
      0003F4 EE               [12] 1296 	mov	a,r6
      0003F5 A3               [24] 1297 	inc	dptr
      0003F6 F0               [24] 1298 	movx	@dptr,a
                                   1299 ;	pgc.c:64: vel_y = Serial_ReadFloat();
      0003F7 12 02 B6         [24] 1300 	lcall	_Serial_ReadFloat
      0003FA AB 82            [24] 1301 	mov	r3, dpl
      0003FC AC 83            [24] 1302 	mov	r4, dph
      0003FE AD F0            [24] 1303 	mov	r5, b
      000400 FE               [12] 1304 	mov	r6, a
      000401 90 00 0D         [24] 1305 	mov	dptr,#_vel_y
      000404 EB               [12] 1306 	mov	a,r3
      000405 F0               [24] 1307 	movx	@dptr,a
      000406 EC               [12] 1308 	mov	a,r4
      000407 A3               [24] 1309 	inc	dptr
      000408 F0               [24] 1310 	movx	@dptr,a
      000409 ED               [12] 1311 	mov	a,r5
      00040A A3               [24] 1312 	inc	dptr
      00040B F0               [24] 1313 	movx	@dptr,a
      00040C EE               [12] 1314 	mov	a,r6
      00040D A3               [24] 1315 	inc	dptr
      00040E F0               [24] 1316 	movx	@dptr,a
                                   1317 ;	pgc.c:65: angle = Serial_ReadFloat();
      00040F 12 02 B6         [24] 1318 	lcall	_Serial_ReadFloat
      000412 AB 82            [24] 1319 	mov	r3, dpl
      000414 AC 83            [24] 1320 	mov	r4, dph
      000416 AD F0            [24] 1321 	mov	r5, b
      000418 FE               [12] 1322 	mov	r6, a
      000419 90 00 11         [24] 1323 	mov	dptr,#_angle
      00041C EB               [12] 1324 	mov	a,r3
      00041D F0               [24] 1325 	movx	@dptr,a
      00041E EC               [12] 1326 	mov	a,r4
      00041F A3               [24] 1327 	inc	dptr
      000420 F0               [24] 1328 	movx	@dptr,a
      000421 ED               [12] 1329 	mov	a,r5
      000422 A3               [24] 1330 	inc	dptr
      000423 F0               [24] 1331 	movx	@dptr,a
      000424 EE               [12] 1332 	mov	a,r6
      000425 A3               [24] 1333 	inc	dptr
      000426 F0               [24] 1334 	movx	@dptr,a
                                   1335 ;	pgc.c:66: ang_vel = Serial_ReadFloat();
      000427 12 02 B6         [24] 1336 	lcall	_Serial_ReadFloat
      00042A AB 82            [24] 1337 	mov	r3, dpl
      00042C AC 83            [24] 1338 	mov	r4, dph
      00042E AD F0            [24] 1339 	mov	r5, b
      000430 FE               [12] 1340 	mov	r6, a
      000431 90 00 15         [24] 1341 	mov	dptr,#_ang_vel
      000434 EB               [12] 1342 	mov	a,r3
      000435 F0               [24] 1343 	movx	@dptr,a
      000436 EC               [12] 1344 	mov	a,r4
      000437 A3               [24] 1345 	inc	dptr
      000438 F0               [24] 1346 	movx	@dptr,a
      000439 ED               [12] 1347 	mov	a,r5
      00043A A3               [24] 1348 	inc	dptr
      00043B F0               [24] 1349 	movx	@dptr,a
      00043C EE               [12] 1350 	mov	a,r6
      00043D A3               [24] 1351 	inc	dptr
      00043E F0               [24] 1352 	movx	@dptr,a
                                   1353 ;	pgc.c:67: av_accel = Serial_ReadFloat();
      00043F 12 02 B6         [24] 1354 	lcall	_Serial_ReadFloat
      000442 AB 82            [24] 1355 	mov	r3, dpl
      000444 AC 83            [24] 1356 	mov	r4, dph
      000446 AD F0            [24] 1357 	mov	r5, b
      000448 FE               [12] 1358 	mov	r6, a
      000449 90 00 19         [24] 1359 	mov	dptr,#_av_accel
      00044C EB               [12] 1360 	mov	a,r3
      00044D F0               [24] 1361 	movx	@dptr,a
      00044E EC               [12] 1362 	mov	a,r4
      00044F A3               [24] 1363 	inc	dptr
      000450 F0               [24] 1364 	movx	@dptr,a
      000451 ED               [12] 1365 	mov	a,r5
      000452 A3               [24] 1366 	inc	dptr
      000453 F0               [24] 1367 	movx	@dptr,a
      000454 EE               [12] 1368 	mov	a,r6
      000455 A3               [24] 1369 	inc	dptr
      000456 F0               [24] 1370 	movx	@dptr,a
                                   1371 ;	pgc.c:68: av_accel_ang = Serial_ReadFloat();
      000457 12 02 B6         [24] 1372 	lcall	_Serial_ReadFloat
      00045A AB 82            [24] 1373 	mov	r3, dpl
      00045C AC 83            [24] 1374 	mov	r4, dph
      00045E AD F0            [24] 1375 	mov	r5, b
      000460 FE               [12] 1376 	mov	r6, a
      000461 90 00 1D         [24] 1377 	mov	dptr,#_av_accel_ang
      000464 EB               [12] 1378 	mov	a,r3
      000465 F0               [24] 1379 	movx	@dptr,a
      000466 EC               [12] 1380 	mov	a,r4
      000467 A3               [24] 1381 	inc	dptr
      000468 F0               [24] 1382 	movx	@dptr,a
      000469 ED               [12] 1383 	mov	a,r5
      00046A A3               [24] 1384 	inc	dptr
      00046B F0               [24] 1385 	movx	@dptr,a
      00046C EE               [12] 1386 	mov	a,r6
      00046D A3               [24] 1387 	inc	dptr
      00046E F0               [24] 1388 	movx	@dptr,a
                                   1389 ;	pgc.c:112: t_go = t_go0 - ut;
      00046F 90 00 21         [24] 1390 	mov	dptr,#_ut
      000472 E0               [24] 1391 	movx	a,@dptr
      000473 C0 E0            [24] 1392 	push	acc
      000475 A3               [24] 1393 	inc	dptr
      000476 E0               [24] 1394 	movx	a,@dptr
      000477 C0 E0            [24] 1395 	push	acc
      000479 A3               [24] 1396 	inc	dptr
      00047A E0               [24] 1397 	movx	a,@dptr
      00047B C0 E0            [24] 1398 	push	acc
      00047D A3               [24] 1399 	inc	dptr
      00047E E0               [24] 1400 	movx	a,@dptr
      00047F C0 E0            [24] 1401 	push	acc
      000481 90 00 00         [24] 1402 	mov	dptr,#0x0000
      000484 75 F0 F0         [24] 1403 	mov	b, #0xf0
      000487 74 41            [12] 1404 	mov	a, #0x41
      000489 12 0A A0         [24] 1405 	lcall	___fssub
      00048C 85 82 3E         [24] 1406 	mov	_t_go,dpl
      00048F 85 83 3F         [24] 1407 	mov	(_t_go + 1),dph
      000492 85 F0 40         [24] 1408 	mov	(_t_go + 2),b
      000495 F5 41            [12] 1409 	mov	(_t_go + 3),a
      000497 E5 81            [12] 1410 	mov	a,sp
      000499 24 FC            [12] 1411 	add	a,#0xfc
      00049B F5 81            [12] 1412 	mov	sp,a
                                   1413 ;	pgc.c:114: if (t_go < 3.0f) t_go = 3.0f;
      00049D E4               [12] 1414 	clr	a
      00049E C0 E0            [24] 1415 	push	acc
      0004A0 C0 E0            [24] 1416 	push	acc
      0004A2 74 40            [12] 1417 	mov	a,#0x40
      0004A4 C0 E0            [24] 1418 	push	acc
      0004A6 C0 E0            [24] 1419 	push	acc
      0004A8 85 3E 82         [24] 1420 	mov	dpl, _t_go
      0004AB 85 3F 83         [24] 1421 	mov	dph, (_t_go + 1)
      0004AE 85 40 F0         [24] 1422 	mov	b, (_t_go + 2)
      0004B1 E5 41            [12] 1423 	mov	a, (_t_go + 3)
      0004B3 12 0F 53         [24] 1424 	lcall	___fslt
      0004B6 AE 82            [24] 1425 	mov	r6, dpl
      0004B8 E5 81            [12] 1426 	mov	a,sp
      0004BA 24 FC            [12] 1427 	add	a,#0xfc
      0004BC F5 81            [12] 1428 	mov	sp,a
      0004BE EE               [12] 1429 	mov	a,r6
      0004BF 60 0B            [24] 1430 	jz	00103$
      0004C1 E4               [12] 1431 	clr	a
      0004C2 F5 3E            [12] 1432 	mov	_t_go,a
      0004C4 F5 3F            [12] 1433 	mov	(_t_go + 1),a
      0004C6 75 40 40         [24] 1434 	mov	(_t_go + 2),#0x40
      0004C9 75 41 40         [24] 1435 	mov	(_t_go + 3),#0x40
      0004CC                       1436 00103$:
                                   1437 ;	pgc.c:50: float _a = -12.0f / (t_go * t_go);
      0004CC C0 3E            [24] 1438 	push	_t_go
      0004CE C0 3F            [24] 1439 	push	(_t_go + 1)
      0004D0 C0 40            [24] 1440 	push	(_t_go + 2)
      0004D2 C0 41            [24] 1441 	push	(_t_go + 3)
      0004D4 85 3E 82         [24] 1442 	mov	dpl, _t_go
      0004D7 85 3F 83         [24] 1443 	mov	dph, (_t_go + 1)
      0004DA 85 40 F0         [24] 1444 	mov	b, (_t_go + 2)
      0004DD E5 41            [12] 1445 	mov	a, (_t_go + 3)
      0004DF 12 0B 2E         [24] 1446 	lcall	___fsmul
      0004E2 AB 82            [24] 1447 	mov	r3, dpl
      0004E4 AC 83            [24] 1448 	mov	r4, dph
      0004E6 AD F0            [24] 1449 	mov	r5, b
      0004E8 FE               [12] 1450 	mov	r6, a
      0004E9 E5 81            [12] 1451 	mov	a,sp
      0004EB 24 FC            [12] 1452 	add	a,#0xfc
      0004ED F5 81            [12] 1453 	mov	sp,a
      0004EF C0 03            [24] 1454 	push	ar3
      0004F1 C0 04            [24] 1455 	push	ar4
      0004F3 C0 05            [24] 1456 	push	ar5
      0004F5 C0 06            [24] 1457 	push	ar6
                                   1458 ;	pgc.c:51: float _b = -6.0f / t_go;
      0004F7 90 00 00         [24] 1459 	mov	dptr,#0x0000
      0004FA 75 F0 40         [24] 1460 	mov	b, #0x40
      0004FD 74 C1            [12] 1461 	mov	a, #0xc1
      0004FF 12 19 60         [24] 1462 	lcall	___fsdiv
      000502 85 82 46         [24] 1463 	mov	_main__a_50000_115,dpl
      000505 85 83 47         [24] 1464 	mov	(_main__a_50000_115 + 1),dph
      000508 85 F0 48         [24] 1465 	mov	(_main__a_50000_115 + 2),b
      00050B F5 49            [12] 1466 	mov	(_main__a_50000_115 + 3),a
      00050D E5 81            [12] 1467 	mov	a,sp
      00050F 24 FC            [12] 1468 	add	a,#0xfc
      000511 F5 81            [12] 1469 	mov	sp,a
      000513 C0 3E            [24] 1470 	push	_t_go
      000515 C0 3F            [24] 1471 	push	(_t_go + 1)
      000517 C0 40            [24] 1472 	push	(_t_go + 2)
      000519 C0 41            [24] 1473 	push	(_t_go + 3)
                                   1474 ;	pgc.c:53: a0_x = _a * pos_x + _b * vel_x;
      00051B 90 00 00         [24] 1475 	mov	dptr,#0x0000
      00051E 74 C0            [12] 1476 	mov	a,#0xc0
      000520 F5 F0            [12] 1477 	mov	b,a
      000522 12 19 60         [24] 1478 	lcall	___fsdiv
      000525 85 82 4A         [24] 1479 	mov	_main__b_50000_115,dpl
      000528 85 83 4B         [24] 1480 	mov	(_main__b_50000_115 + 1),dph
      00052B 85 F0 4C         [24] 1481 	mov	(_main__b_50000_115 + 2),b
      00052E F5 4D            [12] 1482 	mov	(_main__b_50000_115 + 3),a
      000530 E5 81            [12] 1483 	mov	a,sp
      000532 24 FC            [12] 1484 	add	a,#0xfc
      000534 F5 81            [12] 1485 	mov	sp,a
      000536 90 00 01         [24] 1486 	mov	dptr,#_pos_x
      000539 E0               [24] 1487 	movx	a,@dptr
      00053A C0 E0            [24] 1488 	push	acc
      00053C A3               [24] 1489 	inc	dptr
      00053D E0               [24] 1490 	movx	a,@dptr
      00053E C0 E0            [24] 1491 	push	acc
      000540 A3               [24] 1492 	inc	dptr
      000541 E0               [24] 1493 	movx	a,@dptr
      000542 C0 E0            [24] 1494 	push	acc
      000544 A3               [24] 1495 	inc	dptr
      000545 E0               [24] 1496 	movx	a,@dptr
      000546 C0 E0            [24] 1497 	push	acc
      000548 85 46 82         [24] 1498 	mov	dpl, _main__a_50000_115
      00054B 85 47 83         [24] 1499 	mov	dph, (_main__a_50000_115 + 1)
      00054E 85 48 F0         [24] 1500 	mov	b, (_main__a_50000_115 + 2)
      000551 E5 49            [12] 1501 	mov	a, (_main__a_50000_115 + 3)
      000553 12 0B 2E         [24] 1502 	lcall	___fsmul
      000556 A8 82            [24] 1503 	mov	r0, dpl
      000558 A9 83            [24] 1504 	mov	r1, dph
      00055A AA F0            [24] 1505 	mov	r2, b
      00055C FF               [12] 1506 	mov	r7, a
      00055D E5 81            [12] 1507 	mov	a,sp
      00055F 24 FC            [12] 1508 	add	a,#0xfc
      000561 F5 81            [12] 1509 	mov	sp,a
      000563 C0 07            [24] 1510 	push	ar7
      000565 C0 02            [24] 1511 	push	ar2
      000567 C0 01            [24] 1512 	push	ar1
      000569 C0 00            [24] 1513 	push	ar0
      00056B 90 00 09         [24] 1514 	mov	dptr,#_vel_x
      00056E E0               [24] 1515 	movx	a,@dptr
      00056F C0 E0            [24] 1516 	push	acc
      000571 A3               [24] 1517 	inc	dptr
      000572 E0               [24] 1518 	movx	a,@dptr
      000573 C0 E0            [24] 1519 	push	acc
      000575 A3               [24] 1520 	inc	dptr
      000576 E0               [24] 1521 	movx	a,@dptr
      000577 C0 E0            [24] 1522 	push	acc
      000579 A3               [24] 1523 	inc	dptr
      00057A E0               [24] 1524 	movx	a,@dptr
      00057B C0 E0            [24] 1525 	push	acc
      00057D 85 4A 82         [24] 1526 	mov	dpl, _main__b_50000_115
      000580 85 4B 83         [24] 1527 	mov	dph, (_main__b_50000_115 + 1)
      000583 85 4C F0         [24] 1528 	mov	b, (_main__b_50000_115 + 2)
      000586 E5 4D            [12] 1529 	mov	a, (_main__b_50000_115 + 3)
      000588 12 0B 2E         [24] 1530 	lcall	___fsmul
      00058B AB 82            [24] 1531 	mov	r3, dpl
      00058D AC 83            [24] 1532 	mov	r4, dph
      00058F AD F0            [24] 1533 	mov	r5, b
      000591 FE               [12] 1534 	mov	r6, a
      000592 E5 81            [12] 1535 	mov	a,sp
      000594 24 FC            [12] 1536 	add	a,#0xfc
      000596 F5 81            [12] 1537 	mov	sp,a
      000598 D0 00            [24] 1538 	pop	ar0
      00059A D0 01            [24] 1539 	pop	ar1
      00059C D0 02            [24] 1540 	pop	ar2
      00059E D0 07            [24] 1541 	pop	ar7
      0005A0 C0 03            [24] 1542 	push	ar3
      0005A2 C0 04            [24] 1543 	push	ar4
      0005A4 C0 05            [24] 1544 	push	ar5
      0005A6 C0 06            [24] 1545 	push	ar6
      0005A8 88 82            [24] 1546 	mov	dpl, r0
      0005AA 89 83            [24] 1547 	mov	dph, r1
      0005AC 8A F0            [24] 1548 	mov	b, r2
      0005AE EF               [12] 1549 	mov	a, r7
      0005AF 12 11 B6         [24] 1550 	lcall	___fsadd
      0005B2 85 82 36         [24] 1551 	mov	_a0_x,dpl
      0005B5 85 83 37         [24] 1552 	mov	(_a0_x + 1),dph
      0005B8 85 F0 38         [24] 1553 	mov	(_a0_x + 2),b
      0005BB F5 39            [12] 1554 	mov	(_a0_x + 3),a
      0005BD E5 81            [12] 1555 	mov	a,sp
      0005BF 24 FC            [12] 1556 	add	a,#0xfc
      0005C1 F5 81            [12] 1557 	mov	sp,a
                                   1558 ;	pgc.c:54: a0_y = _a * pos_y + _b * vel_y - gravity_y;
      0005C3 90 00 05         [24] 1559 	mov	dptr,#_pos_y
      0005C6 E0               [24] 1560 	movx	a,@dptr
      0005C7 C0 E0            [24] 1561 	push	acc
      0005C9 A3               [24] 1562 	inc	dptr
      0005CA E0               [24] 1563 	movx	a,@dptr
      0005CB C0 E0            [24] 1564 	push	acc
      0005CD A3               [24] 1565 	inc	dptr
      0005CE E0               [24] 1566 	movx	a,@dptr
      0005CF C0 E0            [24] 1567 	push	acc
      0005D1 A3               [24] 1568 	inc	dptr
      0005D2 E0               [24] 1569 	movx	a,@dptr
      0005D3 C0 E0            [24] 1570 	push	acc
      0005D5 85 46 82         [24] 1571 	mov	dpl, _main__a_50000_115
      0005D8 85 47 83         [24] 1572 	mov	dph, (_main__a_50000_115 + 1)
      0005DB 85 48 F0         [24] 1573 	mov	b, (_main__a_50000_115 + 2)
      0005DE E5 49            [12] 1574 	mov	a, (_main__a_50000_115 + 3)
      0005E0 12 0B 2E         [24] 1575 	lcall	___fsmul
      0005E3 AC 82            [24] 1576 	mov	r4, dpl
      0005E5 AD 83            [24] 1577 	mov	r5, dph
      0005E7 AE F0            [24] 1578 	mov	r6, b
      0005E9 FF               [12] 1579 	mov	r7, a
      0005EA E5 81            [12] 1580 	mov	a,sp
      0005EC 24 FC            [12] 1581 	add	a,#0xfc
      0005EE F5 81            [12] 1582 	mov	sp,a
      0005F0 C0 07            [24] 1583 	push	ar7
      0005F2 C0 06            [24] 1584 	push	ar6
      0005F4 C0 05            [24] 1585 	push	ar5
      0005F6 C0 04            [24] 1586 	push	ar4
      0005F8 90 00 0D         [24] 1587 	mov	dptr,#_vel_y
      0005FB E0               [24] 1588 	movx	a,@dptr
      0005FC C0 E0            [24] 1589 	push	acc
      0005FE A3               [24] 1590 	inc	dptr
      0005FF E0               [24] 1591 	movx	a,@dptr
      000600 C0 E0            [24] 1592 	push	acc
      000602 A3               [24] 1593 	inc	dptr
      000603 E0               [24] 1594 	movx	a,@dptr
      000604 C0 E0            [24] 1595 	push	acc
      000606 A3               [24] 1596 	inc	dptr
      000607 E0               [24] 1597 	movx	a,@dptr
      000608 C0 E0            [24] 1598 	push	acc
      00060A 85 4A 82         [24] 1599 	mov	dpl, _main__b_50000_115
      00060D 85 4B 83         [24] 1600 	mov	dph, (_main__b_50000_115 + 1)
      000610 85 4C F0         [24] 1601 	mov	b, (_main__b_50000_115 + 2)
      000613 E5 4D            [12] 1602 	mov	a, (_main__b_50000_115 + 3)
      000615 12 0B 2E         [24] 1603 	lcall	___fsmul
      000618 A8 82            [24] 1604 	mov	r0, dpl
      00061A A9 83            [24] 1605 	mov	r1, dph
      00061C AA F0            [24] 1606 	mov	r2, b
      00061E FB               [12] 1607 	mov	r3, a
      00061F E5 81            [12] 1608 	mov	a,sp
      000621 24 FC            [12] 1609 	add	a,#0xfc
      000623 F5 81            [12] 1610 	mov	sp,a
      000625 D0 04            [24] 1611 	pop	ar4
      000627 D0 05            [24] 1612 	pop	ar5
      000629 D0 06            [24] 1613 	pop	ar6
      00062B D0 07            [24] 1614 	pop	ar7
      00062D C0 00            [24] 1615 	push	ar0
      00062F C0 01            [24] 1616 	push	ar1
      000631 C0 02            [24] 1617 	push	ar2
      000633 C0 03            [24] 1618 	push	ar3
      000635 8C 82            [24] 1619 	mov	dpl, r4
      000637 8D 83            [24] 1620 	mov	dph, r5
      000639 8E F0            [24] 1621 	mov	b, r6
      00063B EF               [12] 1622 	mov	a, r7
      00063C 12 11 B6         [24] 1623 	lcall	___fsadd
      00063F AC 82            [24] 1624 	mov	r4, dpl
      000641 AD 83            [24] 1625 	mov	r5, dph
      000643 AE F0            [24] 1626 	mov	r6, b
      000645 FF               [12] 1627 	mov	r7, a
      000646 E5 81            [12] 1628 	mov	a,sp
      000648 24 FC            [12] 1629 	add	a,#0xfc
      00064A F5 81            [12] 1630 	mov	sp,a
      00064C 90 00 25         [24] 1631 	mov	dptr,#_gravity_y
      00064F E0               [24] 1632 	movx	a,@dptr
      000650 C0 E0            [24] 1633 	push	acc
      000652 A3               [24] 1634 	inc	dptr
      000653 E0               [24] 1635 	movx	a,@dptr
      000654 C0 E0            [24] 1636 	push	acc
      000656 A3               [24] 1637 	inc	dptr
      000657 E0               [24] 1638 	movx	a,@dptr
      000658 C0 E0            [24] 1639 	push	acc
      00065A A3               [24] 1640 	inc	dptr
      00065B E0               [24] 1641 	movx	a,@dptr
      00065C C0 E0            [24] 1642 	push	acc
      00065E 8C 82            [24] 1643 	mov	dpl, r4
      000660 8D 83            [24] 1644 	mov	dph, r5
      000662 8E F0            [24] 1645 	mov	b, r6
      000664 EF               [12] 1646 	mov	a, r7
      000665 12 0A A0         [24] 1647 	lcall	___fssub
      000668 85 82 3A         [24] 1648 	mov	_a0_y,dpl
      00066B 85 83 3B         [24] 1649 	mov	(_a0_y + 1),dph
      00066E 85 F0 3C         [24] 1650 	mov	(_a0_y + 2),b
      000671 F5 3D            [12] 1651 	mov	(_a0_y + 3),a
      000673 E5 81            [12] 1652 	mov	a,sp
      000675 24 FC            [12] 1653 	add	a,#0xfc
      000677 F5 81            [12] 1654 	mov	sp,a
                                   1655 ;	pgc.c:120: throttle = sqrtf(a0_x * a0_x + a0_y * a0_y) / av_accel;
      000679 C0 36            [24] 1656 	push	_a0_x
      00067B C0 37            [24] 1657 	push	(_a0_x + 1)
      00067D C0 38            [24] 1658 	push	(_a0_x + 2)
      00067F C0 39            [24] 1659 	push	(_a0_x + 3)
      000681 85 36 82         [24] 1660 	mov	dpl, _a0_x
      000684 85 37 83         [24] 1661 	mov	dph, (_a0_x + 1)
      000687 85 38 F0         [24] 1662 	mov	b, (_a0_x + 2)
      00068A E5 39            [12] 1663 	mov	a, (_a0_x + 3)
      00068C 12 0B 2E         [24] 1664 	lcall	___fsmul
      00068F AC 82            [24] 1665 	mov	r4, dpl
      000691 AD 83            [24] 1666 	mov	r5, dph
      000693 AE F0            [24] 1667 	mov	r6, b
      000695 FF               [12] 1668 	mov	r7, a
      000696 E5 81            [12] 1669 	mov	a,sp
      000698 24 FC            [12] 1670 	add	a,#0xfc
      00069A F5 81            [12] 1671 	mov	sp,a
      00069C C0 07            [24] 1672 	push	ar7
      00069E C0 06            [24] 1673 	push	ar6
      0006A0 C0 05            [24] 1674 	push	ar5
      0006A2 C0 04            [24] 1675 	push	ar4
      0006A4 C0 3A            [24] 1676 	push	_a0_y
      0006A6 C0 3B            [24] 1677 	push	(_a0_y + 1)
      0006A8 C0 3C            [24] 1678 	push	(_a0_y + 2)
      0006AA C0 3D            [24] 1679 	push	(_a0_y + 3)
      0006AC 85 3A 82         [24] 1680 	mov	dpl, _a0_y
      0006AF 85 3B 83         [24] 1681 	mov	dph, (_a0_y + 1)
      0006B2 85 3C F0         [24] 1682 	mov	b, (_a0_y + 2)
      0006B5 E5 3D            [12] 1683 	mov	a, (_a0_y + 3)
      0006B7 12 0B 2E         [24] 1684 	lcall	___fsmul
      0006BA A8 82            [24] 1685 	mov	r0, dpl
      0006BC A9 83            [24] 1686 	mov	r1, dph
      0006BE AA F0            [24] 1687 	mov	r2, b
      0006C0 FB               [12] 1688 	mov	r3, a
      0006C1 E5 81            [12] 1689 	mov	a,sp
      0006C3 24 FC            [12] 1690 	add	a,#0xfc
      0006C5 F5 81            [12] 1691 	mov	sp,a
      0006C7 D0 04            [24] 1692 	pop	ar4
      0006C9 D0 05            [24] 1693 	pop	ar5
      0006CB D0 06            [24] 1694 	pop	ar6
      0006CD D0 07            [24] 1695 	pop	ar7
      0006CF C0 00            [24] 1696 	push	ar0
      0006D1 C0 01            [24] 1697 	push	ar1
      0006D3 C0 02            [24] 1698 	push	ar2
      0006D5 C0 03            [24] 1699 	push	ar3
      0006D7 8C 82            [24] 1700 	mov	dpl, r4
      0006D9 8D 83            [24] 1701 	mov	dph, r5
      0006DB 8E F0            [24] 1702 	mov	b, r6
      0006DD EF               [12] 1703 	mov	a, r7
      0006DE 12 11 B6         [24] 1704 	lcall	___fsadd
      0006E1 AC 82            [24] 1705 	mov	r4, dpl
      0006E3 AD 83            [24] 1706 	mov	r5, dph
      0006E5 AE F0            [24] 1707 	mov	r6, b
      0006E7 FF               [12] 1708 	mov	r7, a
      0006E8 E5 81            [12] 1709 	mov	a,sp
      0006EA 24 FC            [12] 1710 	add	a,#0xfc
      0006EC F5 81            [12] 1711 	mov	sp,a
      0006EE 8C 82            [24] 1712 	mov	dpl, r4
      0006F0 8D 83            [24] 1713 	mov	dph, r5
      0006F2 8E F0            [24] 1714 	mov	b, r6
      0006F4 EF               [12] 1715 	mov	a, r7
      0006F5 12 0C F2         [24] 1716 	lcall	_sqrtf
      0006F8 AC 82            [24] 1717 	mov	r4, dpl
      0006FA AD 83            [24] 1718 	mov	r5, dph
      0006FC AE F0            [24] 1719 	mov	r6, b
      0006FE FF               [12] 1720 	mov	r7, a
      0006FF 90 00 19         [24] 1721 	mov	dptr,#_av_accel
      000702 E0               [24] 1722 	movx	a,@dptr
      000703 C0 E0            [24] 1723 	push	acc
      000705 A3               [24] 1724 	inc	dptr
      000706 E0               [24] 1725 	movx	a,@dptr
      000707 C0 E0            [24] 1726 	push	acc
      000709 A3               [24] 1727 	inc	dptr
      00070A E0               [24] 1728 	movx	a,@dptr
      00070B C0 E0            [24] 1729 	push	acc
      00070D A3               [24] 1730 	inc	dptr
      00070E E0               [24] 1731 	movx	a,@dptr
      00070F C0 E0            [24] 1732 	push	acc
      000711 8C 82            [24] 1733 	mov	dpl, r4
      000713 8D 83            [24] 1734 	mov	dph, r5
      000715 8E F0            [24] 1735 	mov	b, r6
      000717 EF               [12] 1736 	mov	a, r7
      000718 12 19 60         [24] 1737 	lcall	___fsdiv
      00071B 85 82 2B         [24] 1738 	mov	_throttle,dpl
      00071E 85 83 2C         [24] 1739 	mov	(_throttle + 1),dph
      000721 85 F0 2D         [24] 1740 	mov	(_throttle + 2),b
      000724 F5 2E            [12] 1741 	mov	(_throttle + 3),a
      000726 E5 81            [12] 1742 	mov	a,sp
      000728 24 FC            [12] 1743 	add	a,#0xfc
      00072A F5 81            [12] 1744 	mov	sp,a
                                   1745 ;	pgc.c:123: if (throttle != 0) {
      00072C 85 2B F0         [24] 1746 	mov	b,_throttle
      00072F E5 2C            [12] 1747 	mov	a,(_throttle + 1)
      000731 42 F0            [12] 1748 	orl	b,a
      000733 E5 2D            [12] 1749 	mov	a,(_throttle + 2)
      000735 42 F0            [12] 1750 	orl	b,a
      000737 E5 2E            [12] 1751 	mov	a,(_throttle + 3)
      000739 54 7F            [12] 1752 	anl	a,#0x7F
      00073B 45 F0            [12] 1753 	orl	a,b
      00073D 70 03            [24] 1754 	jnz	00279$
      00073F 02 09 B5         [24] 1755 	ljmp	00110$
      000742                       1756 00279$:
                                   1757 ;	pgc.c:125: float delta_angle = angle_from_vec2(a0_x, a0_y) - angle;
      000742 AC 3A            [24] 1758 	mov	r4,_a0_y
      000744 AD 3B            [24] 1759 	mov	r5,(_a0_y + 1)
      000746 AE 3C            [24] 1760 	mov	r6,(_a0_y + 2)
      000748 AF 3D            [24] 1761 	mov	r7,(_a0_y + 3)
      00074A A8 36            [24] 1762 	mov	r0,_a0_x
      00074C A9 37            [24] 1763 	mov	r1,(_a0_x + 1)
      00074E AA 38            [24] 1764 	mov	r2,(_a0_x + 2)
      000750 AB 39            [24] 1765 	mov	r3,(_a0_x + 3)
      000752 8C 08            [24] 1766 	mov	_atan2f_PARM_2,r4
      000754 8D 09            [24] 1767 	mov	(_atan2f_PARM_2 + 1),r5
      000756 8E 0A            [24] 1768 	mov	(_atan2f_PARM_2 + 2),r6
      000758 EF               [12] 1769 	mov	a,r7
      000759 B2 E7            [12] 1770 	cpl	acc.7
      00075B F5 0B            [12] 1771 	mov	(_atan2f_PARM_2 + 3),a
      00075D 88 82            [24] 1772 	mov	dpl, r0
      00075F 89 83            [24] 1773 	mov	dph, r1
      000761 8A F0            [24] 1774 	mov	b, r2
      000763 EB               [12] 1775 	mov	a, r3
      000764 12 0F 83         [24] 1776 	lcall	_atan2f
      000767 AC 82            [24] 1777 	mov	r4, dpl
      000769 AD 83            [24] 1778 	mov	r5, dph
      00076B AE F0            [24] 1779 	mov	r6, b
      00076D FF               [12] 1780 	mov	r7, a
      00076E 90 00 11         [24] 1781 	mov	dptr,#_angle
      000771 E0               [24] 1782 	movx	a,@dptr
      000772 C0 E0            [24] 1783 	push	acc
      000774 A3               [24] 1784 	inc	dptr
      000775 E0               [24] 1785 	movx	a,@dptr
      000776 C0 E0            [24] 1786 	push	acc
      000778 A3               [24] 1787 	inc	dptr
      000779 E0               [24] 1788 	movx	a,@dptr
      00077A C0 E0            [24] 1789 	push	acc
      00077C A3               [24] 1790 	inc	dptr
      00077D E0               [24] 1791 	movx	a,@dptr
      00077E C0 E0            [24] 1792 	push	acc
                                   1793 ;	pgc.c:127: if (delta_angle > 3.14159265f) {
      000780 8C 82            [24] 1794 	mov	dpl, r4
      000782 8D 83            [24] 1795 	mov	dph, r5
      000784 8E F0            [24] 1796 	mov	b, r6
      000786 EF               [12] 1797 	mov	a, r7
      000787 12 0A A0         [24] 1798 	lcall	___fssub
      00078A AC 82            [24] 1799 	mov	r4, dpl
      00078C AD 83            [24] 1800 	mov	r5, dph
      00078E AE F0            [24] 1801 	mov	r6, b
      000790 FF               [12] 1802 	mov	r7, a
      000791 E5 81            [12] 1803 	mov	a,sp
      000793 24 FC            [12] 1804 	add	a,#0xfc
      000795 F5 81            [12] 1805 	mov	sp,a
      000797 C0 07            [24] 1806 	push	ar7
      000799 C0 06            [24] 1807 	push	ar6
      00079B C0 05            [24] 1808 	push	ar5
      00079D C0 04            [24] 1809 	push	ar4
      00079F C0 04            [24] 1810 	push	ar4
      0007A1 C0 05            [24] 1811 	push	ar5
      0007A3 C0 06            [24] 1812 	push	ar6
      0007A5 C0 07            [24] 1813 	push	ar7
      0007A7 90 0F DB         [24] 1814 	mov	dptr,#0x0fdb
      0007AA 75 F0 49         [24] 1815 	mov	b, #0x49
      0007AD 74 40            [12] 1816 	mov	a, #0x40
      0007AF 12 0F 53         [24] 1817 	lcall	___fslt
      0007B2 AB 82            [24] 1818 	mov	r3, dpl
      0007B4 E5 81            [12] 1819 	mov	a,sp
      0007B6 24 FC            [12] 1820 	add	a,#0xfc
      0007B8 F5 81            [12] 1821 	mov	sp,a
      0007BA D0 04            [24] 1822 	pop	ar4
      0007BC D0 05            [24] 1823 	pop	ar5
      0007BE D0 06            [24] 1824 	pop	ar6
      0007C0 D0 07            [24] 1825 	pop	ar7
      0007C2 EB               [12] 1826 	mov	a,r3
      0007C3 60 29            [24] 1827 	jz	00107$
                                   1828 ;	pgc.c:128: delta_angle -= 6.2831853f;
      0007C5 74 DB            [12] 1829 	mov	a,#0xdb
      0007C7 C0 E0            [24] 1830 	push	acc
      0007C9 74 0F            [12] 1831 	mov	a,#0x0f
      0007CB C0 E0            [24] 1832 	push	acc
      0007CD 74 C9            [12] 1833 	mov	a,#0xc9
      0007CF C0 E0            [24] 1834 	push	acc
      0007D1 74 40            [12] 1835 	mov	a,#0x40
      0007D3 C0 E0            [24] 1836 	push	acc
      0007D5 8C 82            [24] 1837 	mov	dpl, r4
      0007D7 8D 83            [24] 1838 	mov	dph, r5
      0007D9 8E F0            [24] 1839 	mov	b, r6
      0007DB EF               [12] 1840 	mov	a, r7
      0007DC 12 0A A0         [24] 1841 	lcall	___fssub
      0007DF AC 82            [24] 1842 	mov	r4, dpl
      0007E1 AD 83            [24] 1843 	mov	r5, dph
      0007E3 AE F0            [24] 1844 	mov	r6, b
      0007E5 FF               [12] 1845 	mov	r7, a
      0007E6 E5 81            [12] 1846 	mov	a,sp
      0007E8 24 FC            [12] 1847 	add	a,#0xfc
      0007EA F5 81            [12] 1848 	mov	sp,a
      0007EC 80 5C            [24] 1849 	sjmp	00108$
      0007EE                       1850 00107$:
                                   1851 ;	pgc.c:129: } else if (delta_angle < -3.14159265f) {
      0007EE C0 07            [24] 1852 	push	ar7
      0007F0 C0 06            [24] 1853 	push	ar6
      0007F2 C0 05            [24] 1854 	push	ar5
      0007F4 C0 04            [24] 1855 	push	ar4
      0007F6 74 DB            [12] 1856 	mov	a,#0xdb
      0007F8 C0 E0            [24] 1857 	push	acc
      0007FA 74 0F            [12] 1858 	mov	a,#0x0f
      0007FC C0 E0            [24] 1859 	push	acc
      0007FE 74 49            [12] 1860 	mov	a,#0x49
      000800 C0 E0            [24] 1861 	push	acc
      000802 74 C0            [12] 1862 	mov	a,#0xc0
      000804 C0 E0            [24] 1863 	push	acc
      000806 8C 82            [24] 1864 	mov	dpl, r4
      000808 8D 83            [24] 1865 	mov	dph, r5
      00080A 8E F0            [24] 1866 	mov	b, r6
      00080C EF               [12] 1867 	mov	a, r7
      00080D 12 0F 53         [24] 1868 	lcall	___fslt
      000810 AB 82            [24] 1869 	mov	r3, dpl
      000812 E5 81            [12] 1870 	mov	a,sp
      000814 24 FC            [12] 1871 	add	a,#0xfc
      000816 F5 81            [12] 1872 	mov	sp,a
      000818 D0 04            [24] 1873 	pop	ar4
      00081A D0 05            [24] 1874 	pop	ar5
      00081C D0 06            [24] 1875 	pop	ar6
      00081E D0 07            [24] 1876 	pop	ar7
      000820 EB               [12] 1877 	mov	a,r3
      000821 60 27            [24] 1878 	jz	00108$
                                   1879 ;	pgc.c:130: delta_angle += 6.2831853f;
      000823 74 DB            [12] 1880 	mov	a,#0xdb
      000825 C0 E0            [24] 1881 	push	acc
      000827 74 0F            [12] 1882 	mov	a,#0x0f
      000829 C0 E0            [24] 1883 	push	acc
      00082B 74 C9            [12] 1884 	mov	a,#0xc9
      00082D C0 E0            [24] 1885 	push	acc
      00082F 74 40            [12] 1886 	mov	a,#0x40
      000831 C0 E0            [24] 1887 	push	acc
      000833 8C 82            [24] 1888 	mov	dpl, r4
      000835 8D 83            [24] 1889 	mov	dph, r5
      000837 8E F0            [24] 1890 	mov	b, r6
      000839 EF               [12] 1891 	mov	a, r7
      00083A 12 11 B6         [24] 1892 	lcall	___fsadd
      00083D AC 82            [24] 1893 	mov	r4, dpl
      00083F AD 83            [24] 1894 	mov	r5, dph
      000841 AE F0            [24] 1895 	mov	r6, b
      000843 FF               [12] 1896 	mov	r7, a
      000844 E5 81            [12] 1897 	mov	a,sp
      000846 24 FC            [12] 1898 	add	a,#0xfc
      000848 F5 81            [12] 1899 	mov	sp,a
      00084A                       1900 00108$:
                                   1901 ;	pgc.c:135: gimbal = (ang_vel - sqrtf(0.8f * fabsf(delta_angle) * av_accel_ang * throttle) * signf(delta_angle)) / av_accel_ang;
      00084A 8C 82            [24] 1902 	mov	dpl, r4
      00084C 8D 83            [24] 1903 	mov	dph, r5
      00084E 8E F0            [24] 1904 	mov	b, r6
      000850 EF               [12] 1905 	mov	a, r7
      000851 C0 07            [24] 1906 	push	ar7
      000853 C0 06            [24] 1907 	push	ar6
      000855 C0 05            [24] 1908 	push	ar5
      000857 C0 04            [24] 1909 	push	ar4
      000859 12 12 0F         [24] 1910 	lcall	_fabsf
      00085C A8 82            [24] 1911 	mov	r0, dpl
      00085E A9 83            [24] 1912 	mov	r1, dph
      000860 AA F0            [24] 1913 	mov	r2, b
      000862 FB               [12] 1914 	mov	r3, a
      000863 C0 00            [24] 1915 	push	ar0
      000865 C0 01            [24] 1916 	push	ar1
      000867 C0 02            [24] 1917 	push	ar2
      000869 C0 03            [24] 1918 	push	ar3
      00086B 90 CC CD         [24] 1919 	mov	dptr,#0xcccd
      00086E 75 F0 4C         [24] 1920 	mov	b, #0x4c
      000871 74 3F            [12] 1921 	mov	a, #0x3f
      000873 12 0B 2E         [24] 1922 	lcall	___fsmul
      000876 A8 82            [24] 1923 	mov	r0, dpl
      000878 A9 83            [24] 1924 	mov	r1, dph
      00087A AA F0            [24] 1925 	mov	r2, b
      00087C FB               [12] 1926 	mov	r3, a
      00087D E5 81            [12] 1927 	mov	a,sp
      00087F 24 FC            [12] 1928 	add	a,#0xfc
      000881 F5 81            [12] 1929 	mov	sp,a
      000883 90 00 1D         [24] 1930 	mov	dptr,#_av_accel_ang
      000886 E0               [24] 1931 	movx	a,@dptr
      000887 C0 E0            [24] 1932 	push	acc
      000889 A3               [24] 1933 	inc	dptr
      00088A E0               [24] 1934 	movx	a,@dptr
      00088B C0 E0            [24] 1935 	push	acc
      00088D A3               [24] 1936 	inc	dptr
      00088E E0               [24] 1937 	movx	a,@dptr
      00088F C0 E0            [24] 1938 	push	acc
      000891 A3               [24] 1939 	inc	dptr
      000892 E0               [24] 1940 	movx	a,@dptr
      000893 C0 E0            [24] 1941 	push	acc
      000895 88 82            [24] 1942 	mov	dpl, r0
      000897 89 83            [24] 1943 	mov	dph, r1
      000899 8A F0            [24] 1944 	mov	b, r2
      00089B EB               [12] 1945 	mov	a, r3
      00089C 12 0B 2E         [24] 1946 	lcall	___fsmul
      00089F A8 82            [24] 1947 	mov	r0, dpl
      0008A1 A9 83            [24] 1948 	mov	r1, dph
      0008A3 AA F0            [24] 1949 	mov	r2, b
      0008A5 FB               [12] 1950 	mov	r3, a
      0008A6 E5 81            [12] 1951 	mov	a,sp
      0008A8 24 FC            [12] 1952 	add	a,#0xfc
      0008AA F5 81            [12] 1953 	mov	sp,a
      0008AC C0 2B            [24] 1954 	push	_throttle
      0008AE C0 2C            [24] 1955 	push	(_throttle + 1)
      0008B0 C0 2D            [24] 1956 	push	(_throttle + 2)
      0008B2 C0 2E            [24] 1957 	push	(_throttle + 3)
      0008B4 88 82            [24] 1958 	mov	dpl, r0
      0008B6 89 83            [24] 1959 	mov	dph, r1
      0008B8 8A F0            [24] 1960 	mov	b, r2
      0008BA EB               [12] 1961 	mov	a, r3
      0008BB 12 0B 2E         [24] 1962 	lcall	___fsmul
      0008BE A8 82            [24] 1963 	mov	r0, dpl
      0008C0 A9 83            [24] 1964 	mov	r1, dph
      0008C2 AA F0            [24] 1965 	mov	r2, b
      0008C4 FB               [12] 1966 	mov	r3, a
      0008C5 E5 81            [12] 1967 	mov	a,sp
      0008C7 24 FC            [12] 1968 	add	a,#0xfc
      0008C9 F5 81            [12] 1969 	mov	sp,a
      0008CB 88 82            [24] 1970 	mov	dpl, r0
      0008CD 89 83            [24] 1971 	mov	dph, r1
      0008CF 8A F0            [24] 1972 	mov	b, r2
      0008D1 EB               [12] 1973 	mov	a, r3
      0008D2 12 0C F2         [24] 1974 	lcall	_sqrtf
      0008D5 A8 82            [24] 1975 	mov	r0, dpl
      0008D7 A9 83            [24] 1976 	mov	r1, dph
      0008D9 AA F0            [24] 1977 	mov	r2, b
      0008DB FB               [12] 1978 	mov	r3, a
      0008DC D0 04            [24] 1979 	pop	ar4
      0008DE D0 05            [24] 1980 	pop	ar5
      0008E0 D0 06            [24] 1981 	pop	ar6
      0008E2 D0 07            [24] 1982 	pop	ar7
                                   1983 ;	utils.h:17: return value < 0 ? -1 : 1;
      0008E4 C0 03            [24] 1984 	push	ar3
      0008E6 C0 02            [24] 1985 	push	ar2
      0008E8 C0 01            [24] 1986 	push	ar1
      0008EA C0 00            [24] 1987 	push	ar0
      0008EC E4               [12] 1988 	clr	a
      0008ED C0 E0            [24] 1989 	push	acc
      0008EF C0 E0            [24] 1990 	push	acc
      0008F1 C0 E0            [24] 1991 	push	acc
      0008F3 C0 E0            [24] 1992 	push	acc
      0008F5 8C 82            [24] 1993 	mov	dpl, r4
      0008F7 8D 83            [24] 1994 	mov	dph, r5
      0008F9 8E F0            [24] 1995 	mov	b, r6
      0008FB EF               [12] 1996 	mov	a, r7
      0008FC 12 0F 53         [24] 1997 	lcall	___fslt
      0008FF AF 82            [24] 1998 	mov	r7, dpl
      000901 E5 81            [12] 1999 	mov	a,sp
      000903 24 FC            [12] 2000 	add	a,#0xfc
      000905 F5 81            [12] 2001 	mov	sp,a
      000907 D0 00            [24] 2002 	pop	ar0
      000909 D0 01            [24] 2003 	pop	ar1
      00090B D0 02            [24] 2004 	pop	ar2
      00090D D0 03            [24] 2005 	pop	ar3
      00090F EF               [12] 2006 	mov	a,r7
      000910 60 06            [24] 2007 	jz	00154$
      000912 7E FF            [12] 2008 	mov	r6,#0xff
      000914 7F FF            [12] 2009 	mov	r7,#0xff
      000916 80 04            [24] 2010 	sjmp	00155$
      000918                       2011 00154$:
      000918 7E 01            [12] 2012 	mov	r6,#0x01
      00091A 7F 00            [12] 2013 	mov	r7,#0x00
      00091C                       2014 00155$:
      00091C 8E 82            [24] 2015 	mov	dpl, r6
      00091E 8F 83            [24] 2016 	mov	dph, r7
      000920 C0 03            [24] 2017 	push	ar3
      000922 C0 02            [24] 2018 	push	ar2
      000924 C0 01            [24] 2019 	push	ar1
      000926 C0 00            [24] 2020 	push	ar0
      000928 12 13 E6         [24] 2021 	lcall	___sint2fs
      00092B AC 82            [24] 2022 	mov	r4, dpl
      00092D AD 83            [24] 2023 	mov	r5, dph
      00092F AE F0            [24] 2024 	mov	r6, b
      000931 FF               [12] 2025 	mov	r7, a
      000932 D0 00            [24] 2026 	pop	ar0
      000934 D0 01            [24] 2027 	pop	ar1
      000936 D0 02            [24] 2028 	pop	ar2
      000938 D0 03            [24] 2029 	pop	ar3
                                   2030 ;	pgc.c:135: gimbal = (ang_vel - sqrtf(0.8f * fabsf(delta_angle) * av_accel_ang * throttle) * signf(delta_angle)) / av_accel_ang;
      00093A C0 04            [24] 2031 	push	ar4
      00093C C0 05            [24] 2032 	push	ar5
      00093E C0 06            [24] 2033 	push	ar6
      000940 C0 07            [24] 2034 	push	ar7
      000942 88 82            [24] 2035 	mov	dpl, r0
      000944 89 83            [24] 2036 	mov	dph, r1
      000946 8A F0            [24] 2037 	mov	b, r2
      000948 EB               [12] 2038 	mov	a, r3
      000949 12 0B 2E         [24] 2039 	lcall	___fsmul
      00094C AC 82            [24] 2040 	mov	r4, dpl
      00094E AD 83            [24] 2041 	mov	r5, dph
      000950 AE F0            [24] 2042 	mov	r6, b
      000952 FF               [12] 2043 	mov	r7, a
      000953 E5 81            [12] 2044 	mov	a,sp
      000955 24 FC            [12] 2045 	add	a,#0xfc
      000957 F5 81            [12] 2046 	mov	sp,a
      000959 90 00 15         [24] 2047 	mov	dptr,#_ang_vel
      00095C E0               [24] 2048 	movx	a,@dptr
      00095D F8               [12] 2049 	mov	r0,a
      00095E A3               [24] 2050 	inc	dptr
      00095F E0               [24] 2051 	movx	a,@dptr
      000960 F9               [12] 2052 	mov	r1,a
      000961 A3               [24] 2053 	inc	dptr
      000962 E0               [24] 2054 	movx	a,@dptr
      000963 FA               [12] 2055 	mov	r2,a
      000964 A3               [24] 2056 	inc	dptr
      000965 E0               [24] 2057 	movx	a,@dptr
      000966 FB               [12] 2058 	mov	r3,a
      000967 C0 04            [24] 2059 	push	ar4
      000969 C0 05            [24] 2060 	push	ar5
      00096B C0 06            [24] 2061 	push	ar6
      00096D C0 07            [24] 2062 	push	ar7
      00096F 88 82            [24] 2063 	mov	dpl, r0
      000971 89 83            [24] 2064 	mov	dph, r1
      000973 8A F0            [24] 2065 	mov	b, r2
      000975 EB               [12] 2066 	mov	a, r3
      000976 12 0A A0         [24] 2067 	lcall	___fssub
      000979 AC 82            [24] 2068 	mov	r4, dpl
      00097B AD 83            [24] 2069 	mov	r5, dph
      00097D AE F0            [24] 2070 	mov	r6, b
      00097F FF               [12] 2071 	mov	r7, a
      000980 E5 81            [12] 2072 	mov	a,sp
      000982 24 FC            [12] 2073 	add	a,#0xfc
      000984 F5 81            [12] 2074 	mov	sp,a
      000986 90 00 1D         [24] 2075 	mov	dptr,#_av_accel_ang
      000989 E0               [24] 2076 	movx	a,@dptr
      00098A C0 E0            [24] 2077 	push	acc
      00098C A3               [24] 2078 	inc	dptr
      00098D E0               [24] 2079 	movx	a,@dptr
      00098E C0 E0            [24] 2080 	push	acc
      000990 A3               [24] 2081 	inc	dptr
      000991 E0               [24] 2082 	movx	a,@dptr
      000992 C0 E0            [24] 2083 	push	acc
      000994 A3               [24] 2084 	inc	dptr
      000995 E0               [24] 2085 	movx	a,@dptr
      000996 C0 E0            [24] 2086 	push	acc
      000998 8C 82            [24] 2087 	mov	dpl, r4
      00099A 8D 83            [24] 2088 	mov	dph, r5
      00099C 8E F0            [24] 2089 	mov	b, r6
      00099E EF               [12] 2090 	mov	a, r7
      00099F 12 19 60         [24] 2091 	lcall	___fsdiv
      0009A2 85 82 2F         [24] 2092 	mov	_gimbal,dpl
      0009A5 85 83 30         [24] 2093 	mov	(_gimbal + 1),dph
      0009A8 85 F0 31         [24] 2094 	mov	(_gimbal + 2),b
      0009AB F5 32            [12] 2095 	mov	(_gimbal + 3),a
      0009AD E5 81            [12] 2096 	mov	a,sp
      0009AF 24 FC            [12] 2097 	add	a,#0xfc
      0009B1 F5 81            [12] 2098 	mov	sp,a
      0009B3 80 09            [24] 2099 	sjmp	00111$
      0009B5                       2100 00110$:
                                   2101 ;	pgc.c:137: gimbal = 0.0f;
      0009B5 E4               [12] 2102 	clr	a
      0009B6 F5 2F            [12] 2103 	mov	_gimbal,a
      0009B8 F5 30            [12] 2104 	mov	(_gimbal + 1),a
      0009BA F5 31            [12] 2105 	mov	(_gimbal + 2),a
      0009BC F5 32            [12] 2106 	mov	(_gimbal + 3),a
      0009BE                       2107 00111$:
                                   2108 ;	pgc.c:141: Serial_SendByte(0x21); // send package
      0009BE 75 82 21         [24] 2109 	mov	dpl, #0x21
      0009C1 12 02 84         [24] 2110 	lcall	_Serial_SendByte
                                   2111 ;	pgc.c:142: Serial_SendFloat(throttle); // throttle
      0009C4 85 2B 82         [24] 2112 	mov	dpl, _throttle
      0009C7 85 2C 83         [24] 2113 	mov	dph, (_throttle + 1)
      0009CA 85 2D F0         [24] 2114 	mov	b, (_throttle + 2)
      0009CD E5 2E            [12] 2115 	mov	a, (_throttle + 3)
      0009CF 12 02 8D         [24] 2116 	lcall	_Serial_SendFloat
                                   2117 ;	pgc.c:143: Serial_SendFloat(gimbal); // gimbal
      0009D2 85 2F 82         [24] 2118 	mov	dpl, _gimbal
      0009D5 85 30 83         [24] 2119 	mov	dph, (_gimbal + 1)
      0009D8 85 31 F0         [24] 2120 	mov	b, (_gimbal + 2)
      0009DB E5 32            [12] 2121 	mov	a, (_gimbal + 3)
      0009DD 12 02 8D         [24] 2122 	lcall	_Serial_SendFloat
                                   2123 ;	pgc.c:146: if (counter > 10) {
      0009E0 E5 45            [12] 2124 	mov	a,_main_counter_10000_82
      0009E2 24 F5            [12] 2125 	add	a,#0xff - 0x0a
      0009E4 50 3C            [24] 2126 	jnc	00113$
                                   2127 ;	pgc.c:147: counter = 0;
      0009E6 75 45 00         [24] 2128 	mov	_main_counter_10000_82,#0x00
                                   2129 ;	pgc.c:148: Display_Write(1, t_go, PROG);
      0009E9 85 3E 22         [24] 2130 	mov	_Display_Write_PARM_2,_t_go
      0009EC 85 3F 23         [24] 2131 	mov	(_Display_Write_PARM_2 + 1),(_t_go + 1)
      0009EF 85 40 24         [24] 2132 	mov	(_Display_Write_PARM_2 + 2),(_t_go + 2)
      0009F2 85 41 25         [24] 2133 	mov	(_Display_Write_PARM_2 + 3),(_t_go + 3)
      0009F5 85 33 26         [24] 2134 	mov	_Display_Write_PARM_3,_PROG
      0009F8 75 82 01         [24] 2135 	mov	dpl, #0x01
      0009FB 12 01 AF         [24] 2136 	lcall	_Display_Write
                                   2137 ;	pgc.c:149: Display_Write(2, 0, VERB);
      0009FE E4               [12] 2138 	clr	a
      0009FF F5 22            [12] 2139 	mov	_Display_Write_PARM_2,a
      000A01 F5 23            [12] 2140 	mov	(_Display_Write_PARM_2 + 1),a
      000A03 F5 24            [12] 2141 	mov	(_Display_Write_PARM_2 + 2),a
      000A05 F5 25            [12] 2142 	mov	(_Display_Write_PARM_2 + 3),a
      000A07 85 34 26         [24] 2143 	mov	_Display_Write_PARM_3,_VERB
      000A0A 75 82 02         [24] 2144 	mov	dpl, #0x02
      000A0D 12 01 AF         [24] 2145 	lcall	_Display_Write
                                   2146 ;	pgc.c:150: Display_Write(3, 0, NOUN);
      000A10 E4               [12] 2147 	clr	a
      000A11 F5 22            [12] 2148 	mov	_Display_Write_PARM_2,a
      000A13 F5 23            [12] 2149 	mov	(_Display_Write_PARM_2 + 1),a
      000A15 F5 24            [12] 2150 	mov	(_Display_Write_PARM_2 + 2),a
      000A17 F5 25            [12] 2151 	mov	(_Display_Write_PARM_2 + 3),a
      000A19 85 35 26         [24] 2152 	mov	_Display_Write_PARM_3,_NOUN
      000A1C 75 82 03         [24] 2153 	mov	dpl, #0x03
      000A1F 12 01 AF         [24] 2154 	lcall	_Display_Write
      000A22                       2155 00113$:
                                   2156 ;	pgc.c:154: key = Keyboard_Read();
      000A22 12 00 B1         [24] 2157 	lcall	_Keyboard_Read
      000A25 AF 82            [24] 2158 	mov	r7, dpl
                                   2159 ;	pgc.c:156: if (key == 0xFF) {
      000A27 BF FF 06         [24] 2160 	cjne	r7,#0xff,00115$
                                   2161 ;	pgc.c:157: dsky_key_pressed = false;
      000A2A 75 44 00         [24] 2162 	mov	_dsky_key_pressed,#0x00
                                   2163 ;	pgc.c:158: continue;
      000A2D 02 03 8F         [24] 2164 	ljmp	00141$
      000A30                       2165 00115$:
                                   2166 ;	pgc.c:161: if (dsky_key_pressed) continue;
      000A30 E5 44            [12] 2167 	mov	a,_dsky_key_pressed
      000A32 60 03            [24] 2168 	jz	00286$
      000A34 02 03 8F         [24] 2169 	ljmp	00141$
      000A37                       2170 00286$:
                                   2171 ;	pgc.c:163: dsky_key_pressed = true;
      000A37 75 44 01         [24] 2172 	mov	_dsky_key_pressed,#0x01
                                   2173 ;	pgc.c:173: if (key == 0x0A) { // CLR (*)
      000A3A BF 0A 06         [24] 2174 	cjne	r7,#0x0a,00119$
                                   2175 ;	pgc.c:174: dsky_buffer = 0;
      000A3D 75 42 00         [24] 2176 	mov	_dsky_buffer,#0x00
                                   2177 ;	pgc.c:175: continue;
      000A40 02 03 8F         [24] 2178 	ljmp	00141$
      000A43                       2179 00119$:
                                   2180 ;	pgc.c:178: if (key == 0x0B) { // ENTER (#)
      000A43 BF 0B 2C         [24] 2181 	cjne	r7,#0x0b,00131$
                                   2182 ;	pgc.c:179: if (dsky_state == 0) continue;
      000A46 E5 43            [12] 2183 	mov	a,_dsky_state
      000A48 70 03            [24] 2184 	jnz	00291$
      000A4A 02 03 8F         [24] 2185 	ljmp	00141$
      000A4D                       2186 00291$:
                                   2187 ;	pgc.c:181: if (dsky_state == 1) PROG = dsky_buffer;
      000A4D 74 01            [12] 2188 	mov	a,#0x01
      000A4F B5 43 05         [24] 2189 	cjne	a,_dsky_state,00128$
      000A52 85 42 33         [24] 2190 	mov	_PROG,_dsky_buffer
      000A55 80 12            [24] 2191 	sjmp	00129$
      000A57                       2192 00128$:
                                   2193 ;	pgc.c:182: else if (dsky_state == 2) VERB = dsky_buffer;
      000A57 74 02            [12] 2194 	mov	a,#0x02
      000A59 B5 43 05         [24] 2195 	cjne	a,_dsky_state,00125$
      000A5C 85 42 34         [24] 2196 	mov	_VERB,_dsky_buffer
      000A5F 80 08            [24] 2197 	sjmp	00129$
      000A61                       2198 00125$:
                                   2199 ;	pgc.c:183: else if (dsky_state == 3) NOUN = dsky_buffer;
      000A61 74 03            [12] 2200 	mov	a,#0x03
      000A63 B5 43 03         [24] 2201 	cjne	a,_dsky_state,00129$
      000A66 85 42 35         [24] 2202 	mov	_NOUN,_dsky_buffer
      000A69                       2203 00129$:
                                   2204 ;	pgc.c:185: dsky_buffer = 0;
      000A69 75 42 00         [24] 2205 	mov	_dsky_buffer,#0x00
                                   2206 ;	pgc.c:186: dsky_state = 0;
      000A6C 75 43 00         [24] 2207 	mov	_dsky_state,#0x00
                                   2208 ;	pgc.c:188: continue;
      000A6F 02 03 8F         [24] 2209 	ljmp	00141$
      000A72                       2210 00131$:
                                   2211 ;	pgc.c:191: if (key == 0x0C) { // PROG
      000A72 BF 0C 06         [24] 2212 	cjne	r7,#0x0c,00133$
                                   2213 ;	pgc.c:192: dsky_state = 1;
      000A75 75 43 01         [24] 2214 	mov	_dsky_state,#0x01
                                   2215 ;	pgc.c:193: continue;
      000A78 02 03 8F         [24] 2216 	ljmp	00141$
      000A7B                       2217 00133$:
                                   2218 ;	pgc.c:196: if (key == 0x0D) { // VERB
      000A7B BF 0D 06         [24] 2219 	cjne	r7,#0x0d,00135$
                                   2220 ;	pgc.c:197: dsky_state = 2;
      000A7E 75 43 02         [24] 2221 	mov	_dsky_state,#0x02
                                   2222 ;	pgc.c:198: continue;
      000A81 02 03 8F         [24] 2223 	ljmp	00141$
      000A84                       2224 00135$:
                                   2225 ;	pgc.c:201: if (key == 0x0E) { // NOUN
      000A84 BF 0E 06         [24] 2226 	cjne	r7,#0x0e,00137$
                                   2227 ;	pgc.c:202: dsky_state = 3;
      000A87 75 43 03         [24] 2228 	mov	_dsky_state,#0x03
                                   2229 ;	pgc.c:203: continue;
      000A8A 02 03 8F         [24] 2230 	ljmp	00141$
      000A8D                       2231 00137$:
                                   2232 ;	pgc.c:206: if (dsky_state != 0) { // 0 - 9
      000A8D E5 43            [12] 2233 	mov	a,_dsky_state
      000A8F 70 03            [24] 2234 	jnz	00304$
      000A91 02 03 8F         [24] 2235 	ljmp	00141$
      000A94                       2236 00304$:
                                   2237 ;	pgc.c:207: dsky_buffer *= 10;
      000A94 E5 42            [12] 2238 	mov	a,_dsky_buffer
      000A96 75 F0 0A         [24] 2239 	mov	b,#0x0a
      000A99 A4               [48] 2240 	mul	ab
                                   2241 ;	pgc.c:208: dsky_buffer += key;
      000A9A 2F               [12] 2242 	add	a,r7
      000A9B F5 42            [12] 2243 	mov	_dsky_buffer,a
                                   2244 ;	pgc.c:211: }
      000A9D 02 03 8F         [24] 2245 	ljmp	00141$
                                   2246 	.area CSEG    (CODE)
                                   2247 	.area CONST   (CODE)
                                   2248 	.area XINIT   (CODE)
                                   2249 	.area CABS    (ABS,CODE)
