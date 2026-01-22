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
                                     12 	.globl _Serial_ReadFloat
                                     13 	.globl _Serial_ReadByte
                                     14 	.globl _Serial_SendFloat
                                     15 	.globl _Serial_SendByte
                                     16 	.globl _LED_WriteData
                                     17 	.globl _Display_Write
                                     18 	.globl _MAX7219_Write
                                     19 	.globl _MAX7219_Select
                                     20 	.globl _MAX7219_WriteByte
                                     21 	.globl _Keyboard_Read
                                     22 	.globl _fabsf
                                     23 	.globl _sqrtf
                                     24 	.globl _atan2f
                                     25 	.globl _CY
                                     26 	.globl _AC
                                     27 	.globl _F0
                                     28 	.globl _RS1
                                     29 	.globl _RS0
                                     30 	.globl _OV
                                     31 	.globl _FL
                                     32 	.globl _P
                                     33 	.globl _TF2
                                     34 	.globl _EXF2
                                     35 	.globl _RCLK
                                     36 	.globl _TCLK
                                     37 	.globl _EXEN2
                                     38 	.globl _TR2
                                     39 	.globl _C_T2
                                     40 	.globl _CP_RL2
                                     41 	.globl _T2CON_7
                                     42 	.globl _T2CON_6
                                     43 	.globl _T2CON_5
                                     44 	.globl _T2CON_4
                                     45 	.globl _T2CON_3
                                     46 	.globl _T2CON_2
                                     47 	.globl _T2CON_1
                                     48 	.globl _T2CON_0
                                     49 	.globl _PT2
                                     50 	.globl _PS
                                     51 	.globl _PT1
                                     52 	.globl _PX1
                                     53 	.globl _PT0
                                     54 	.globl _PX0
                                     55 	.globl _RD
                                     56 	.globl _WR
                                     57 	.globl _T1
                                     58 	.globl _T0
                                     59 	.globl _INT1
                                     60 	.globl _INT0
                                     61 	.globl _TXD
                                     62 	.globl _RXD
                                     63 	.globl _P3_7
                                     64 	.globl _P3_6
                                     65 	.globl _P3_5
                                     66 	.globl _P3_4
                                     67 	.globl _P3_3
                                     68 	.globl _P3_2
                                     69 	.globl _P3_1
                                     70 	.globl _P3_0
                                     71 	.globl _EA
                                     72 	.globl _ET2
                                     73 	.globl _ES
                                     74 	.globl _ET1
                                     75 	.globl _EX1
                                     76 	.globl _ET0
                                     77 	.globl _EX0
                                     78 	.globl _P2_7
                                     79 	.globl _P2_6
                                     80 	.globl _P2_5
                                     81 	.globl _P2_4
                                     82 	.globl _P2_3
                                     83 	.globl _P2_2
                                     84 	.globl _P2_1
                                     85 	.globl _P2_0
                                     86 	.globl _SM0
                                     87 	.globl _SM1
                                     88 	.globl _SM2
                                     89 	.globl _REN
                                     90 	.globl _TB8
                                     91 	.globl _RB8
                                     92 	.globl _TI
                                     93 	.globl _RI
                                     94 	.globl _T2EX
                                     95 	.globl _T2
                                     96 	.globl _P1_7
                                     97 	.globl _P1_6
                                     98 	.globl _P1_5
                                     99 	.globl _P1_4
                                    100 	.globl _P1_3
                                    101 	.globl _P1_2
                                    102 	.globl _P1_1
                                    103 	.globl _P1_0
                                    104 	.globl _TF1
                                    105 	.globl _TR1
                                    106 	.globl _TF0
                                    107 	.globl _TR0
                                    108 	.globl _IE1
                                    109 	.globl _IT1
                                    110 	.globl _IE0
                                    111 	.globl _IT0
                                    112 	.globl _P0_7
                                    113 	.globl _P0_6
                                    114 	.globl _P0_5
                                    115 	.globl _P0_4
                                    116 	.globl _P0_3
                                    117 	.globl _P0_2
                                    118 	.globl _P0_1
                                    119 	.globl _P0_0
                                    120 	.globl _B
                                    121 	.globl _A
                                    122 	.globl _ACC
                                    123 	.globl _PSW
                                    124 	.globl _TH2
                                    125 	.globl _TL2
                                    126 	.globl _RCAP2H
                                    127 	.globl _RCAP2L
                                    128 	.globl _T2MOD
                                    129 	.globl _T2CON
                                    130 	.globl _IP
                                    131 	.globl _P3
                                    132 	.globl _IE
                                    133 	.globl _P2
                                    134 	.globl _SBUF
                                    135 	.globl _SCON
                                    136 	.globl _P1
                                    137 	.globl _TH1
                                    138 	.globl _TH0
                                    139 	.globl _TL1
                                    140 	.globl _TL0
                                    141 	.globl _TMOD
                                    142 	.globl _TCON
                                    143 	.globl _PCON
                                    144 	.globl _DPH
                                    145 	.globl _DPL
                                    146 	.globl _SP
                                    147 	.globl _P0
                                    148 	.globl _REG3
                                    149 	.globl _REG2
                                    150 	.globl _REG1
                                    151 	.globl _fuel_level
                                    152 	.globl _gravity_y
                                    153 	.globl _ut
                                    154 	.globl _av_accel_ang
                                    155 	.globl _av_accel
                                    156 	.globl _ang_vel
                                    157 	.globl _angle
                                    158 	.globl _vel_y
                                    159 	.globl _vel_x
                                    160 	.globl _pos_y
                                    161 	.globl _pos_x
                                    162 	.globl _led_state
                                    163 	.globl _dsky_NOUN
                                    164 	.globl _dsky_VERB
                                    165 	.globl _dsky_PROG
                                    166 	.globl _dsky_state
                                    167 	.globl _dsky_key_pressed
                                    168 	.globl _t_go
                                    169 	.globl _a0_y
                                    170 	.globl _a0_x
                                    171 	.globl _gimbal
                                    172 	.globl _throttle
                                    173 	.globl _NOUN
                                    174 	.globl _VERB
                                    175 	.globl _PROG
                                    176 	.globl _Display_Write_PARM_3
                                    177 	.globl _Display_Write_PARM_2
                                    178 	.globl _MAX7219_Write_PARM_2
                                    179 ;--------------------------------------------------------
                                    180 ; special function registers
                                    181 ;--------------------------------------------------------
                                    182 	.area RSEG    (ABS,DATA)
      000000                        183 	.org 0x0000
                           000080   184 _P0	=	0x0080
                           000081   185 _SP	=	0x0081
                           000082   186 _DPL	=	0x0082
                           000083   187 _DPH	=	0x0083
                           000087   188 _PCON	=	0x0087
                           000088   189 _TCON	=	0x0088
                           000089   190 _TMOD	=	0x0089
                           00008A   191 _TL0	=	0x008a
                           00008B   192 _TL1	=	0x008b
                           00008C   193 _TH0	=	0x008c
                           00008D   194 _TH1	=	0x008d
                           000090   195 _P1	=	0x0090
                           000098   196 _SCON	=	0x0098
                           000099   197 _SBUF	=	0x0099
                           0000A0   198 _P2	=	0x00a0
                           0000A8   199 _IE	=	0x00a8
                           0000B0   200 _P3	=	0x00b0
                           0000B8   201 _IP	=	0x00b8
                           0000C8   202 _T2CON	=	0x00c8
                           0000C9   203 _T2MOD	=	0x00c9
                           0000CA   204 _RCAP2L	=	0x00ca
                           0000CB   205 _RCAP2H	=	0x00cb
                           0000CC   206 _TL2	=	0x00cc
                           0000CD   207 _TH2	=	0x00cd
                           0000D0   208 _PSW	=	0x00d0
                           0000E0   209 _ACC	=	0x00e0
                           0000E0   210 _A	=	0x00e0
                           0000F0   211 _B	=	0x00f0
                                    212 ;--------------------------------------------------------
                                    213 ; special function bits
                                    214 ;--------------------------------------------------------
                                    215 	.area RSEG    (ABS,DATA)
      000000                        216 	.org 0x0000
                           000080   217 _P0_0	=	0x0080
                           000081   218 _P0_1	=	0x0081
                           000082   219 _P0_2	=	0x0082
                           000083   220 _P0_3	=	0x0083
                           000084   221 _P0_4	=	0x0084
                           000085   222 _P0_5	=	0x0085
                           000086   223 _P0_6	=	0x0086
                           000087   224 _P0_7	=	0x0087
                           000088   225 _IT0	=	0x0088
                           000089   226 _IE0	=	0x0089
                           00008A   227 _IT1	=	0x008a
                           00008B   228 _IE1	=	0x008b
                           00008C   229 _TR0	=	0x008c
                           00008D   230 _TF0	=	0x008d
                           00008E   231 _TR1	=	0x008e
                           00008F   232 _TF1	=	0x008f
                           000090   233 _P1_0	=	0x0090
                           000091   234 _P1_1	=	0x0091
                           000092   235 _P1_2	=	0x0092
                           000093   236 _P1_3	=	0x0093
                           000094   237 _P1_4	=	0x0094
                           000095   238 _P1_5	=	0x0095
                           000096   239 _P1_6	=	0x0096
                           000097   240 _P1_7	=	0x0097
                           000090   241 _T2	=	0x0090
                           000091   242 _T2EX	=	0x0091
                           000098   243 _RI	=	0x0098
                           000099   244 _TI	=	0x0099
                           00009A   245 _RB8	=	0x009a
                           00009B   246 _TB8	=	0x009b
                           00009C   247 _REN	=	0x009c
                           00009D   248 _SM2	=	0x009d
                           00009E   249 _SM1	=	0x009e
                           00009F   250 _SM0	=	0x009f
                           0000A0   251 _P2_0	=	0x00a0
                           0000A1   252 _P2_1	=	0x00a1
                           0000A2   253 _P2_2	=	0x00a2
                           0000A3   254 _P2_3	=	0x00a3
                           0000A4   255 _P2_4	=	0x00a4
                           0000A5   256 _P2_5	=	0x00a5
                           0000A6   257 _P2_6	=	0x00a6
                           0000A7   258 _P2_7	=	0x00a7
                           0000A8   259 _EX0	=	0x00a8
                           0000A9   260 _ET0	=	0x00a9
                           0000AA   261 _EX1	=	0x00aa
                           0000AB   262 _ET1	=	0x00ab
                           0000AC   263 _ES	=	0x00ac
                           0000AD   264 _ET2	=	0x00ad
                           0000AF   265 _EA	=	0x00af
                           0000B0   266 _P3_0	=	0x00b0
                           0000B1   267 _P3_1	=	0x00b1
                           0000B2   268 _P3_2	=	0x00b2
                           0000B3   269 _P3_3	=	0x00b3
                           0000B4   270 _P3_4	=	0x00b4
                           0000B5   271 _P3_5	=	0x00b5
                           0000B6   272 _P3_6	=	0x00b6
                           0000B7   273 _P3_7	=	0x00b7
                           0000B0   274 _RXD	=	0x00b0
                           0000B1   275 _TXD	=	0x00b1
                           0000B2   276 _INT0	=	0x00b2
                           0000B3   277 _INT1	=	0x00b3
                           0000B4   278 _T0	=	0x00b4
                           0000B5   279 _T1	=	0x00b5
                           0000B6   280 _WR	=	0x00b6
                           0000B7   281 _RD	=	0x00b7
                           0000B8   282 _PX0	=	0x00b8
                           0000B9   283 _PT0	=	0x00b9
                           0000BA   284 _PX1	=	0x00ba
                           0000BB   285 _PT1	=	0x00bb
                           0000BC   286 _PS	=	0x00bc
                           0000BD   287 _PT2	=	0x00bd
                           0000C8   288 _T2CON_0	=	0x00c8
                           0000C9   289 _T2CON_1	=	0x00c9
                           0000CA   290 _T2CON_2	=	0x00ca
                           0000CB   291 _T2CON_3	=	0x00cb
                           0000CC   292 _T2CON_4	=	0x00cc
                           0000CD   293 _T2CON_5	=	0x00cd
                           0000CE   294 _T2CON_6	=	0x00ce
                           0000CF   295 _T2CON_7	=	0x00cf
                           0000C8   296 _CP_RL2	=	0x00c8
                           0000C9   297 _C_T2	=	0x00c9
                           0000CA   298 _TR2	=	0x00ca
                           0000CB   299 _EXEN2	=	0x00cb
                           0000CC   300 _TCLK	=	0x00cc
                           0000CD   301 _RCLK	=	0x00cd
                           0000CE   302 _EXF2	=	0x00ce
                           0000CF   303 _TF2	=	0x00cf
                           0000D0   304 _P	=	0x00d0
                           0000D1   305 _FL	=	0x00d1
                           0000D2   306 _OV	=	0x00d2
                           0000D3   307 _RS0	=	0x00d3
                           0000D4   308 _RS1	=	0x00d4
                           0000D5   309 _F0	=	0x00d5
                           0000D6   310 _AC	=	0x00d6
                           0000D7   311 _CY	=	0x00d7
                                    312 ;--------------------------------------------------------
                                    313 ; overlayable register banks
                                    314 ;--------------------------------------------------------
                                    315 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        316 	.ds 8
                                    317 ;--------------------------------------------------------
                                    318 ; internal ram data
                                    319 ;--------------------------------------------------------
                                    320 	.area DSEG    (DATA)
      000021                        321 _MAX7219_Write_PARM_2:
      000021                        322 	.ds 1
      000022                        323 _Display_Write_PARM_2:
      000022                        324 	.ds 4
      000026                        325 _Display_Write_PARM_3:
      000026                        326 	.ds 1
      000027                        327 _Display_Write_number_10000_56:
      000027                        328 	.ds 4
      00002B                        329 _PROG::
      00002B                        330 	.ds 1
      00002C                        331 _VERB::
      00002C                        332 	.ds 1
      00002D                        333 _NOUN::
      00002D                        334 	.ds 1
      00002E                        335 _throttle::
      00002E                        336 	.ds 4
      000032                        337 _gimbal::
      000032                        338 	.ds 4
      000036                        339 _a0_x::
      000036                        340 	.ds 4
      00003A                        341 _a0_y::
      00003A                        342 	.ds 4
      00003E                        343 _t_go::
      00003E                        344 	.ds 4
      000042                        345 _dsky_key_pressed::
      000042                        346 	.ds 1
      000043                        347 _dsky_state::
      000043                        348 	.ds 1
      000044                        349 _dsky_PROG::
      000044                        350 	.ds 1
      000045                        351 _dsky_VERB::
      000045                        352 	.ds 1
      000046                        353 _dsky_NOUN::
      000046                        354 	.ds 1
      000047                        355 _led_state::
      000047                        356 	.ds 1
      000048                        357 _main_counter_10000_80:
      000048                        358 	.ds 1
      000049                        359 _main__a_50000_120:
      000049                        360 	.ds 4
      00004D                        361 _main__b_50000_120:
      00004D                        362 	.ds 4
                                    363 ;--------------------------------------------------------
                                    364 ; overlayable items in internal ram
                                    365 ;--------------------------------------------------------
                                    366 	.area	OSEG    (OVR,DATA)
                                    367 	.area	OSEG    (OVR,DATA)
                                    368 	.area	OSEG    (OVR,DATA)
                                    369 	.area	OSEG    (OVR,DATA)
                                    370 	.area	OSEG    (OVR,DATA)
                                    371 	.area	OSEG    (OVR,DATA)
                                    372 	.area	OSEG    (OVR,DATA)
      000051                        373 _Serial_ReadFloat_value_10000_74:
      000051                        374 	.ds 4
                                    375 ;--------------------------------------------------------
                                    376 ; Stack segment in internal ram
                                    377 ;--------------------------------------------------------
                                    378 	.area SSEG
      00005C                        379 __start__stack:
      00005C                        380 	.ds	1
                                    381 
                                    382 ;--------------------------------------------------------
                                    383 ; indirectly addressable internal ram data
                                    384 ;--------------------------------------------------------
                                    385 	.area ISEG    (DATA)
                                    386 ;--------------------------------------------------------
                                    387 ; absolute internal ram data
                                    388 ;--------------------------------------------------------
                                    389 	.area IABS    (ABS,DATA)
                                    390 	.area IABS    (ABS,DATA)
                                    391 ;--------------------------------------------------------
                                    392 ; bit data
                                    393 ;--------------------------------------------------------
                                    394 	.area BSEG    (BIT)
                                    395 ;--------------------------------------------------------
                                    396 ; paged external ram data
                                    397 ;--------------------------------------------------------
                                    398 	.area PSEG    (PAG,XDATA)
                                    399 ;--------------------------------------------------------
                                    400 ; uninitialized external ram data
                                    401 ;--------------------------------------------------------
                                    402 	.area XSEG    (XDATA)
      000001                        403 _pos_x::
      000001                        404 	.ds 4
      000005                        405 _pos_y::
      000005                        406 	.ds 4
      000009                        407 _vel_x::
      000009                        408 	.ds 4
      00000D                        409 _vel_y::
      00000D                        410 	.ds 4
      000011                        411 _angle::
      000011                        412 	.ds 4
      000015                        413 _ang_vel::
      000015                        414 	.ds 4
      000019                        415 _av_accel::
      000019                        416 	.ds 4
      00001D                        417 _av_accel_ang::
      00001D                        418 	.ds 4
      000021                        419 _ut::
      000021                        420 	.ds 4
      000025                        421 _gravity_y::
      000025                        422 	.ds 4
      000029                        423 _fuel_level::
      000029                        424 	.ds 4
      00002D                        425 _REG1::
      00002D                        426 	.ds 4
      000031                        427 _REG2::
      000031                        428 	.ds 4
      000035                        429 _REG3::
      000035                        430 	.ds 4
                                    431 ;--------------------------------------------------------
                                    432 ; absolute external ram data
                                    433 ;--------------------------------------------------------
                                    434 	.area XABS    (ABS,XDATA)
                                    435 ;--------------------------------------------------------
                                    436 ; initialized external ram data
                                    437 ;--------------------------------------------------------
                                    438 	.area XISEG   (XDATA)
                                    439 	.area HOME    (CODE)
                                    440 	.area GSINIT0 (CODE)
                                    441 	.area GSINIT1 (CODE)
                                    442 	.area GSINIT2 (CODE)
                                    443 	.area GSINIT3 (CODE)
                                    444 	.area GSINIT4 (CODE)
                                    445 	.area GSINIT5 (CODE)
                                    446 	.area GSINIT  (CODE)
                                    447 	.area GSFINAL (CODE)
                                    448 	.area CSEG    (CODE)
                                    449 ;--------------------------------------------------------
                                    450 ; interrupt vector
                                    451 ;--------------------------------------------------------
                                    452 	.area HOME    (CODE)
      000000                        453 __interrupt_vect:
      000000 02 00 4C         [24]  454 	ljmp	__sdcc_gsinit_startup
                                    455 ; restartable atomic support routines
      000003                        456 	.ds	5
      000008                        457 sdcc_atomic_exchange_rollback_start::
      000008 00               [12]  458 	nop
      000009 00               [12]  459 	nop
      00000A                        460 sdcc_atomic_exchange_pdata_impl:
      00000A E2               [24]  461 	movx	a, @r0
      00000B FB               [12]  462 	mov	r3, a
      00000C EA               [12]  463 	mov	a, r2
      00000D F2               [24]  464 	movx	@r0, a
      00000E 80 2C            [24]  465 	sjmp	sdcc_atomic_exchange_exit
      000010 00               [12]  466 	nop
      000011 00               [12]  467 	nop
      000012                        468 sdcc_atomic_exchange_xdata_impl:
      000012 E0               [24]  469 	movx	a, @dptr
      000013 FB               [12]  470 	mov	r3, a
      000014 EA               [12]  471 	mov	a, r2
      000015 F0               [24]  472 	movx	@dptr, a
      000016 80 24            [24]  473 	sjmp	sdcc_atomic_exchange_exit
      000018                        474 sdcc_atomic_compare_exchange_idata_impl:
      000018 E6               [12]  475 	mov	a, @r0
      000019 B5 02 02         [24]  476 	cjne	a, ar2, .+#5
      00001C EB               [12]  477 	mov	a, r3
      00001D F6               [12]  478 	mov	@r0, a
      00001E 22               [24]  479 	ret
      00001F 00               [12]  480 	nop
      000020                        481 sdcc_atomic_compare_exchange_pdata_impl:
      000020 E2               [24]  482 	movx	a, @r0
      000021 B5 02 02         [24]  483 	cjne	a, ar2, .+#5
      000024 EB               [12]  484 	mov	a, r3
      000025 F2               [24]  485 	movx	@r0, a
      000026 22               [24]  486 	ret
      000027 00               [12]  487 	nop
      000028                        488 sdcc_atomic_compare_exchange_xdata_impl:
      000028 E0               [24]  489 	movx	a, @dptr
      000029 B5 02 02         [24]  490 	cjne	a, ar2, .+#5
      00002C EB               [12]  491 	mov	a, r3
      00002D F0               [24]  492 	movx	@dptr, a
      00002E 22               [24]  493 	ret
      00002F                        494 sdcc_atomic_exchange_rollback_end::
                                    495 
      00002F                        496 sdcc_atomic_exchange_gptr_impl::
      00002F 30 F6 E0         [24]  497 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      000032 A8 82            [24]  498 	mov	r0, dpl
      000034 20 F5 D3         [24]  499 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      000037                        500 sdcc_atomic_exchange_idata_impl:
      000037 EA               [12]  501 	mov	a, r2
      000038 C6               [12]  502 	xch	a, @r0
      000039 F5 82            [12]  503 	mov	dpl, a
      00003B 22               [24]  504 	ret
      00003C                        505 sdcc_atomic_exchange_exit:
      00003C 8B 82            [24]  506 	mov	dpl, r3
      00003E 22               [24]  507 	ret
      00003F                        508 sdcc_atomic_compare_exchange_gptr_impl::
      00003F 30 F6 E6         [24]  509 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      000042 A8 82            [24]  510 	mov	r0, dpl
      000044 20 F5 D9         [24]  511 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      000047 80 CF            [24]  512 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    513 ;--------------------------------------------------------
                                    514 ; global & static initialisations
                                    515 ;--------------------------------------------------------
                                    516 	.area HOME    (CODE)
                                    517 	.area GSINIT  (CODE)
                                    518 	.area GSFINAL (CODE)
                                    519 	.area GSINIT  (CODE)
                                    520 	.globl __sdcc_gsinit_startup
                                    521 	.globl __sdcc_program_startup
                                    522 	.globl __start__stack
                                    523 	.globl __mcs51_genXINIT
                                    524 	.globl __mcs51_genXRAMCLEAR
                                    525 	.globl __mcs51_genRAMCLEAR
                                    526 ;	pgc.c:27: bool dsky_key_pressed = false;
      0000A5 75 42 00         [24]  527 	mov	_dsky_key_pressed,#0x00
                                    528 ;	pgc.c:28: byte_t dsky_state = 0;
      0000A8 75 43 00         [24]  529 	mov	_dsky_state,#0x00
                                    530 ;	pgc.c:29: byte_t dsky_PROG = 0, dsky_VERB = 0, dsky_NOUN = 0;
      0000AB 75 44 00         [24]  531 	mov	_dsky_PROG,#0x00
                                    532 ;	pgc.c:29: __xdata float REG1, REG2, REG3;
      0000AE 75 45 00         [24]  533 	mov	_dsky_VERB,#0x00
                                    534 ;	pgc.c:29: byte_t dsky_PROG = 0, dsky_VERB = 0, dsky_NOUN = 0;
      0000B1 75 46 00         [24]  535 	mov	_dsky_NOUN,#0x00
                                    536 ;	pgc.c:32: byte_t led_state = 0b1111;
      0000B4 75 47 0F         [24]  537 	mov	_led_state,#0x0f
                                    538 	.area GSFINAL (CODE)
      0000B7 02 00 49         [24]  539 	ljmp	__sdcc_program_startup
                                    540 ;--------------------------------------------------------
                                    541 ; Home
                                    542 ;--------------------------------------------------------
                                    543 	.area HOME    (CODE)
                                    544 	.area HOME    (CODE)
      000049                        545 __sdcc_program_startup:
      000049 02 02 FE         [24]  546 	ljmp	_main
                                    547 ;	return from main will return to caller
                                    548 ;--------------------------------------------------------
                                    549 ; code
                                    550 ;--------------------------------------------------------
                                    551 	.area CSEG    (CODE)
                                    552 ;------------------------------------------------------------
                                    553 ;Allocation info for local variables in function 'Keyboard_Read'
                                    554 ;------------------------------------------------------------
                                    555 ;x             Allocated to registers r7 
                                    556 ;y             Allocated to registers r7 
                                    557 ;i             Allocated to registers r6 
                                    558 ;__400000004   Allocated to registers r3 
                                    559 ;__400000001   Allocated to registers r4 
                                    560 ;__400000002   Allocated to registers 
                                    561 ;value         Allocated to registers 
                                    562 ;__400000005   Allocated to registers 
                                    563 ;value         Allocated to registers 
                                    564 ;------------------------------------------------------------
                                    565 ;	keyboard.h:16: byte_t Keyboard_Read(void) {
                                    566 ;	-----------------------------------------
                                    567 ;	 function Keyboard_Read
                                    568 ;	-----------------------------------------
      0000BA                        569 _Keyboard_Read:
                           000007   570 	ar7 = 0x07
                           000006   571 	ar6 = 0x06
                           000005   572 	ar5 = 0x05
                           000004   573 	ar4 = 0x04
                           000003   574 	ar3 = 0x03
                           000002   575 	ar2 = 0x02
                           000001   576 	ar1 = 0x01
                           000000   577 	ar0 = 0x00
                                    578 ;	keyboard.h:23: byte_t x, y = 0x01;
      0000BA 7F 01            [12]  579 	mov	r7,#0x01
                                    580 ;	keyboard.h:25: for (byte_t i=0; i<=2; i++) {
      0000BC 7E 00            [12]  581 	mov	r6,#0x00
      0000BE                        582 00134$:
      0000BE EE               [12]  583 	mov	a,r6
      0000BF 24 FD            [12]  584 	add	a,#0xff - 0x02
      0000C1 50 03            [24]  585 	jnc	00257$
      0000C3 02 01 49         [24]  586 	ljmp	00110$
      0000C6                        587 00257$:
                                    588 ;	keyboard.h:26: KEYBOARD_PORT = 0xFF & ~y;
      0000C6 EF               [12]  589 	mov	a,r7
      0000C7 F4               [12]  590 	cpl	a
      0000C8 F5 90            [12]  591 	mov	_P1,a
                                    592 ;	keyboard.h:28: x = ~((KEYBOARD_PORT & 0xF0) >> 4) & 0x0F;
      0000CA AC 90            [24]  593 	mov	r4,_P1
      0000CC 53 04 F0         [24]  594 	anl	ar4,#0xf0
      0000CF E4               [12]  595 	clr	a
      0000D0 CC               [12]  596 	xch	a,r4
      0000D1 C4               [12]  597 	swap	a
      0000D2 54 0F            [12]  598 	anl	a,#0x0f
      0000D4 6C               [12]  599 	xrl	a,r4
      0000D5 CC               [12]  600 	xch	a,r4
      0000D6 54 0F            [12]  601 	anl	a,#0x0f
      0000D8 CC               [12]  602 	xch	a,r4
      0000D9 6C               [12]  603 	xrl	a,r4
      0000DA CC               [12]  604 	xch	a,r4
      0000DB 30 E3 02         [24]  605 	jnb	acc.3,00258$
      0000DE 44 F0            [12]  606 	orl	a,#0xfffffff0
      0000E0                        607 00258$:
      0000E0 EC               [12]  608 	mov	a,r4
      0000E1 F4               [12]  609 	cpl	a
      0000E2 FC               [12]  610 	mov	r4,a
      0000E3 74 0F            [12]  611 	mov	a,#0x0f
      0000E5 5C               [12]  612 	anl	a,r4
      0000E6 FD               [12]  613 	mov	r5,a
                                    614 ;	keyboard.h:30: if (x==8) { // last column - special functions
      0000E7 BD 08 1B         [24]  615 	cjne	r5,#0x08,00107$
                                    616 ;	keyboard.h:31: switch (y) {
      0000EA BF 01 02         [24]  617 	cjne	r7,#0x01,00261$
      0000ED 80 0A            [24]  618 	sjmp	00101$
      0000EF                        619 00261$:
      0000EF BF 02 02         [24]  620 	cjne	r7,#0x02,00262$
      0000F2 80 09            [24]  621 	sjmp	00102$
      0000F4                        622 00262$:
                                    623 ;	keyboard.h:32: case 1:
      0000F4 BF 04 0E         [24]  624 	cjne	r7,#0x04,00107$
      0000F7 80 08            [24]  625 	sjmp	00103$
      0000F9                        626 00101$:
                                    627 ;	keyboard.h:33: return 0x0C; // PROG
      0000F9 75 82 0C         [24]  628 	mov	dpl, #0x0c
      0000FC 22               [24]  629 	ret
                                    630 ;	keyboard.h:34: case 2:
      0000FD                        631 00102$:
                                    632 ;	keyboard.h:35: return 0x0D; // VERB
      0000FD 75 82 0D         [24]  633 	mov	dpl, #0x0d
      000100 22               [24]  634 	ret
                                    635 ;	keyboard.h:36: case 4:
      000101                        636 00103$:
                                    637 ;	keyboard.h:37: return 0x0E; // NOUN
      000101 75 82 0E         [24]  638 	mov	dpl, #0x0e
      000104 22               [24]  639 	ret
                                    640 ;	keyboard.h:40: }
      000105                        641 00107$:
                                    642 ;	keyboard.h:43: if (x != 0) return 3*(log2_table(y)-1) + log2_table(x); 
      000105 ED               [12]  643 	mov	a,r5
      000106 60 3A            [24]  644 	jz	00109$
                                    645 ;	keyboard.h:10: if (value == 0x01) return 1;
      000108 BF 01 04         [24]  646 	cjne	r7,#0x01,00120$
      00010B 7C 01            [12]  647 	mov	r4,#0x01
      00010D 80 10            [24]  648 	sjmp	00125$
      00010F                        649 00120$:
                                    650 ;	keyboard.h:11: if (value == 0x02) return 2;
      00010F BF 02 04         [24]  651 	cjne	r7,#0x02,00122$
      000112 7C 02            [12]  652 	mov	r4,#0x02
      000114 80 09            [24]  653 	sjmp	00125$
      000116                        654 00122$:
                                    655 ;	keyboard.h:12: if (value == 0x04) return 3;
      000116 BF 04 04         [24]  656 	cjne	r7,#0x04,00124$
      000119 7C 03            [12]  657 	mov	r4,#0x03
      00011B 80 02            [24]  658 	sjmp	00125$
      00011D                        659 00124$:
                                    660 ;	keyboard.h:13: return 0;
      00011D 7C 00            [12]  661 	mov	r4,#0x00
                                    662 ;	keyboard.h:43: if (x != 0) return 3*(log2_table(y)-1) + log2_table(x); 
      00011F                        663 00125$:
      00011F EC               [12]  664 	mov	a,r4
      000120 14               [12]  665 	dec	a
      000121 75 F0 03         [24]  666 	mov	b,#0x03
      000124 A4               [48]  667 	mul	ab
      000125 FC               [12]  668 	mov	r4,a
                                    669 ;	keyboard.h:10: if (value == 0x01) return 1;
      000126 BD 01 04         [24]  670 	cjne	r5,#0x01,00127$
      000129 7B 01            [12]  671 	mov	r3,#0x01
      00012B 80 10            [24]  672 	sjmp	00132$
      00012D                        673 00127$:
                                    674 ;	keyboard.h:11: if (value == 0x02) return 2;
      00012D BD 02 04         [24]  675 	cjne	r5,#0x02,00129$
      000130 7B 02            [12]  676 	mov	r3,#0x02
      000132 80 09            [24]  677 	sjmp	00132$
      000134                        678 00129$:
                                    679 ;	keyboard.h:12: if (value == 0x04) return 3;
      000134 BD 04 04         [24]  680 	cjne	r5,#0x04,00131$
      000137 7B 03            [12]  681 	mov	r3,#0x03
      000139 80 02            [24]  682 	sjmp	00132$
      00013B                        683 00131$:
                                    684 ;	keyboard.h:13: return 0;
      00013B 7B 00            [12]  685 	mov	r3,#0x00
                                    686 ;	keyboard.h:43: if (x != 0) return 3*(log2_table(y)-1) + log2_table(x); 
      00013D                        687 00132$:
      00013D EB               [12]  688 	mov	a,r3
      00013E 2C               [12]  689 	add	a, r4
      00013F F5 82            [12]  690 	mov	dpl,a
      000141 22               [24]  691 	ret
      000142                        692 00109$:
                                    693 ;	keyboard.h:45: y <<= 1;
      000142 EF               [12]  694 	mov	a,r7
      000143 2F               [12]  695 	add	a,r7
      000144 FF               [12]  696 	mov	r7,a
                                    697 ;	keyboard.h:25: for (byte_t i=0; i<=2; i++) {
      000145 0E               [12]  698 	inc	r6
      000146 02 00 BE         [24]  699 	ljmp	00134$
      000149                        700 00110$:
                                    701 ;	keyboard.h:49: KEYBOARD_PORT = 0xFF & ~y;
      000149 EF               [12]  702 	mov	a,r7
      00014A F4               [12]  703 	cpl	a
      00014B F5 90            [12]  704 	mov	_P1,a
                                    705 ;	keyboard.h:51: x = ~((KEYBOARD_PORT & 0xF0) >> 4) & 0x0F;
      00014D AE 90            [24]  706 	mov	r6,_P1
      00014F 53 06 F0         [24]  707 	anl	ar6,#0xf0
      000152 E4               [12]  708 	clr	a
      000153 CE               [12]  709 	xch	a,r6
      000154 C4               [12]  710 	swap	a
      000155 54 0F            [12]  711 	anl	a,#0x0f
      000157 6E               [12]  712 	xrl	a,r6
      000158 CE               [12]  713 	xch	a,r6
      000159 54 0F            [12]  714 	anl	a,#0x0f
      00015B CE               [12]  715 	xch	a,r6
      00015C 6E               [12]  716 	xrl	a,r6
      00015D CE               [12]  717 	xch	a,r6
      00015E 30 E3 02         [24]  718 	jnb	acc.3,00277$
      000161 44 F0            [12]  719 	orl	a,#0xfffffff0
      000163                        720 00277$:
      000163 EE               [12]  721 	mov	a,r6
      000164 F4               [12]  722 	cpl	a
      000165 FE               [12]  723 	mov	r6,a
      000166 74 0F            [12]  724 	mov	a,#0x0f
      000168 5E               [12]  725 	anl	a,r6
                                    726 ;	keyboard.h:53: if (x == 0) return 0xFF; // none key
      000169 FF               [12]  727 	mov	r7,a
      00016A 70 04            [24]  728 	jnz	00112$
      00016C 75 82 FF         [24]  729 	mov	dpl, #0xff
      00016F 22               [24]  730 	ret
      000170                        731 00112$:
                                    732 ;	keyboard.h:55: if (x == 1) return 0x0A; // *
      000170 BF 01 04         [24]  733 	cjne	r7,#0x01,00114$
      000173 75 82 0A         [24]  734 	mov	dpl, #0x0a
      000176 22               [24]  735 	ret
      000177                        736 00114$:
                                    737 ;	keyboard.h:56: if (x == 2) return 0x00; // 0
      000177 BF 02 04         [24]  738 	cjne	r7,#0x02,00116$
      00017A 75 82 00         [24]  739 	mov	dpl, #0x00
      00017D 22               [24]  740 	ret
      00017E                        741 00116$:
                                    742 ;	keyboard.h:57: if (x == 4) return 0x0B; // #
      00017E BF 04 04         [24]  743 	cjne	r7,#0x04,00118$
      000181 75 82 0B         [24]  744 	mov	dpl, #0x0b
      000184 22               [24]  745 	ret
      000185                        746 00118$:
                                    747 ;	keyboard.h:59: return 0xFF;
      000185 75 82 FF         [24]  748 	mov	dpl, #0xff
                                    749 ;	keyboard.h:60: }
      000188 22               [24]  750 	ret
                                    751 ;------------------------------------------------------------
                                    752 ;Allocation info for local variables in function 'MAX7219_WriteByte'
                                    753 ;------------------------------------------------------------
                                    754 ;data          Allocated to registers 
                                    755 ;i             Allocated to registers r7 
                                    756 ;------------------------------------------------------------
                                    757 ;	display.h:15: void MAX7219_WriteByte(byte_t data) {
                                    758 ;	-----------------------------------------
                                    759 ;	 function MAX7219_WriteByte
                                    760 ;	-----------------------------------------
      000189                        761 _MAX7219_WriteByte:
                                    762 ;	display.h:20: __asm__("mov a, dpl");
      000189 E5 82            [12]  763 	mov	a, dpl
                                    764 ;	display.h:22: for(i=0; i<8; i++) {
      00018B 7F 00            [12]  765 	mov	r7,#0x00
      00018D                        766 00102$:
                                    767 ;	display.h:23: MAX7219_CLK_PIN = 0;
                                    768 ;	assignBit
      00018D C2 B5            [12]  769 	clr	_P3_5
                                    770 ;	display.h:25: __asm__("rlc a");
      00018F 33               [12]  771 	rlc	a
                                    772 ;	display.h:26: ASM_MOV_CARRY_TO_PIN(MAX7219_DIN_PIN);
      000190 92 B3            [24]  773 	mov	_P3_3, c
                                    774 ;	display.h:28: MAX7219_CLK_PIN = 1;
                                    775 ;	assignBit
      000192 D2 B5            [12]  776 	setb	_P3_5
                                    777 ;	display.h:22: for(i=0; i<8; i++) {
      000194 0F               [12]  778 	inc	r7
      000195 BF 08 00         [24]  779 	cjne	r7,#0x08,00113$
      000198                        780 00113$:
      000198 40 F3            [24]  781 	jc	00102$
                                    782 ;	display.h:30: }
      00019A 22               [24]  783 	ret
                                    784 ;------------------------------------------------------------
                                    785 ;Allocation info for local variables in function 'MAX7219_Select'
                                    786 ;------------------------------------------------------------
                                    787 ;index         Allocated to registers 
                                    788 ;------------------------------------------------------------
                                    789 ;	display.h:32: void MAX7219_Select(byte_t index) {
                                    790 ;	-----------------------------------------
                                    791 ;	 function MAX7219_Select
                                    792 ;	-----------------------------------------
      00019B                        793 _MAX7219_Select:
                                    794 ;	display.h:38: __asm__("mov a, dpl");
      00019B E5 82            [12]  795 	mov	a, dpl
                                    796 ;	display.h:39: __asm__("rrc a");
      00019D 13               [12]  797 	rrc	a
                                    798 ;	display.h:40: ASM_MOV_CARRY_TO_PIN(MAX7219_CS0_PIN);
      00019E 92 A5            [24]  799 	mov	_P2_5, c
                                    800 ;	display.h:42: __asm__("rrc a");
      0001A0 13               [12]  801 	rrc	a
                                    802 ;	display.h:43: ASM_MOV_CARRY_TO_PIN(MAX7219_CS1_PIN);
      0001A1 92 A6            [24]  803 	mov	_P2_6, c
                                    804 ;	display.h:44: }
      0001A3 22               [24]  805 	ret
                                    806 ;------------------------------------------------------------
                                    807 ;Allocation info for local variables in function 'MAX7219_Write'
                                    808 ;------------------------------------------------------------
                                    809 ;value         Allocated with name '_MAX7219_Write_PARM_2'
                                    810 ;reg           Allocated to registers r7 
                                    811 ;------------------------------------------------------------
                                    812 ;	display.h:46: void MAX7219_Write(byte_t reg, byte_t value) {
                                    813 ;	-----------------------------------------
                                    814 ;	 function MAX7219_Write
                                    815 ;	-----------------------------------------
      0001A4                        816 _MAX7219_Write:
      0001A4 AF 82            [24]  817 	mov	r7, dpl
                                    818 ;	display.h:47: MAX7219_CS_PIN = 1; // enable CS
                                    819 ;	assignBit
      0001A6 D2 A7            [12]  820 	setb	_P2_7
                                    821 ;	display.h:48: MAX7219_WriteByte(reg);   // send address
      0001A8 8F 82            [24]  822 	mov	dpl, r7
      0001AA 12 01 89         [24]  823 	lcall	_MAX7219_WriteByte
                                    824 ;	display.h:49: MAX7219_WriteByte(value); // send value
      0001AD 85 21 82         [24]  825 	mov	dpl, _MAX7219_Write_PARM_2
      0001B0 12 01 89         [24]  826 	lcall	_MAX7219_WriteByte
                                    827 ;	display.h:50: MAX7219_CS_PIN = 0; // disable CS
                                    828 ;	assignBit
      0001B3 C2 A7            [12]  829 	clr	_P2_7
                                    830 ;	display.h:51: }
      0001B5 22               [24]  831 	ret
                                    832 ;------------------------------------------------------------
                                    833 ;Allocation info for local variables in function 'Display_Write'
                                    834 ;------------------------------------------------------------
                                    835 ;register_value Allocated with name '_Display_Write_PARM_2'
                                    836 ;digit_value   Allocated with name '_Display_Write_PARM_3'
                                    837 ;index         Allocated to registers r7 
                                    838 ;digit         Allocated to registers r0 r1 
                                    839 ;number        Allocated with name '_Display_Write_number_10000_56'
                                    840 ;i             Allocated to registers r7 
                                    841 ;------------------------------------------------------------
                                    842 ;	display.h:61: void Display_Write(byte_t index, float register_value, byte_t digit_value) {
                                    843 ;	-----------------------------------------
                                    844 ;	 function Display_Write
                                    845 ;	-----------------------------------------
      0001B6                        846 _Display_Write:
      0001B6 AF 82            [24]  847 	mov	r7, dpl
                                    848 ;	display.h:63: long number = (long) (register_value * 100);
      0001B8 C0 07            [24]  849 	push	ar7
      0001BA C0 22            [24]  850 	push	_Display_Write_PARM_2
      0001BC C0 23            [24]  851 	push	(_Display_Write_PARM_2 + 1)
      0001BE C0 24            [24]  852 	push	(_Display_Write_PARM_2 + 2)
      0001C0 C0 25            [24]  853 	push	(_Display_Write_PARM_2 + 3)
      0001C2 90 00 00         [24]  854 	mov	dptr,#0x0000
      0001C5 75 F0 C8         [24]  855 	mov	b, #0xc8
      0001C8 74 42            [12]  856 	mov	a, #0x42
      0001CA 12 0C 88         [24]  857 	lcall	___fsmul
      0001CD AB 82            [24]  858 	mov	r3, dpl
      0001CF AC 83            [24]  859 	mov	r4, dph
      0001D1 AD F0            [24]  860 	mov	r5, b
      0001D3 FE               [12]  861 	mov	r6, a
      0001D4 E5 81            [12]  862 	mov	a,sp
      0001D6 24 FC            [12]  863 	add	a,#0xfc
      0001D8 F5 81            [12]  864 	mov	sp,a
      0001DA 8B 82            [24]  865 	mov	dpl, r3
      0001DC 8C 83            [24]  866 	mov	dph, r4
      0001DE 8D F0            [24]  867 	mov	b, r5
      0001E0 EE               [12]  868 	mov	a, r6
      0001E1 12 0D F1         [24]  869 	lcall	___fs2slong
      0001E4 85 82 27         [24]  870 	mov	_Display_Write_number_10000_56,dpl
      0001E7 85 83 28         [24]  871 	mov	(_Display_Write_number_10000_56 + 1),dph
      0001EA 85 F0 29         [24]  872 	mov	(_Display_Write_number_10000_56 + 2),b
      0001ED F5 2A            [12]  873 	mov	(_Display_Write_number_10000_56 + 3),a
      0001EF D0 07            [24]  874 	pop	ar7
                                    875 ;	display.h:65: MAX7219_Select(index);
      0001F1 8F 82            [24]  876 	mov	dpl, r7
      0001F3 12 01 9B         [24]  877 	lcall	_MAX7219_Select
                                    878 ;	display.h:67: for(byte_t i=6; i>0; i--) {
      0001F6 7F 06            [12]  879 	mov	r7,#0x06
      0001F8                        880 00103$:
      0001F8 EF               [12]  881 	mov	a,r7
      0001F9 60 6C            [24]  882 	jz	00101$
                                    883 ;	display.h:68: digit = number % 10;
      0001FB 75 51 0A         [24]  884 	mov	__modslong_PARM_2,#0x0a
      0001FE E4               [12]  885 	clr	a
      0001FF F5 52            [12]  886 	mov	(__modslong_PARM_2 + 1),a
      000201 F5 53            [12]  887 	mov	(__modslong_PARM_2 + 2),a
      000203 F5 54            [12]  888 	mov	(__modslong_PARM_2 + 3),a
      000205 85 27 82         [24]  889 	mov	dpl, _Display_Write_number_10000_56
      000208 85 28 83         [24]  890 	mov	dph, (_Display_Write_number_10000_56 + 1)
      00020B 85 29 F0         [24]  891 	mov	b, (_Display_Write_number_10000_56 + 2)
      00020E E5 2A            [12]  892 	mov	a, (_Display_Write_number_10000_56 + 3)
      000210 C0 07            [24]  893 	push	ar7
      000212 12 13 C2         [24]  894 	lcall	__modslong
      000215 A8 82            [24]  895 	mov	r0, dpl
      000217 A9 83            [24]  896 	mov	r1, dph
      000219 D0 07            [24]  897 	pop	ar7
                                    898 ;	display.h:69: number = number / 10;
      00021B 75 51 0A         [24]  899 	mov	__divslong_PARM_2,#0x0a
      00021E E4               [12]  900 	clr	a
      00021F F5 52            [12]  901 	mov	(__divslong_PARM_2 + 1),a
      000221 F5 53            [12]  902 	mov	(__divslong_PARM_2 + 2),a
      000223 F5 54            [12]  903 	mov	(__divslong_PARM_2 + 3),a
                                    904 ;	display.h:71: MAX7219_Write(i, i==4 ? digit | 0x80 : digit);
      000225 85 27 82         [24]  905 	mov	dpl, _Display_Write_number_10000_56
      000228 85 28 83         [24]  906 	mov	dph, (_Display_Write_number_10000_56 + 1)
      00022B 85 29 F0         [24]  907 	mov	b, (_Display_Write_number_10000_56 + 2)
      00022E E5 2A            [12]  908 	mov	a, (_Display_Write_number_10000_56 + 3)
      000230 C0 07            [24]  909 	push	ar7
      000232 C0 01            [24]  910 	push	ar1
      000234 C0 00            [24]  911 	push	ar0
      000236 12 14 EE         [24]  912 	lcall	__divslong
      000239 85 82 27         [24]  913 	mov	_Display_Write_number_10000_56,dpl
      00023C 85 83 28         [24]  914 	mov	(_Display_Write_number_10000_56 + 1),dph
      00023F 85 F0 29         [24]  915 	mov	(_Display_Write_number_10000_56 + 2),b
      000242 F5 2A            [12]  916 	mov	(_Display_Write_number_10000_56 + 3),a
      000244 D0 00            [24]  917 	pop	ar0
      000246 D0 01            [24]  918 	pop	ar1
      000248 D0 07            [24]  919 	pop	ar7
      00024A BF 04 08         [24]  920 	cjne	r7,#0x04,00109$
      00024D 74 80            [12]  921 	mov	a,#0x80
      00024F 48               [12]  922 	orl	a,r0
      000250 FD               [12]  923 	mov	r5,a
      000251 89 06            [24]  924 	mov	ar6,r1
      000253 80 04            [24]  925 	sjmp	00110$
      000255                        926 00109$:
      000255 88 05            [24]  927 	mov	ar5,r0
      000257 89 06            [24]  928 	mov	ar6,r1
      000259                        929 00110$:
      000259 8D 21            [24]  930 	mov	_MAX7219_Write_PARM_2,r5
      00025B 8F 82            [24]  931 	mov	dpl, r7
      00025D C0 07            [24]  932 	push	ar7
      00025F 12 01 A4         [24]  933 	lcall	_MAX7219_Write
      000262 D0 07            [24]  934 	pop	ar7
                                    935 ;	display.h:67: for(byte_t i=6; i>0; i--) {
      000264 1F               [12]  936 	dec	r7
      000265 80 91            [24]  937 	sjmp	00103$
      000267                        938 00101$:
                                    939 ;	display.h:74: MAX7219_Write(7, digit_value/10);
      000267 AF 26            [24]  940 	mov	r7,_Display_Write_PARM_3
      000269 8F 06            [24]  941 	mov	ar6,r7
      00026B 75 F0 0A         [24]  942 	mov	b,#0x0a
      00026E EE               [12]  943 	mov	a,r6
      00026F 84               [48]  944 	div	ab
      000270 F5 21            [12]  945 	mov	_MAX7219_Write_PARM_2, a
      000272 75 82 07         [24]  946 	mov	dpl, #0x07
      000275 C0 07            [24]  947 	push	ar7
      000277 12 01 A4         [24]  948 	lcall	_MAX7219_Write
      00027A D0 07            [24]  949 	pop	ar7
                                    950 ;	display.h:75: MAX7219_Write(8, digit_value%10);
      00027C 75 F0 0A         [24]  951 	mov	b,#0x0a
      00027F EF               [12]  952 	mov	a,r7
      000280 84               [48]  953 	div	ab
      000281 AF F0            [24]  954 	mov	r7,b
      000283 8F 21            [24]  955 	mov	_MAX7219_Write_PARM_2,r7
      000285 75 82 08         [24]  956 	mov	dpl, #0x08
                                    957 ;	display.h:76: }
      000288 02 01 A4         [24]  958 	ljmp	_MAX7219_Write
                                    959 ;------------------------------------------------------------
                                    960 ;Allocation info for local variables in function 'LED_WriteData'
                                    961 ;------------------------------------------------------------
                                    962 ;data          Allocated to registers 
                                    963 ;i             Allocated to registers r7 
                                    964 ;------------------------------------------------------------
                                    965 ;	led.h:14: void LED_WriteData(byte_t data) {
                                    966 ;	-----------------------------------------
                                    967 ;	 function LED_WriteData
                                    968 ;	-----------------------------------------
      00028B                        969 _LED_WriteData:
                                    970 ;	led.h:19: __asm__("mov a, dpl");
      00028B E5 82            [12]  971 	mov	a, dpl
                                    972 ;	led.h:21: for(i=0; i<4; i++) {
      00028D 7F 00            [12]  973 	mov	r7,#0x00
      00028F                        974 00102$:
                                    975 ;	led.h:22: LED_CLK_PIN = 0;
                                    976 ;	assignBit
      00028F C2 B4            [12]  977 	clr	_P3_4
                                    978 ;	led.h:24: __asm__("rrc a");
      000291 13               [12]  979 	rrc	a
                                    980 ;	led.h:25: ASM_MOV_CARRY_TO_PIN(LED_DIN_PIN);
      000292 92 B2            [24]  981 	mov	_P3_2, c
                                    982 ;	led.h:27: LED_CLK_PIN = 1;
                                    983 ;	assignBit
      000294 D2 B4            [12]  984 	setb	_P3_4
                                    985 ;	led.h:21: for(i=0; i<4; i++) {
      000296 0F               [12]  986 	inc	r7
      000297 BF 04 00         [24]  987 	cjne	r7,#0x04,00113$
      00029A                        988 00113$:
      00029A 40 F3            [24]  989 	jc	00102$
                                    990 ;	led.h:29: }
      00029C 22               [24]  991 	ret
                                    992 ;------------------------------------------------------------
                                    993 ;Allocation info for local variables in function 'Serial_SendByte'
                                    994 ;------------------------------------------------------------
                                    995 ;value         Allocated to registers 
                                    996 ;------------------------------------------------------------
                                    997 ;	serial.h:21: void Serial_SendByte(byte_t value) {
                                    998 ;	-----------------------------------------
                                    999 ;	 function Serial_SendByte
                                   1000 ;	-----------------------------------------
      00029D                       1001 _Serial_SendByte:
                                   1002 ;	serial.h:28: __endasm;
      00029D 85 82 99         [24] 1003 	mov	_SBUF, dpl
      0002A0                       1004 1$:
      0002A0 30 99 FD         [24] 1005 	jnb _TI, 1$
      0002A3 C2 99            [12] 1006 	clr	_TI
                                   1007 ;	serial.h:29: }
      0002A5 22               [24] 1008 	ret
                                   1009 ;------------------------------------------------------------
                                   1010 ;Allocation info for local variables in function 'Serial_SendFloat'
                                   1011 ;------------------------------------------------------------
                                   1012 ;value         Allocated to registers 
                                   1013 ;------------------------------------------------------------
                                   1014 ;	serial.h:31: void Serial_SendFloat(float value) {
                                   1015 ;	-----------------------------------------
                                   1016 ;	 function Serial_SendFloat
                                   1017 ;	-----------------------------------------
      0002A6                       1018 _Serial_SendFloat:
                                   1019 ;	serial.h:50: __endasm;
      0002A6 85 82 99         [24] 1020 	mov	_SBUF, dpl
      0002A9                       1021 1$:
      0002A9 30 99 FD         [24] 1022 	jnb _TI, 1$
      0002AC C2 99            [12] 1023 	clr	_TI
      0002AE 85 83 99         [24] 1024 	mov	_SBUF, dph
      0002B1                       1025 2$:
      0002B1 30 99 FD         [24] 1026 	jnb _TI, 2$
      0002B4 C2 99            [12] 1027 	clr	_TI
      0002B6 85 F0 99         [24] 1028 	mov	_SBUF, b
      0002B9                       1029 3$:
      0002B9 30 99 FD         [24] 1030 	jnb _TI, 3$
      0002BC C2 99            [12] 1031 	clr	_TI
      0002BE F5 99            [12] 1032 	mov	_SBUF, a
      0002C0                       1033 4$:
      0002C0 30 99 FD         [24] 1034 	jnb _TI, 4$
      0002C3 C2 99            [12] 1035 	clr	_TI
                                   1036 ;	serial.h:69: }
      0002C5 22               [24] 1037 	ret
                                   1038 ;------------------------------------------------------------
                                   1039 ;Allocation info for local variables in function 'Serial_ReadByte'
                                   1040 ;------------------------------------------------------------
                                   1041 ;	serial.h:73: byte_t Serial_ReadByte(void) {
                                   1042 ;	-----------------------------------------
                                   1043 ;	 function Serial_ReadByte
                                   1044 ;	-----------------------------------------
      0002C6                       1045 _Serial_ReadByte:
                                   1046 ;	serial.h:76: __asm__("1$: jnb _RI, 1$");
      0002C6                       1047 1$:
      0002C6 30 98 FD         [24] 1048 	jnb _RI, 1$
                                   1049 ;	serial.h:77: __asm__("clr _RI");
      0002C9 C2 98            [12] 1050 	clr	_RI
                                   1051 ;	serial.h:78: return SBUF;
      0002CB 85 99 82         [24] 1052 	mov	dpl, _SBUF
                                   1053 ;	serial.h:79: }
      0002CE 22               [24] 1054 	ret
                                   1055 ;------------------------------------------------------------
                                   1056 ;Allocation info for local variables in function 'Serial_ReadFloat'
                                   1057 ;------------------------------------------------------------
                                   1058 ;value         Allocated with name '_Serial_ReadFloat_value_10000_74'
                                   1059 ;p             Allocated to registers 
                                   1060 ;------------------------------------------------------------
                                   1061 ;	serial.h:81: float Serial_ReadFloat(void) {
                                   1062 ;	-----------------------------------------
                                   1063 ;	 function Serial_ReadFloat
                                   1064 ;	-----------------------------------------
      0002CF                       1065 _Serial_ReadFloat:
                                   1066 ;	serial.h:83: byte_t *p = (byte_t*)&value;
                                   1067 ;	serial.h:85: __asm__("1$: jnb _RI, 1$");
      0002CF                       1068 1$:
      0002CF 30 98 FD         [24] 1069 	jnb _RI, 1$
                                   1070 ;	serial.h:86: __asm__("clr _RI");
      0002D2 C2 98            [12] 1071 	clr	_RI
                                   1072 ;	serial.h:87: p[0] = SBUF;
      0002D4 85 99 51         [24] 1073 	mov	_Serial_ReadFloat_value_10000_74,_SBUF
                                   1074 ;	serial.h:89: __asm__("2$: jnb _RI, 2$");
      0002D7                       1075 2$:
      0002D7 30 98 FD         [24] 1076 	jnb _RI, 2$
                                   1077 ;	serial.h:90: __asm__("clr _RI");
      0002DA C2 98            [12] 1078 	clr	_RI
                                   1079 ;	serial.h:91: p[1] = SBUF;
      0002DC 78 52            [12] 1080 	mov	r0,#(_Serial_ReadFloat_value_10000_74 + 0x0001)
      0002DE A6 99            [24] 1081 	mov	@r0,_SBUF
                                   1082 ;	serial.h:93: __asm__("3$: jnb _RI, 3$");
      0002E0                       1083 3$:
      0002E0 30 98 FD         [24] 1084 	jnb _RI, 3$
                                   1085 ;	serial.h:94: __asm__("clr _RI");
      0002E3 C2 98            [12] 1086 	clr	_RI
                                   1087 ;	serial.h:95: p[2] = SBUF;
      0002E5 78 53            [12] 1088 	mov	r0,#(_Serial_ReadFloat_value_10000_74 + 0x0002)
      0002E7 A6 99            [24] 1089 	mov	@r0,_SBUF
                                   1090 ;	serial.h:97: __asm__("4$: jnb _RI, 4$");
      0002E9                       1091 4$:
      0002E9 30 98 FD         [24] 1092 	jnb _RI, 4$
                                   1093 ;	serial.h:98: __asm__("clr _RI");
      0002EC C2 98            [12] 1094 	clr	_RI
                                   1095 ;	serial.h:99: p[3] = SBUF;
      0002EE 78 54            [12] 1096 	mov	r0,#(_Serial_ReadFloat_value_10000_74 + 0x0003)
      0002F0 A6 99            [24] 1097 	mov	@r0,_SBUF
                                   1098 ;	serial.h:101: return value;
      0002F2 85 51 82         [24] 1099 	mov	dpl, _Serial_ReadFloat_value_10000_74
      0002F5 85 52 83         [24] 1100 	mov	dph, (_Serial_ReadFloat_value_10000_74 + 1)
      0002F8 85 53 F0         [24] 1101 	mov	b, (_Serial_ReadFloat_value_10000_74 + 2)
      0002FB E5 54            [12] 1102 	mov	a, (_Serial_ReadFloat_value_10000_74 + 3)
                                   1103 ;	serial.h:102: }
      0002FD 22               [24] 1104 	ret
                                   1105 ;------------------------------------------------------------
                                   1106 ;Allocation info for local variables in function 'main'
                                   1107 ;------------------------------------------------------------
                                   1108 ;key           Allocated to registers r7 
                                   1109 ;t_go0         Allocated to registers 
                                   1110 ;counter       Allocated with name '_main_counter_10000_80'
                                   1111 ;__300000007   Allocated to registers 
                                   1112 ;th1           Allocated to registers 
                                   1113 ;__300000009   Allocated to registers 
                                   1114 ;n_SCON        Allocated to registers 
                                   1115 ;_a            Allocated with name '_main__a_50000_120'
                                   1116 ;_b            Allocated with name '_main__b_50000_120'
                                   1117 ;__400000018   Allocated to registers r4 r5 r6 r7 
                                   1118 ;__400000014   Allocated to registers r4 r5 r6 r7 
                                   1119 ;delta_angle   Allocated to registers r4 r5 r6 r7 
                                   1120 ;__400000015   Allocated to registers r0 r1 r2 r3 
                                   1121 ;__400000016   Allocated to registers r4 r5 r6 r7 
                                   1122 ;vx            Allocated to registers 
                                   1123 ;vy            Allocated to registers 
                                   1124 ;__400000019   Allocated to registers 
                                   1125 ;value         Allocated to registers 
                                   1126 ;------------------------------------------------------------
                                   1127 ;	pgc.c:57: int main(void) {    
                                   1128 ;	-----------------------------------------
                                   1129 ;	 function main
                                   1130 ;	-----------------------------------------
      0002FE                       1131 _main:
                                   1132 ;	pgc.c:60: byte_t counter = 0;
      0002FE 75 48 00         [24] 1133 	mov	_main_counter_10000_80,#0x00
                                   1134 ;	pgc.c:63: REG1 = 0;
      000301 90 00 2D         [24] 1135 	mov	dptr,#_REG1
      000304 E4               [12] 1136 	clr	a
      000305 F0               [24] 1137 	movx	@dptr,a
      000306 A3               [24] 1138 	inc	dptr
      000307 F0               [24] 1139 	movx	@dptr,a
      000308 A3               [24] 1140 	inc	dptr
      000309 F0               [24] 1141 	movx	@dptr,a
      00030A A3               [24] 1142 	inc	dptr
      00030B F0               [24] 1143 	movx	@dptr,a
                                   1144 ;	pgc.c:64: REG2 = 0;
      00030C 90 00 31         [24] 1145 	mov	dptr,#_REG2
      00030F F0               [24] 1146 	movx	@dptr,a
      000310 A3               [24] 1147 	inc	dptr
      000311 F0               [24] 1148 	movx	@dptr,a
      000312 A3               [24] 1149 	inc	dptr
      000313 F0               [24] 1150 	movx	@dptr,a
      000314 A3               [24] 1151 	inc	dptr
      000315 F0               [24] 1152 	movx	@dptr,a
                                   1153 ;	pgc.c:65: REG3 = 0;
      000316 90 00 35         [24] 1154 	mov	dptr,#_REG3
      000319 F0               [24] 1155 	movx	@dptr,a
      00031A A3               [24] 1156 	inc	dptr
      00031B F0               [24] 1157 	movx	@dptr,a
      00031C A3               [24] 1158 	inc	dptr
      00031D F0               [24] 1159 	movx	@dptr,a
      00031E A3               [24] 1160 	inc	dptr
      00031F F0               [24] 1161 	movx	@dptr,a
                                   1162 ;	serial.h:14: TMOD |= 0x20;
      000320 43 89 20         [24] 1163 	orl	_TMOD,#0x20
                                   1164 ;	serial.h:15: TH1 = th1;
      000323 75 8D FD         [24] 1165 	mov	_TH1,#0xfd
                                   1166 ;	serial.h:16: TL1 = th1;
      000326 75 8B FD         [24] 1167 	mov	_TL1,#0xfd
                                   1168 ;	serial.h:17: TR1 = 1;
                                   1169 ;	assignBit
      000329 D2 8E            [12] 1170 	setb	_TR1
                                   1171 ;	serial.h:9: SCON = n_SCON;
      00032B 75 98 50         [24] 1172 	mov	_SCON,#0x50
                                   1173 ;	pgc.c:72: Serial_SendByte(0x09); // request gravity y
      00032E 75 82 09         [24] 1174 	mov	dpl, #0x09
      000331 12 02 9D         [24] 1175 	lcall	_Serial_SendByte
                                   1176 ;	pgc.c:73: gravity_y = Serial_ReadFloat(); // wait answer and save
      000334 12 02 CF         [24] 1177 	lcall	_Serial_ReadFloat
      000337 AB 82            [24] 1178 	mov	r3, dpl
      000339 AC 83            [24] 1179 	mov	r4, dph
      00033B AD F0            [24] 1180 	mov	r5, b
      00033D FE               [12] 1181 	mov	r6, a
      00033E 90 00 25         [24] 1182 	mov	dptr,#_gravity_y
      000341 EB               [12] 1183 	mov	a,r3
      000342 F0               [24] 1184 	movx	@dptr,a
      000343 EC               [12] 1185 	mov	a,r4
      000344 A3               [24] 1186 	inc	dptr
      000345 F0               [24] 1187 	movx	@dptr,a
      000346 ED               [12] 1188 	mov	a,r5
      000347 A3               [24] 1189 	inc	dptr
      000348 F0               [24] 1190 	movx	@dptr,a
      000349 EE               [12] 1191 	mov	a,r6
      00034A A3               [24] 1192 	inc	dptr
      00034B F0               [24] 1193 	movx	@dptr,a
                                   1194 ;	pgc.c:77: TMOD &= 0xF0;
      00034C 53 89 F0         [24] 1195 	anl	_TMOD,#0xf0
                                   1196 ;	pgc.c:78: TMOD |= 0x01;
      00034F 43 89 01         [24] 1197 	orl	_TMOD,#0x01
                                   1198 ;	pgc.c:80: TH0 = 0x00;
      000352 75 8C 00         [24] 1199 	mov	_TH0,#0x00
                                   1200 ;	pgc.c:81: TL0 = 0x00;
      000355 75 8A 00         [24] 1201 	mov	_TL0,#0x00
                                   1202 ;	pgc.c:83: ET0 = 0;
                                   1203 ;	assignBit
      000358 C2 A9            [12] 1204 	clr	_ET0
                                   1205 ;	pgc.c:84: EA = 0;
                                   1206 ;	assignBit
      00035A C2 AF            [12] 1207 	clr	_EA
                                   1208 ;	pgc.c:86: TR0 = 1;
                                   1209 ;	assignBit
      00035C D2 8C            [12] 1210 	setb	_TR0
                                   1211 ;	pgc.c:91: for (key=1; key<=3; key++) {
      00035E 7E 01            [12] 1212 	mov	r6,#0x01
      000360                       1213 00165$:
                                   1214 ;	pgc.c:92: MAX7219_Select(key);
      000360 8E 82            [24] 1215 	mov	dpl, r6
      000362 C0 06            [24] 1216 	push	ar6
      000364 12 01 9B         [24] 1217 	lcall	_MAX7219_Select
                                   1218 ;	display.h:54: MAX7219_Write(MAX7219_REG_SHUTDOWN, 0x01);  // wake up
      000367 75 21 01         [24] 1219 	mov	_MAX7219_Write_PARM_2,#0x01
      00036A 75 82 0C         [24] 1220 	mov	dpl, #0x0c
      00036D 12 01 A4         [24] 1221 	lcall	_MAX7219_Write
                                   1222 ;	display.h:55: MAX7219_Write(MAX7219_REG_TEST, 0x00);      // normal mode
      000370 75 21 00         [24] 1223 	mov	_MAX7219_Write_PARM_2,#0x00
      000373 75 82 0F         [24] 1224 	mov	dpl, #0x0f
      000376 12 01 A4         [24] 1225 	lcall	_MAX7219_Write
                                   1226 ;	display.h:56: MAX7219_Write(MAX7219_REG_DECODE, 0xFF);    // decode mode
      000379 75 21 FF         [24] 1227 	mov	_MAX7219_Write_PARM_2,#0xff
      00037C 75 82 09         [24] 1228 	mov	dpl, #0x09
      00037F 12 01 A4         [24] 1229 	lcall	_MAX7219_Write
                                   1230 ;	display.h:57: MAX7219_Write(MAX7219_REG_SCANLIMIT, 0x07); // amount digits
      000382 75 21 07         [24] 1231 	mov	_MAX7219_Write_PARM_2,#0x07
      000385 75 82 0B         [24] 1232 	mov	dpl, #0x0b
      000388 12 01 A4         [24] 1233 	lcall	_MAX7219_Write
                                   1234 ;	display.h:58: MAX7219_Write(MAX7219_REG_INTENSITY, 0x0F); // brightness
      00038B 75 21 0F         [24] 1235 	mov	_MAX7219_Write_PARM_2,#0x0f
      00038E 75 82 0A         [24] 1236 	mov	dpl, #0x0a
      000391 12 01 A4         [24] 1237 	lcall	_MAX7219_Write
      000394 D0 06            [24] 1238 	pop	ar6
                                   1239 ;	pgc.c:91: for (key=1; key<=3; key++) {
      000396 0E               [12] 1240 	inc	r6
      000397 EE               [12] 1241 	mov	a,r6
      000398 24 FC            [12] 1242 	add	a,#0xff - 0x03
      00039A 50 C4            [24] 1243 	jnc	00165$
                                   1244 ;	pgc.c:97: while (1) {
      00039C                       1245 00156$:
                                   1246 ;	pgc.c:44: Serial_SendByte(0x20); // request package
      00039C 75 82 20         [24] 1247 	mov	dpl, #0x20
      00039F 12 02 9D         [24] 1248 	lcall	_Serial_SendByte
                                   1249 ;	pgc.c:46: ut = Serial_ReadFloat();
      0003A2 12 02 CF         [24] 1250 	lcall	_Serial_ReadFloat
      0003A5 AB 82            [24] 1251 	mov	r3, dpl
      0003A7 AC 83            [24] 1252 	mov	r4, dph
      0003A9 AD F0            [24] 1253 	mov	r5, b
      0003AB FE               [12] 1254 	mov	r6, a
      0003AC 90 00 21         [24] 1255 	mov	dptr,#_ut
      0003AF EB               [12] 1256 	mov	a,r3
      0003B0 F0               [24] 1257 	movx	@dptr,a
      0003B1 EC               [12] 1258 	mov	a,r4
      0003B2 A3               [24] 1259 	inc	dptr
      0003B3 F0               [24] 1260 	movx	@dptr,a
      0003B4 ED               [12] 1261 	mov	a,r5
      0003B5 A3               [24] 1262 	inc	dptr
      0003B6 F0               [24] 1263 	movx	@dptr,a
      0003B7 EE               [12] 1264 	mov	a,r6
      0003B8 A3               [24] 1265 	inc	dptr
      0003B9 F0               [24] 1266 	movx	@dptr,a
                                   1267 ;	pgc.c:47: pos_x = Serial_ReadFloat();
      0003BA 12 02 CF         [24] 1268 	lcall	_Serial_ReadFloat
      0003BD AB 82            [24] 1269 	mov	r3, dpl
      0003BF AC 83            [24] 1270 	mov	r4, dph
      0003C1 AD F0            [24] 1271 	mov	r5, b
      0003C3 FE               [12] 1272 	mov	r6, a
      0003C4 90 00 01         [24] 1273 	mov	dptr,#_pos_x
      0003C7 EB               [12] 1274 	mov	a,r3
      0003C8 F0               [24] 1275 	movx	@dptr,a
      0003C9 EC               [12] 1276 	mov	a,r4
      0003CA A3               [24] 1277 	inc	dptr
      0003CB F0               [24] 1278 	movx	@dptr,a
      0003CC ED               [12] 1279 	mov	a,r5
      0003CD A3               [24] 1280 	inc	dptr
      0003CE F0               [24] 1281 	movx	@dptr,a
      0003CF EE               [12] 1282 	mov	a,r6
      0003D0 A3               [24] 1283 	inc	dptr
      0003D1 F0               [24] 1284 	movx	@dptr,a
                                   1285 ;	pgc.c:48: pos_y = Serial_ReadFloat();
      0003D2 12 02 CF         [24] 1286 	lcall	_Serial_ReadFloat
      0003D5 AB 82            [24] 1287 	mov	r3, dpl
      0003D7 AC 83            [24] 1288 	mov	r4, dph
      0003D9 AD F0            [24] 1289 	mov	r5, b
      0003DB FE               [12] 1290 	mov	r6, a
      0003DC 90 00 05         [24] 1291 	mov	dptr,#_pos_y
      0003DF EB               [12] 1292 	mov	a,r3
      0003E0 F0               [24] 1293 	movx	@dptr,a
      0003E1 EC               [12] 1294 	mov	a,r4
      0003E2 A3               [24] 1295 	inc	dptr
      0003E3 F0               [24] 1296 	movx	@dptr,a
      0003E4 ED               [12] 1297 	mov	a,r5
      0003E5 A3               [24] 1298 	inc	dptr
      0003E6 F0               [24] 1299 	movx	@dptr,a
      0003E7 EE               [12] 1300 	mov	a,r6
      0003E8 A3               [24] 1301 	inc	dptr
      0003E9 F0               [24] 1302 	movx	@dptr,a
                                   1303 ;	pgc.c:49: vel_x = Serial_ReadFloat();
      0003EA 12 02 CF         [24] 1304 	lcall	_Serial_ReadFloat
      0003ED AB 82            [24] 1305 	mov	r3, dpl
      0003EF AC 83            [24] 1306 	mov	r4, dph
      0003F1 AD F0            [24] 1307 	mov	r5, b
      0003F3 FE               [12] 1308 	mov	r6, a
      0003F4 90 00 09         [24] 1309 	mov	dptr,#_vel_x
      0003F7 EB               [12] 1310 	mov	a,r3
      0003F8 F0               [24] 1311 	movx	@dptr,a
      0003F9 EC               [12] 1312 	mov	a,r4
      0003FA A3               [24] 1313 	inc	dptr
      0003FB F0               [24] 1314 	movx	@dptr,a
      0003FC ED               [12] 1315 	mov	a,r5
      0003FD A3               [24] 1316 	inc	dptr
      0003FE F0               [24] 1317 	movx	@dptr,a
      0003FF EE               [12] 1318 	mov	a,r6
      000400 A3               [24] 1319 	inc	dptr
      000401 F0               [24] 1320 	movx	@dptr,a
                                   1321 ;	pgc.c:50: vel_y = Serial_ReadFloat();
      000402 12 02 CF         [24] 1322 	lcall	_Serial_ReadFloat
      000405 AB 82            [24] 1323 	mov	r3, dpl
      000407 AC 83            [24] 1324 	mov	r4, dph
      000409 AD F0            [24] 1325 	mov	r5, b
      00040B FE               [12] 1326 	mov	r6, a
      00040C 90 00 0D         [24] 1327 	mov	dptr,#_vel_y
      00040F EB               [12] 1328 	mov	a,r3
      000410 F0               [24] 1329 	movx	@dptr,a
      000411 EC               [12] 1330 	mov	a,r4
      000412 A3               [24] 1331 	inc	dptr
      000413 F0               [24] 1332 	movx	@dptr,a
      000414 ED               [12] 1333 	mov	a,r5
      000415 A3               [24] 1334 	inc	dptr
      000416 F0               [24] 1335 	movx	@dptr,a
      000417 EE               [12] 1336 	mov	a,r6
      000418 A3               [24] 1337 	inc	dptr
      000419 F0               [24] 1338 	movx	@dptr,a
                                   1339 ;	pgc.c:51: angle = Serial_ReadFloat();
      00041A 12 02 CF         [24] 1340 	lcall	_Serial_ReadFloat
      00041D AB 82            [24] 1341 	mov	r3, dpl
      00041F AC 83            [24] 1342 	mov	r4, dph
      000421 AD F0            [24] 1343 	mov	r5, b
      000423 FE               [12] 1344 	mov	r6, a
      000424 90 00 11         [24] 1345 	mov	dptr,#_angle
      000427 EB               [12] 1346 	mov	a,r3
      000428 F0               [24] 1347 	movx	@dptr,a
      000429 EC               [12] 1348 	mov	a,r4
      00042A A3               [24] 1349 	inc	dptr
      00042B F0               [24] 1350 	movx	@dptr,a
      00042C ED               [12] 1351 	mov	a,r5
      00042D A3               [24] 1352 	inc	dptr
      00042E F0               [24] 1353 	movx	@dptr,a
      00042F EE               [12] 1354 	mov	a,r6
      000430 A3               [24] 1355 	inc	dptr
      000431 F0               [24] 1356 	movx	@dptr,a
                                   1357 ;	pgc.c:52: ang_vel = Serial_ReadFloat();
      000432 12 02 CF         [24] 1358 	lcall	_Serial_ReadFloat
      000435 AB 82            [24] 1359 	mov	r3, dpl
      000437 AC 83            [24] 1360 	mov	r4, dph
      000439 AD F0            [24] 1361 	mov	r5, b
      00043B FE               [12] 1362 	mov	r6, a
      00043C 90 00 15         [24] 1363 	mov	dptr,#_ang_vel
      00043F EB               [12] 1364 	mov	a,r3
      000440 F0               [24] 1365 	movx	@dptr,a
      000441 EC               [12] 1366 	mov	a,r4
      000442 A3               [24] 1367 	inc	dptr
      000443 F0               [24] 1368 	movx	@dptr,a
      000444 ED               [12] 1369 	mov	a,r5
      000445 A3               [24] 1370 	inc	dptr
      000446 F0               [24] 1371 	movx	@dptr,a
      000447 EE               [12] 1372 	mov	a,r6
      000448 A3               [24] 1373 	inc	dptr
      000449 F0               [24] 1374 	movx	@dptr,a
                                   1375 ;	pgc.c:53: av_accel = Serial_ReadFloat();
      00044A 12 02 CF         [24] 1376 	lcall	_Serial_ReadFloat
      00044D AB 82            [24] 1377 	mov	r3, dpl
      00044F AC 83            [24] 1378 	mov	r4, dph
      000451 AD F0            [24] 1379 	mov	r5, b
      000453 FE               [12] 1380 	mov	r6, a
      000454 90 00 19         [24] 1381 	mov	dptr,#_av_accel
      000457 EB               [12] 1382 	mov	a,r3
      000458 F0               [24] 1383 	movx	@dptr,a
      000459 EC               [12] 1384 	mov	a,r4
      00045A A3               [24] 1385 	inc	dptr
      00045B F0               [24] 1386 	movx	@dptr,a
      00045C ED               [12] 1387 	mov	a,r5
      00045D A3               [24] 1388 	inc	dptr
      00045E F0               [24] 1389 	movx	@dptr,a
      00045F EE               [12] 1390 	mov	a,r6
      000460 A3               [24] 1391 	inc	dptr
      000461 F0               [24] 1392 	movx	@dptr,a
                                   1393 ;	pgc.c:54: av_accel_ang = Serial_ReadFloat();
      000462 12 02 CF         [24] 1394 	lcall	_Serial_ReadFloat
      000465 AB 82            [24] 1395 	mov	r3, dpl
      000467 AC 83            [24] 1396 	mov	r4, dph
      000469 AD F0            [24] 1397 	mov	r5, b
      00046B FE               [12] 1398 	mov	r6, a
      00046C 90 00 1D         [24] 1399 	mov	dptr,#_av_accel_ang
      00046F EB               [12] 1400 	mov	a,r3
      000470 F0               [24] 1401 	movx	@dptr,a
      000471 EC               [12] 1402 	mov	a,r4
      000472 A3               [24] 1403 	inc	dptr
      000473 F0               [24] 1404 	movx	@dptr,a
      000474 ED               [12] 1405 	mov	a,r5
      000475 A3               [24] 1406 	inc	dptr
      000476 F0               [24] 1407 	movx	@dptr,a
      000477 EE               [12] 1408 	mov	a,r6
      000478 A3               [24] 1409 	inc	dptr
      000479 F0               [24] 1410 	movx	@dptr,a
                                   1411 ;	pgc.c:100: t_go = t_go0 - ut;
      00047A 90 00 21         [24] 1412 	mov	dptr,#_ut
      00047D E0               [24] 1413 	movx	a,@dptr
      00047E C0 E0            [24] 1414 	push	acc
      000480 A3               [24] 1415 	inc	dptr
      000481 E0               [24] 1416 	movx	a,@dptr
      000482 C0 E0            [24] 1417 	push	acc
      000484 A3               [24] 1418 	inc	dptr
      000485 E0               [24] 1419 	movx	a,@dptr
      000486 C0 E0            [24] 1420 	push	acc
      000488 A3               [24] 1421 	inc	dptr
      000489 E0               [24] 1422 	movx	a,@dptr
      00048A C0 E0            [24] 1423 	push	acc
      00048C 90 00 00         [24] 1424 	mov	dptr,#0x0000
      00048F 75 F0 F0         [24] 1425 	mov	b, #0xf0
      000492 74 41            [12] 1426 	mov	a, #0x41
      000494 12 0B FA         [24] 1427 	lcall	___fssub
      000497 85 82 3E         [24] 1428 	mov	_t_go,dpl
      00049A 85 83 3F         [24] 1429 	mov	(_t_go + 1),dph
      00049D 85 F0 40         [24] 1430 	mov	(_t_go + 2),b
      0004A0 F5 41            [12] 1431 	mov	(_t_go + 3),a
      0004A2 E5 81            [12] 1432 	mov	a,sp
      0004A4 24 FC            [12] 1433 	add	a,#0xfc
      0004A6 F5 81            [12] 1434 	mov	sp,a
                                   1435 ;	pgc.c:102: if (t_go < 3.0f) t_go = 3.0f;
      0004A8 E4               [12] 1436 	clr	a
      0004A9 C0 E0            [24] 1437 	push	acc
      0004AB C0 E0            [24] 1438 	push	acc
      0004AD 74 40            [12] 1439 	mov	a,#0x40
      0004AF C0 E0            [24] 1440 	push	acc
      0004B1 C0 E0            [24] 1441 	push	acc
      0004B3 85 3E 82         [24] 1442 	mov	dpl, _t_go
      0004B6 85 3F 83         [24] 1443 	mov	dph, (_t_go + 1)
      0004B9 85 40 F0         [24] 1444 	mov	b, (_t_go + 2)
      0004BC E5 41            [12] 1445 	mov	a, (_t_go + 3)
      0004BE 12 10 AD         [24] 1446 	lcall	___fslt
      0004C1 AE 82            [24] 1447 	mov	r6, dpl
      0004C3 E5 81            [12] 1448 	mov	a,sp
      0004C5 24 FC            [12] 1449 	add	a,#0xfc
      0004C7 F5 81            [12] 1450 	mov	sp,a
      0004C9 EE               [12] 1451 	mov	a,r6
      0004CA 60 0B            [24] 1452 	jz	00103$
      0004CC E4               [12] 1453 	clr	a
      0004CD F5 3E            [12] 1454 	mov	_t_go,a
      0004CF F5 3F            [12] 1455 	mov	(_t_go + 1),a
      0004D1 75 40 40         [24] 1456 	mov	(_t_go + 2),#0x40
      0004D4 75 41 40         [24] 1457 	mov	(_t_go + 3),#0x40
      0004D7                       1458 00103$:
                                   1459 ;	pgc.c:36: float _a = -12.0f / (t_go * t_go);
      0004D7 C0 3E            [24] 1460 	push	_t_go
      0004D9 C0 3F            [24] 1461 	push	(_t_go + 1)
      0004DB C0 40            [24] 1462 	push	(_t_go + 2)
      0004DD C0 41            [24] 1463 	push	(_t_go + 3)
      0004DF 85 3E 82         [24] 1464 	mov	dpl, _t_go
      0004E2 85 3F 83         [24] 1465 	mov	dph, (_t_go + 1)
      0004E5 85 40 F0         [24] 1466 	mov	b, (_t_go + 2)
      0004E8 E5 41            [12] 1467 	mov	a, (_t_go + 3)
      0004EA 12 0C 88         [24] 1468 	lcall	___fsmul
      0004ED AB 82            [24] 1469 	mov	r3, dpl
      0004EF AC 83            [24] 1470 	mov	r4, dph
      0004F1 AD F0            [24] 1471 	mov	r5, b
      0004F3 FE               [12] 1472 	mov	r6, a
      0004F4 E5 81            [12] 1473 	mov	a,sp
      0004F6 24 FC            [12] 1474 	add	a,#0xfc
      0004F8 F5 81            [12] 1475 	mov	sp,a
      0004FA C0 03            [24] 1476 	push	ar3
      0004FC C0 04            [24] 1477 	push	ar4
      0004FE C0 05            [24] 1478 	push	ar5
      000500 C0 06            [24] 1479 	push	ar6
                                   1480 ;	pgc.c:37: float _b = -6.0f / t_go;
      000502 90 00 00         [24] 1481 	mov	dptr,#0x0000
      000505 75 F0 40         [24] 1482 	mov	b, #0x40
      000508 74 C1            [12] 1483 	mov	a, #0xc1
      00050A 12 1A BA         [24] 1484 	lcall	___fsdiv
      00050D 85 82 49         [24] 1485 	mov	_main__a_50000_120,dpl
      000510 85 83 4A         [24] 1486 	mov	(_main__a_50000_120 + 1),dph
      000513 85 F0 4B         [24] 1487 	mov	(_main__a_50000_120 + 2),b
      000516 F5 4C            [12] 1488 	mov	(_main__a_50000_120 + 3),a
      000518 E5 81            [12] 1489 	mov	a,sp
      00051A 24 FC            [12] 1490 	add	a,#0xfc
      00051C F5 81            [12] 1491 	mov	sp,a
      00051E C0 3E            [24] 1492 	push	_t_go
      000520 C0 3F            [24] 1493 	push	(_t_go + 1)
      000522 C0 40            [24] 1494 	push	(_t_go + 2)
      000524 C0 41            [24] 1495 	push	(_t_go + 3)
                                   1496 ;	pgc.c:39: a0_x = _a * pos_x + _b * vel_x;
      000526 90 00 00         [24] 1497 	mov	dptr,#0x0000
      000529 74 C0            [12] 1498 	mov	a,#0xc0
      00052B F5 F0            [12] 1499 	mov	b,a
      00052D 12 1A BA         [24] 1500 	lcall	___fsdiv
      000530 85 82 4D         [24] 1501 	mov	_main__b_50000_120,dpl
      000533 85 83 4E         [24] 1502 	mov	(_main__b_50000_120 + 1),dph
      000536 85 F0 4F         [24] 1503 	mov	(_main__b_50000_120 + 2),b
      000539 F5 50            [12] 1504 	mov	(_main__b_50000_120 + 3),a
      00053B E5 81            [12] 1505 	mov	a,sp
      00053D 24 FC            [12] 1506 	add	a,#0xfc
      00053F F5 81            [12] 1507 	mov	sp,a
      000541 90 00 01         [24] 1508 	mov	dptr,#_pos_x
      000544 E0               [24] 1509 	movx	a,@dptr
      000545 C0 E0            [24] 1510 	push	acc
      000547 A3               [24] 1511 	inc	dptr
      000548 E0               [24] 1512 	movx	a,@dptr
      000549 C0 E0            [24] 1513 	push	acc
      00054B A3               [24] 1514 	inc	dptr
      00054C E0               [24] 1515 	movx	a,@dptr
      00054D C0 E0            [24] 1516 	push	acc
      00054F A3               [24] 1517 	inc	dptr
      000550 E0               [24] 1518 	movx	a,@dptr
      000551 C0 E0            [24] 1519 	push	acc
      000553 85 49 82         [24] 1520 	mov	dpl, _main__a_50000_120
      000556 85 4A 83         [24] 1521 	mov	dph, (_main__a_50000_120 + 1)
      000559 85 4B F0         [24] 1522 	mov	b, (_main__a_50000_120 + 2)
      00055C E5 4C            [12] 1523 	mov	a, (_main__a_50000_120 + 3)
      00055E 12 0C 88         [24] 1524 	lcall	___fsmul
      000561 A8 82            [24] 1525 	mov	r0, dpl
      000563 A9 83            [24] 1526 	mov	r1, dph
      000565 AA F0            [24] 1527 	mov	r2, b
      000567 FF               [12] 1528 	mov	r7, a
      000568 E5 81            [12] 1529 	mov	a,sp
      00056A 24 FC            [12] 1530 	add	a,#0xfc
      00056C F5 81            [12] 1531 	mov	sp,a
      00056E C0 07            [24] 1532 	push	ar7
      000570 C0 02            [24] 1533 	push	ar2
      000572 C0 01            [24] 1534 	push	ar1
      000574 C0 00            [24] 1535 	push	ar0
      000576 90 00 09         [24] 1536 	mov	dptr,#_vel_x
      000579 E0               [24] 1537 	movx	a,@dptr
      00057A C0 E0            [24] 1538 	push	acc
      00057C A3               [24] 1539 	inc	dptr
      00057D E0               [24] 1540 	movx	a,@dptr
      00057E C0 E0            [24] 1541 	push	acc
      000580 A3               [24] 1542 	inc	dptr
      000581 E0               [24] 1543 	movx	a,@dptr
      000582 C0 E0            [24] 1544 	push	acc
      000584 A3               [24] 1545 	inc	dptr
      000585 E0               [24] 1546 	movx	a,@dptr
      000586 C0 E0            [24] 1547 	push	acc
      000588 85 4D 82         [24] 1548 	mov	dpl, _main__b_50000_120
      00058B 85 4E 83         [24] 1549 	mov	dph, (_main__b_50000_120 + 1)
      00058E 85 4F F0         [24] 1550 	mov	b, (_main__b_50000_120 + 2)
      000591 E5 50            [12] 1551 	mov	a, (_main__b_50000_120 + 3)
      000593 12 0C 88         [24] 1552 	lcall	___fsmul
      000596 AB 82            [24] 1553 	mov	r3, dpl
      000598 AC 83            [24] 1554 	mov	r4, dph
      00059A AD F0            [24] 1555 	mov	r5, b
      00059C FE               [12] 1556 	mov	r6, a
      00059D E5 81            [12] 1557 	mov	a,sp
      00059F 24 FC            [12] 1558 	add	a,#0xfc
      0005A1 F5 81            [12] 1559 	mov	sp,a
      0005A3 D0 00            [24] 1560 	pop	ar0
      0005A5 D0 01            [24] 1561 	pop	ar1
      0005A7 D0 02            [24] 1562 	pop	ar2
      0005A9 D0 07            [24] 1563 	pop	ar7
      0005AB C0 03            [24] 1564 	push	ar3
      0005AD C0 04            [24] 1565 	push	ar4
      0005AF C0 05            [24] 1566 	push	ar5
      0005B1 C0 06            [24] 1567 	push	ar6
      0005B3 88 82            [24] 1568 	mov	dpl, r0
      0005B5 89 83            [24] 1569 	mov	dph, r1
      0005B7 8A F0            [24] 1570 	mov	b, r2
      0005B9 EF               [12] 1571 	mov	a, r7
      0005BA 12 13 10         [24] 1572 	lcall	___fsadd
      0005BD 85 82 36         [24] 1573 	mov	_a0_x,dpl
      0005C0 85 83 37         [24] 1574 	mov	(_a0_x + 1),dph
      0005C3 85 F0 38         [24] 1575 	mov	(_a0_x + 2),b
      0005C6 F5 39            [12] 1576 	mov	(_a0_x + 3),a
      0005C8 E5 81            [12] 1577 	mov	a,sp
      0005CA 24 FC            [12] 1578 	add	a,#0xfc
      0005CC F5 81            [12] 1579 	mov	sp,a
                                   1580 ;	pgc.c:40: a0_y = _a * pos_y + _b * vel_y - gravity_y;
      0005CE 90 00 05         [24] 1581 	mov	dptr,#_pos_y
      0005D1 E0               [24] 1582 	movx	a,@dptr
      0005D2 C0 E0            [24] 1583 	push	acc
      0005D4 A3               [24] 1584 	inc	dptr
      0005D5 E0               [24] 1585 	movx	a,@dptr
      0005D6 C0 E0            [24] 1586 	push	acc
      0005D8 A3               [24] 1587 	inc	dptr
      0005D9 E0               [24] 1588 	movx	a,@dptr
      0005DA C0 E0            [24] 1589 	push	acc
      0005DC A3               [24] 1590 	inc	dptr
      0005DD E0               [24] 1591 	movx	a,@dptr
      0005DE C0 E0            [24] 1592 	push	acc
      0005E0 85 49 82         [24] 1593 	mov	dpl, _main__a_50000_120
      0005E3 85 4A 83         [24] 1594 	mov	dph, (_main__a_50000_120 + 1)
      0005E6 85 4B F0         [24] 1595 	mov	b, (_main__a_50000_120 + 2)
      0005E9 E5 4C            [12] 1596 	mov	a, (_main__a_50000_120 + 3)
      0005EB 12 0C 88         [24] 1597 	lcall	___fsmul
      0005EE AC 82            [24] 1598 	mov	r4, dpl
      0005F0 AD 83            [24] 1599 	mov	r5, dph
      0005F2 AE F0            [24] 1600 	mov	r6, b
      0005F4 FF               [12] 1601 	mov	r7, a
      0005F5 E5 81            [12] 1602 	mov	a,sp
      0005F7 24 FC            [12] 1603 	add	a,#0xfc
      0005F9 F5 81            [12] 1604 	mov	sp,a
      0005FB C0 07            [24] 1605 	push	ar7
      0005FD C0 06            [24] 1606 	push	ar6
      0005FF C0 05            [24] 1607 	push	ar5
      000601 C0 04            [24] 1608 	push	ar4
      000603 90 00 0D         [24] 1609 	mov	dptr,#_vel_y
      000606 E0               [24] 1610 	movx	a,@dptr
      000607 C0 E0            [24] 1611 	push	acc
      000609 A3               [24] 1612 	inc	dptr
      00060A E0               [24] 1613 	movx	a,@dptr
      00060B C0 E0            [24] 1614 	push	acc
      00060D A3               [24] 1615 	inc	dptr
      00060E E0               [24] 1616 	movx	a,@dptr
      00060F C0 E0            [24] 1617 	push	acc
      000611 A3               [24] 1618 	inc	dptr
      000612 E0               [24] 1619 	movx	a,@dptr
      000613 C0 E0            [24] 1620 	push	acc
      000615 85 4D 82         [24] 1621 	mov	dpl, _main__b_50000_120
      000618 85 4E 83         [24] 1622 	mov	dph, (_main__b_50000_120 + 1)
      00061B 85 4F F0         [24] 1623 	mov	b, (_main__b_50000_120 + 2)
      00061E E5 50            [12] 1624 	mov	a, (_main__b_50000_120 + 3)
      000620 12 0C 88         [24] 1625 	lcall	___fsmul
      000623 A8 82            [24] 1626 	mov	r0, dpl
      000625 A9 83            [24] 1627 	mov	r1, dph
      000627 AA F0            [24] 1628 	mov	r2, b
      000629 FB               [12] 1629 	mov	r3, a
      00062A E5 81            [12] 1630 	mov	a,sp
      00062C 24 FC            [12] 1631 	add	a,#0xfc
      00062E F5 81            [12] 1632 	mov	sp,a
      000630 D0 04            [24] 1633 	pop	ar4
      000632 D0 05            [24] 1634 	pop	ar5
      000634 D0 06            [24] 1635 	pop	ar6
      000636 D0 07            [24] 1636 	pop	ar7
      000638 C0 00            [24] 1637 	push	ar0
      00063A C0 01            [24] 1638 	push	ar1
      00063C C0 02            [24] 1639 	push	ar2
      00063E C0 03            [24] 1640 	push	ar3
      000640 8C 82            [24] 1641 	mov	dpl, r4
      000642 8D 83            [24] 1642 	mov	dph, r5
      000644 8E F0            [24] 1643 	mov	b, r6
      000646 EF               [12] 1644 	mov	a, r7
      000647 12 13 10         [24] 1645 	lcall	___fsadd
      00064A AC 82            [24] 1646 	mov	r4, dpl
      00064C AD 83            [24] 1647 	mov	r5, dph
      00064E AE F0            [24] 1648 	mov	r6, b
      000650 FF               [12] 1649 	mov	r7, a
      000651 E5 81            [12] 1650 	mov	a,sp
      000653 24 FC            [12] 1651 	add	a,#0xfc
      000655 F5 81            [12] 1652 	mov	sp,a
      000657 90 00 25         [24] 1653 	mov	dptr,#_gravity_y
      00065A E0               [24] 1654 	movx	a,@dptr
      00065B C0 E0            [24] 1655 	push	acc
      00065D A3               [24] 1656 	inc	dptr
      00065E E0               [24] 1657 	movx	a,@dptr
      00065F C0 E0            [24] 1658 	push	acc
      000661 A3               [24] 1659 	inc	dptr
      000662 E0               [24] 1660 	movx	a,@dptr
      000663 C0 E0            [24] 1661 	push	acc
      000665 A3               [24] 1662 	inc	dptr
      000666 E0               [24] 1663 	movx	a,@dptr
      000667 C0 E0            [24] 1664 	push	acc
      000669 8C 82            [24] 1665 	mov	dpl, r4
      00066B 8D 83            [24] 1666 	mov	dph, r5
      00066D 8E F0            [24] 1667 	mov	b, r6
      00066F EF               [12] 1668 	mov	a, r7
      000670 12 0B FA         [24] 1669 	lcall	___fssub
      000673 85 82 3A         [24] 1670 	mov	_a0_y,dpl
      000676 85 83 3B         [24] 1671 	mov	(_a0_y + 1),dph
      000679 85 F0 3C         [24] 1672 	mov	(_a0_y + 2),b
      00067C F5 3D            [12] 1673 	mov	(_a0_y + 3),a
      00067E E5 81            [12] 1674 	mov	a,sp
      000680 24 FC            [12] 1675 	add	a,#0xfc
      000682 F5 81            [12] 1676 	mov	sp,a
                                   1677 ;	pgc.c:108: throttle = sqrtf(a0_x * a0_x + a0_y * a0_y) / av_accel;
      000684 C0 36            [24] 1678 	push	_a0_x
      000686 C0 37            [24] 1679 	push	(_a0_x + 1)
      000688 C0 38            [24] 1680 	push	(_a0_x + 2)
      00068A C0 39            [24] 1681 	push	(_a0_x + 3)
      00068C 85 36 82         [24] 1682 	mov	dpl, _a0_x
      00068F 85 37 83         [24] 1683 	mov	dph, (_a0_x + 1)
      000692 85 38 F0         [24] 1684 	mov	b, (_a0_x + 2)
      000695 E5 39            [12] 1685 	mov	a, (_a0_x + 3)
      000697 12 0C 88         [24] 1686 	lcall	___fsmul
      00069A AC 82            [24] 1687 	mov	r4, dpl
      00069C AD 83            [24] 1688 	mov	r5, dph
      00069E AE F0            [24] 1689 	mov	r6, b
      0006A0 FF               [12] 1690 	mov	r7, a
      0006A1 E5 81            [12] 1691 	mov	a,sp
      0006A3 24 FC            [12] 1692 	add	a,#0xfc
      0006A5 F5 81            [12] 1693 	mov	sp,a
      0006A7 C0 07            [24] 1694 	push	ar7
      0006A9 C0 06            [24] 1695 	push	ar6
      0006AB C0 05            [24] 1696 	push	ar5
      0006AD C0 04            [24] 1697 	push	ar4
      0006AF C0 3A            [24] 1698 	push	_a0_y
      0006B1 C0 3B            [24] 1699 	push	(_a0_y + 1)
      0006B3 C0 3C            [24] 1700 	push	(_a0_y + 2)
      0006B5 C0 3D            [24] 1701 	push	(_a0_y + 3)
      0006B7 85 3A 82         [24] 1702 	mov	dpl, _a0_y
      0006BA 85 3B 83         [24] 1703 	mov	dph, (_a0_y + 1)
      0006BD 85 3C F0         [24] 1704 	mov	b, (_a0_y + 2)
      0006C0 E5 3D            [12] 1705 	mov	a, (_a0_y + 3)
      0006C2 12 0C 88         [24] 1706 	lcall	___fsmul
      0006C5 A8 82            [24] 1707 	mov	r0, dpl
      0006C7 A9 83            [24] 1708 	mov	r1, dph
      0006C9 AA F0            [24] 1709 	mov	r2, b
      0006CB FB               [12] 1710 	mov	r3, a
      0006CC E5 81            [12] 1711 	mov	a,sp
      0006CE 24 FC            [12] 1712 	add	a,#0xfc
      0006D0 F5 81            [12] 1713 	mov	sp,a
      0006D2 D0 04            [24] 1714 	pop	ar4
      0006D4 D0 05            [24] 1715 	pop	ar5
      0006D6 D0 06            [24] 1716 	pop	ar6
      0006D8 D0 07            [24] 1717 	pop	ar7
      0006DA C0 00            [24] 1718 	push	ar0
      0006DC C0 01            [24] 1719 	push	ar1
      0006DE C0 02            [24] 1720 	push	ar2
      0006E0 C0 03            [24] 1721 	push	ar3
      0006E2 8C 82            [24] 1722 	mov	dpl, r4
      0006E4 8D 83            [24] 1723 	mov	dph, r5
      0006E6 8E F0            [24] 1724 	mov	b, r6
      0006E8 EF               [12] 1725 	mov	a, r7
      0006E9 12 13 10         [24] 1726 	lcall	___fsadd
      0006EC AC 82            [24] 1727 	mov	r4, dpl
      0006EE AD 83            [24] 1728 	mov	r5, dph
      0006F0 AE F0            [24] 1729 	mov	r6, b
      0006F2 FF               [12] 1730 	mov	r7, a
      0006F3 E5 81            [12] 1731 	mov	a,sp
      0006F5 24 FC            [12] 1732 	add	a,#0xfc
      0006F7 F5 81            [12] 1733 	mov	sp,a
      0006F9 8C 82            [24] 1734 	mov	dpl, r4
      0006FB 8D 83            [24] 1735 	mov	dph, r5
      0006FD 8E F0            [24] 1736 	mov	b, r6
      0006FF EF               [12] 1737 	mov	a, r7
      000700 12 0E 4C         [24] 1738 	lcall	_sqrtf
      000703 AC 82            [24] 1739 	mov	r4, dpl
      000705 AD 83            [24] 1740 	mov	r5, dph
      000707 AE F0            [24] 1741 	mov	r6, b
      000709 FF               [12] 1742 	mov	r7, a
      00070A 90 00 19         [24] 1743 	mov	dptr,#_av_accel
      00070D E0               [24] 1744 	movx	a,@dptr
      00070E C0 E0            [24] 1745 	push	acc
      000710 A3               [24] 1746 	inc	dptr
      000711 E0               [24] 1747 	movx	a,@dptr
      000712 C0 E0            [24] 1748 	push	acc
      000714 A3               [24] 1749 	inc	dptr
      000715 E0               [24] 1750 	movx	a,@dptr
      000716 C0 E0            [24] 1751 	push	acc
      000718 A3               [24] 1752 	inc	dptr
      000719 E0               [24] 1753 	movx	a,@dptr
      00071A C0 E0            [24] 1754 	push	acc
      00071C 8C 82            [24] 1755 	mov	dpl, r4
      00071E 8D 83            [24] 1756 	mov	dph, r5
      000720 8E F0            [24] 1757 	mov	b, r6
      000722 EF               [12] 1758 	mov	a, r7
      000723 12 1A BA         [24] 1759 	lcall	___fsdiv
      000726 85 82 2E         [24] 1760 	mov	_throttle,dpl
      000729 85 83 2F         [24] 1761 	mov	(_throttle + 1),dph
      00072C 85 F0 30         [24] 1762 	mov	(_throttle + 2),b
      00072F F5 31            [12] 1763 	mov	(_throttle + 3),a
      000731 E5 81            [12] 1764 	mov	a,sp
      000733 24 FC            [12] 1765 	add	a,#0xfc
      000735 F5 81            [12] 1766 	mov	sp,a
                                   1767 ;	pgc.c:111: if (throttle != 0) {
      000737 85 2E F0         [24] 1768 	mov	b,_throttle
      00073A E5 2F            [12] 1769 	mov	a,(_throttle + 1)
      00073C 42 F0            [12] 1770 	orl	b,a
      00073E E5 30            [12] 1771 	mov	a,(_throttle + 2)
      000740 42 F0            [12] 1772 	orl	b,a
      000742 E5 31            [12] 1773 	mov	a,(_throttle + 3)
      000744 54 7F            [12] 1774 	anl	a,#0x7F
      000746 45 F0            [12] 1775 	orl	a,b
      000748 70 03            [24] 1776 	jnz	00337$
      00074A 02 09 C0         [24] 1777 	ljmp	00110$
      00074D                       1778 00337$:
                                   1779 ;	pgc.c:113: float delta_angle = angle_from_vec2(a0_x, a0_y) - angle;
      00074D AC 3A            [24] 1780 	mov	r4,_a0_y
      00074F AD 3B            [24] 1781 	mov	r5,(_a0_y + 1)
      000751 AE 3C            [24] 1782 	mov	r6,(_a0_y + 2)
      000753 AF 3D            [24] 1783 	mov	r7,(_a0_y + 3)
      000755 A8 36            [24] 1784 	mov	r0,_a0_x
      000757 A9 37            [24] 1785 	mov	r1,(_a0_x + 1)
      000759 AA 38            [24] 1786 	mov	r2,(_a0_x + 2)
      00075B AB 39            [24] 1787 	mov	r3,(_a0_x + 3)
      00075D 8C 08            [24] 1788 	mov	_atan2f_PARM_2,r4
      00075F 8D 09            [24] 1789 	mov	(_atan2f_PARM_2 + 1),r5
      000761 8E 0A            [24] 1790 	mov	(_atan2f_PARM_2 + 2),r6
      000763 EF               [12] 1791 	mov	a,r7
      000764 B2 E7            [12] 1792 	cpl	acc.7
      000766 F5 0B            [12] 1793 	mov	(_atan2f_PARM_2 + 3),a
      000768 88 82            [24] 1794 	mov	dpl, r0
      00076A 89 83            [24] 1795 	mov	dph, r1
      00076C 8A F0            [24] 1796 	mov	b, r2
      00076E EB               [12] 1797 	mov	a, r3
      00076F 12 10 DD         [24] 1798 	lcall	_atan2f
      000772 AC 82            [24] 1799 	mov	r4, dpl
      000774 AD 83            [24] 1800 	mov	r5, dph
      000776 AE F0            [24] 1801 	mov	r6, b
      000778 FF               [12] 1802 	mov	r7, a
      000779 90 00 11         [24] 1803 	mov	dptr,#_angle
      00077C E0               [24] 1804 	movx	a,@dptr
      00077D C0 E0            [24] 1805 	push	acc
      00077F A3               [24] 1806 	inc	dptr
      000780 E0               [24] 1807 	movx	a,@dptr
      000781 C0 E0            [24] 1808 	push	acc
      000783 A3               [24] 1809 	inc	dptr
      000784 E0               [24] 1810 	movx	a,@dptr
      000785 C0 E0            [24] 1811 	push	acc
      000787 A3               [24] 1812 	inc	dptr
      000788 E0               [24] 1813 	movx	a,@dptr
      000789 C0 E0            [24] 1814 	push	acc
                                   1815 ;	pgc.c:115: if (delta_angle > 3.14159265f) {
      00078B 8C 82            [24] 1816 	mov	dpl, r4
      00078D 8D 83            [24] 1817 	mov	dph, r5
      00078F 8E F0            [24] 1818 	mov	b, r6
      000791 EF               [12] 1819 	mov	a, r7
      000792 12 0B FA         [24] 1820 	lcall	___fssub
      000795 AC 82            [24] 1821 	mov	r4, dpl
      000797 AD 83            [24] 1822 	mov	r5, dph
      000799 AE F0            [24] 1823 	mov	r6, b
      00079B FF               [12] 1824 	mov	r7, a
      00079C E5 81            [12] 1825 	mov	a,sp
      00079E 24 FC            [12] 1826 	add	a,#0xfc
      0007A0 F5 81            [12] 1827 	mov	sp,a
      0007A2 C0 07            [24] 1828 	push	ar7
      0007A4 C0 06            [24] 1829 	push	ar6
      0007A6 C0 05            [24] 1830 	push	ar5
      0007A8 C0 04            [24] 1831 	push	ar4
      0007AA C0 04            [24] 1832 	push	ar4
      0007AC C0 05            [24] 1833 	push	ar5
      0007AE C0 06            [24] 1834 	push	ar6
      0007B0 C0 07            [24] 1835 	push	ar7
      0007B2 90 0F DB         [24] 1836 	mov	dptr,#0x0fdb
      0007B5 75 F0 49         [24] 1837 	mov	b, #0x49
      0007B8 74 40            [12] 1838 	mov	a, #0x40
      0007BA 12 10 AD         [24] 1839 	lcall	___fslt
      0007BD AB 82            [24] 1840 	mov	r3, dpl
      0007BF E5 81            [12] 1841 	mov	a,sp
      0007C1 24 FC            [12] 1842 	add	a,#0xfc
      0007C3 F5 81            [12] 1843 	mov	sp,a
      0007C5 D0 04            [24] 1844 	pop	ar4
      0007C7 D0 05            [24] 1845 	pop	ar5
      0007C9 D0 06            [24] 1846 	pop	ar6
      0007CB D0 07            [24] 1847 	pop	ar7
      0007CD EB               [12] 1848 	mov	a,r3
      0007CE 60 29            [24] 1849 	jz	00107$
                                   1850 ;	pgc.c:116: delta_angle -= 6.2831853f;
      0007D0 74 DB            [12] 1851 	mov	a,#0xdb
      0007D2 C0 E0            [24] 1852 	push	acc
      0007D4 74 0F            [12] 1853 	mov	a,#0x0f
      0007D6 C0 E0            [24] 1854 	push	acc
      0007D8 74 C9            [12] 1855 	mov	a,#0xc9
      0007DA C0 E0            [24] 1856 	push	acc
      0007DC 74 40            [12] 1857 	mov	a,#0x40
      0007DE C0 E0            [24] 1858 	push	acc
      0007E0 8C 82            [24] 1859 	mov	dpl, r4
      0007E2 8D 83            [24] 1860 	mov	dph, r5
      0007E4 8E F0            [24] 1861 	mov	b, r6
      0007E6 EF               [12] 1862 	mov	a, r7
      0007E7 12 0B FA         [24] 1863 	lcall	___fssub
      0007EA AC 82            [24] 1864 	mov	r4, dpl
      0007EC AD 83            [24] 1865 	mov	r5, dph
      0007EE AE F0            [24] 1866 	mov	r6, b
      0007F0 FF               [12] 1867 	mov	r7, a
      0007F1 E5 81            [12] 1868 	mov	a,sp
      0007F3 24 FC            [12] 1869 	add	a,#0xfc
      0007F5 F5 81            [12] 1870 	mov	sp,a
      0007F7 80 5C            [24] 1871 	sjmp	00108$
      0007F9                       1872 00107$:
                                   1873 ;	pgc.c:117: } else if (delta_angle < -3.14159265f) {
      0007F9 C0 07            [24] 1874 	push	ar7
      0007FB C0 06            [24] 1875 	push	ar6
      0007FD C0 05            [24] 1876 	push	ar5
      0007FF C0 04            [24] 1877 	push	ar4
      000801 74 DB            [12] 1878 	mov	a,#0xdb
      000803 C0 E0            [24] 1879 	push	acc
      000805 74 0F            [12] 1880 	mov	a,#0x0f
      000807 C0 E0            [24] 1881 	push	acc
      000809 74 49            [12] 1882 	mov	a,#0x49
      00080B C0 E0            [24] 1883 	push	acc
      00080D 74 C0            [12] 1884 	mov	a,#0xc0
      00080F C0 E0            [24] 1885 	push	acc
      000811 8C 82            [24] 1886 	mov	dpl, r4
      000813 8D 83            [24] 1887 	mov	dph, r5
      000815 8E F0            [24] 1888 	mov	b, r6
      000817 EF               [12] 1889 	mov	a, r7
      000818 12 10 AD         [24] 1890 	lcall	___fslt
      00081B AB 82            [24] 1891 	mov	r3, dpl
      00081D E5 81            [12] 1892 	mov	a,sp
      00081F 24 FC            [12] 1893 	add	a,#0xfc
      000821 F5 81            [12] 1894 	mov	sp,a
      000823 D0 04            [24] 1895 	pop	ar4
      000825 D0 05            [24] 1896 	pop	ar5
      000827 D0 06            [24] 1897 	pop	ar6
      000829 D0 07            [24] 1898 	pop	ar7
      00082B EB               [12] 1899 	mov	a,r3
      00082C 60 27            [24] 1900 	jz	00108$
                                   1901 ;	pgc.c:118: delta_angle += 6.2831853f;
      00082E 74 DB            [12] 1902 	mov	a,#0xdb
      000830 C0 E0            [24] 1903 	push	acc
      000832 74 0F            [12] 1904 	mov	a,#0x0f
      000834 C0 E0            [24] 1905 	push	acc
      000836 74 C9            [12] 1906 	mov	a,#0xc9
      000838 C0 E0            [24] 1907 	push	acc
      00083A 74 40            [12] 1908 	mov	a,#0x40
      00083C C0 E0            [24] 1909 	push	acc
      00083E 8C 82            [24] 1910 	mov	dpl, r4
      000840 8D 83            [24] 1911 	mov	dph, r5
      000842 8E F0            [24] 1912 	mov	b, r6
      000844 EF               [12] 1913 	mov	a, r7
      000845 12 13 10         [24] 1914 	lcall	___fsadd
      000848 AC 82            [24] 1915 	mov	r4, dpl
      00084A AD 83            [24] 1916 	mov	r5, dph
      00084C AE F0            [24] 1917 	mov	r6, b
      00084E FF               [12] 1918 	mov	r7, a
      00084F E5 81            [12] 1919 	mov	a,sp
      000851 24 FC            [12] 1920 	add	a,#0xfc
      000853 F5 81            [12] 1921 	mov	sp,a
      000855                       1922 00108$:
                                   1923 ;	pgc.c:123: gimbal = (ang_vel - sqrtf(0.8f * fabsf(delta_angle) * av_accel_ang * throttle) * signf(delta_angle)) / av_accel_ang;
      000855 8C 82            [24] 1924 	mov	dpl, r4
      000857 8D 83            [24] 1925 	mov	dph, r5
      000859 8E F0            [24] 1926 	mov	b, r6
      00085B EF               [12] 1927 	mov	a, r7
      00085C C0 07            [24] 1928 	push	ar7
      00085E C0 06            [24] 1929 	push	ar6
      000860 C0 05            [24] 1930 	push	ar5
      000862 C0 04            [24] 1931 	push	ar4
      000864 12 13 69         [24] 1932 	lcall	_fabsf
      000867 A8 82            [24] 1933 	mov	r0, dpl
      000869 A9 83            [24] 1934 	mov	r1, dph
      00086B AA F0            [24] 1935 	mov	r2, b
      00086D FB               [12] 1936 	mov	r3, a
      00086E C0 00            [24] 1937 	push	ar0
      000870 C0 01            [24] 1938 	push	ar1
      000872 C0 02            [24] 1939 	push	ar2
      000874 C0 03            [24] 1940 	push	ar3
      000876 90 CC CD         [24] 1941 	mov	dptr,#0xcccd
      000879 75 F0 4C         [24] 1942 	mov	b, #0x4c
      00087C 74 3F            [12] 1943 	mov	a, #0x3f
      00087E 12 0C 88         [24] 1944 	lcall	___fsmul
      000881 A8 82            [24] 1945 	mov	r0, dpl
      000883 A9 83            [24] 1946 	mov	r1, dph
      000885 AA F0            [24] 1947 	mov	r2, b
      000887 FB               [12] 1948 	mov	r3, a
      000888 E5 81            [12] 1949 	mov	a,sp
      00088A 24 FC            [12] 1950 	add	a,#0xfc
      00088C F5 81            [12] 1951 	mov	sp,a
      00088E 90 00 1D         [24] 1952 	mov	dptr,#_av_accel_ang
      000891 E0               [24] 1953 	movx	a,@dptr
      000892 C0 E0            [24] 1954 	push	acc
      000894 A3               [24] 1955 	inc	dptr
      000895 E0               [24] 1956 	movx	a,@dptr
      000896 C0 E0            [24] 1957 	push	acc
      000898 A3               [24] 1958 	inc	dptr
      000899 E0               [24] 1959 	movx	a,@dptr
      00089A C0 E0            [24] 1960 	push	acc
      00089C A3               [24] 1961 	inc	dptr
      00089D E0               [24] 1962 	movx	a,@dptr
      00089E C0 E0            [24] 1963 	push	acc
      0008A0 88 82            [24] 1964 	mov	dpl, r0
      0008A2 89 83            [24] 1965 	mov	dph, r1
      0008A4 8A F0            [24] 1966 	mov	b, r2
      0008A6 EB               [12] 1967 	mov	a, r3
      0008A7 12 0C 88         [24] 1968 	lcall	___fsmul
      0008AA A8 82            [24] 1969 	mov	r0, dpl
      0008AC A9 83            [24] 1970 	mov	r1, dph
      0008AE AA F0            [24] 1971 	mov	r2, b
      0008B0 FB               [12] 1972 	mov	r3, a
      0008B1 E5 81            [12] 1973 	mov	a,sp
      0008B3 24 FC            [12] 1974 	add	a,#0xfc
      0008B5 F5 81            [12] 1975 	mov	sp,a
      0008B7 C0 2E            [24] 1976 	push	_throttle
      0008B9 C0 2F            [24] 1977 	push	(_throttle + 1)
      0008BB C0 30            [24] 1978 	push	(_throttle + 2)
      0008BD C0 31            [24] 1979 	push	(_throttle + 3)
      0008BF 88 82            [24] 1980 	mov	dpl, r0
      0008C1 89 83            [24] 1981 	mov	dph, r1
      0008C3 8A F0            [24] 1982 	mov	b, r2
      0008C5 EB               [12] 1983 	mov	a, r3
      0008C6 12 0C 88         [24] 1984 	lcall	___fsmul
      0008C9 A8 82            [24] 1985 	mov	r0, dpl
      0008CB A9 83            [24] 1986 	mov	r1, dph
      0008CD AA F0            [24] 1987 	mov	r2, b
      0008CF FB               [12] 1988 	mov	r3, a
      0008D0 E5 81            [12] 1989 	mov	a,sp
      0008D2 24 FC            [12] 1990 	add	a,#0xfc
      0008D4 F5 81            [12] 1991 	mov	sp,a
      0008D6 88 82            [24] 1992 	mov	dpl, r0
      0008D8 89 83            [24] 1993 	mov	dph, r1
      0008DA 8A F0            [24] 1994 	mov	b, r2
      0008DC EB               [12] 1995 	mov	a, r3
      0008DD 12 0E 4C         [24] 1996 	lcall	_sqrtf
      0008E0 A8 82            [24] 1997 	mov	r0, dpl
      0008E2 A9 83            [24] 1998 	mov	r1, dph
      0008E4 AA F0            [24] 1999 	mov	r2, b
      0008E6 FB               [12] 2000 	mov	r3, a
      0008E7 D0 04            [24] 2001 	pop	ar4
      0008E9 D0 05            [24] 2002 	pop	ar5
      0008EB D0 06            [24] 2003 	pop	ar6
      0008ED D0 07            [24] 2004 	pop	ar7
                                   2005 ;	utils.h:20: return value < 0 ? -1 : 1;
      0008EF C0 03            [24] 2006 	push	ar3
      0008F1 C0 02            [24] 2007 	push	ar2
      0008F3 C0 01            [24] 2008 	push	ar1
      0008F5 C0 00            [24] 2009 	push	ar0
      0008F7 E4               [12] 2010 	clr	a
      0008F8 C0 E0            [24] 2011 	push	acc
      0008FA C0 E0            [24] 2012 	push	acc
      0008FC C0 E0            [24] 2013 	push	acc
      0008FE C0 E0            [24] 2014 	push	acc
      000900 8C 82            [24] 2015 	mov	dpl, r4
      000902 8D 83            [24] 2016 	mov	dph, r5
      000904 8E F0            [24] 2017 	mov	b, r6
      000906 EF               [12] 2018 	mov	a, r7
      000907 12 10 AD         [24] 2019 	lcall	___fslt
      00090A AF 82            [24] 2020 	mov	r7, dpl
      00090C E5 81            [12] 2021 	mov	a,sp
      00090E 24 FC            [12] 2022 	add	a,#0xfc
      000910 F5 81            [12] 2023 	mov	sp,a
      000912 D0 00            [24] 2024 	pop	ar0
      000914 D0 01            [24] 2025 	pop	ar1
      000916 D0 02            [24] 2026 	pop	ar2
      000918 D0 03            [24] 2027 	pop	ar3
      00091A EF               [12] 2028 	mov	a,r7
      00091B 60 06            [24] 2029 	jz	00169$
      00091D 7E FF            [12] 2030 	mov	r6,#0xff
      00091F 7F FF            [12] 2031 	mov	r7,#0xff
      000921 80 04            [24] 2032 	sjmp	00170$
      000923                       2033 00169$:
      000923 7E 01            [12] 2034 	mov	r6,#0x01
      000925 7F 00            [12] 2035 	mov	r7,#0x00
      000927                       2036 00170$:
      000927 8E 82            [24] 2037 	mov	dpl, r6
      000929 8F 83            [24] 2038 	mov	dph, r7
      00092B C0 03            [24] 2039 	push	ar3
      00092D C0 02            [24] 2040 	push	ar2
      00092F C0 01            [24] 2041 	push	ar1
      000931 C0 00            [24] 2042 	push	ar0
      000933 12 15 40         [24] 2043 	lcall	___sint2fs
      000936 AC 82            [24] 2044 	mov	r4, dpl
      000938 AD 83            [24] 2045 	mov	r5, dph
      00093A AE F0            [24] 2046 	mov	r6, b
      00093C FF               [12] 2047 	mov	r7, a
      00093D D0 00            [24] 2048 	pop	ar0
      00093F D0 01            [24] 2049 	pop	ar1
      000941 D0 02            [24] 2050 	pop	ar2
      000943 D0 03            [24] 2051 	pop	ar3
                                   2052 ;	pgc.c:123: gimbal = (ang_vel - sqrtf(0.8f * fabsf(delta_angle) * av_accel_ang * throttle) * signf(delta_angle)) / av_accel_ang;
      000945 C0 04            [24] 2053 	push	ar4
      000947 C0 05            [24] 2054 	push	ar5
      000949 C0 06            [24] 2055 	push	ar6
      00094B C0 07            [24] 2056 	push	ar7
      00094D 88 82            [24] 2057 	mov	dpl, r0
      00094F 89 83            [24] 2058 	mov	dph, r1
      000951 8A F0            [24] 2059 	mov	b, r2
      000953 EB               [12] 2060 	mov	a, r3
      000954 12 0C 88         [24] 2061 	lcall	___fsmul
      000957 AC 82            [24] 2062 	mov	r4, dpl
      000959 AD 83            [24] 2063 	mov	r5, dph
      00095B AE F0            [24] 2064 	mov	r6, b
      00095D FF               [12] 2065 	mov	r7, a
      00095E E5 81            [12] 2066 	mov	a,sp
      000960 24 FC            [12] 2067 	add	a,#0xfc
      000962 F5 81            [12] 2068 	mov	sp,a
      000964 90 00 15         [24] 2069 	mov	dptr,#_ang_vel
      000967 E0               [24] 2070 	movx	a,@dptr
      000968 F8               [12] 2071 	mov	r0,a
      000969 A3               [24] 2072 	inc	dptr
      00096A E0               [24] 2073 	movx	a,@dptr
      00096B F9               [12] 2074 	mov	r1,a
      00096C A3               [24] 2075 	inc	dptr
      00096D E0               [24] 2076 	movx	a,@dptr
      00096E FA               [12] 2077 	mov	r2,a
      00096F A3               [24] 2078 	inc	dptr
      000970 E0               [24] 2079 	movx	a,@dptr
      000971 FB               [12] 2080 	mov	r3,a
      000972 C0 04            [24] 2081 	push	ar4
      000974 C0 05            [24] 2082 	push	ar5
      000976 C0 06            [24] 2083 	push	ar6
      000978 C0 07            [24] 2084 	push	ar7
      00097A 88 82            [24] 2085 	mov	dpl, r0
      00097C 89 83            [24] 2086 	mov	dph, r1
      00097E 8A F0            [24] 2087 	mov	b, r2
      000980 EB               [12] 2088 	mov	a, r3
      000981 12 0B FA         [24] 2089 	lcall	___fssub
      000984 AC 82            [24] 2090 	mov	r4, dpl
      000986 AD 83            [24] 2091 	mov	r5, dph
      000988 AE F0            [24] 2092 	mov	r6, b
      00098A FF               [12] 2093 	mov	r7, a
      00098B E5 81            [12] 2094 	mov	a,sp
      00098D 24 FC            [12] 2095 	add	a,#0xfc
      00098F F5 81            [12] 2096 	mov	sp,a
      000991 90 00 1D         [24] 2097 	mov	dptr,#_av_accel_ang
      000994 E0               [24] 2098 	movx	a,@dptr
      000995 C0 E0            [24] 2099 	push	acc
      000997 A3               [24] 2100 	inc	dptr
      000998 E0               [24] 2101 	movx	a,@dptr
      000999 C0 E0            [24] 2102 	push	acc
      00099B A3               [24] 2103 	inc	dptr
      00099C E0               [24] 2104 	movx	a,@dptr
      00099D C0 E0            [24] 2105 	push	acc
      00099F A3               [24] 2106 	inc	dptr
      0009A0 E0               [24] 2107 	movx	a,@dptr
      0009A1 C0 E0            [24] 2108 	push	acc
      0009A3 8C 82            [24] 2109 	mov	dpl, r4
      0009A5 8D 83            [24] 2110 	mov	dph, r5
      0009A7 8E F0            [24] 2111 	mov	b, r6
      0009A9 EF               [12] 2112 	mov	a, r7
      0009AA 12 1A BA         [24] 2113 	lcall	___fsdiv
      0009AD 85 82 32         [24] 2114 	mov	_gimbal,dpl
      0009B0 85 83 33         [24] 2115 	mov	(_gimbal + 1),dph
      0009B3 85 F0 34         [24] 2116 	mov	(_gimbal + 2),b
      0009B6 F5 35            [12] 2117 	mov	(_gimbal + 3),a
      0009B8 E5 81            [12] 2118 	mov	a,sp
      0009BA 24 FC            [12] 2119 	add	a,#0xfc
      0009BC F5 81            [12] 2120 	mov	sp,a
      0009BE 80 09            [24] 2121 	sjmp	00111$
      0009C0                       2122 00110$:
                                   2123 ;	pgc.c:125: gimbal = 0.0f;
      0009C0 E4               [12] 2124 	clr	a
      0009C1 F5 32            [12] 2125 	mov	_gimbal,a
      0009C3 F5 33            [12] 2126 	mov	(_gimbal + 1),a
      0009C5 F5 34            [12] 2127 	mov	(_gimbal + 2),a
      0009C7 F5 35            [12] 2128 	mov	(_gimbal + 3),a
      0009C9                       2129 00111$:
                                   2130 ;	pgc.c:129: Serial_SendByte(0x21); // send package
      0009C9 75 82 21         [24] 2131 	mov	dpl, #0x21
      0009CC 12 02 9D         [24] 2132 	lcall	_Serial_SendByte
                                   2133 ;	pgc.c:130: Serial_SendFloat(throttle); // throttle
      0009CF 85 2E 82         [24] 2134 	mov	dpl, _throttle
      0009D2 85 2F 83         [24] 2135 	mov	dph, (_throttle + 1)
      0009D5 85 30 F0         [24] 2136 	mov	b, (_throttle + 2)
      0009D8 E5 31            [12] 2137 	mov	a, (_throttle + 3)
      0009DA 12 02 A6         [24] 2138 	lcall	_Serial_SendFloat
                                   2139 ;	pgc.c:131: Serial_SendFloat(gimbal); // gimbal
      0009DD 85 32 82         [24] 2140 	mov	dpl, _gimbal
      0009E0 85 33 83         [24] 2141 	mov	dph, (_gimbal + 1)
      0009E3 85 34 F0         [24] 2142 	mov	b, (_gimbal + 2)
      0009E6 E5 35            [12] 2143 	mov	a, (_gimbal + 3)
      0009E8 12 02 A6         [24] 2144 	lcall	_Serial_SendFloat
                                   2145 ;	pgc.c:134: counter++;
      0009EB 05 48            [12] 2146 	inc	_main_counter_10000_80
                                   2147 ;	pgc.c:135: if (counter == 5) {
      0009ED 74 05            [12] 2148 	mov	a,#0x05
      0009EF B5 48 02         [24] 2149 	cjne	a,_main_counter_10000_80,00341$
      0009F2 80 03            [24] 2150 	sjmp	00342$
      0009F4                       2151 00341$:
      0009F4 02 0B 1C         [24] 2152 	ljmp	00122$
      0009F7                       2153 00342$:
                                   2154 ;	pgc.c:136: counter = 0;
      0009F7 75 48 00         [24] 2155 	mov	_main_counter_10000_80,#0x00
                                   2156 ;	pgc.c:138: REG1 = REG2 = REG3 = 0;
      0009FA 90 00 35         [24] 2157 	mov	dptr,#_REG3
      0009FD E4               [12] 2158 	clr	a
      0009FE F0               [24] 2159 	movx	@dptr,a
      0009FF A3               [24] 2160 	inc	dptr
      000A00 F0               [24] 2161 	movx	@dptr,a
      000A01 A3               [24] 2162 	inc	dptr
      000A02 F0               [24] 2163 	movx	@dptr,a
      000A03 A3               [24] 2164 	inc	dptr
      000A04 F0               [24] 2165 	movx	@dptr,a
      000A05 90 00 31         [24] 2166 	mov	dptr,#_REG2
      000A08 F0               [24] 2167 	movx	@dptr,a
      000A09 A3               [24] 2168 	inc	dptr
      000A0A F0               [24] 2169 	movx	@dptr,a
      000A0B A3               [24] 2170 	inc	dptr
      000A0C F0               [24] 2171 	movx	@dptr,a
      000A0D A3               [24] 2172 	inc	dptr
      000A0E F0               [24] 2173 	movx	@dptr,a
      000A0F 90 00 2D         [24] 2174 	mov	dptr,#_REG1
      000A12 F0               [24] 2175 	movx	@dptr,a
      000A13 A3               [24] 2176 	inc	dptr
      000A14 F0               [24] 2177 	movx	@dptr,a
      000A15 A3               [24] 2178 	inc	dptr
      000A16 F0               [24] 2179 	movx	@dptr,a
      000A17 A3               [24] 2180 	inc	dptr
      000A18 F0               [24] 2181 	movx	@dptr,a
                                   2182 ;	pgc.c:140: if (dsky_state != 0) { // editting
      000A19 E5 43            [12] 2183 	mov	a,_dsky_state
      000A1B 60 05            [24] 2184 	jz	00113$
                                   2185 ;	pgc.c:141: led_state &= 0b1110;
      000A1D 53 47 0E         [24] 2186 	anl	_led_state,#0x0e
      000A20 80 03            [24] 2187 	sjmp	00114$
      000A22                       2188 00113$:
                                   2189 ;	pgc.c:143: led_state |= 0b0001;
      000A22 43 47 01         [24] 2190 	orl	_led_state,#0x01
      000A25                       2191 00114$:
                                   2192 ;	pgc.c:147: LED_WriteData(led_state);
      000A25 85 47 82         [24] 2193 	mov	dpl, _led_state
      000A28 12 02 8B         [24] 2194 	lcall	_LED_WriteData
                                   2195 ;	pgc.c:149: if (VERB == 16) {
      000A2B 74 10            [12] 2196 	mov	a,#0x10
      000A2D B5 2C 02         [24] 2197 	cjne	a,_VERB,00344$
      000A30 80 03            [24] 2198 	sjmp	00345$
      000A32                       2199 00344$:
      000A32 02 0A CB         [24] 2200 	ljmp	00120$
      000A35                       2201 00345$:
                                   2202 ;	pgc.c:150: switch (NOUN) {
      000A35 74 01            [12] 2203 	mov	a,#0x01
      000A37 B5 2D 02         [24] 2204 	cjne	a,_NOUN,00346$
      000A3A 80 07            [24] 2205 	sjmp	00115$
      000A3C                       2206 00346$:
      000A3C 74 02            [12] 2207 	mov	a,#0x02
                                   2208 ;	pgc.c:151: case 1:
      000A3E B5 2D 34         [24] 2209 	cjne	a,_NOUN,00118$
      000A41 80 14            [24] 2210 	sjmp	00116$
      000A43                       2211 00115$:
                                   2212 ;	pgc.c:152: REG1 = t_go;
      000A43 90 00 2D         [24] 2213 	mov	dptr,#_REG1
      000A46 E5 3E            [12] 2214 	mov	a,_t_go
      000A48 F0               [24] 2215 	movx	@dptr,a
      000A49 E5 3F            [12] 2216 	mov	a,(_t_go + 1)
      000A4B A3               [24] 2217 	inc	dptr
      000A4C F0               [24] 2218 	movx	@dptr,a
      000A4D E5 40            [12] 2219 	mov	a,(_t_go + 2)
      000A4F A3               [24] 2220 	inc	dptr
      000A50 F0               [24] 2221 	movx	@dptr,a
      000A51 E5 41            [12] 2222 	mov	a,(_t_go + 3)
      000A53 A3               [24] 2223 	inc	dptr
      000A54 F0               [24] 2224 	movx	@dptr,a
                                   2225 ;	pgc.c:153: break;
                                   2226 ;	pgc.c:155: case 2:
      000A55 80 1E            [24] 2227 	sjmp	00118$
      000A57                       2228 00116$:
                                   2229 ;	pgc.c:156: Serial_SendByte(0x0a);
      000A57 75 82 0A         [24] 2230 	mov	dpl, #0x0a
      000A5A 12 02 9D         [24] 2231 	lcall	_Serial_SendByte
                                   2232 ;	pgc.c:157: REG1 = Serial_ReadFloat();
      000A5D 12 02 CF         [24] 2233 	lcall	_Serial_ReadFloat
      000A60 AC 82            [24] 2234 	mov	r4, dpl
      000A62 AD 83            [24] 2235 	mov	r5, dph
      000A64 AE F0            [24] 2236 	mov	r6, b
      000A66 FF               [12] 2237 	mov	r7, a
      000A67 90 00 2D         [24] 2238 	mov	dptr,#_REG1
      000A6A EC               [12] 2239 	mov	a,r4
      000A6B F0               [24] 2240 	movx	@dptr,a
      000A6C ED               [12] 2241 	mov	a,r5
      000A6D A3               [24] 2242 	inc	dptr
      000A6E F0               [24] 2243 	movx	@dptr,a
      000A6F EE               [12] 2244 	mov	a,r6
      000A70 A3               [24] 2245 	inc	dptr
      000A71 F0               [24] 2246 	movx	@dptr,a
      000A72 EF               [12] 2247 	mov	a,r7
      000A73 A3               [24] 2248 	inc	dptr
      000A74 F0               [24] 2249 	movx	@dptr,a
                                   2250 ;	pgc.c:162: }
      000A75                       2251 00118$:
                                   2252 ;	pgc.c:163: REG2 = fabsf(vel_y);
      000A75 90 00 0D         [24] 2253 	mov	dptr,#_vel_y
      000A78 E0               [24] 2254 	movx	a,@dptr
      000A79 FC               [12] 2255 	mov	r4,a
      000A7A A3               [24] 2256 	inc	dptr
      000A7B E0               [24] 2257 	movx	a,@dptr
      000A7C FD               [12] 2258 	mov	r5,a
      000A7D A3               [24] 2259 	inc	dptr
      000A7E E0               [24] 2260 	movx	a,@dptr
      000A7F FE               [12] 2261 	mov	r6,a
      000A80 A3               [24] 2262 	inc	dptr
      000A81 E0               [24] 2263 	movx	a,@dptr
      000A82 8C 82            [24] 2264 	mov	dpl,r4
      000A84 8D 83            [24] 2265 	mov	dph,r5
      000A86 8E F0            [24] 2266 	mov	b,r6
      000A88 12 13 69         [24] 2267 	lcall	_fabsf
      000A8B AC 82            [24] 2268 	mov	r4, dpl
      000A8D AD 83            [24] 2269 	mov	r5, dph
      000A8F AE F0            [24] 2270 	mov	r6, b
      000A91 FF               [12] 2271 	mov	r7, a
      000A92 90 00 31         [24] 2272 	mov	dptr,#_REG2
      000A95 EC               [12] 2273 	mov	a,r4
      000A96 F0               [24] 2274 	movx	@dptr,a
      000A97 ED               [12] 2275 	mov	a,r5
      000A98 A3               [24] 2276 	inc	dptr
      000A99 F0               [24] 2277 	movx	@dptr,a
      000A9A EE               [12] 2278 	mov	a,r6
      000A9B A3               [24] 2279 	inc	dptr
      000A9C F0               [24] 2280 	movx	@dptr,a
      000A9D EF               [12] 2281 	mov	a,r7
      000A9E A3               [24] 2282 	inc	dptr
      000A9F F0               [24] 2283 	movx	@dptr,a
                                   2284 ;	pgc.c:164: REG3 = fabsf(pos_y);
      000AA0 90 00 05         [24] 2285 	mov	dptr,#_pos_y
      000AA3 E0               [24] 2286 	movx	a,@dptr
      000AA4 FC               [12] 2287 	mov	r4,a
      000AA5 A3               [24] 2288 	inc	dptr
      000AA6 E0               [24] 2289 	movx	a,@dptr
      000AA7 FD               [12] 2290 	mov	r5,a
      000AA8 A3               [24] 2291 	inc	dptr
      000AA9 E0               [24] 2292 	movx	a,@dptr
      000AAA FE               [12] 2293 	mov	r6,a
      000AAB A3               [24] 2294 	inc	dptr
      000AAC E0               [24] 2295 	movx	a,@dptr
      000AAD 8C 82            [24] 2296 	mov	dpl,r4
      000AAF 8D 83            [24] 2297 	mov	dph,r5
      000AB1 8E F0            [24] 2298 	mov	b,r6
      000AB3 12 13 69         [24] 2299 	lcall	_fabsf
      000AB6 AC 82            [24] 2300 	mov	r4, dpl
      000AB8 AD 83            [24] 2301 	mov	r5, dph
      000ABA AE F0            [24] 2302 	mov	r6, b
      000ABC FF               [12] 2303 	mov	r7, a
      000ABD 90 00 35         [24] 2304 	mov	dptr,#_REG3
      000AC0 EC               [12] 2305 	mov	a,r4
      000AC1 F0               [24] 2306 	movx	@dptr,a
      000AC2 ED               [12] 2307 	mov	a,r5
      000AC3 A3               [24] 2308 	inc	dptr
      000AC4 F0               [24] 2309 	movx	@dptr,a
      000AC5 EE               [12] 2310 	mov	a,r6
      000AC6 A3               [24] 2311 	inc	dptr
      000AC7 F0               [24] 2312 	movx	@dptr,a
      000AC8 EF               [12] 2313 	mov	a,r7
      000AC9 A3               [24] 2314 	inc	dptr
      000ACA F0               [24] 2315 	movx	@dptr,a
      000ACB                       2316 00120$:
                                   2317 ;	pgc.c:167: Display_Write(1, REG1, dsky_PROG);
      000ACB 90 00 2D         [24] 2318 	mov	dptr,#_REG1
      000ACE E0               [24] 2319 	movx	a,@dptr
      000ACF F5 22            [12] 2320 	mov	_Display_Write_PARM_2,a
      000AD1 A3               [24] 2321 	inc	dptr
      000AD2 E0               [24] 2322 	movx	a,@dptr
      000AD3 F5 23            [12] 2323 	mov	(_Display_Write_PARM_2 + 1),a
      000AD5 A3               [24] 2324 	inc	dptr
      000AD6 E0               [24] 2325 	movx	a,@dptr
      000AD7 F5 24            [12] 2326 	mov	(_Display_Write_PARM_2 + 2),a
      000AD9 A3               [24] 2327 	inc	dptr
      000ADA E0               [24] 2328 	movx	a,@dptr
      000ADB F5 25            [12] 2329 	mov	(_Display_Write_PARM_2 + 3),a
      000ADD 85 44 26         [24] 2330 	mov	_Display_Write_PARM_3,_dsky_PROG
      000AE0 75 82 01         [24] 2331 	mov	dpl, #0x01
      000AE3 12 01 B6         [24] 2332 	lcall	_Display_Write
                                   2333 ;	pgc.c:168: Display_Write(2, REG2, dsky_VERB);
      000AE6 90 00 31         [24] 2334 	mov	dptr,#_REG2
      000AE9 E0               [24] 2335 	movx	a,@dptr
      000AEA F5 22            [12] 2336 	mov	_Display_Write_PARM_2,a
      000AEC A3               [24] 2337 	inc	dptr
      000AED E0               [24] 2338 	movx	a,@dptr
      000AEE F5 23            [12] 2339 	mov	(_Display_Write_PARM_2 + 1),a
      000AF0 A3               [24] 2340 	inc	dptr
      000AF1 E0               [24] 2341 	movx	a,@dptr
      000AF2 F5 24            [12] 2342 	mov	(_Display_Write_PARM_2 + 2),a
      000AF4 A3               [24] 2343 	inc	dptr
      000AF5 E0               [24] 2344 	movx	a,@dptr
      000AF6 F5 25            [12] 2345 	mov	(_Display_Write_PARM_2 + 3),a
      000AF8 85 45 26         [24] 2346 	mov	_Display_Write_PARM_3,_dsky_VERB
      000AFB 75 82 02         [24] 2347 	mov	dpl, #0x02
      000AFE 12 01 B6         [24] 2348 	lcall	_Display_Write
                                   2349 ;	pgc.c:169: Display_Write(3, REG3, dsky_NOUN);
      000B01 90 00 35         [24] 2350 	mov	dptr,#_REG3
      000B04 E0               [24] 2351 	movx	a,@dptr
      000B05 F5 22            [12] 2352 	mov	_Display_Write_PARM_2,a
      000B07 A3               [24] 2353 	inc	dptr
      000B08 E0               [24] 2354 	movx	a,@dptr
      000B09 F5 23            [12] 2355 	mov	(_Display_Write_PARM_2 + 1),a
      000B0B A3               [24] 2356 	inc	dptr
      000B0C E0               [24] 2357 	movx	a,@dptr
      000B0D F5 24            [12] 2358 	mov	(_Display_Write_PARM_2 + 2),a
      000B0F A3               [24] 2359 	inc	dptr
      000B10 E0               [24] 2360 	movx	a,@dptr
      000B11 F5 25            [12] 2361 	mov	(_Display_Write_PARM_2 + 3),a
      000B13 85 46 26         [24] 2362 	mov	_Display_Write_PARM_3,_dsky_NOUN
      000B16 75 82 03         [24] 2363 	mov	dpl, #0x03
      000B19 12 01 B6         [24] 2364 	lcall	_Display_Write
      000B1C                       2365 00122$:
                                   2366 ;	pgc.c:173: key = Keyboard_Read();
      000B1C 12 00 BA         [24] 2367 	lcall	_Keyboard_Read
      000B1F AF 82            [24] 2368 	mov	r7, dpl
                                   2369 ;	pgc.c:175: if (key == 0xFF) {
      000B21 BF FF 06         [24] 2370 	cjne	r7,#0xff,00124$
                                   2371 ;	pgc.c:176: dsky_key_pressed = false;
      000B24 75 42 00         [24] 2372 	mov	_dsky_key_pressed,#0x00
                                   2373 ;	pgc.c:177: continue;
      000B27 02 03 9C         [24] 2374 	ljmp	00156$
      000B2A                       2375 00124$:
                                   2376 ;	pgc.c:180: if (dsky_key_pressed) continue;
      000B2A E5 42            [12] 2377 	mov	a,_dsky_key_pressed
      000B2C 60 03            [24] 2378 	jz	00350$
      000B2E 02 03 9C         [24] 2379 	ljmp	00156$
      000B31                       2380 00350$:
                                   2381 ;	pgc.c:182: dsky_key_pressed = true;
      000B31 75 42 01         [24] 2382 	mov	_dsky_key_pressed,#0x01
                                   2383 ;	pgc.c:192: if (key == 0x0A) { // CLR (*)
      000B34 BF 0A 2A         [24] 2384 	cjne	r7,#0x0a,00133$
                                   2385 ;	pgc.c:193: switch (dsky_state) {                
      000B37 74 01            [12] 2386 	mov	a,#0x01
      000B39 B5 43 02         [24] 2387 	cjne	a,_dsky_state,00353$
      000B3C 80 11            [24] 2388 	sjmp	00127$
      000B3E                       2389 00353$:
      000B3E 74 02            [12] 2390 	mov	a,#0x02
      000B40 B5 43 02         [24] 2391 	cjne	a,_dsky_state,00354$
      000B43 80 10            [24] 2392 	sjmp	00128$
      000B45                       2393 00354$:
      000B45 74 03            [12] 2394 	mov	a,#0x03
      000B47 B5 43 02         [24] 2395 	cjne	a,_dsky_state,00355$
      000B4A 80 0F            [24] 2396 	sjmp	00129$
      000B4C                       2397 00355$:
      000B4C 02 03 9C         [24] 2398 	ljmp	00156$
                                   2399 ;	pgc.c:194: case 1: // PROG
      000B4F                       2400 00127$:
                                   2401 ;	pgc.c:195: dsky_PROG = 0;
      000B4F 75 44 00         [24] 2402 	mov	_dsky_PROG,#0x00
                                   2403 ;	pgc.c:196: break;
      000B52 02 03 9C         [24] 2404 	ljmp	00156$
                                   2405 ;	pgc.c:198: case 2: // VERB
      000B55                       2406 00128$:
                                   2407 ;	pgc.c:199: dsky_VERB = 0;
      000B55 75 45 00         [24] 2408 	mov	_dsky_VERB,#0x00
                                   2409 ;	pgc.c:200: break;
      000B58 02 03 9C         [24] 2410 	ljmp	00156$
                                   2411 ;	pgc.c:202: case 3: // NOUN
      000B5B                       2412 00129$:
                                   2413 ;	pgc.c:203: dsky_NOUN = 0;
      000B5B 75 46 00         [24] 2414 	mov	_dsky_NOUN,#0x00
                                   2415 ;	pgc.c:204: break;
      000B5E 02 03 9C         [24] 2416 	ljmp	00156$
                                   2417 ;	pgc.c:209: continue;
      000B61                       2418 00133$:
                                   2419 ;	pgc.c:212: if (key == 0x0B) { // ENTER (#)
      000B61 BF 0B 2F         [24] 2420 	cjne	r7,#0x0b,00141$
                                   2421 ;	pgc.c:213: switch (dsky_state) {
      000B64 E5 43            [12] 2422 	mov	a,_dsky_state
      000B66 24 FC            [12] 2423 	add	a,#0xff - 0x03
      000B68 40 23            [24] 2424 	jc	00139$
      000B6A E5 43            [12] 2425 	mov	a,_dsky_state
      000B6C 75 F0 03         [24] 2426 	mov	b,#0x03
      000B6F A4               [48] 2427 	mul	ab
      000B70 90 0B 74         [24] 2428 	mov	dptr,#00359$
      000B73 73               [24] 2429 	jmp	@a+dptr
      000B74                       2430 00359$:
      000B74 02 03 9C         [24] 2431 	ljmp	00156$
      000B77 02 0B 80         [24] 2432 	ljmp	00135$
      000B7A 02 0B 85         [24] 2433 	ljmp	00136$
      000B7D 02 0B 8A         [24] 2434 	ljmp	00137$
                                   2435 ;	pgc.c:217: case 1:
      000B80                       2436 00135$:
                                   2437 ;	pgc.c:218: PROG = dsky_PROG;
      000B80 85 44 2B         [24] 2438 	mov	_PROG,_dsky_PROG
                                   2439 ;	pgc.c:219: break;
                                   2440 ;	pgc.c:221: case 2:
      000B83 80 08            [24] 2441 	sjmp	00139$
      000B85                       2442 00136$:
                                   2443 ;	pgc.c:222: VERB = dsky_VERB;
      000B85 85 45 2C         [24] 2444 	mov	_VERB,_dsky_VERB
                                   2445 ;	pgc.c:223: break;
                                   2446 ;	pgc.c:225: case 3:
      000B88 80 03            [24] 2447 	sjmp	00139$
      000B8A                       2448 00137$:
                                   2449 ;	pgc.c:226: NOUN = dsky_NOUN;
      000B8A 85 46 2D         [24] 2450 	mov	_NOUN,_dsky_NOUN
                                   2451 ;	pgc.c:231: }
      000B8D                       2452 00139$:
                                   2453 ;	pgc.c:233: dsky_state = 0;
      000B8D 75 43 00         [24] 2454 	mov	_dsky_state,#0x00
                                   2455 ;	pgc.c:234: continue;
      000B90 02 03 9C         [24] 2456 	ljmp	00156$
      000B93                       2457 00141$:
                                   2458 ;	pgc.c:237: if (key == 0x0C) { // PROG
      000B93 BF 0C 09         [24] 2459 	cjne	r7,#0x0c,00143$
                                   2460 ;	pgc.c:238: dsky_PROG = 0;
      000B96 75 44 00         [24] 2461 	mov	_dsky_PROG,#0x00
                                   2462 ;	pgc.c:239: dsky_state = 1;
      000B99 75 43 01         [24] 2463 	mov	_dsky_state,#0x01
                                   2464 ;	pgc.c:240: continue;
      000B9C 02 03 9C         [24] 2465 	ljmp	00156$
      000B9F                       2466 00143$:
                                   2467 ;	pgc.c:243: if (key == 0x0D) { // VERB
      000B9F BF 0D 09         [24] 2468 	cjne	r7,#0x0d,00145$
                                   2469 ;	pgc.c:244: dsky_VERB = 0;
      000BA2 75 45 00         [24] 2470 	mov	_dsky_VERB,#0x00
                                   2471 ;	pgc.c:245: dsky_state = 2;
      000BA5 75 43 02         [24] 2472 	mov	_dsky_state,#0x02
                                   2473 ;	pgc.c:246: continue;
      000BA8 02 03 9C         [24] 2474 	ljmp	00156$
      000BAB                       2475 00145$:
                                   2476 ;	pgc.c:249: if (key == 0x0E) { // NOUN
      000BAB BF 0E 09         [24] 2477 	cjne	r7,#0x0e,00147$
                                   2478 ;	pgc.c:250: dsky_NOUN = 0;
      000BAE 75 46 00         [24] 2479 	mov	_dsky_NOUN,#0x00
                                   2480 ;	pgc.c:251: dsky_state = 3;
      000BB1 75 43 03         [24] 2481 	mov	_dsky_state,#0x03
                                   2482 ;	pgc.c:252: continue;
      000BB4 02 03 9C         [24] 2483 	ljmp	00156$
      000BB7                       2484 00147$:
                                   2485 ;	pgc.c:255: if (dsky_state != 0) { // DSKY: edditing | KEY: 0 - 9
      000BB7 E5 43            [12] 2486 	mov	a,_dsky_state
      000BB9 70 03            [24] 2487 	jnz	00366$
      000BBB 02 03 9C         [24] 2488 	ljmp	00156$
      000BBE                       2489 00366$:
                                   2490 ;	pgc.c:256: switch (dsky_state) {                
      000BBE 74 01            [12] 2491 	mov	a,#0x01
      000BC0 B5 43 02         [24] 2492 	cjne	a,_dsky_state,00367$
      000BC3 80 11            [24] 2493 	sjmp	00148$
      000BC5                       2494 00367$:
      000BC5 74 02            [12] 2495 	mov	a,#0x02
      000BC7 B5 43 02         [24] 2496 	cjne	a,_dsky_state,00368$
      000BCA 80 16            [24] 2497 	sjmp	00149$
      000BCC                       2498 00368$:
      000BCC 74 03            [12] 2499 	mov	a,#0x03
      000BCE B5 43 02         [24] 2500 	cjne	a,_dsky_state,00369$
      000BD1 80 1B            [24] 2501 	sjmp	00150$
      000BD3                       2502 00369$:
      000BD3 02 03 9C         [24] 2503 	ljmp	00156$
                                   2504 ;	pgc.c:257: case 1: // PROG
      000BD6                       2505 00148$:
                                   2506 ;	pgc.c:258: dsky_PROG *= 10;
      000BD6 E5 44            [12] 2507 	mov	a,_dsky_PROG
      000BD8 75 F0 0A         [24] 2508 	mov	b,#0x0a
      000BDB A4               [48] 2509 	mul	ab
                                   2510 ;	pgc.c:259: dsky_PROG += key;
      000BDC 2F               [12] 2511 	add	a,r7
      000BDD F5 44            [12] 2512 	mov	_dsky_PROG,a
                                   2513 ;	pgc.c:260: break;
      000BDF 02 03 9C         [24] 2514 	ljmp	00156$
                                   2515 ;	pgc.c:262: case 2: // VERB
      000BE2                       2516 00149$:
                                   2517 ;	pgc.c:263: dsky_VERB *= 10;
      000BE2 E5 45            [12] 2518 	mov	a,_dsky_VERB
      000BE4 75 F0 0A         [24] 2519 	mov	b,#0x0a
      000BE7 A4               [48] 2520 	mul	ab
                                   2521 ;	pgc.c:264: dsky_VERB += key;
      000BE8 2F               [12] 2522 	add	a,r7
      000BE9 F5 45            [12] 2523 	mov	_dsky_VERB,a
                                   2524 ;	pgc.c:265: break;
      000BEB 02 03 9C         [24] 2525 	ljmp	00156$
                                   2526 ;	pgc.c:267: case 3: // NOUN
      000BEE                       2527 00150$:
                                   2528 ;	pgc.c:268: dsky_NOUN *= 10;
      000BEE E5 46            [12] 2529 	mov	a,_dsky_NOUN
      000BF0 75 F0 0A         [24] 2530 	mov	b,#0x0a
      000BF3 A4               [48] 2531 	mul	ab
                                   2532 ;	pgc.c:269: dsky_NOUN += key;
      000BF4 2F               [12] 2533 	add	a,r7
      000BF5 F5 46            [12] 2534 	mov	_dsky_NOUN,a
                                   2535 ;	pgc.c:270: break;
                                   2536 ;	pgc.c:274: }
                                   2537 ;	pgc.c:277: }
      000BF7 02 03 9C         [24] 2538 	ljmp	00156$
                                   2539 	.area CSEG    (CODE)
                                   2540 	.area CONST   (CODE)
                                   2541 	.area XINIT   (CODE)
                                   2542 	.area CABS    (ABS,CODE)
