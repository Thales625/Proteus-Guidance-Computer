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
                                     16 	.globl _MAX7219_WriteByte
                                     17 	.globl _MAX7219_WriteFloat
                                     18 	.globl _MAX7219_Write
                                     19 	.globl _MAX7219_SPI_Write_Byte
                                     20 	.globl _Keyboard_Read
                                     21 	.globl _fabsf
                                     22 	.globl _sqrtf
                                     23 	.globl _atan2f
                                     24 	.globl _CY
                                     25 	.globl _AC
                                     26 	.globl _F0
                                     27 	.globl _RS1
                                     28 	.globl _RS0
                                     29 	.globl _OV
                                     30 	.globl _FL
                                     31 	.globl _P
                                     32 	.globl _TF2
                                     33 	.globl _EXF2
                                     34 	.globl _RCLK
                                     35 	.globl _TCLK
                                     36 	.globl _EXEN2
                                     37 	.globl _TR2
                                     38 	.globl _C_T2
                                     39 	.globl _CP_RL2
                                     40 	.globl _T2CON_7
                                     41 	.globl _T2CON_6
                                     42 	.globl _T2CON_5
                                     43 	.globl _T2CON_4
                                     44 	.globl _T2CON_3
                                     45 	.globl _T2CON_2
                                     46 	.globl _T2CON_1
                                     47 	.globl _T2CON_0
                                     48 	.globl _PT2
                                     49 	.globl _PS
                                     50 	.globl _PT1
                                     51 	.globl _PX1
                                     52 	.globl _PT0
                                     53 	.globl _PX0
                                     54 	.globl _RD
                                     55 	.globl _WR
                                     56 	.globl _T1
                                     57 	.globl _T0
                                     58 	.globl _INT1
                                     59 	.globl _INT0
                                     60 	.globl _TXD
                                     61 	.globl _RXD
                                     62 	.globl _P3_7
                                     63 	.globl _P3_6
                                     64 	.globl _P3_5
                                     65 	.globl _P3_4
                                     66 	.globl _P3_3
                                     67 	.globl _P3_2
                                     68 	.globl _P3_1
                                     69 	.globl _P3_0
                                     70 	.globl _EA
                                     71 	.globl _ET2
                                     72 	.globl _ES
                                     73 	.globl _ET1
                                     74 	.globl _EX1
                                     75 	.globl _ET0
                                     76 	.globl _EX0
                                     77 	.globl _P2_7
                                     78 	.globl _P2_6
                                     79 	.globl _P2_5
                                     80 	.globl _P2_4
                                     81 	.globl _P2_3
                                     82 	.globl _P2_2
                                     83 	.globl _P2_1
                                     84 	.globl _P2_0
                                     85 	.globl _SM0
                                     86 	.globl _SM1
                                     87 	.globl _SM2
                                     88 	.globl _REN
                                     89 	.globl _TB8
                                     90 	.globl _RB8
                                     91 	.globl _TI
                                     92 	.globl _RI
                                     93 	.globl _T2EX
                                     94 	.globl _T2
                                     95 	.globl _P1_7
                                     96 	.globl _P1_6
                                     97 	.globl _P1_5
                                     98 	.globl _P1_4
                                     99 	.globl _P1_3
                                    100 	.globl _P1_2
                                    101 	.globl _P1_1
                                    102 	.globl _P1_0
                                    103 	.globl _TF1
                                    104 	.globl _TR1
                                    105 	.globl _TF0
                                    106 	.globl _TR0
                                    107 	.globl _IE1
                                    108 	.globl _IT1
                                    109 	.globl _IE0
                                    110 	.globl _IT0
                                    111 	.globl _P0_7
                                    112 	.globl _P0_6
                                    113 	.globl _P0_5
                                    114 	.globl _P0_4
                                    115 	.globl _P0_3
                                    116 	.globl _P0_2
                                    117 	.globl _P0_1
                                    118 	.globl _P0_0
                                    119 	.globl _B
                                    120 	.globl _A
                                    121 	.globl _ACC
                                    122 	.globl _PSW
                                    123 	.globl _TH2
                                    124 	.globl _TL2
                                    125 	.globl _RCAP2H
                                    126 	.globl _RCAP2L
                                    127 	.globl _T2MOD
                                    128 	.globl _T2CON
                                    129 	.globl _IP
                                    130 	.globl _P3
                                    131 	.globl _IE
                                    132 	.globl _P2
                                    133 	.globl _SBUF
                                    134 	.globl _SCON
                                    135 	.globl _P1
                                    136 	.globl _TH1
                                    137 	.globl _TH0
                                    138 	.globl _TL1
                                    139 	.globl _TL0
                                    140 	.globl _TMOD
                                    141 	.globl _TCON
                                    142 	.globl _PCON
                                    143 	.globl _DPH
                                    144 	.globl _DPL
                                    145 	.globl _SP
                                    146 	.globl _P0
                                    147 	.globl _dsky_key_pressed
                                    148 	.globl _dsky_state
                                    149 	.globl _dsky_buffer
                                    150 	.globl _t_go
                                    151 	.globl _a0_y
                                    152 	.globl _a0_x
                                    153 	.globl _NOUN
                                    154 	.globl _VERB
                                    155 	.globl _PROG
                                    156 	.globl _gimbal
                                    157 	.globl _throttle
                                    158 	.globl _gravity_y
                                    159 	.globl _ut
                                    160 	.globl _av_accel_ang
                                    161 	.globl _av_accel
                                    162 	.globl _ang_vel
                                    163 	.globl _angle
                                    164 	.globl _vel_y
                                    165 	.globl _vel_x
                                    166 	.globl _pos_y
                                    167 	.globl _pos_x
                                    168 	.globl _MAX7219_WriteByte_PARM_2
                                    169 	.globl _MAX7219_WriteFloat_PARM_2
                                    170 	.globl _MAX7219_Write_PARM_2
                                    171 ;--------------------------------------------------------
                                    172 ; special function registers
                                    173 ;--------------------------------------------------------
                                    174 	.area RSEG    (ABS,DATA)
      000000                        175 	.org 0x0000
                           000080   176 _P0	=	0x0080
                           000081   177 _SP	=	0x0081
                           000082   178 _DPL	=	0x0082
                           000083   179 _DPH	=	0x0083
                           000087   180 _PCON	=	0x0087
                           000088   181 _TCON	=	0x0088
                           000089   182 _TMOD	=	0x0089
                           00008A   183 _TL0	=	0x008a
                           00008B   184 _TL1	=	0x008b
                           00008C   185 _TH0	=	0x008c
                           00008D   186 _TH1	=	0x008d
                           000090   187 _P1	=	0x0090
                           000098   188 _SCON	=	0x0098
                           000099   189 _SBUF	=	0x0099
                           0000A0   190 _P2	=	0x00a0
                           0000A8   191 _IE	=	0x00a8
                           0000B0   192 _P3	=	0x00b0
                           0000B8   193 _IP	=	0x00b8
                           0000C8   194 _T2CON	=	0x00c8
                           0000C9   195 _T2MOD	=	0x00c9
                           0000CA   196 _RCAP2L	=	0x00ca
                           0000CB   197 _RCAP2H	=	0x00cb
                           0000CC   198 _TL2	=	0x00cc
                           0000CD   199 _TH2	=	0x00cd
                           0000D0   200 _PSW	=	0x00d0
                           0000E0   201 _ACC	=	0x00e0
                           0000E0   202 _A	=	0x00e0
                           0000F0   203 _B	=	0x00f0
                                    204 ;--------------------------------------------------------
                                    205 ; special function bits
                                    206 ;--------------------------------------------------------
                                    207 	.area RSEG    (ABS,DATA)
      000000                        208 	.org 0x0000
                           000080   209 _P0_0	=	0x0080
                           000081   210 _P0_1	=	0x0081
                           000082   211 _P0_2	=	0x0082
                           000083   212 _P0_3	=	0x0083
                           000084   213 _P0_4	=	0x0084
                           000085   214 _P0_5	=	0x0085
                           000086   215 _P0_6	=	0x0086
                           000087   216 _P0_7	=	0x0087
                           000088   217 _IT0	=	0x0088
                           000089   218 _IE0	=	0x0089
                           00008A   219 _IT1	=	0x008a
                           00008B   220 _IE1	=	0x008b
                           00008C   221 _TR0	=	0x008c
                           00008D   222 _TF0	=	0x008d
                           00008E   223 _TR1	=	0x008e
                           00008F   224 _TF1	=	0x008f
                           000090   225 _P1_0	=	0x0090
                           000091   226 _P1_1	=	0x0091
                           000092   227 _P1_2	=	0x0092
                           000093   228 _P1_3	=	0x0093
                           000094   229 _P1_4	=	0x0094
                           000095   230 _P1_5	=	0x0095
                           000096   231 _P1_6	=	0x0096
                           000097   232 _P1_7	=	0x0097
                           000090   233 _T2	=	0x0090
                           000091   234 _T2EX	=	0x0091
                           000098   235 _RI	=	0x0098
                           000099   236 _TI	=	0x0099
                           00009A   237 _RB8	=	0x009a
                           00009B   238 _TB8	=	0x009b
                           00009C   239 _REN	=	0x009c
                           00009D   240 _SM2	=	0x009d
                           00009E   241 _SM1	=	0x009e
                           00009F   242 _SM0	=	0x009f
                           0000A0   243 _P2_0	=	0x00a0
                           0000A1   244 _P2_1	=	0x00a1
                           0000A2   245 _P2_2	=	0x00a2
                           0000A3   246 _P2_3	=	0x00a3
                           0000A4   247 _P2_4	=	0x00a4
                           0000A5   248 _P2_5	=	0x00a5
                           0000A6   249 _P2_6	=	0x00a6
                           0000A7   250 _P2_7	=	0x00a7
                           0000A8   251 _EX0	=	0x00a8
                           0000A9   252 _ET0	=	0x00a9
                           0000AA   253 _EX1	=	0x00aa
                           0000AB   254 _ET1	=	0x00ab
                           0000AC   255 _ES	=	0x00ac
                           0000AD   256 _ET2	=	0x00ad
                           0000AF   257 _EA	=	0x00af
                           0000B0   258 _P3_0	=	0x00b0
                           0000B1   259 _P3_1	=	0x00b1
                           0000B2   260 _P3_2	=	0x00b2
                           0000B3   261 _P3_3	=	0x00b3
                           0000B4   262 _P3_4	=	0x00b4
                           0000B5   263 _P3_5	=	0x00b5
                           0000B6   264 _P3_6	=	0x00b6
                           0000B7   265 _P3_7	=	0x00b7
                           0000B0   266 _RXD	=	0x00b0
                           0000B1   267 _TXD	=	0x00b1
                           0000B2   268 _INT0	=	0x00b2
                           0000B3   269 _INT1	=	0x00b3
                           0000B4   270 _T0	=	0x00b4
                           0000B5   271 _T1	=	0x00b5
                           0000B6   272 _WR	=	0x00b6
                           0000B7   273 _RD	=	0x00b7
                           0000B8   274 _PX0	=	0x00b8
                           0000B9   275 _PT0	=	0x00b9
                           0000BA   276 _PX1	=	0x00ba
                           0000BB   277 _PT1	=	0x00bb
                           0000BC   278 _PS	=	0x00bc
                           0000BD   279 _PT2	=	0x00bd
                           0000C8   280 _T2CON_0	=	0x00c8
                           0000C9   281 _T2CON_1	=	0x00c9
                           0000CA   282 _T2CON_2	=	0x00ca
                           0000CB   283 _T2CON_3	=	0x00cb
                           0000CC   284 _T2CON_4	=	0x00cc
                           0000CD   285 _T2CON_5	=	0x00cd
                           0000CE   286 _T2CON_6	=	0x00ce
                           0000CF   287 _T2CON_7	=	0x00cf
                           0000C8   288 _CP_RL2	=	0x00c8
                           0000C9   289 _C_T2	=	0x00c9
                           0000CA   290 _TR2	=	0x00ca
                           0000CB   291 _EXEN2	=	0x00cb
                           0000CC   292 _TCLK	=	0x00cc
                           0000CD   293 _RCLK	=	0x00cd
                           0000CE   294 _EXF2	=	0x00ce
                           0000CF   295 _TF2	=	0x00cf
                           0000D0   296 _P	=	0x00d0
                           0000D1   297 _FL	=	0x00d1
                           0000D2   298 _OV	=	0x00d2
                           0000D3   299 _RS0	=	0x00d3
                           0000D4   300 _RS1	=	0x00d4
                           0000D5   301 _F0	=	0x00d5
                           0000D6   302 _AC	=	0x00d6
                           0000D7   303 _CY	=	0x00d7
                                    304 ;--------------------------------------------------------
                                    305 ; overlayable register banks
                                    306 ;--------------------------------------------------------
                                    307 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        308 	.ds 8
                                    309 ;--------------------------------------------------------
                                    310 ; internal ram data
                                    311 ;--------------------------------------------------------
                                    312 	.area DSEG    (DATA)
      000021                        313 _MAX7219_Write_PARM_2:
      000021                        314 	.ds 1
      000022                        315 _MAX7219_WriteFloat_PARM_2:
      000022                        316 	.ds 4
      000026                        317 _MAX7219_WriteFloat_number_10000_48:
      000026                        318 	.ds 4
      00002A                        319 _MAX7219_WriteByte_PARM_2:
      00002A                        320 	.ds 1
      00002B                        321 _pos_x::
      00002B                        322 	.ds 4
      00002F                        323 _pos_y::
      00002F                        324 	.ds 4
      000033                        325 _vel_x::
      000033                        326 	.ds 4
      000037                        327 _vel_y::
      000037                        328 	.ds 4
      00003B                        329 _angle::
      00003B                        330 	.ds 4
      00003F                        331 _ang_vel::
      00003F                        332 	.ds 4
      000043                        333 _av_accel::
      000043                        334 	.ds 4
      000047                        335 _av_accel_ang::
      000047                        336 	.ds 4
      00004B                        337 _ut::
      00004B                        338 	.ds 4
      00004F                        339 _gravity_y::
      00004F                        340 	.ds 4
      000053                        341 _throttle::
      000053                        342 	.ds 4
      000057                        343 _gimbal::
      000057                        344 	.ds 4
      00005B                        345 _PROG::
      00005B                        346 	.ds 1
      00005C                        347 _VERB::
      00005C                        348 	.ds 1
      00005D                        349 _NOUN::
      00005D                        350 	.ds 1
      00005E                        351 _a0_x::
      00005E                        352 	.ds 4
      000062                        353 _a0_y::
      000062                        354 	.ds 4
      000066                        355 _t_go::
      000066                        356 	.ds 4
      00006A                        357 _dsky_buffer::
      00006A                        358 	.ds 1
      00006B                        359 _dsky_state::
      00006B                        360 	.ds 1
      00006C                        361 _dsky_key_pressed::
      00006C                        362 	.ds 1
      00006D                        363 _main__a_50000_119:
      00006D                        364 	.ds 4
      000071                        365 _main__b_50000_119:
      000071                        366 	.ds 4
                                    367 ;--------------------------------------------------------
                                    368 ; overlayable items in internal ram
                                    369 ;--------------------------------------------------------
                                    370 	.area	OSEG    (OVR,DATA)
                                    371 	.area	OSEG    (OVR,DATA)
                                    372 	.area	OSEG    (OVR,DATA)
                                    373 	.area	OSEG    (OVR,DATA)
                                    374 	.area	OSEG    (OVR,DATA)
      000075                        375 _Serial_ReadFloat_value_10000_72:
      000075                        376 	.ds 4
                                    377 ;--------------------------------------------------------
                                    378 ; Stack segment in internal ram
                                    379 ;--------------------------------------------------------
                                    380 	.area SSEG
      000080                        381 __start__stack:
      000080                        382 	.ds	1
                                    383 
                                    384 ;--------------------------------------------------------
                                    385 ; indirectly addressable internal ram data
                                    386 ;--------------------------------------------------------
                                    387 	.area ISEG    (DATA)
                                    388 ;--------------------------------------------------------
                                    389 ; absolute internal ram data
                                    390 ;--------------------------------------------------------
                                    391 	.area IABS    (ABS,DATA)
                                    392 	.area IABS    (ABS,DATA)
                                    393 ;--------------------------------------------------------
                                    394 ; bit data
                                    395 ;--------------------------------------------------------
                                    396 	.area BSEG    (BIT)
                                    397 ;--------------------------------------------------------
                                    398 ; paged external ram data
                                    399 ;--------------------------------------------------------
                                    400 	.area PSEG    (PAG,XDATA)
                                    401 ;--------------------------------------------------------
                                    402 ; uninitialized external ram data
                                    403 ;--------------------------------------------------------
                                    404 	.area XSEG    (XDATA)
                                    405 ;--------------------------------------------------------
                                    406 ; absolute external ram data
                                    407 ;--------------------------------------------------------
                                    408 	.area XABS    (ABS,XDATA)
                                    409 ;--------------------------------------------------------
                                    410 ; initialized external ram data
                                    411 ;--------------------------------------------------------
                                    412 	.area XISEG   (XDATA)
                                    413 	.area HOME    (CODE)
                                    414 	.area GSINIT0 (CODE)
                                    415 	.area GSINIT1 (CODE)
                                    416 	.area GSINIT2 (CODE)
                                    417 	.area GSINIT3 (CODE)
                                    418 	.area GSINIT4 (CODE)
                                    419 	.area GSINIT5 (CODE)
                                    420 	.area GSINIT  (CODE)
                                    421 	.area GSFINAL (CODE)
                                    422 	.area CSEG    (CODE)
                                    423 ;--------------------------------------------------------
                                    424 ; interrupt vector
                                    425 ;--------------------------------------------------------
                                    426 	.area HOME    (CODE)
      000000                        427 __interrupt_vect:
      000000 02 00 4C         [24]  428 	ljmp	__sdcc_gsinit_startup
                                    429 ; restartable atomic support routines
      000003                        430 	.ds	5
      000008                        431 sdcc_atomic_exchange_rollback_start::
      000008 00               [12]  432 	nop
      000009 00               [12]  433 	nop
      00000A                        434 sdcc_atomic_exchange_pdata_impl:
      00000A E2               [24]  435 	movx	a, @r0
      00000B FB               [12]  436 	mov	r3, a
      00000C EA               [12]  437 	mov	a, r2
      00000D F2               [24]  438 	movx	@r0, a
      00000E 80 2C            [24]  439 	sjmp	sdcc_atomic_exchange_exit
      000010 00               [12]  440 	nop
      000011 00               [12]  441 	nop
      000012                        442 sdcc_atomic_exchange_xdata_impl:
      000012 E0               [24]  443 	movx	a, @dptr
      000013 FB               [12]  444 	mov	r3, a
      000014 EA               [12]  445 	mov	a, r2
      000015 F0               [24]  446 	movx	@dptr, a
      000016 80 24            [24]  447 	sjmp	sdcc_atomic_exchange_exit
      000018                        448 sdcc_atomic_compare_exchange_idata_impl:
      000018 E6               [12]  449 	mov	a, @r0
      000019 B5 02 02         [24]  450 	cjne	a, ar2, .+#5
      00001C EB               [12]  451 	mov	a, r3
      00001D F6               [12]  452 	mov	@r0, a
      00001E 22               [24]  453 	ret
      00001F 00               [12]  454 	nop
      000020                        455 sdcc_atomic_compare_exchange_pdata_impl:
      000020 E2               [24]  456 	movx	a, @r0
      000021 B5 02 02         [24]  457 	cjne	a, ar2, .+#5
      000024 EB               [12]  458 	mov	a, r3
      000025 F2               [24]  459 	movx	@r0, a
      000026 22               [24]  460 	ret
      000027 00               [12]  461 	nop
      000028                        462 sdcc_atomic_compare_exchange_xdata_impl:
      000028 E0               [24]  463 	movx	a, @dptr
      000029 B5 02 02         [24]  464 	cjne	a, ar2, .+#5
      00002C EB               [12]  465 	mov	a, r3
      00002D F0               [24]  466 	movx	@dptr, a
      00002E 22               [24]  467 	ret
      00002F                        468 sdcc_atomic_exchange_rollback_end::
                                    469 
      00002F                        470 sdcc_atomic_exchange_gptr_impl::
      00002F 30 F6 E0         [24]  471 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      000032 A8 82            [24]  472 	mov	r0, dpl
      000034 20 F5 D3         [24]  473 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      000037                        474 sdcc_atomic_exchange_idata_impl:
      000037 EA               [12]  475 	mov	a, r2
      000038 C6               [12]  476 	xch	a, @r0
      000039 F5 82            [12]  477 	mov	dpl, a
      00003B 22               [24]  478 	ret
      00003C                        479 sdcc_atomic_exchange_exit:
      00003C 8B 82            [24]  480 	mov	dpl, r3
      00003E 22               [24]  481 	ret
      00003F                        482 sdcc_atomic_compare_exchange_gptr_impl::
      00003F 30 F6 E6         [24]  483 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      000042 A8 82            [24]  484 	mov	r0, dpl
      000044 20 F5 D9         [24]  485 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      000047 80 CF            [24]  486 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    487 ;--------------------------------------------------------
                                    488 ; global & static initialisations
                                    489 ;--------------------------------------------------------
                                    490 	.area HOME    (CODE)
                                    491 	.area GSINIT  (CODE)
                                    492 	.area GSFINAL (CODE)
                                    493 	.area GSINIT  (CODE)
                                    494 	.globl __sdcc_gsinit_startup
                                    495 	.globl __sdcc_program_startup
                                    496 	.globl __start__stack
                                    497 	.globl __mcs51_genXINIT
                                    498 	.globl __mcs51_genXRAMCLEAR
                                    499 	.globl __mcs51_genRAMCLEAR
                                    500 ;	pgc.c:28: byte_t dsky_buffer = 0x00;
      0000A5 75 6A 00         [24]  501 	mov	_dsky_buffer,#0x00
                                    502 ;	pgc.c:29: byte_t dsky_state = 0;
      0000A8 75 6B 00         [24]  503 	mov	_dsky_state,#0x00
                                    504 ;	pgc.c:30: bool dsky_key_pressed = false;
      0000AB 75 6C 00         [24]  505 	mov	_dsky_key_pressed,#0x00
                                    506 	.area GSFINAL (CODE)
      0000AE 02 00 49         [24]  507 	ljmp	__sdcc_program_startup
                                    508 ;--------------------------------------------------------
                                    509 ; Home
                                    510 ;--------------------------------------------------------
                                    511 	.area HOME    (CODE)
                                    512 	.area HOME    (CODE)
      000049                        513 __sdcc_program_startup:
      000049 02 03 03         [24]  514 	ljmp	_main
                                    515 ;	return from main will return to caller
                                    516 ;--------------------------------------------------------
                                    517 ; code
                                    518 ;--------------------------------------------------------
                                    519 	.area CSEG    (CODE)
                                    520 ;------------------------------------------------------------
                                    521 ;Allocation info for local variables in function 'Keyboard_Read'
                                    522 ;------------------------------------------------------------
                                    523 ;x             Allocated to registers r7 
                                    524 ;y             Allocated to registers r7 
                                    525 ;i             Allocated to registers r6 
                                    526 ;__400000004   Allocated to registers r3 
                                    527 ;__400000001   Allocated to registers r4 
                                    528 ;__400000002   Allocated to registers 
                                    529 ;value         Allocated to registers 
                                    530 ;__400000005   Allocated to registers 
                                    531 ;value         Allocated to registers 
                                    532 ;------------------------------------------------------------
                                    533 ;	keyboard.h:16: byte_t Keyboard_Read(void) {
                                    534 ;	-----------------------------------------
                                    535 ;	 function Keyboard_Read
                                    536 ;	-----------------------------------------
      0000B1                        537 _Keyboard_Read:
                           000007   538 	ar7 = 0x07
                           000006   539 	ar6 = 0x06
                           000005   540 	ar5 = 0x05
                           000004   541 	ar4 = 0x04
                           000003   542 	ar3 = 0x03
                           000002   543 	ar2 = 0x02
                           000001   544 	ar1 = 0x01
                           000000   545 	ar0 = 0x00
                                    546 ;	keyboard.h:23: byte_t x, y = 0x01;
      0000B1 7F 01            [12]  547 	mov	r7,#0x01
                                    548 ;	keyboard.h:25: for (byte_t i=0; i<=2; i++) {
      0000B3 7E 00            [12]  549 	mov	r6,#0x00
      0000B5                        550 00134$:
      0000B5 EE               [12]  551 	mov	a,r6
      0000B6 24 FD            [12]  552 	add	a,#0xff - 0x02
      0000B8 50 03            [24]  553 	jnc	00257$
      0000BA 02 01 40         [24]  554 	ljmp	00110$
      0000BD                        555 00257$:
                                    556 ;	keyboard.h:26: KEYBOARD_PORT = 0xFF & ~y;
      0000BD EF               [12]  557 	mov	a,r7
      0000BE F4               [12]  558 	cpl	a
      0000BF F5 A0            [12]  559 	mov	_P2,a
                                    560 ;	keyboard.h:28: x = ~((KEYBOARD_PORT & 0xF0) >> 4) & 0x0F;
      0000C1 AC A0            [24]  561 	mov	r4,_P2
      0000C3 53 04 F0         [24]  562 	anl	ar4,#0xf0
      0000C6 E4               [12]  563 	clr	a
      0000C7 CC               [12]  564 	xch	a,r4
      0000C8 C4               [12]  565 	swap	a
      0000C9 54 0F            [12]  566 	anl	a,#0x0f
      0000CB 6C               [12]  567 	xrl	a,r4
      0000CC CC               [12]  568 	xch	a,r4
      0000CD 54 0F            [12]  569 	anl	a,#0x0f
      0000CF CC               [12]  570 	xch	a,r4
      0000D0 6C               [12]  571 	xrl	a,r4
      0000D1 CC               [12]  572 	xch	a,r4
      0000D2 30 E3 02         [24]  573 	jnb	acc.3,00258$
      0000D5 44 F0            [12]  574 	orl	a,#0xfffffff0
      0000D7                        575 00258$:
      0000D7 EC               [12]  576 	mov	a,r4
      0000D8 F4               [12]  577 	cpl	a
      0000D9 FC               [12]  578 	mov	r4,a
      0000DA 74 0F            [12]  579 	mov	a,#0x0f
      0000DC 5C               [12]  580 	anl	a,r4
      0000DD FD               [12]  581 	mov	r5,a
                                    582 ;	keyboard.h:30: if (x==8) { // last column - special functions
      0000DE BD 08 1B         [24]  583 	cjne	r5,#0x08,00107$
                                    584 ;	keyboard.h:31: switch (y) {
      0000E1 BF 01 02         [24]  585 	cjne	r7,#0x01,00261$
      0000E4 80 0A            [24]  586 	sjmp	00101$
      0000E6                        587 00261$:
      0000E6 BF 02 02         [24]  588 	cjne	r7,#0x02,00262$
      0000E9 80 09            [24]  589 	sjmp	00102$
      0000EB                        590 00262$:
                                    591 ;	keyboard.h:32: case 1:
      0000EB BF 04 0E         [24]  592 	cjne	r7,#0x04,00107$
      0000EE 80 08            [24]  593 	sjmp	00103$
      0000F0                        594 00101$:
                                    595 ;	keyboard.h:33: return 0x0C; // PROG
      0000F0 75 82 0C         [24]  596 	mov	dpl, #0x0c
      0000F3 22               [24]  597 	ret
                                    598 ;	keyboard.h:34: case 2:
      0000F4                        599 00102$:
                                    600 ;	keyboard.h:35: return 0x0D; // VERB
      0000F4 75 82 0D         [24]  601 	mov	dpl, #0x0d
      0000F7 22               [24]  602 	ret
                                    603 ;	keyboard.h:36: case 4:
      0000F8                        604 00103$:
                                    605 ;	keyboard.h:37: return 0x0E; // NOUN
      0000F8 75 82 0E         [24]  606 	mov	dpl, #0x0e
      0000FB 22               [24]  607 	ret
                                    608 ;	keyboard.h:40: }
      0000FC                        609 00107$:
                                    610 ;	keyboard.h:43: if (x != 0) return 3*(log2_table(y)-1) + log2_table(x); 
      0000FC ED               [12]  611 	mov	a,r5
      0000FD 60 3A            [24]  612 	jz	00109$
                                    613 ;	keyboard.h:10: if (value == 0x01) return 1;
      0000FF BF 01 04         [24]  614 	cjne	r7,#0x01,00120$
      000102 7C 01            [12]  615 	mov	r4,#0x01
      000104 80 10            [24]  616 	sjmp	00125$
      000106                        617 00120$:
                                    618 ;	keyboard.h:11: if (value == 0x02) return 2;
      000106 BF 02 04         [24]  619 	cjne	r7,#0x02,00122$
      000109 7C 02            [12]  620 	mov	r4,#0x02
      00010B 80 09            [24]  621 	sjmp	00125$
      00010D                        622 00122$:
                                    623 ;	keyboard.h:12: if (value == 0x04) return 3;
      00010D BF 04 04         [24]  624 	cjne	r7,#0x04,00124$
      000110 7C 03            [12]  625 	mov	r4,#0x03
      000112 80 02            [24]  626 	sjmp	00125$
      000114                        627 00124$:
                                    628 ;	keyboard.h:13: return 0;
      000114 7C 00            [12]  629 	mov	r4,#0x00
                                    630 ;	keyboard.h:43: if (x != 0) return 3*(log2_table(y)-1) + log2_table(x); 
      000116                        631 00125$:
      000116 EC               [12]  632 	mov	a,r4
      000117 14               [12]  633 	dec	a
      000118 75 F0 03         [24]  634 	mov	b,#0x03
      00011B A4               [48]  635 	mul	ab
      00011C FC               [12]  636 	mov	r4,a
                                    637 ;	keyboard.h:10: if (value == 0x01) return 1;
      00011D BD 01 04         [24]  638 	cjne	r5,#0x01,00127$
      000120 7B 01            [12]  639 	mov	r3,#0x01
      000122 80 10            [24]  640 	sjmp	00132$
      000124                        641 00127$:
                                    642 ;	keyboard.h:11: if (value == 0x02) return 2;
      000124 BD 02 04         [24]  643 	cjne	r5,#0x02,00129$
      000127 7B 02            [12]  644 	mov	r3,#0x02
      000129 80 09            [24]  645 	sjmp	00132$
      00012B                        646 00129$:
                                    647 ;	keyboard.h:12: if (value == 0x04) return 3;
      00012B BD 04 04         [24]  648 	cjne	r5,#0x04,00131$
      00012E 7B 03            [12]  649 	mov	r3,#0x03
      000130 80 02            [24]  650 	sjmp	00132$
      000132                        651 00131$:
                                    652 ;	keyboard.h:13: return 0;
      000132 7B 00            [12]  653 	mov	r3,#0x00
                                    654 ;	keyboard.h:43: if (x != 0) return 3*(log2_table(y)-1) + log2_table(x); 
      000134                        655 00132$:
      000134 EB               [12]  656 	mov	a,r3
      000135 2C               [12]  657 	add	a, r4
      000136 F5 82            [12]  658 	mov	dpl,a
      000138 22               [24]  659 	ret
      000139                        660 00109$:
                                    661 ;	keyboard.h:45: y <<= 1;
      000139 EF               [12]  662 	mov	a,r7
      00013A 2F               [12]  663 	add	a,r7
      00013B FF               [12]  664 	mov	r7,a
                                    665 ;	keyboard.h:25: for (byte_t i=0; i<=2; i++) {
      00013C 0E               [12]  666 	inc	r6
      00013D 02 00 B5         [24]  667 	ljmp	00134$
      000140                        668 00110$:
                                    669 ;	keyboard.h:49: KEYBOARD_PORT = 0xFF & ~y;
      000140 EF               [12]  670 	mov	a,r7
      000141 F4               [12]  671 	cpl	a
      000142 F5 A0            [12]  672 	mov	_P2,a
                                    673 ;	keyboard.h:51: x = ~((KEYBOARD_PORT & 0xF0) >> 4) & 0x0F;
      000144 AE A0            [24]  674 	mov	r6,_P2
      000146 53 06 F0         [24]  675 	anl	ar6,#0xf0
      000149 E4               [12]  676 	clr	a
      00014A CE               [12]  677 	xch	a,r6
      00014B C4               [12]  678 	swap	a
      00014C 54 0F            [12]  679 	anl	a,#0x0f
      00014E 6E               [12]  680 	xrl	a,r6
      00014F CE               [12]  681 	xch	a,r6
      000150 54 0F            [12]  682 	anl	a,#0x0f
      000152 CE               [12]  683 	xch	a,r6
      000153 6E               [12]  684 	xrl	a,r6
      000154 CE               [12]  685 	xch	a,r6
      000155 30 E3 02         [24]  686 	jnb	acc.3,00277$
      000158 44 F0            [12]  687 	orl	a,#0xfffffff0
      00015A                        688 00277$:
      00015A EE               [12]  689 	mov	a,r6
      00015B F4               [12]  690 	cpl	a
      00015C FE               [12]  691 	mov	r6,a
      00015D 74 0F            [12]  692 	mov	a,#0x0f
      00015F 5E               [12]  693 	anl	a,r6
                                    694 ;	keyboard.h:53: if (x == 0) return 0xFF; // none key
      000160 FF               [12]  695 	mov	r7,a
      000161 70 04            [24]  696 	jnz	00112$
      000163 75 82 FF         [24]  697 	mov	dpl, #0xff
      000166 22               [24]  698 	ret
      000167                        699 00112$:
                                    700 ;	keyboard.h:55: if (x == 1) return 0x0A; // *
      000167 BF 01 04         [24]  701 	cjne	r7,#0x01,00114$
      00016A 75 82 0A         [24]  702 	mov	dpl, #0x0a
      00016D 22               [24]  703 	ret
      00016E                        704 00114$:
                                    705 ;	keyboard.h:56: if (x == 2) return 0x00; // 0
      00016E BF 02 04         [24]  706 	cjne	r7,#0x02,00116$
      000171 75 82 00         [24]  707 	mov	dpl, #0x00
      000174 22               [24]  708 	ret
      000175                        709 00116$:
                                    710 ;	keyboard.h:57: if (x == 4) return 0x0B; // #
      000175 BF 04 04         [24]  711 	cjne	r7,#0x04,00118$
      000178 75 82 0B         [24]  712 	mov	dpl, #0x0b
      00017B 22               [24]  713 	ret
      00017C                        714 00118$:
                                    715 ;	keyboard.h:59: return 0xFF;
      00017C 75 82 FF         [24]  716 	mov	dpl, #0xff
                                    717 ;	keyboard.h:60: }
      00017F 22               [24]  718 	ret
                                    719 ;------------------------------------------------------------
                                    720 ;Allocation info for local variables in function 'MAX7219_SPI_Write_Byte'
                                    721 ;------------------------------------------------------------
                                    722 ;data          Allocated to registers r7 
                                    723 ;i             Allocated to registers r6 
                                    724 ;------------------------------------------------------------
                                    725 ;	display.h:13: void MAX7219_SPI_Write_Byte(byte_t data) {
                                    726 ;	-----------------------------------------
                                    727 ;	 function MAX7219_SPI_Write_Byte
                                    728 ;	-----------------------------------------
      000180                        729 _MAX7219_SPI_Write_Byte:
      000180 AF 82            [24]  730 	mov	r7, dpl
                                    731 ;	display.h:16: for(i=0; i<8; i++) {
      000182 7E 00            [12]  732 	mov	r6,#0x00
      000184                        733 00102$:
                                    734 ;	display.h:17: MAX7219_CLK_PIN = 0;
                                    735 ;	assignBit
      000184 C2 81            [12]  736 	clr	_P0_1
                                    737 ;	display.h:18: MAX7219_DIN_PIN = (data & 0x80);
      000186 EF               [12]  738 	mov	a,r7
      000187 23               [12]  739 	rl	a
      000188 54 01            [12]  740 	anl	a,#0x01
                                    741 ;	assignBit
      00018A 24 FF            [12]  742 	add	a,#0xff
      00018C 92 80            [24]  743 	mov	_P0_0,c
                                    744 ;	display.h:19: data = data << 1;
      00018E EF               [12]  745 	mov	a,r7
      00018F 2F               [12]  746 	add	a,r7
      000190 FF               [12]  747 	mov	r7,a
                                    748 ;	display.h:20: MAX7219_CLK_PIN = 1;
                                    749 ;	assignBit
      000191 D2 81            [12]  750 	setb	_P0_1
                                    751 ;	display.h:16: for(i=0; i<8; i++) {
      000193 0E               [12]  752 	inc	r6
      000194 BE 08 00         [24]  753 	cjne	r6,#0x08,00113$
      000197                        754 00113$:
      000197 40 EB            [24]  755 	jc	00102$
                                    756 ;	display.h:22: }
      000199 22               [24]  757 	ret
                                    758 ;------------------------------------------------------------
                                    759 ;Allocation info for local variables in function 'MAX7219_Write'
                                    760 ;------------------------------------------------------------
                                    761 ;value         Allocated with name '_MAX7219_Write_PARM_2'
                                    762 ;reg           Allocated to registers r7 
                                    763 ;------------------------------------------------------------
                                    764 ;	display.h:29: void MAX7219_Write(byte_t reg, byte_t value) {
                                    765 ;	-----------------------------------------
                                    766 ;	 function MAX7219_Write
                                    767 ;	-----------------------------------------
      00019A                        768 _MAX7219_Write:
      00019A AF 82            [24]  769 	mov	r7, dpl
                                    770 ;	display.h:30: MAX7219_CS_PIN = 1; // enable CS
                                    771 ;	assignBit
      00019C D2 84            [12]  772 	setb	_P0_4
                                    773 ;	display.h:31: MAX7219_SPI_Write_Byte(reg);   // send address
      00019E 8F 82            [24]  774 	mov	dpl, r7
      0001A0 12 01 80         [24]  775 	lcall	_MAX7219_SPI_Write_Byte
                                    776 ;	display.h:32: MAX7219_SPI_Write_Byte(value); // send value
      0001A3 85 21 82         [24]  777 	mov	dpl, _MAX7219_Write_PARM_2
      0001A6 12 01 80         [24]  778 	lcall	_MAX7219_SPI_Write_Byte
                                    779 ;	display.h:33: MAX7219_CS_PIN = 0; // disable CS
                                    780 ;	assignBit
      0001A9 C2 84            [12]  781 	clr	_P0_4
                                    782 ;	display.h:34: }
      0001AB 22               [24]  783 	ret
                                    784 ;------------------------------------------------------------
                                    785 ;Allocation info for local variables in function 'MAX7219_WriteFloat'
                                    786 ;------------------------------------------------------------
                                    787 ;value         Allocated with name '_MAX7219_WriteFloat_PARM_2'
                                    788 ;index         Allocated to registers r7 
                                    789 ;digit         Allocated to registers r0 r1 
                                    790 ;number        Allocated with name '_MAX7219_WriteFloat_number_10000_48'
                                    791 ;__200000007   Allocated to registers 
                                    792 ;index         Allocated to registers 
                                    793 ;i             Allocated to registers r7 
                                    794 ;------------------------------------------------------------
                                    795 ;	display.h:36: void MAX7219_WriteFloat(byte_t index, float value) {
                                    796 ;	-----------------------------------------
                                    797 ;	 function MAX7219_WriteFloat
                                    798 ;	-----------------------------------------
      0001AC                        799 _MAX7219_WriteFloat:
      0001AC AF 82            [24]  800 	mov	r7, dpl
                                    801 ;	display.h:38: long number = (long) (value * 100);
      0001AE C0 07            [24]  802 	push	ar7
      0001B0 C0 22            [24]  803 	push	_MAX7219_WriteFloat_PARM_2
      0001B2 C0 23            [24]  804 	push	(_MAX7219_WriteFloat_PARM_2 + 1)
      0001B4 C0 24            [24]  805 	push	(_MAX7219_WriteFloat_PARM_2 + 2)
      0001B6 C0 25            [24]  806 	push	(_MAX7219_WriteFloat_PARM_2 + 3)
      0001B8 90 00 00         [24]  807 	mov	dptr,#0x0000
      0001BB 75 F0 C8         [24]  808 	mov	b, #0xc8
      0001BE 74 42            [12]  809 	mov	a, #0x42
      0001C0 12 0A 35         [24]  810 	lcall	___fsmul
      0001C3 AB 82            [24]  811 	mov	r3, dpl
      0001C5 AC 83            [24]  812 	mov	r4, dph
      0001C7 AD F0            [24]  813 	mov	r5, b
      0001C9 FE               [12]  814 	mov	r6, a
      0001CA E5 81            [12]  815 	mov	a,sp
      0001CC 24 FC            [12]  816 	add	a,#0xfc
      0001CE F5 81            [12]  817 	mov	sp,a
      0001D0 8B 82            [24]  818 	mov	dpl, r3
      0001D2 8C 83            [24]  819 	mov	dph, r4
      0001D4 8D F0            [24]  820 	mov	b, r5
      0001D6 EE               [12]  821 	mov	a, r6
      0001D7 12 0B 9E         [24]  822 	lcall	___fs2slong
      0001DA 85 82 26         [24]  823 	mov	_MAX7219_WriteFloat_number_10000_48,dpl
      0001DD 85 83 27         [24]  824 	mov	(_MAX7219_WriteFloat_number_10000_48 + 1),dph
      0001E0 85 F0 28         [24]  825 	mov	(_MAX7219_WriteFloat_number_10000_48 + 2),b
      0001E3 F5 29            [12]  826 	mov	(_MAX7219_WriteFloat_number_10000_48 + 3),a
      0001E5 D0 07            [24]  827 	pop	ar7
                                    828 ;	display.h:25: MAX7219_CS0_PIN = index & 0b01;
      0001E7 EF               [12]  829 	mov	a,r7
      0001E8 54 01            [12]  830 	anl	a,#0x01
                                    831 ;	assignBit
      0001EA 24 FF            [12]  832 	add	a,#0xff
      0001EC 92 82            [24]  833 	mov	_P0_2,c
                                    834 ;	display.h:26: MAX7219_CS1_PIN = index & 0b10;
      0001EE EF               [12]  835 	mov	a,r7
      0001EF 03               [12]  836 	rr	a
      0001F0 54 01            [12]  837 	anl	a,#0x01
                                    838 ;	assignBit
      0001F2 24 FF            [12]  839 	add	a,#0xff
      0001F4 92 83            [24]  840 	mov	_P0_3,c
                                    841 ;	display.h:42: for(byte_t i=6; i>0; i--) {
      0001F6 7F 06            [12]  842 	mov	r7,#0x06
      0001F8                        843 00104$:
      0001F8 EF               [12]  844 	mov	a,r7
      0001F9 60 68            [24]  845 	jz	00106$
                                    846 ;	display.h:43: digit = number % 10;
      0001FB 75 75 0A         [24]  847 	mov	__modslong_PARM_2,#0x0a
      0001FE E4               [12]  848 	clr	a
      0001FF F5 76            [12]  849 	mov	(__modslong_PARM_2 + 1),a
      000201 F5 77            [12]  850 	mov	(__modslong_PARM_2 + 2),a
      000203 F5 78            [12]  851 	mov	(__modslong_PARM_2 + 3),a
      000205 85 26 82         [24]  852 	mov	dpl, _MAX7219_WriteFloat_number_10000_48
      000208 85 27 83         [24]  853 	mov	dph, (_MAX7219_WriteFloat_number_10000_48 + 1)
      00020B 85 28 F0         [24]  854 	mov	b, (_MAX7219_WriteFloat_number_10000_48 + 2)
      00020E E5 29            [12]  855 	mov	a, (_MAX7219_WriteFloat_number_10000_48 + 3)
      000210 C0 07            [24]  856 	push	ar7
      000212 12 11 6F         [24]  857 	lcall	__modslong
      000215 A8 82            [24]  858 	mov	r0, dpl
      000217 A9 83            [24]  859 	mov	r1, dph
                                    860 ;	display.h:44: number = number / 10;
      000219 75 75 0A         [24]  861 	mov	__divslong_PARM_2,#0x0a
      00021C E4               [12]  862 	clr	a
      00021D F5 76            [12]  863 	mov	(__divslong_PARM_2 + 1),a
      00021F F5 77            [12]  864 	mov	(__divslong_PARM_2 + 2),a
      000221 F5 78            [12]  865 	mov	(__divslong_PARM_2 + 3),a
                                    866 ;	display.h:46: MAX7219_Write(i, i==4 ? digit | 0x80 : digit);
      000223 85 26 82         [24]  867 	mov	dpl, _MAX7219_WriteFloat_number_10000_48
      000226 85 27 83         [24]  868 	mov	dph, (_MAX7219_WriteFloat_number_10000_48 + 1)
      000229 85 28 F0         [24]  869 	mov	b, (_MAX7219_WriteFloat_number_10000_48 + 2)
      00022C E5 29            [12]  870 	mov	a, (_MAX7219_WriteFloat_number_10000_48 + 3)
      00022E C0 01            [24]  871 	push	ar1
      000230 C0 00            [24]  872 	push	ar0
      000232 12 12 9B         [24]  873 	lcall	__divslong
      000235 85 82 26         [24]  874 	mov	_MAX7219_WriteFloat_number_10000_48,dpl
      000238 85 83 27         [24]  875 	mov	(_MAX7219_WriteFloat_number_10000_48 + 1),dph
      00023B 85 F0 28         [24]  876 	mov	(_MAX7219_WriteFloat_number_10000_48 + 2),b
      00023E F5 29            [12]  877 	mov	(_MAX7219_WriteFloat_number_10000_48 + 3),a
      000240 D0 00            [24]  878 	pop	ar0
      000242 D0 01            [24]  879 	pop	ar1
      000244 D0 07            [24]  880 	pop	ar7
      000246 BF 04 08         [24]  881 	cjne	r7,#0x04,00110$
      000249 74 80            [12]  882 	mov	a,#0x80
      00024B 48               [12]  883 	orl	a,r0
      00024C FD               [12]  884 	mov	r5,a
      00024D 89 06            [24]  885 	mov	ar6,r1
      00024F 80 04            [24]  886 	sjmp	00111$
      000251                        887 00110$:
      000251 88 05            [24]  888 	mov	ar5,r0
      000253 89 06            [24]  889 	mov	ar6,r1
      000255                        890 00111$:
      000255 8D 21            [24]  891 	mov	_MAX7219_Write_PARM_2,r5
      000257 8F 82            [24]  892 	mov	dpl, r7
      000259 C0 07            [24]  893 	push	ar7
      00025B 12 01 9A         [24]  894 	lcall	_MAX7219_Write
      00025E D0 07            [24]  895 	pop	ar7
                                    896 ;	display.h:42: for(byte_t i=6; i>0; i--) {
      000260 1F               [12]  897 	dec	r7
      000261 80 95            [24]  898 	sjmp	00104$
      000263                        899 00106$:
                                    900 ;	display.h:48: }
      000263 22               [24]  901 	ret
                                    902 ;------------------------------------------------------------
                                    903 ;Allocation info for local variables in function 'MAX7219_WriteByte'
                                    904 ;------------------------------------------------------------
                                    905 ;value         Allocated with name '_MAX7219_WriteByte_PARM_2'
                                    906 ;index         Allocated to registers r7 
                                    907 ;__200000009   Allocated to registers 
                                    908 ;index         Allocated to registers 
                                    909 ;------------------------------------------------------------
                                    910 ;	display.h:50: void MAX7219_WriteByte(byte_t index, byte_t value) {
                                    911 ;	-----------------------------------------
                                    912 ;	 function MAX7219_WriteByte
                                    913 ;	-----------------------------------------
      000264                        914 _MAX7219_WriteByte:
                                    915 ;	display.h:25: MAX7219_CS0_PIN = index & 0b01;
      000264 E5 82            [12]  916 	mov	a,dpl
      000266 FF               [12]  917 	mov	r7,a
      000267 54 01            [12]  918 	anl	a,#0x01
                                    919 ;	assignBit
      000269 24 FF            [12]  920 	add	a,#0xff
      00026B 92 82            [24]  921 	mov	_P0_2,c
                                    922 ;	display.h:26: MAX7219_CS1_PIN = index & 0b10;
      00026D EF               [12]  923 	mov	a,r7
      00026E 03               [12]  924 	rr	a
      00026F 54 01            [12]  925 	anl	a,#0x01
                                    926 ;	assignBit
      000271 24 FF            [12]  927 	add	a,#0xff
      000273 92 83            [24]  928 	mov	_P0_3,c
                                    929 ;	display.h:53: if (value > 99) value = 99;
      000275 E5 2A            [12]  930 	mov	a,_MAX7219_WriteByte_PARM_2
      000277 24 9C            [12]  931 	add	a,#0xff - 0x63
      000279 50 03            [24]  932 	jnc	00102$
      00027B 75 2A 63         [24]  933 	mov	_MAX7219_WriteByte_PARM_2,#0x63
      00027E                        934 00102$:
                                    935 ;	display.h:55: MAX7219_Write(7, value/10);
      00027E AF 2A            [24]  936 	mov	r7,_MAX7219_WriteByte_PARM_2
      000280 8F 06            [24]  937 	mov	ar6,r7
      000282 75 F0 0A         [24]  938 	mov	b,#0x0a
      000285 EE               [12]  939 	mov	a,r6
      000286 84               [48]  940 	div	ab
      000287 F5 21            [12]  941 	mov	_MAX7219_Write_PARM_2, a
      000289 75 82 07         [24]  942 	mov	dpl, #0x07
      00028C C0 07            [24]  943 	push	ar7
      00028E 12 01 9A         [24]  944 	lcall	_MAX7219_Write
      000291 D0 07            [24]  945 	pop	ar7
                                    946 ;	display.h:56: MAX7219_Write(8, value%10);
      000293 75 F0 0A         [24]  947 	mov	b,#0x0a
      000296 EF               [12]  948 	mov	a,r7
      000297 84               [48]  949 	div	ab
      000298 AF F0            [24]  950 	mov	r7,b
      00029A 8F 21            [24]  951 	mov	_MAX7219_Write_PARM_2,r7
      00029C 75 82 08         [24]  952 	mov	dpl, #0x08
                                    953 ;	display.h:57: }
      00029F 02 01 9A         [24]  954 	ljmp	_MAX7219_Write
                                    955 ;------------------------------------------------------------
                                    956 ;Allocation info for local variables in function 'Serial_SendByte'
                                    957 ;------------------------------------------------------------
                                    958 ;value         Allocated to registers 
                                    959 ;------------------------------------------------------------
                                    960 ;	serial.h:21: void Serial_SendByte(byte_t value) {
                                    961 ;	-----------------------------------------
                                    962 ;	 function Serial_SendByte
                                    963 ;	-----------------------------------------
      0002A2                        964 _Serial_SendByte:
                                    965 ;	serial.h:28: __endasm;
      0002A2 85 82 99         [24]  966 	mov	_SBUF, dpl
      0002A5                        967 1$:
      0002A5 30 99 FD         [24]  968 	jnb _TI, 1$
      0002A8 C2 99            [12]  969 	clr	_TI
                                    970 ;	serial.h:29: }
      0002AA 22               [24]  971 	ret
                                    972 ;------------------------------------------------------------
                                    973 ;Allocation info for local variables in function 'Serial_SendFloat'
                                    974 ;------------------------------------------------------------
                                    975 ;value         Allocated to registers 
                                    976 ;------------------------------------------------------------
                                    977 ;	serial.h:31: void Serial_SendFloat(float value) {
                                    978 ;	-----------------------------------------
                                    979 ;	 function Serial_SendFloat
                                    980 ;	-----------------------------------------
      0002AB                        981 _Serial_SendFloat:
                                    982 ;	serial.h:50: __endasm;
      0002AB 85 82 99         [24]  983 	mov	_SBUF, dpl
      0002AE                        984 1$:
      0002AE 30 99 FD         [24]  985 	jnb _TI, 1$
      0002B1 C2 99            [12]  986 	clr	_TI
      0002B3 85 83 99         [24]  987 	mov	_SBUF, dph
      0002B6                        988 2$:
      0002B6 30 99 FD         [24]  989 	jnb _TI, 2$
      0002B9 C2 99            [12]  990 	clr	_TI
      0002BB 85 F0 99         [24]  991 	mov	_SBUF, b
      0002BE                        992 3$:
      0002BE 30 99 FD         [24]  993 	jnb _TI, 3$
      0002C1 C2 99            [12]  994 	clr	_TI
      0002C3 F5 99            [12]  995 	mov	_SBUF, a
      0002C5                        996 4$:
      0002C5 30 99 FD         [24]  997 	jnb _TI, 4$
      0002C8 C2 99            [12]  998 	clr	_TI
                                    999 ;	serial.h:69: }
      0002CA 22               [24] 1000 	ret
                                   1001 ;------------------------------------------------------------
                                   1002 ;Allocation info for local variables in function 'Serial_ReadByte'
                                   1003 ;------------------------------------------------------------
                                   1004 ;	serial.h:73: byte_t Serial_ReadByte(void) {
                                   1005 ;	-----------------------------------------
                                   1006 ;	 function Serial_ReadByte
                                   1007 ;	-----------------------------------------
      0002CB                       1008 _Serial_ReadByte:
                                   1009 ;	serial.h:76: __asm__("1$: jnb _RI, 1$");
      0002CB                       1010 1$:
      0002CB 30 98 FD         [24] 1011 	jnb _RI, 1$
                                   1012 ;	serial.h:77: __asm__("clr _RI");
      0002CE C2 98            [12] 1013 	clr	_RI
                                   1014 ;	serial.h:78: return SBUF;
      0002D0 85 99 82         [24] 1015 	mov	dpl, _SBUF
                                   1016 ;	serial.h:79: }
      0002D3 22               [24] 1017 	ret
                                   1018 ;------------------------------------------------------------
                                   1019 ;Allocation info for local variables in function 'Serial_ReadFloat'
                                   1020 ;------------------------------------------------------------
                                   1021 ;value         Allocated with name '_Serial_ReadFloat_value_10000_72'
                                   1022 ;p             Allocated to registers 
                                   1023 ;------------------------------------------------------------
                                   1024 ;	serial.h:81: float Serial_ReadFloat(void) {
                                   1025 ;	-----------------------------------------
                                   1026 ;	 function Serial_ReadFloat
                                   1027 ;	-----------------------------------------
      0002D4                       1028 _Serial_ReadFloat:
                                   1029 ;	serial.h:83: byte_t *p = (byte_t*)&value;
                                   1030 ;	serial.h:85: __asm__("1$: jnb _RI, 1$");
      0002D4                       1031 1$:
      0002D4 30 98 FD         [24] 1032 	jnb _RI, 1$
                                   1033 ;	serial.h:86: __asm__("clr _RI");
      0002D7 C2 98            [12] 1034 	clr	_RI
                                   1035 ;	serial.h:87: p[0] = SBUF;
      0002D9 85 99 75         [24] 1036 	mov	_Serial_ReadFloat_value_10000_72,_SBUF
                                   1037 ;	serial.h:89: __asm__("2$: jnb _RI, 2$");
      0002DC                       1038 2$:
      0002DC 30 98 FD         [24] 1039 	jnb _RI, 2$
                                   1040 ;	serial.h:90: __asm__("clr _RI");
      0002DF C2 98            [12] 1041 	clr	_RI
                                   1042 ;	serial.h:91: p[1] = SBUF;
      0002E1 78 76            [12] 1043 	mov	r0,#(_Serial_ReadFloat_value_10000_72 + 0x0001)
      0002E3 A6 99            [24] 1044 	mov	@r0,_SBUF
                                   1045 ;	serial.h:93: __asm__("3$: jnb _RI, 3$");
      0002E5                       1046 3$:
      0002E5 30 98 FD         [24] 1047 	jnb _RI, 3$
                                   1048 ;	serial.h:94: __asm__("clr _RI");
      0002E8 C2 98            [12] 1049 	clr	_RI
                                   1050 ;	serial.h:95: p[2] = SBUF;
      0002EA 78 77            [12] 1051 	mov	r0,#(_Serial_ReadFloat_value_10000_72 + 0x0002)
      0002EC A6 99            [24] 1052 	mov	@r0,_SBUF
                                   1053 ;	serial.h:97: __asm__("4$: jnb _RI, 4$");
      0002EE                       1054 4$:
      0002EE 30 98 FD         [24] 1055 	jnb _RI, 4$
                                   1056 ;	serial.h:98: __asm__("clr _RI");
      0002F1 C2 98            [12] 1057 	clr	_RI
                                   1058 ;	serial.h:99: p[3] = SBUF;
      0002F3 78 78            [12] 1059 	mov	r0,#(_Serial_ReadFloat_value_10000_72 + 0x0003)
      0002F5 A6 99            [24] 1060 	mov	@r0,_SBUF
                                   1061 ;	serial.h:101: return value;
      0002F7 85 75 82         [24] 1062 	mov	dpl, _Serial_ReadFloat_value_10000_72
      0002FA 85 76 83         [24] 1063 	mov	dph, (_Serial_ReadFloat_value_10000_72 + 1)
      0002FD 85 77 F0         [24] 1064 	mov	b, (_Serial_ReadFloat_value_10000_72 + 2)
      000300 E5 78            [12] 1065 	mov	a, (_Serial_ReadFloat_value_10000_72 + 3)
                                   1066 ;	serial.h:102: }
      000302 22               [24] 1067 	ret
                                   1068 ;------------------------------------------------------------
                                   1069 ;Allocation info for local variables in function 'main'
                                   1070 ;------------------------------------------------------------
                                   1071 ;key           Allocated to registers r7 
                                   1072 ;t_go0         Allocated to registers 
                                   1073 ;__300000011   Allocated to registers 
                                   1074 ;th1           Allocated to registers 
                                   1075 ;__300000013   Allocated to registers 
                                   1076 ;n_SCON        Allocated to registers 
                                   1077 ;__500000015   Allocated to registers 
                                   1078 ;index         Allocated to registers 
                                   1079 ;_a            Allocated with name '_main__a_50000_119'
                                   1080 ;_b            Allocated with name '_main__b_50000_119'
                                   1081 ;__400000024   Allocated to registers r4 r5 r6 r7 
                                   1082 ;__400000020   Allocated to registers r4 r5 r6 r7 
                                   1083 ;delta_angle   Allocated to registers r4 r5 r6 r7 
                                   1084 ;__400000021   Allocated to registers r0 r1 r2 r3 
                                   1085 ;__400000022   Allocated to registers r4 r5 r6 r7 
                                   1086 ;vx            Allocated to registers 
                                   1087 ;vy            Allocated to registers 
                                   1088 ;__400000025   Allocated to registers 
                                   1089 ;value         Allocated to registers 
                                   1090 ;------------------------------------------------------------
                                   1091 ;	pgc.c:79: int main(void) {    
                                   1092 ;	-----------------------------------------
                                   1093 ;	 function main
                                   1094 ;	-----------------------------------------
      000303                       1095 _main:
                                   1096 ;	serial.h:14: TMOD |= 0x20;
      000303 43 89 20         [24] 1097 	orl	_TMOD,#0x20
                                   1098 ;	serial.h:15: TH1 = th1;
      000306 75 8D FD         [24] 1099 	mov	_TH1,#0xfd
                                   1100 ;	serial.h:16: TL1 = th1;
      000309 75 8B FD         [24] 1101 	mov	_TL1,#0xfd
                                   1102 ;	serial.h:17: TR1 = 1;
                                   1103 ;	assignBit
      00030C D2 8E            [12] 1104 	setb	_TR1
                                   1105 ;	serial.h:9: SCON = n_SCON;
      00030E 75 98 50         [24] 1106 	mov	_SCON,#0x50
                                   1107 ;	pgc.c:88: Serial_SendByte(0x09); // request gravity y
      000311 75 82 09         [24] 1108 	mov	dpl, #0x09
      000314 12 02 A2         [24] 1109 	lcall	_Serial_SendByte
                                   1110 ;	pgc.c:89: gravity_y = Serial_ReadFloat(); // wait answer and save
      000317 12 02 D4         [24] 1111 	lcall	_Serial_ReadFloat
      00031A 85 82 4F         [24] 1112 	mov	_gravity_y,dpl
      00031D 85 83 50         [24] 1113 	mov	(_gravity_y + 1),dph
      000320 85 F0 51         [24] 1114 	mov	(_gravity_y + 2),b
      000323 F5 52            [12] 1115 	mov	(_gravity_y + 3),a
                                   1116 ;	pgc.c:93: TMOD &= 0xF0;
      000325 53 89 F0         [24] 1117 	anl	_TMOD,#0xf0
                                   1118 ;	pgc.c:94: TMOD |= 0x01;
      000328 43 89 01         [24] 1119 	orl	_TMOD,#0x01
                                   1120 ;	pgc.c:96: TH0 = 0x00;
      00032B 75 8C 00         [24] 1121 	mov	_TH0,#0x00
                                   1122 ;	pgc.c:97: TL0 = 0x00;
      00032E 75 8A 00         [24] 1123 	mov	_TL0,#0x00
                                   1124 ;	pgc.c:99: ET0 = 0; // ignore for now
                                   1125 ;	assignBit
      000331 C2 A9            [12] 1126 	clr	_ET0
                                   1127 ;	pgc.c:101: EA = 1;
                                   1128 ;	assignBit
      000333 D2 AF            [12] 1129 	setb	_EA
                                   1130 ;	pgc.c:103: TR0 = 1;
                                   1131 ;	assignBit
      000335 D2 8C            [12] 1132 	setb	_TR0
                                   1133 ;	pgc.c:108: for (key=1; key<=3; key++) {
      000337 7F 01            [12] 1134 	mov	r7,#0x01
      000339                       1135 00149$:
                                   1136 ;	pgc.c:25: float t_go;
      000339 EF               [12] 1137 	mov	a,r7
      00033A 54 01            [12] 1138 	anl	a,#0x01
                                   1139 ;	assignBit
      00033C 24 FF            [12] 1140 	add	a,#0xff
      00033E 92 82            [24] 1141 	mov	_P0_2,c
                                   1142 ;	pgc.c:26: 
      000340 EF               [12] 1143 	mov	a,r7
      000341 03               [12] 1144 	rr	a
      000342 54 01            [12] 1145 	anl	a,#0x01
                                   1146 ;	assignBit
      000344 24 FF            [12] 1147 	add	a,#0xff
      000346 92 83            [24] 1148 	mov	_P0_3,c
                                   1149 ;	display.h:60: MAX7219_Write(MAX7219_REG_SHUTDOWN, 0x01);  // wake up
      000348 75 21 01         [24] 1150 	mov	_MAX7219_Write_PARM_2,#0x01
      00034B 75 82 0C         [24] 1151 	mov	dpl, #0x0c
      00034E C0 07            [24] 1152 	push	ar7
      000350 12 01 9A         [24] 1153 	lcall	_MAX7219_Write
                                   1154 ;	display.h:61: MAX7219_Write(MAX7219_REG_TEST, 0x00);      // normal mode
      000353 75 21 00         [24] 1155 	mov	_MAX7219_Write_PARM_2,#0x00
      000356 75 82 0F         [24] 1156 	mov	dpl, #0x0f
      000359 12 01 9A         [24] 1157 	lcall	_MAX7219_Write
                                   1158 ;	display.h:62: MAX7219_Write(MAX7219_REG_DECODE, 0xFF);    // decode mode
      00035C 75 21 FF         [24] 1159 	mov	_MAX7219_Write_PARM_2,#0xff
      00035F 75 82 09         [24] 1160 	mov	dpl, #0x09
      000362 12 01 9A         [24] 1161 	lcall	_MAX7219_Write
                                   1162 ;	display.h:63: MAX7219_Write(MAX7219_REG_SCANLIMIT, 0x07); // amount digits
      000365 75 21 07         [24] 1163 	mov	_MAX7219_Write_PARM_2,#0x07
      000368 75 82 0B         [24] 1164 	mov	dpl, #0x0b
      00036B 12 01 9A         [24] 1165 	lcall	_MAX7219_Write
                                   1166 ;	display.h:64: MAX7219_Write(MAX7219_REG_INTENSITY, 0x0F); // brightness
      00036E 75 21 0F         [24] 1167 	mov	_MAX7219_Write_PARM_2,#0x0f
      000371 75 82 0A         [24] 1168 	mov	dpl, #0x0a
      000374 12 01 9A         [24] 1169 	lcall	_MAX7219_Write
      000377 D0 07            [24] 1170 	pop	ar7
                                   1171 ;	pgc.c:108: for (key=1; key<=3; key++) {
      000379 0F               [12] 1172 	inc	r7
      00037A EF               [12] 1173 	mov	a,r7
      00037B 24 FC            [12] 1174 	add	a,#0xff - 0x03
      00037D 50 BA            [24] 1175 	jnc	00149$
                                   1176 ;	pgc.c:114: while (1) {
      00037F                       1177 00139$:
                                   1178 ;	pgc.c:66: Serial_SendByte(0x20); // request package
      00037F 75 82 20         [24] 1179 	mov	dpl, #0x20
      000382 12 02 A2         [24] 1180 	lcall	_Serial_SendByte
                                   1181 ;	pgc.c:68: ut = Serial_ReadFloat();
      000385 12 02 D4         [24] 1182 	lcall	_Serial_ReadFloat
      000388 85 82 4B         [24] 1183 	mov	_ut,dpl
      00038B 85 83 4C         [24] 1184 	mov	(_ut + 1),dph
      00038E 85 F0 4D         [24] 1185 	mov	(_ut + 2),b
      000391 F5 4E            [12] 1186 	mov	(_ut + 3),a
                                   1187 ;	pgc.c:69: pos_x = Serial_ReadFloat();
      000393 12 02 D4         [24] 1188 	lcall	_Serial_ReadFloat
      000396 85 82 2B         [24] 1189 	mov	_pos_x,dpl
      000399 85 83 2C         [24] 1190 	mov	(_pos_x + 1),dph
      00039C 85 F0 2D         [24] 1191 	mov	(_pos_x + 2),b
      00039F F5 2E            [12] 1192 	mov	(_pos_x + 3),a
                                   1193 ;	pgc.c:70: pos_y = Serial_ReadFloat();
      0003A1 12 02 D4         [24] 1194 	lcall	_Serial_ReadFloat
      0003A4 85 82 2F         [24] 1195 	mov	_pos_y,dpl
      0003A7 85 83 30         [24] 1196 	mov	(_pos_y + 1),dph
      0003AA 85 F0 31         [24] 1197 	mov	(_pos_y + 2),b
      0003AD F5 32            [12] 1198 	mov	(_pos_y + 3),a
                                   1199 ;	pgc.c:71: vel_x = Serial_ReadFloat();
      0003AF 12 02 D4         [24] 1200 	lcall	_Serial_ReadFloat
      0003B2 85 82 33         [24] 1201 	mov	_vel_x,dpl
      0003B5 85 83 34         [24] 1202 	mov	(_vel_x + 1),dph
      0003B8 85 F0 35         [24] 1203 	mov	(_vel_x + 2),b
      0003BB F5 36            [12] 1204 	mov	(_vel_x + 3),a
                                   1205 ;	pgc.c:72: vel_y = Serial_ReadFloat();
      0003BD 12 02 D4         [24] 1206 	lcall	_Serial_ReadFloat
      0003C0 85 82 37         [24] 1207 	mov	_vel_y,dpl
      0003C3 85 83 38         [24] 1208 	mov	(_vel_y + 1),dph
      0003C6 85 F0 39         [24] 1209 	mov	(_vel_y + 2),b
      0003C9 F5 3A            [12] 1210 	mov	(_vel_y + 3),a
                                   1211 ;	pgc.c:73: angle = Serial_ReadFloat();
      0003CB 12 02 D4         [24] 1212 	lcall	_Serial_ReadFloat
      0003CE 85 82 3B         [24] 1213 	mov	_angle,dpl
      0003D1 85 83 3C         [24] 1214 	mov	(_angle + 1),dph
      0003D4 85 F0 3D         [24] 1215 	mov	(_angle + 2),b
      0003D7 F5 3E            [12] 1216 	mov	(_angle + 3),a
                                   1217 ;	pgc.c:74: ang_vel = Serial_ReadFloat();
      0003D9 12 02 D4         [24] 1218 	lcall	_Serial_ReadFloat
      0003DC 85 82 3F         [24] 1219 	mov	_ang_vel,dpl
      0003DF 85 83 40         [24] 1220 	mov	(_ang_vel + 1),dph
      0003E2 85 F0 41         [24] 1221 	mov	(_ang_vel + 2),b
      0003E5 F5 42            [12] 1222 	mov	(_ang_vel + 3),a
                                   1223 ;	pgc.c:75: av_accel = Serial_ReadFloat();
      0003E7 12 02 D4         [24] 1224 	lcall	_Serial_ReadFloat
      0003EA 85 82 43         [24] 1225 	mov	_av_accel,dpl
      0003ED 85 83 44         [24] 1226 	mov	(_av_accel + 1),dph
      0003F0 85 F0 45         [24] 1227 	mov	(_av_accel + 2),b
      0003F3 F5 46            [12] 1228 	mov	(_av_accel + 3),a
                                   1229 ;	pgc.c:76: av_accel_ang = Serial_ReadFloat();
      0003F5 12 02 D4         [24] 1230 	lcall	_Serial_ReadFloat
      0003F8 85 82 47         [24] 1231 	mov	_av_accel_ang,dpl
      0003FB 85 83 48         [24] 1232 	mov	(_av_accel_ang + 1),dph
      0003FE 85 F0 49         [24] 1233 	mov	(_av_accel_ang + 2),b
      000401 F5 4A            [12] 1234 	mov	(_av_accel_ang + 3),a
                                   1235 ;	pgc.c:117: t_go = t_go0 - ut;
      000403 C0 4B            [24] 1236 	push	_ut
      000405 C0 4C            [24] 1237 	push	(_ut + 1)
      000407 C0 4D            [24] 1238 	push	(_ut + 2)
      000409 C0 4E            [24] 1239 	push	(_ut + 3)
      00040B 90 00 00         [24] 1240 	mov	dptr,#0x0000
      00040E 75 F0 F0         [24] 1241 	mov	b, #0xf0
      000411 74 41            [12] 1242 	mov	a, #0x41
      000413 12 09 A7         [24] 1243 	lcall	___fssub
      000416 85 82 66         [24] 1244 	mov	_t_go,dpl
      000419 85 83 67         [24] 1245 	mov	(_t_go + 1),dph
      00041C 85 F0 68         [24] 1246 	mov	(_t_go + 2),b
      00041F F5 69            [12] 1247 	mov	(_t_go + 3),a
      000421 E5 81            [12] 1248 	mov	a,sp
      000423 24 FC            [12] 1249 	add	a,#0xfc
      000425 F5 81            [12] 1250 	mov	sp,a
                                   1251 ;	pgc.c:119: if (t_go < 3.0f) t_go = 3.0f;
      000427 E4               [12] 1252 	clr	a
      000428 C0 E0            [24] 1253 	push	acc
      00042A C0 E0            [24] 1254 	push	acc
      00042C 74 40            [12] 1255 	mov	a,#0x40
      00042E C0 E0            [24] 1256 	push	acc
      000430 C0 E0            [24] 1257 	push	acc
      000432 85 66 82         [24] 1258 	mov	dpl, _t_go
      000435 85 67 83         [24] 1259 	mov	dph, (_t_go + 1)
      000438 85 68 F0         [24] 1260 	mov	b, (_t_go + 2)
      00043B E5 69            [12] 1261 	mov	a, (_t_go + 3)
      00043D 12 0E 5A         [24] 1262 	lcall	___fslt
      000440 AF 82            [24] 1263 	mov	r7, dpl
      000442 E5 81            [12] 1264 	mov	a,sp
      000444 24 FC            [12] 1265 	add	a,#0xfc
      000446 F5 81            [12] 1266 	mov	sp,a
      000448 EF               [12] 1267 	mov	a,r7
      000449 60 0B            [24] 1268 	jz	00103$
      00044B E4               [12] 1269 	clr	a
      00044C F5 66            [12] 1270 	mov	_t_go,a
      00044E F5 67            [12] 1271 	mov	(_t_go + 1),a
      000450 75 68 40         [24] 1272 	mov	(_t_go + 2),#0x40
      000453 75 69 40         [24] 1273 	mov	(_t_go + 3),#0x40
      000456                       1274 00103$:
                                   1275 ;	pgc.c:58: float _a = -12.0f / (t_go * t_go);
      000456 C0 66            [24] 1276 	push	_t_go
      000458 C0 67            [24] 1277 	push	(_t_go + 1)
      00045A C0 68            [24] 1278 	push	(_t_go + 2)
      00045C C0 69            [24] 1279 	push	(_t_go + 3)
      00045E 85 66 82         [24] 1280 	mov	dpl, _t_go
      000461 85 67 83         [24] 1281 	mov	dph, (_t_go + 1)
      000464 85 68 F0         [24] 1282 	mov	b, (_t_go + 2)
      000467 E5 69            [12] 1283 	mov	a, (_t_go + 3)
      000469 12 0A 35         [24] 1284 	lcall	___fsmul
      00046C AC 82            [24] 1285 	mov	r4, dpl
      00046E AD 83            [24] 1286 	mov	r5, dph
      000470 AE F0            [24] 1287 	mov	r6, b
      000472 FF               [12] 1288 	mov	r7, a
      000473 E5 81            [12] 1289 	mov	a,sp
      000475 24 FC            [12] 1290 	add	a,#0xfc
      000477 F5 81            [12] 1291 	mov	sp,a
      000479 C0 04            [24] 1292 	push	ar4
      00047B C0 05            [24] 1293 	push	ar5
      00047D C0 06            [24] 1294 	push	ar6
      00047F C0 07            [24] 1295 	push	ar7
                                   1296 ;	pgc.c:59: float _b = -6.0f / t_go;
      000481 90 00 00         [24] 1297 	mov	dptr,#0x0000
      000484 75 F0 40         [24] 1298 	mov	b, #0x40
      000487 74 C1            [12] 1299 	mov	a, #0xc1
      000489 12 18 67         [24] 1300 	lcall	___fsdiv
      00048C 85 82 6D         [24] 1301 	mov	_main__a_50000_119,dpl
      00048F 85 83 6E         [24] 1302 	mov	(_main__a_50000_119 + 1),dph
      000492 85 F0 6F         [24] 1303 	mov	(_main__a_50000_119 + 2),b
      000495 F5 70            [12] 1304 	mov	(_main__a_50000_119 + 3),a
      000497 E5 81            [12] 1305 	mov	a,sp
      000499 24 FC            [12] 1306 	add	a,#0xfc
      00049B F5 81            [12] 1307 	mov	sp,a
      00049D C0 66            [24] 1308 	push	_t_go
      00049F C0 67            [24] 1309 	push	(_t_go + 1)
      0004A1 C0 68            [24] 1310 	push	(_t_go + 2)
      0004A3 C0 69            [24] 1311 	push	(_t_go + 3)
                                   1312 ;	pgc.c:61: a0_x = _a * pos_x + _b * vel_x;
      0004A5 90 00 00         [24] 1313 	mov	dptr,#0x0000
      0004A8 74 C0            [12] 1314 	mov	a,#0xc0
      0004AA F5 F0            [12] 1315 	mov	b,a
      0004AC 12 18 67         [24] 1316 	lcall	___fsdiv
      0004AF 85 82 71         [24] 1317 	mov	_main__b_50000_119,dpl
      0004B2 85 83 72         [24] 1318 	mov	(_main__b_50000_119 + 1),dph
      0004B5 85 F0 73         [24] 1319 	mov	(_main__b_50000_119 + 2),b
      0004B8 F5 74            [12] 1320 	mov	(_main__b_50000_119 + 3),a
      0004BA E5 81            [12] 1321 	mov	a,sp
      0004BC 24 FC            [12] 1322 	add	a,#0xfc
      0004BE F5 81            [12] 1323 	mov	sp,a
      0004C0 C0 2B            [24] 1324 	push	_pos_x
      0004C2 C0 2C            [24] 1325 	push	(_pos_x + 1)
      0004C4 C0 2D            [24] 1326 	push	(_pos_x + 2)
      0004C6 C0 2E            [24] 1327 	push	(_pos_x + 3)
      0004C8 85 6D 82         [24] 1328 	mov	dpl, _main__a_50000_119
      0004CB 85 6E 83         [24] 1329 	mov	dph, (_main__a_50000_119 + 1)
      0004CE 85 6F F0         [24] 1330 	mov	b, (_main__a_50000_119 + 2)
      0004D1 E5 70            [12] 1331 	mov	a, (_main__a_50000_119 + 3)
      0004D3 12 0A 35         [24] 1332 	lcall	___fsmul
      0004D6 A8 82            [24] 1333 	mov	r0, dpl
      0004D8 A9 83            [24] 1334 	mov	r1, dph
      0004DA AA F0            [24] 1335 	mov	r2, b
      0004DC FB               [12] 1336 	mov	r3, a
      0004DD E5 81            [12] 1337 	mov	a,sp
      0004DF 24 FC            [12] 1338 	add	a,#0xfc
      0004E1 F5 81            [12] 1339 	mov	sp,a
      0004E3 C0 03            [24] 1340 	push	ar3
      0004E5 C0 02            [24] 1341 	push	ar2
      0004E7 C0 01            [24] 1342 	push	ar1
      0004E9 C0 00            [24] 1343 	push	ar0
      0004EB C0 33            [24] 1344 	push	_vel_x
      0004ED C0 34            [24] 1345 	push	(_vel_x + 1)
      0004EF C0 35            [24] 1346 	push	(_vel_x + 2)
      0004F1 C0 36            [24] 1347 	push	(_vel_x + 3)
      0004F3 85 71 82         [24] 1348 	mov	dpl, _main__b_50000_119
      0004F6 85 72 83         [24] 1349 	mov	dph, (_main__b_50000_119 + 1)
      0004F9 85 73 F0         [24] 1350 	mov	b, (_main__b_50000_119 + 2)
      0004FC E5 74            [12] 1351 	mov	a, (_main__b_50000_119 + 3)
      0004FE 12 0A 35         [24] 1352 	lcall	___fsmul
      000501 AC 82            [24] 1353 	mov	r4, dpl
      000503 AD 83            [24] 1354 	mov	r5, dph
      000505 AE F0            [24] 1355 	mov	r6, b
      000507 FF               [12] 1356 	mov	r7, a
      000508 E5 81            [12] 1357 	mov	a,sp
      00050A 24 FC            [12] 1358 	add	a,#0xfc
      00050C F5 81            [12] 1359 	mov	sp,a
      00050E D0 00            [24] 1360 	pop	ar0
      000510 D0 01            [24] 1361 	pop	ar1
      000512 D0 02            [24] 1362 	pop	ar2
      000514 D0 03            [24] 1363 	pop	ar3
      000516 C0 04            [24] 1364 	push	ar4
      000518 C0 05            [24] 1365 	push	ar5
      00051A C0 06            [24] 1366 	push	ar6
      00051C C0 07            [24] 1367 	push	ar7
      00051E 88 82            [24] 1368 	mov	dpl, r0
      000520 89 83            [24] 1369 	mov	dph, r1
      000522 8A F0            [24] 1370 	mov	b, r2
      000524 EB               [12] 1371 	mov	a, r3
      000525 12 10 BD         [24] 1372 	lcall	___fsadd
      000528 85 82 5E         [24] 1373 	mov	_a0_x,dpl
      00052B 85 83 5F         [24] 1374 	mov	(_a0_x + 1),dph
      00052E 85 F0 60         [24] 1375 	mov	(_a0_x + 2),b
      000531 F5 61            [12] 1376 	mov	(_a0_x + 3),a
      000533 E5 81            [12] 1377 	mov	a,sp
      000535 24 FC            [12] 1378 	add	a,#0xfc
      000537 F5 81            [12] 1379 	mov	sp,a
                                   1380 ;	pgc.c:62: a0_y = _a * pos_y + _b * vel_y - gravity_y;
      000539 C0 2F            [24] 1381 	push	_pos_y
      00053B C0 30            [24] 1382 	push	(_pos_y + 1)
      00053D C0 31            [24] 1383 	push	(_pos_y + 2)
      00053F C0 32            [24] 1384 	push	(_pos_y + 3)
      000541 85 6D 82         [24] 1385 	mov	dpl, _main__a_50000_119
      000544 85 6E 83         [24] 1386 	mov	dph, (_main__a_50000_119 + 1)
      000547 85 6F F0         [24] 1387 	mov	b, (_main__a_50000_119 + 2)
      00054A E5 70            [12] 1388 	mov	a, (_main__a_50000_119 + 3)
      00054C 12 0A 35         [24] 1389 	lcall	___fsmul
      00054F AC 82            [24] 1390 	mov	r4, dpl
      000551 AD 83            [24] 1391 	mov	r5, dph
      000553 AE F0            [24] 1392 	mov	r6, b
      000555 FF               [12] 1393 	mov	r7, a
      000556 E5 81            [12] 1394 	mov	a,sp
      000558 24 FC            [12] 1395 	add	a,#0xfc
      00055A F5 81            [12] 1396 	mov	sp,a
      00055C C0 07            [24] 1397 	push	ar7
      00055E C0 06            [24] 1398 	push	ar6
      000560 C0 05            [24] 1399 	push	ar5
      000562 C0 04            [24] 1400 	push	ar4
      000564 C0 37            [24] 1401 	push	_vel_y
      000566 C0 38            [24] 1402 	push	(_vel_y + 1)
      000568 C0 39            [24] 1403 	push	(_vel_y + 2)
      00056A C0 3A            [24] 1404 	push	(_vel_y + 3)
      00056C 85 71 82         [24] 1405 	mov	dpl, _main__b_50000_119
      00056F 85 72 83         [24] 1406 	mov	dph, (_main__b_50000_119 + 1)
      000572 85 73 F0         [24] 1407 	mov	b, (_main__b_50000_119 + 2)
      000575 E5 74            [12] 1408 	mov	a, (_main__b_50000_119 + 3)
      000577 12 0A 35         [24] 1409 	lcall	___fsmul
      00057A A8 82            [24] 1410 	mov	r0, dpl
      00057C A9 83            [24] 1411 	mov	r1, dph
      00057E AA F0            [24] 1412 	mov	r2, b
      000580 FB               [12] 1413 	mov	r3, a
      000581 E5 81            [12] 1414 	mov	a,sp
      000583 24 FC            [12] 1415 	add	a,#0xfc
      000585 F5 81            [12] 1416 	mov	sp,a
      000587 D0 04            [24] 1417 	pop	ar4
      000589 D0 05            [24] 1418 	pop	ar5
      00058B D0 06            [24] 1419 	pop	ar6
      00058D D0 07            [24] 1420 	pop	ar7
      00058F C0 00            [24] 1421 	push	ar0
      000591 C0 01            [24] 1422 	push	ar1
      000593 C0 02            [24] 1423 	push	ar2
      000595 C0 03            [24] 1424 	push	ar3
      000597 8C 82            [24] 1425 	mov	dpl, r4
      000599 8D 83            [24] 1426 	mov	dph, r5
      00059B 8E F0            [24] 1427 	mov	b, r6
      00059D EF               [12] 1428 	mov	a, r7
      00059E 12 10 BD         [24] 1429 	lcall	___fsadd
      0005A1 AC 82            [24] 1430 	mov	r4, dpl
      0005A3 AD 83            [24] 1431 	mov	r5, dph
      0005A5 AE F0            [24] 1432 	mov	r6, b
      0005A7 FF               [12] 1433 	mov	r7, a
      0005A8 E5 81            [12] 1434 	mov	a,sp
      0005AA 24 FC            [12] 1435 	add	a,#0xfc
      0005AC F5 81            [12] 1436 	mov	sp,a
      0005AE C0 4F            [24] 1437 	push	_gravity_y
      0005B0 C0 50            [24] 1438 	push	(_gravity_y + 1)
      0005B2 C0 51            [24] 1439 	push	(_gravity_y + 2)
      0005B4 C0 52            [24] 1440 	push	(_gravity_y + 3)
      0005B6 8C 82            [24] 1441 	mov	dpl, r4
      0005B8 8D 83            [24] 1442 	mov	dph, r5
      0005BA 8E F0            [24] 1443 	mov	b, r6
      0005BC EF               [12] 1444 	mov	a, r7
      0005BD 12 09 A7         [24] 1445 	lcall	___fssub
      0005C0 85 82 62         [24] 1446 	mov	_a0_y,dpl
      0005C3 85 83 63         [24] 1447 	mov	(_a0_y + 1),dph
      0005C6 85 F0 64         [24] 1448 	mov	(_a0_y + 2),b
      0005C9 F5 65            [12] 1449 	mov	(_a0_y + 3),a
      0005CB E5 81            [12] 1450 	mov	a,sp
      0005CD 24 FC            [12] 1451 	add	a,#0xfc
      0005CF F5 81            [12] 1452 	mov	sp,a
                                   1453 ;	pgc.c:125: throttle = sqrtf(a0_x * a0_x + a0_y * a0_y) / av_accel;
      0005D1 C0 5E            [24] 1454 	push	_a0_x
      0005D3 C0 5F            [24] 1455 	push	(_a0_x + 1)
      0005D5 C0 60            [24] 1456 	push	(_a0_x + 2)
      0005D7 C0 61            [24] 1457 	push	(_a0_x + 3)
      0005D9 85 5E 82         [24] 1458 	mov	dpl, _a0_x
      0005DC 85 5F 83         [24] 1459 	mov	dph, (_a0_x + 1)
      0005DF 85 60 F0         [24] 1460 	mov	b, (_a0_x + 2)
      0005E2 E5 61            [12] 1461 	mov	a, (_a0_x + 3)
      0005E4 12 0A 35         [24] 1462 	lcall	___fsmul
      0005E7 AC 82            [24] 1463 	mov	r4, dpl
      0005E9 AD 83            [24] 1464 	mov	r5, dph
      0005EB AE F0            [24] 1465 	mov	r6, b
      0005ED FF               [12] 1466 	mov	r7, a
      0005EE E5 81            [12] 1467 	mov	a,sp
      0005F0 24 FC            [12] 1468 	add	a,#0xfc
      0005F2 F5 81            [12] 1469 	mov	sp,a
      0005F4 C0 07            [24] 1470 	push	ar7
      0005F6 C0 06            [24] 1471 	push	ar6
      0005F8 C0 05            [24] 1472 	push	ar5
      0005FA C0 04            [24] 1473 	push	ar4
      0005FC C0 62            [24] 1474 	push	_a0_y
      0005FE C0 63            [24] 1475 	push	(_a0_y + 1)
      000600 C0 64            [24] 1476 	push	(_a0_y + 2)
      000602 C0 65            [24] 1477 	push	(_a0_y + 3)
      000604 85 62 82         [24] 1478 	mov	dpl, _a0_y
      000607 85 63 83         [24] 1479 	mov	dph, (_a0_y + 1)
      00060A 85 64 F0         [24] 1480 	mov	b, (_a0_y + 2)
      00060D E5 65            [12] 1481 	mov	a, (_a0_y + 3)
      00060F 12 0A 35         [24] 1482 	lcall	___fsmul
      000612 A8 82            [24] 1483 	mov	r0, dpl
      000614 A9 83            [24] 1484 	mov	r1, dph
      000616 AA F0            [24] 1485 	mov	r2, b
      000618 FB               [12] 1486 	mov	r3, a
      000619 E5 81            [12] 1487 	mov	a,sp
      00061B 24 FC            [12] 1488 	add	a,#0xfc
      00061D F5 81            [12] 1489 	mov	sp,a
      00061F D0 04            [24] 1490 	pop	ar4
      000621 D0 05            [24] 1491 	pop	ar5
      000623 D0 06            [24] 1492 	pop	ar6
      000625 D0 07            [24] 1493 	pop	ar7
      000627 C0 00            [24] 1494 	push	ar0
      000629 C0 01            [24] 1495 	push	ar1
      00062B C0 02            [24] 1496 	push	ar2
      00062D C0 03            [24] 1497 	push	ar3
      00062F 8C 82            [24] 1498 	mov	dpl, r4
      000631 8D 83            [24] 1499 	mov	dph, r5
      000633 8E F0            [24] 1500 	mov	b, r6
      000635 EF               [12] 1501 	mov	a, r7
      000636 12 10 BD         [24] 1502 	lcall	___fsadd
      000639 AC 82            [24] 1503 	mov	r4, dpl
      00063B AD 83            [24] 1504 	mov	r5, dph
      00063D AE F0            [24] 1505 	mov	r6, b
      00063F FF               [12] 1506 	mov	r7, a
      000640 E5 81            [12] 1507 	mov	a,sp
      000642 24 FC            [12] 1508 	add	a,#0xfc
      000644 F5 81            [12] 1509 	mov	sp,a
      000646 8C 82            [24] 1510 	mov	dpl, r4
      000648 8D 83            [24] 1511 	mov	dph, r5
      00064A 8E F0            [24] 1512 	mov	b, r6
      00064C EF               [12] 1513 	mov	a, r7
      00064D 12 0B F9         [24] 1514 	lcall	_sqrtf
      000650 AC 82            [24] 1515 	mov	r4, dpl
      000652 AD 83            [24] 1516 	mov	r5, dph
      000654 AE F0            [24] 1517 	mov	r6, b
      000656 FF               [12] 1518 	mov	r7, a
      000657 C0 43            [24] 1519 	push	_av_accel
      000659 C0 44            [24] 1520 	push	(_av_accel + 1)
      00065B C0 45            [24] 1521 	push	(_av_accel + 2)
      00065D C0 46            [24] 1522 	push	(_av_accel + 3)
      00065F 8C 82            [24] 1523 	mov	dpl, r4
      000661 8D 83            [24] 1524 	mov	dph, r5
      000663 8E F0            [24] 1525 	mov	b, r6
      000665 EF               [12] 1526 	mov	a, r7
      000666 12 18 67         [24] 1527 	lcall	___fsdiv
      000669 85 82 53         [24] 1528 	mov	_throttle,dpl
      00066C 85 83 54         [24] 1529 	mov	(_throttle + 1),dph
      00066F 85 F0 55         [24] 1530 	mov	(_throttle + 2),b
      000672 F5 56            [12] 1531 	mov	(_throttle + 3),a
      000674 E5 81            [12] 1532 	mov	a,sp
      000676 24 FC            [12] 1533 	add	a,#0xfc
      000678 F5 81            [12] 1534 	mov	sp,a
                                   1535 ;	pgc.c:128: if (throttle != 0) {
      00067A 85 53 F0         [24] 1536 	mov	b,_throttle
      00067D E5 54            [12] 1537 	mov	a,(_throttle + 1)
      00067F 42 F0            [12] 1538 	orl	b,a
      000681 E5 55            [12] 1539 	mov	a,(_throttle + 2)
      000683 42 F0            [12] 1540 	orl	b,a
      000685 E5 56            [12] 1541 	mov	a,(_throttle + 3)
      000687 54 7F            [12] 1542 	anl	a,#0x7F
      000689 45 F0            [12] 1543 	orl	a,b
      00068B 70 03            [24] 1544 	jnz	00272$
      00068D 02 08 DB         [24] 1545 	ljmp	00110$
      000690                       1546 00272$:
                                   1547 ;	pgc.c:130: float delta_angle = angle_from_vec2(a0_x, a0_y) - angle;
      000690 AC 62            [24] 1548 	mov	r4,_a0_y
      000692 AD 63            [24] 1549 	mov	r5,(_a0_y + 1)
      000694 AE 64            [24] 1550 	mov	r6,(_a0_y + 2)
      000696 AF 65            [24] 1551 	mov	r7,(_a0_y + 3)
      000698 A8 5E            [24] 1552 	mov	r0,_a0_x
      00069A A9 5F            [24] 1553 	mov	r1,(_a0_x + 1)
      00069C AA 60            [24] 1554 	mov	r2,(_a0_x + 2)
      00069E AB 61            [24] 1555 	mov	r3,(_a0_x + 3)
      0006A0 8C 08            [24] 1556 	mov	_atan2f_PARM_2,r4
      0006A2 8D 09            [24] 1557 	mov	(_atan2f_PARM_2 + 1),r5
      0006A4 8E 0A            [24] 1558 	mov	(_atan2f_PARM_2 + 2),r6
      0006A6 EF               [12] 1559 	mov	a,r7
      0006A7 B2 E7            [12] 1560 	cpl	acc.7
      0006A9 F5 0B            [12] 1561 	mov	(_atan2f_PARM_2 + 3),a
      0006AB 88 82            [24] 1562 	mov	dpl, r0
      0006AD 89 83            [24] 1563 	mov	dph, r1
      0006AF 8A F0            [24] 1564 	mov	b, r2
      0006B1 EB               [12] 1565 	mov	a, r3
      0006B2 12 0E 8A         [24] 1566 	lcall	_atan2f
      0006B5 AC 82            [24] 1567 	mov	r4, dpl
      0006B7 AD 83            [24] 1568 	mov	r5, dph
      0006B9 AE F0            [24] 1569 	mov	r6, b
      0006BB FF               [12] 1570 	mov	r7, a
      0006BC C0 3B            [24] 1571 	push	_angle
      0006BE C0 3C            [24] 1572 	push	(_angle + 1)
      0006C0 C0 3D            [24] 1573 	push	(_angle + 2)
      0006C2 C0 3E            [24] 1574 	push	(_angle + 3)
                                   1575 ;	pgc.c:132: if (delta_angle > 3.14159265f) {
      0006C4 8C 82            [24] 1576 	mov	dpl, r4
      0006C6 8D 83            [24] 1577 	mov	dph, r5
      0006C8 8E F0            [24] 1578 	mov	b, r6
      0006CA EF               [12] 1579 	mov	a, r7
      0006CB 12 09 A7         [24] 1580 	lcall	___fssub
      0006CE AC 82            [24] 1581 	mov	r4, dpl
      0006D0 AD 83            [24] 1582 	mov	r5, dph
      0006D2 AE F0            [24] 1583 	mov	r6, b
      0006D4 FF               [12] 1584 	mov	r7, a
      0006D5 E5 81            [12] 1585 	mov	a,sp
      0006D7 24 FC            [12] 1586 	add	a,#0xfc
      0006D9 F5 81            [12] 1587 	mov	sp,a
      0006DB C0 07            [24] 1588 	push	ar7
      0006DD C0 06            [24] 1589 	push	ar6
      0006DF C0 05            [24] 1590 	push	ar5
      0006E1 C0 04            [24] 1591 	push	ar4
      0006E3 C0 04            [24] 1592 	push	ar4
      0006E5 C0 05            [24] 1593 	push	ar5
      0006E7 C0 06            [24] 1594 	push	ar6
      0006E9 C0 07            [24] 1595 	push	ar7
      0006EB 90 0F DB         [24] 1596 	mov	dptr,#0x0fdb
      0006EE 75 F0 49         [24] 1597 	mov	b, #0x49
      0006F1 74 40            [12] 1598 	mov	a, #0x40
      0006F3 12 0E 5A         [24] 1599 	lcall	___fslt
      0006F6 AB 82            [24] 1600 	mov	r3, dpl
      0006F8 E5 81            [12] 1601 	mov	a,sp
      0006FA 24 FC            [12] 1602 	add	a,#0xfc
      0006FC F5 81            [12] 1603 	mov	sp,a
      0006FE D0 04            [24] 1604 	pop	ar4
      000700 D0 05            [24] 1605 	pop	ar5
      000702 D0 06            [24] 1606 	pop	ar6
      000704 D0 07            [24] 1607 	pop	ar7
      000706 EB               [12] 1608 	mov	a,r3
      000707 60 29            [24] 1609 	jz	00107$
                                   1610 ;	pgc.c:133: delta_angle -= 6.2831853f;
      000709 74 DB            [12] 1611 	mov	a,#0xdb
      00070B C0 E0            [24] 1612 	push	acc
      00070D 74 0F            [12] 1613 	mov	a,#0x0f
      00070F C0 E0            [24] 1614 	push	acc
      000711 74 C9            [12] 1615 	mov	a,#0xc9
      000713 C0 E0            [24] 1616 	push	acc
      000715 74 40            [12] 1617 	mov	a,#0x40
      000717 C0 E0            [24] 1618 	push	acc
      000719 8C 82            [24] 1619 	mov	dpl, r4
      00071B 8D 83            [24] 1620 	mov	dph, r5
      00071D 8E F0            [24] 1621 	mov	b, r6
      00071F EF               [12] 1622 	mov	a, r7
      000720 12 09 A7         [24] 1623 	lcall	___fssub
      000723 AC 82            [24] 1624 	mov	r4, dpl
      000725 AD 83            [24] 1625 	mov	r5, dph
      000727 AE F0            [24] 1626 	mov	r6, b
      000729 FF               [12] 1627 	mov	r7, a
      00072A E5 81            [12] 1628 	mov	a,sp
      00072C 24 FC            [12] 1629 	add	a,#0xfc
      00072E F5 81            [12] 1630 	mov	sp,a
      000730 80 5C            [24] 1631 	sjmp	00108$
      000732                       1632 00107$:
                                   1633 ;	pgc.c:134: } else if (delta_angle < -3.14159265f) {
      000732 C0 07            [24] 1634 	push	ar7
      000734 C0 06            [24] 1635 	push	ar6
      000736 C0 05            [24] 1636 	push	ar5
      000738 C0 04            [24] 1637 	push	ar4
      00073A 74 DB            [12] 1638 	mov	a,#0xdb
      00073C C0 E0            [24] 1639 	push	acc
      00073E 74 0F            [12] 1640 	mov	a,#0x0f
      000740 C0 E0            [24] 1641 	push	acc
      000742 74 49            [12] 1642 	mov	a,#0x49
      000744 C0 E0            [24] 1643 	push	acc
      000746 74 C0            [12] 1644 	mov	a,#0xc0
      000748 C0 E0            [24] 1645 	push	acc
      00074A 8C 82            [24] 1646 	mov	dpl, r4
      00074C 8D 83            [24] 1647 	mov	dph, r5
      00074E 8E F0            [24] 1648 	mov	b, r6
      000750 EF               [12] 1649 	mov	a, r7
      000751 12 0E 5A         [24] 1650 	lcall	___fslt
      000754 AB 82            [24] 1651 	mov	r3, dpl
      000756 E5 81            [12] 1652 	mov	a,sp
      000758 24 FC            [12] 1653 	add	a,#0xfc
      00075A F5 81            [12] 1654 	mov	sp,a
      00075C D0 04            [24] 1655 	pop	ar4
      00075E D0 05            [24] 1656 	pop	ar5
      000760 D0 06            [24] 1657 	pop	ar6
      000762 D0 07            [24] 1658 	pop	ar7
      000764 EB               [12] 1659 	mov	a,r3
      000765 60 27            [24] 1660 	jz	00108$
                                   1661 ;	pgc.c:135: delta_angle += 6.2831853f;
      000767 74 DB            [12] 1662 	mov	a,#0xdb
      000769 C0 E0            [24] 1663 	push	acc
      00076B 74 0F            [12] 1664 	mov	a,#0x0f
      00076D C0 E0            [24] 1665 	push	acc
      00076F 74 C9            [12] 1666 	mov	a,#0xc9
      000771 C0 E0            [24] 1667 	push	acc
      000773 74 40            [12] 1668 	mov	a,#0x40
      000775 C0 E0            [24] 1669 	push	acc
      000777 8C 82            [24] 1670 	mov	dpl, r4
      000779 8D 83            [24] 1671 	mov	dph, r5
      00077B 8E F0            [24] 1672 	mov	b, r6
      00077D EF               [12] 1673 	mov	a, r7
      00077E 12 10 BD         [24] 1674 	lcall	___fsadd
      000781 AC 82            [24] 1675 	mov	r4, dpl
      000783 AD 83            [24] 1676 	mov	r5, dph
      000785 AE F0            [24] 1677 	mov	r6, b
      000787 FF               [12] 1678 	mov	r7, a
      000788 E5 81            [12] 1679 	mov	a,sp
      00078A 24 FC            [12] 1680 	add	a,#0xfc
      00078C F5 81            [12] 1681 	mov	sp,a
      00078E                       1682 00108$:
                                   1683 ;	pgc.c:140: gimbal = (ang_vel - sqrtf(0.8f * fabsf(delta_angle) * av_accel_ang * throttle) * signf(delta_angle)) / av_accel_ang;
      00078E 8C 82            [24] 1684 	mov	dpl, r4
      000790 8D 83            [24] 1685 	mov	dph, r5
      000792 8E F0            [24] 1686 	mov	b, r6
      000794 EF               [12] 1687 	mov	a, r7
      000795 C0 07            [24] 1688 	push	ar7
      000797 C0 06            [24] 1689 	push	ar6
      000799 C0 05            [24] 1690 	push	ar5
      00079B C0 04            [24] 1691 	push	ar4
      00079D 12 11 16         [24] 1692 	lcall	_fabsf
      0007A0 A8 82            [24] 1693 	mov	r0, dpl
      0007A2 A9 83            [24] 1694 	mov	r1, dph
      0007A4 AA F0            [24] 1695 	mov	r2, b
      0007A6 FB               [12] 1696 	mov	r3, a
      0007A7 C0 00            [24] 1697 	push	ar0
      0007A9 C0 01            [24] 1698 	push	ar1
      0007AB C0 02            [24] 1699 	push	ar2
      0007AD C0 03            [24] 1700 	push	ar3
      0007AF 90 CC CD         [24] 1701 	mov	dptr,#0xcccd
      0007B2 75 F0 4C         [24] 1702 	mov	b, #0x4c
      0007B5 74 3F            [12] 1703 	mov	a, #0x3f
      0007B7 12 0A 35         [24] 1704 	lcall	___fsmul
      0007BA A8 82            [24] 1705 	mov	r0, dpl
      0007BC A9 83            [24] 1706 	mov	r1, dph
      0007BE AA F0            [24] 1707 	mov	r2, b
      0007C0 FB               [12] 1708 	mov	r3, a
      0007C1 E5 81            [12] 1709 	mov	a,sp
      0007C3 24 FC            [12] 1710 	add	a,#0xfc
      0007C5 F5 81            [12] 1711 	mov	sp,a
      0007C7 C0 47            [24] 1712 	push	_av_accel_ang
      0007C9 C0 48            [24] 1713 	push	(_av_accel_ang + 1)
      0007CB C0 49            [24] 1714 	push	(_av_accel_ang + 2)
      0007CD C0 4A            [24] 1715 	push	(_av_accel_ang + 3)
      0007CF 88 82            [24] 1716 	mov	dpl, r0
      0007D1 89 83            [24] 1717 	mov	dph, r1
      0007D3 8A F0            [24] 1718 	mov	b, r2
      0007D5 EB               [12] 1719 	mov	a, r3
      0007D6 12 0A 35         [24] 1720 	lcall	___fsmul
      0007D9 A8 82            [24] 1721 	mov	r0, dpl
      0007DB A9 83            [24] 1722 	mov	r1, dph
      0007DD AA F0            [24] 1723 	mov	r2, b
      0007DF FB               [12] 1724 	mov	r3, a
      0007E0 E5 81            [12] 1725 	mov	a,sp
      0007E2 24 FC            [12] 1726 	add	a,#0xfc
      0007E4 F5 81            [12] 1727 	mov	sp,a
      0007E6 C0 53            [24] 1728 	push	_throttle
      0007E8 C0 54            [24] 1729 	push	(_throttle + 1)
      0007EA C0 55            [24] 1730 	push	(_throttle + 2)
      0007EC C0 56            [24] 1731 	push	(_throttle + 3)
      0007EE 88 82            [24] 1732 	mov	dpl, r0
      0007F0 89 83            [24] 1733 	mov	dph, r1
      0007F2 8A F0            [24] 1734 	mov	b, r2
      0007F4 EB               [12] 1735 	mov	a, r3
      0007F5 12 0A 35         [24] 1736 	lcall	___fsmul
      0007F8 A8 82            [24] 1737 	mov	r0, dpl
      0007FA A9 83            [24] 1738 	mov	r1, dph
      0007FC AA F0            [24] 1739 	mov	r2, b
      0007FE FB               [12] 1740 	mov	r3, a
      0007FF E5 81            [12] 1741 	mov	a,sp
      000801 24 FC            [12] 1742 	add	a,#0xfc
      000803 F5 81            [12] 1743 	mov	sp,a
      000805 88 82            [24] 1744 	mov	dpl, r0
      000807 89 83            [24] 1745 	mov	dph, r1
      000809 8A F0            [24] 1746 	mov	b, r2
      00080B EB               [12] 1747 	mov	a, r3
      00080C 12 0B F9         [24] 1748 	lcall	_sqrtf
      00080F A8 82            [24] 1749 	mov	r0, dpl
      000811 A9 83            [24] 1750 	mov	r1, dph
      000813 AA F0            [24] 1751 	mov	r2, b
      000815 FB               [12] 1752 	mov	r3, a
      000816 D0 04            [24] 1753 	pop	ar4
      000818 D0 05            [24] 1754 	pop	ar5
      00081A D0 06            [24] 1755 	pop	ar6
      00081C D0 07            [24] 1756 	pop	ar7
                                   1757 ;	utils.h:17: return value < 0 ? -1 : 1;
      00081E C0 03            [24] 1758 	push	ar3
      000820 C0 02            [24] 1759 	push	ar2
      000822 C0 01            [24] 1760 	push	ar1
      000824 C0 00            [24] 1761 	push	ar0
      000826 E4               [12] 1762 	clr	a
      000827 C0 E0            [24] 1763 	push	acc
      000829 C0 E0            [24] 1764 	push	acc
      00082B C0 E0            [24] 1765 	push	acc
      00082D C0 E0            [24] 1766 	push	acc
      00082F 8C 82            [24] 1767 	mov	dpl, r4
      000831 8D 83            [24] 1768 	mov	dph, r5
      000833 8E F0            [24] 1769 	mov	b, r6
      000835 EF               [12] 1770 	mov	a, r7
      000836 12 0E 5A         [24] 1771 	lcall	___fslt
      000839 AF 82            [24] 1772 	mov	r7, dpl
      00083B E5 81            [12] 1773 	mov	a,sp
      00083D 24 FC            [12] 1774 	add	a,#0xfc
      00083F F5 81            [12] 1775 	mov	sp,a
      000841 D0 00            [24] 1776 	pop	ar0
      000843 D0 01            [24] 1777 	pop	ar1
      000845 D0 02            [24] 1778 	pop	ar2
      000847 D0 03            [24] 1779 	pop	ar3
      000849 EF               [12] 1780 	mov	a,r7
      00084A 60 06            [24] 1781 	jz	00153$
      00084C 7E FF            [12] 1782 	mov	r6,#0xff
      00084E 7F FF            [12] 1783 	mov	r7,#0xff
      000850 80 04            [24] 1784 	sjmp	00154$
      000852                       1785 00153$:
      000852 7E 01            [12] 1786 	mov	r6,#0x01
      000854 7F 00            [12] 1787 	mov	r7,#0x00
      000856                       1788 00154$:
      000856 8E 82            [24] 1789 	mov	dpl, r6
      000858 8F 83            [24] 1790 	mov	dph, r7
      00085A C0 03            [24] 1791 	push	ar3
      00085C C0 02            [24] 1792 	push	ar2
      00085E C0 01            [24] 1793 	push	ar1
      000860 C0 00            [24] 1794 	push	ar0
      000862 12 12 ED         [24] 1795 	lcall	___sint2fs
      000865 AC 82            [24] 1796 	mov	r4, dpl
      000867 AD 83            [24] 1797 	mov	r5, dph
      000869 AE F0            [24] 1798 	mov	r6, b
      00086B FF               [12] 1799 	mov	r7, a
      00086C D0 00            [24] 1800 	pop	ar0
      00086E D0 01            [24] 1801 	pop	ar1
      000870 D0 02            [24] 1802 	pop	ar2
      000872 D0 03            [24] 1803 	pop	ar3
                                   1804 ;	pgc.c:140: gimbal = (ang_vel - sqrtf(0.8f * fabsf(delta_angle) * av_accel_ang * throttle) * signf(delta_angle)) / av_accel_ang;
      000874 C0 04            [24] 1805 	push	ar4
      000876 C0 05            [24] 1806 	push	ar5
      000878 C0 06            [24] 1807 	push	ar6
      00087A C0 07            [24] 1808 	push	ar7
      00087C 88 82            [24] 1809 	mov	dpl, r0
      00087E 89 83            [24] 1810 	mov	dph, r1
      000880 8A F0            [24] 1811 	mov	b, r2
      000882 EB               [12] 1812 	mov	a, r3
      000883 12 0A 35         [24] 1813 	lcall	___fsmul
      000886 AC 82            [24] 1814 	mov	r4, dpl
      000888 AD 83            [24] 1815 	mov	r5, dph
      00088A AE F0            [24] 1816 	mov	r6, b
      00088C FF               [12] 1817 	mov	r7, a
      00088D E5 81            [12] 1818 	mov	a,sp
      00088F 24 FC            [12] 1819 	add	a,#0xfc
      000891 F5 81            [12] 1820 	mov	sp,a
      000893 C0 04            [24] 1821 	push	ar4
      000895 C0 05            [24] 1822 	push	ar5
      000897 C0 06            [24] 1823 	push	ar6
      000899 C0 07            [24] 1824 	push	ar7
      00089B 85 3F 82         [24] 1825 	mov	dpl, _ang_vel
      00089E 85 40 83         [24] 1826 	mov	dph, (_ang_vel + 1)
      0008A1 85 41 F0         [24] 1827 	mov	b, (_ang_vel + 2)
      0008A4 E5 42            [12] 1828 	mov	a, (_ang_vel + 3)
      0008A6 12 09 A7         [24] 1829 	lcall	___fssub
      0008A9 AC 82            [24] 1830 	mov	r4, dpl
      0008AB AD 83            [24] 1831 	mov	r5, dph
      0008AD AE F0            [24] 1832 	mov	r6, b
      0008AF FF               [12] 1833 	mov	r7, a
      0008B0 E5 81            [12] 1834 	mov	a,sp
      0008B2 24 FC            [12] 1835 	add	a,#0xfc
      0008B4 F5 81            [12] 1836 	mov	sp,a
      0008B6 C0 47            [24] 1837 	push	_av_accel_ang
      0008B8 C0 48            [24] 1838 	push	(_av_accel_ang + 1)
      0008BA C0 49            [24] 1839 	push	(_av_accel_ang + 2)
      0008BC C0 4A            [24] 1840 	push	(_av_accel_ang + 3)
      0008BE 8C 82            [24] 1841 	mov	dpl, r4
      0008C0 8D 83            [24] 1842 	mov	dph, r5
      0008C2 8E F0            [24] 1843 	mov	b, r6
      0008C4 EF               [12] 1844 	mov	a, r7
      0008C5 12 18 67         [24] 1845 	lcall	___fsdiv
      0008C8 85 82 57         [24] 1846 	mov	_gimbal,dpl
      0008CB 85 83 58         [24] 1847 	mov	(_gimbal + 1),dph
      0008CE 85 F0 59         [24] 1848 	mov	(_gimbal + 2),b
      0008D1 F5 5A            [12] 1849 	mov	(_gimbal + 3),a
      0008D3 E5 81            [12] 1850 	mov	a,sp
      0008D5 24 FC            [12] 1851 	add	a,#0xfc
      0008D7 F5 81            [12] 1852 	mov	sp,a
      0008D9 80 09            [24] 1853 	sjmp	00111$
      0008DB                       1854 00110$:
                                   1855 ;	pgc.c:142: gimbal = 0.0f;
      0008DB E4               [12] 1856 	clr	a
      0008DC F5 57            [12] 1857 	mov	_gimbal,a
      0008DE F5 58            [12] 1858 	mov	(_gimbal + 1),a
      0008E0 F5 59            [12] 1859 	mov	(_gimbal + 2),a
      0008E2 F5 5A            [12] 1860 	mov	(_gimbal + 3),a
      0008E4                       1861 00111$:
                                   1862 ;	pgc.c:146: Serial_SendByte(0x21); // send package
      0008E4 75 82 21         [24] 1863 	mov	dpl, #0x21
      0008E7 12 02 A2         [24] 1864 	lcall	_Serial_SendByte
                                   1865 ;	pgc.c:147: Serial_SendFloat(throttle); // throttle
      0008EA 85 53 82         [24] 1866 	mov	dpl, _throttle
      0008ED 85 54 83         [24] 1867 	mov	dph, (_throttle + 1)
      0008F0 85 55 F0         [24] 1868 	mov	b, (_throttle + 2)
      0008F3 E5 56            [12] 1869 	mov	a, (_throttle + 3)
      0008F5 12 02 AB         [24] 1870 	lcall	_Serial_SendFloat
                                   1871 ;	pgc.c:148: Serial_SendFloat(gimbal); // gimbal
      0008F8 85 57 82         [24] 1872 	mov	dpl, _gimbal
      0008FB 85 58 83         [24] 1873 	mov	dph, (_gimbal + 1)
      0008FE 85 59 F0         [24] 1874 	mov	b, (_gimbal + 2)
      000901 E5 5A            [12] 1875 	mov	a, (_gimbal + 3)
      000903 12 02 AB         [24] 1876 	lcall	_Serial_SendFloat
                                   1877 ;	pgc.c:151: MAX7219_WriteByte(1, PROG);
      000906 85 5B 2A         [24] 1878 	mov	_MAX7219_WriteByte_PARM_2,_PROG
      000909 75 82 01         [24] 1879 	mov	dpl, #0x01
      00090C 12 02 64         [24] 1880 	lcall	_MAX7219_WriteByte
                                   1881 ;	pgc.c:152: MAX7219_WriteByte(2, VERB);
      00090F 85 5C 2A         [24] 1882 	mov	_MAX7219_WriteByte_PARM_2,_VERB
      000912 75 82 02         [24] 1883 	mov	dpl, #0x02
      000915 12 02 64         [24] 1884 	lcall	_MAX7219_WriteByte
                                   1885 ;	pgc.c:153: MAX7219_WriteByte(3, NOUN);
      000918 85 5D 2A         [24] 1886 	mov	_MAX7219_WriteByte_PARM_2,_NOUN
      00091B 75 82 03         [24] 1887 	mov	dpl, #0x03
      00091E 12 02 64         [24] 1888 	lcall	_MAX7219_WriteByte
                                   1889 ;	pgc.c:155: MAX7219_WriteFloat(1, t_go);
      000921 85 66 22         [24] 1890 	mov	_MAX7219_WriteFloat_PARM_2,_t_go
      000924 85 67 23         [24] 1891 	mov	(_MAX7219_WriteFloat_PARM_2 + 1),(_t_go + 1)
      000927 85 68 24         [24] 1892 	mov	(_MAX7219_WriteFloat_PARM_2 + 2),(_t_go + 2)
      00092A 85 69 25         [24] 1893 	mov	(_MAX7219_WriteFloat_PARM_2 + 3),(_t_go + 3)
      00092D 75 82 01         [24] 1894 	mov	dpl, #0x01
      000930 12 01 AC         [24] 1895 	lcall	_MAX7219_WriteFloat
                                   1896 ;	pgc.c:158: key = Keyboard_Read();
      000933 12 00 B1         [24] 1897 	lcall	_Keyboard_Read
      000936 AF 82            [24] 1898 	mov	r7, dpl
                                   1899 ;	pgc.c:160: if (key == 0xFF) {
      000938 BF FF 06         [24] 1900 	cjne	r7,#0xff,00113$
                                   1901 ;	pgc.c:161: dsky_key_pressed = false;
      00093B 75 6C 00         [24] 1902 	mov	_dsky_key_pressed,#0x00
                                   1903 ;	pgc.c:162: continue;
      00093E 02 03 7F         [24] 1904 	ljmp	00139$
      000941                       1905 00113$:
                                   1906 ;	pgc.c:165: if (dsky_key_pressed) continue;
      000941 E5 6C            [12] 1907 	mov	a,_dsky_key_pressed
      000943 60 03            [24] 1908 	jz	00278$
      000945 02 03 7F         [24] 1909 	ljmp	00139$
      000948                       1910 00278$:
                                   1911 ;	pgc.c:167: dsky_key_pressed = true;
      000948 75 6C 01         [24] 1912 	mov	_dsky_key_pressed,#0x01
                                   1913 ;	pgc.c:169: if (key == 0x0A) { // CLR (*)
      00094B BF 0A 06         [24] 1914 	cjne	r7,#0x0a,00117$
                                   1915 ;	pgc.c:170: dsky_buffer = 0;
      00094E 75 6A 00         [24] 1916 	mov	_dsky_buffer,#0x00
                                   1917 ;	pgc.c:171: continue;
      000951 02 03 7F         [24] 1918 	ljmp	00139$
      000954                       1919 00117$:
                                   1920 ;	pgc.c:174: if (key == 0x0B) { // ENTER (#)
      000954 BF 0B 29         [24] 1921 	cjne	r7,#0x0b,00129$
                                   1922 ;	pgc.c:175: if (dsky_state == 0) continue;
      000957 E5 6B            [12] 1923 	mov	a,_dsky_state
      000959 70 03            [24] 1924 	jnz	00283$
      00095B 02 03 7F         [24] 1925 	ljmp	00139$
      00095E                       1926 00283$:
                                   1927 ;	pgc.c:177: if (dsky_state == 1) PROG = dsky_buffer;
      00095E 74 01            [12] 1928 	mov	a,#0x01
      000960 B5 6B 05         [24] 1929 	cjne	a,_dsky_state,00126$
      000963 85 6A 5B         [24] 1930 	mov	_PROG,_dsky_buffer
      000966 80 12            [24] 1931 	sjmp	00127$
      000968                       1932 00126$:
                                   1933 ;	pgc.c:178: else if (dsky_state == 2) VERB = dsky_buffer;
      000968 74 02            [12] 1934 	mov	a,#0x02
      00096A B5 6B 05         [24] 1935 	cjne	a,_dsky_state,00123$
      00096D 85 6A 5C         [24] 1936 	mov	_VERB,_dsky_buffer
      000970 80 08            [24] 1937 	sjmp	00127$
      000972                       1938 00123$:
                                   1939 ;	pgc.c:179: else if (dsky_state == 3) NOUN = dsky_buffer;
      000972 74 03            [12] 1940 	mov	a,#0x03
      000974 B5 6B 03         [24] 1941 	cjne	a,_dsky_state,00127$
      000977 85 6A 5D         [24] 1942 	mov	_NOUN,_dsky_buffer
      00097A                       1943 00127$:
                                   1944 ;	pgc.c:181: dsky_state = 0;
      00097A 75 6B 00         [24] 1945 	mov	_dsky_state,#0x00
                                   1946 ;	pgc.c:183: continue;
      00097D 02 03 7F         [24] 1947 	ljmp	00139$
      000980                       1948 00129$:
                                   1949 ;	pgc.c:186: if (key == 0x0C) { // PROG
      000980 BF 0C 06         [24] 1950 	cjne	r7,#0x0c,00131$
                                   1951 ;	pgc.c:187: dsky_state = 1;
      000983 75 6B 01         [24] 1952 	mov	_dsky_state,#0x01
                                   1953 ;	pgc.c:188: continue;
      000986 02 03 7F         [24] 1954 	ljmp	00139$
      000989                       1955 00131$:
                                   1956 ;	pgc.c:191: if (key == 0x0D) { // VERB
      000989 BF 0D 06         [24] 1957 	cjne	r7,#0x0d,00133$
                                   1958 ;	pgc.c:192: dsky_state = 2;
      00098C 75 6B 02         [24] 1959 	mov	_dsky_state,#0x02
                                   1960 ;	pgc.c:193: continue;
      00098F 02 03 7F         [24] 1961 	ljmp	00139$
      000992                       1962 00133$:
                                   1963 ;	pgc.c:196: if (key == 0x0E) { // NOUN
      000992 BF 0E 06         [24] 1964 	cjne	r7,#0x0e,00135$
                                   1965 ;	pgc.c:197: dsky_state = 3;
      000995 75 6B 03         [24] 1966 	mov	_dsky_state,#0x03
                                   1967 ;	pgc.c:198: continue;
      000998 02 03 7F         [24] 1968 	ljmp	00139$
      00099B                       1969 00135$:
                                   1970 ;	pgc.c:201: if (dsky_state != 0) { // 0 - 9
      00099B E5 6B            [12] 1971 	mov	a,_dsky_state
      00099D 70 03            [24] 1972 	jnz	00296$
      00099F 02 03 7F         [24] 1973 	ljmp	00139$
      0009A2                       1974 00296$:
                                   1975 ;	pgc.c:202: dsky_buffer = key; // DEBUG
      0009A2 8F 6A            [24] 1976 	mov	_dsky_buffer,r7
                                   1977 ;	pgc.c:205: }
      0009A4 02 03 7F         [24] 1978 	ljmp	00139$
                                   1979 	.area CSEG    (CODE)
                                   1980 	.area CONST   (CODE)
                                   1981 	.area XINIT   (CODE)
                                   1982 	.area CABS    (ABS,CODE)
