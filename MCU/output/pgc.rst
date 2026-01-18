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
                                     16 	.globl _Delay_5us
                                     17 	.globl _Delay_polling
                                     18 	.globl _Display_WriteDigit
                                     19 	.globl _Display_WriteFloat
                                     20 	.globl _MAX7219_Write
                                     21 	.globl _MAX7219_Select
                                     22 	.globl _MAX7219_SPI_Write_Byte
                                     23 	.globl _Keyboard_Read
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
                                    147 	.globl _gravity_y
                                    148 	.globl _ut
                                    149 	.globl _av_accel_ang
                                    150 	.globl _av_accel
                                    151 	.globl _ang_vel
                                    152 	.globl _angle
                                    153 	.globl _vel_y
                                    154 	.globl _vel_x
                                    155 	.globl _pos_y
                                    156 	.globl _pos_x
                                    157 	.globl _dsky_key_pressed
                                    158 	.globl _dsky_state
                                    159 	.globl _dsky_buffer
                                    160 	.globl _t_go
                                    161 	.globl _a0_y
                                    162 	.globl _a0_x
                                    163 	.globl _NOUN
                                    164 	.globl _VERB
                                    165 	.globl _PROG
                                    166 	.globl _gimbal
                                    167 	.globl _throttle
                                    168 	.globl _Display_WriteDigit_PARM_2
                                    169 	.globl _Display_WriteFloat_PARM_2
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
      000008                        313 _MAX7219_Write_PARM_2:
      000008                        314 	.ds 1
      000009                        315 _Display_WriteFloat_PARM_2:
      000009                        316 	.ds 4
      00000D                        317 _Display_WriteFloat_number_10000_50:
      00000D                        318 	.ds 4
      000011                        319 _Display_WriteDigit_PARM_2:
      000011                        320 	.ds 1
      000012                        321 _throttle::
      000012                        322 	.ds 4
      000016                        323 _gimbal::
      000016                        324 	.ds 4
      00001A                        325 _PROG::
      00001A                        326 	.ds 1
      00001B                        327 _VERB::
      00001B                        328 	.ds 1
      00001C                        329 _NOUN::
      00001C                        330 	.ds 1
      00001D                        331 _a0_x::
      00001D                        332 	.ds 4
      000021                        333 _a0_y::
      000021                        334 	.ds 4
      000025                        335 _t_go::
      000025                        336 	.ds 4
      000029                        337 _dsky_buffer::
      000029                        338 	.ds 1
      00002A                        339 _dsky_state::
      00002A                        340 	.ds 1
      00002B                        341 _dsky_key_pressed::
      00002B                        342 	.ds 1
                                    343 ;--------------------------------------------------------
                                    344 ; overlayable items in internal ram
                                    345 ;--------------------------------------------------------
                                    346 	.area	OSEG    (OVR,DATA)
                                    347 	.area	OSEG    (OVR,DATA)
                                    348 	.area	OSEG    (OVR,DATA)
                                    349 	.area	OSEG    (OVR,DATA)
                                    350 	.area	OSEG    (OVR,DATA)
                                    351 	.area	OSEG    (OVR,DATA)
                                    352 	.area	OSEG    (OVR,DATA)
                                    353 	.area	OSEG    (OVR,DATA)
      00002C                        354 _Serial_ReadFloat_value_10000_72:
      00002C                        355 	.ds 4
                                    356 ;--------------------------------------------------------
                                    357 ; Stack segment in internal ram
                                    358 ;--------------------------------------------------------
                                    359 	.area SSEG
      000030                        360 __start__stack:
      000030                        361 	.ds	1
                                    362 
                                    363 ;--------------------------------------------------------
                                    364 ; indirectly addressable internal ram data
                                    365 ;--------------------------------------------------------
                                    366 	.area ISEG    (DATA)
                                    367 ;--------------------------------------------------------
                                    368 ; absolute internal ram data
                                    369 ;--------------------------------------------------------
                                    370 	.area IABS    (ABS,DATA)
                                    371 	.area IABS    (ABS,DATA)
                                    372 ;--------------------------------------------------------
                                    373 ; bit data
                                    374 ;--------------------------------------------------------
                                    375 	.area BSEG    (BIT)
                                    376 ;--------------------------------------------------------
                                    377 ; paged external ram data
                                    378 ;--------------------------------------------------------
                                    379 	.area PSEG    (PAG,XDATA)
                                    380 ;--------------------------------------------------------
                                    381 ; uninitialized external ram data
                                    382 ;--------------------------------------------------------
                                    383 	.area XSEG    (XDATA)
      000001                        384 _pos_x::
      000001                        385 	.ds 4
      000005                        386 _pos_y::
      000005                        387 	.ds 4
      000009                        388 _vel_x::
      000009                        389 	.ds 4
      00000D                        390 _vel_y::
      00000D                        391 	.ds 4
      000011                        392 _angle::
      000011                        393 	.ds 4
      000015                        394 _ang_vel::
      000015                        395 	.ds 4
      000019                        396 _av_accel::
      000019                        397 	.ds 4
      00001D                        398 _av_accel_ang::
      00001D                        399 	.ds 4
      000021                        400 _ut::
      000021                        401 	.ds 4
      000025                        402 _gravity_y::
      000025                        403 	.ds 4
                                    404 ;--------------------------------------------------------
                                    405 ; absolute external ram data
                                    406 ;--------------------------------------------------------
                                    407 	.area XABS    (ABS,XDATA)
                                    408 ;--------------------------------------------------------
                                    409 ; initialized external ram data
                                    410 ;--------------------------------------------------------
                                    411 	.area XISEG   (XDATA)
                                    412 	.area HOME    (CODE)
                                    413 	.area GSINIT0 (CODE)
                                    414 	.area GSINIT1 (CODE)
                                    415 	.area GSINIT2 (CODE)
                                    416 	.area GSINIT3 (CODE)
                                    417 	.area GSINIT4 (CODE)
                                    418 	.area GSINIT5 (CODE)
                                    419 	.area GSINIT  (CODE)
                                    420 	.area GSFINAL (CODE)
                                    421 	.area CSEG    (CODE)
                                    422 ;--------------------------------------------------------
                                    423 ; interrupt vector
                                    424 ;--------------------------------------------------------
                                    425 	.area HOME    (CODE)
      000000                        426 __interrupt_vect:
      000000 02 00 4C         [24]  427 	ljmp	__sdcc_gsinit_startup
                                    428 ; restartable atomic support routines
      000003                        429 	.ds	5
      000008                        430 sdcc_atomic_exchange_rollback_start::
      000008 00               [12]  431 	nop
      000009 00               [12]  432 	nop
      00000A                        433 sdcc_atomic_exchange_pdata_impl:
      00000A E2               [24]  434 	movx	a, @r0
      00000B FB               [12]  435 	mov	r3, a
      00000C EA               [12]  436 	mov	a, r2
      00000D F2               [24]  437 	movx	@r0, a
      00000E 80 2C            [24]  438 	sjmp	sdcc_atomic_exchange_exit
      000010 00               [12]  439 	nop
      000011 00               [12]  440 	nop
      000012                        441 sdcc_atomic_exchange_xdata_impl:
      000012 E0               [24]  442 	movx	a, @dptr
      000013 FB               [12]  443 	mov	r3, a
      000014 EA               [12]  444 	mov	a, r2
      000015 F0               [24]  445 	movx	@dptr, a
      000016 80 24            [24]  446 	sjmp	sdcc_atomic_exchange_exit
      000018                        447 sdcc_atomic_compare_exchange_idata_impl:
      000018 E6               [12]  448 	mov	a, @r0
      000019 B5 02 02         [24]  449 	cjne	a, ar2, .+#5
      00001C EB               [12]  450 	mov	a, r3
      00001D F6               [12]  451 	mov	@r0, a
      00001E 22               [24]  452 	ret
      00001F 00               [12]  453 	nop
      000020                        454 sdcc_atomic_compare_exchange_pdata_impl:
      000020 E2               [24]  455 	movx	a, @r0
      000021 B5 02 02         [24]  456 	cjne	a, ar2, .+#5
      000024 EB               [12]  457 	mov	a, r3
      000025 F2               [24]  458 	movx	@r0, a
      000026 22               [24]  459 	ret
      000027 00               [12]  460 	nop
      000028                        461 sdcc_atomic_compare_exchange_xdata_impl:
      000028 E0               [24]  462 	movx	a, @dptr
      000029 B5 02 02         [24]  463 	cjne	a, ar2, .+#5
      00002C EB               [12]  464 	mov	a, r3
      00002D F0               [24]  465 	movx	@dptr, a
      00002E 22               [24]  466 	ret
      00002F                        467 sdcc_atomic_exchange_rollback_end::
                                    468 
      00002F                        469 sdcc_atomic_exchange_gptr_impl::
      00002F 30 F6 E0         [24]  470 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      000032 A8 82            [24]  471 	mov	r0, dpl
      000034 20 F5 D3         [24]  472 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      000037                        473 sdcc_atomic_exchange_idata_impl:
      000037 EA               [12]  474 	mov	a, r2
      000038 C6               [12]  475 	xch	a, @r0
      000039 F5 82            [12]  476 	mov	dpl, a
      00003B 22               [24]  477 	ret
      00003C                        478 sdcc_atomic_exchange_exit:
      00003C 8B 82            [24]  479 	mov	dpl, r3
      00003E 22               [24]  480 	ret
      00003F                        481 sdcc_atomic_compare_exchange_gptr_impl::
      00003F 30 F6 E6         [24]  482 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      000042 A8 82            [24]  483 	mov	r0, dpl
      000044 20 F5 D9         [24]  484 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      000047 80 CF            [24]  485 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    486 ;--------------------------------------------------------
                                    487 ; global & static initialisations
                                    488 ;--------------------------------------------------------
                                    489 	.area HOME    (CODE)
                                    490 	.area GSINIT  (CODE)
                                    491 	.area GSFINAL (CODE)
                                    492 	.area GSINIT  (CODE)
                                    493 	.globl __sdcc_gsinit_startup
                                    494 	.globl __sdcc_program_startup
                                    495 	.globl __start__stack
                                    496 	.globl __mcs51_genXINIT
                                    497 	.globl __mcs51_genXRAMCLEAR
                                    498 	.globl __mcs51_genRAMCLEAR
                                    499 ;	pgc.c:28: byte_t dsky_buffer = 0x00;
      0000A5 75 29 00         [24]  500 	mov	_dsky_buffer,#0x00
                                    501 ;	pgc.c:29: byte_t dsky_state = 0;
      0000A8 75 2A 00         [24]  502 	mov	_dsky_state,#0x00
                                    503 ;	pgc.c:30: bool dsky_key_pressed = false;
      0000AB 75 2B 00         [24]  504 	mov	_dsky_key_pressed,#0x00
                                    505 	.area GSFINAL (CODE)
      0000AE 02 00 49         [24]  506 	ljmp	__sdcc_program_startup
                                    507 ;--------------------------------------------------------
                                    508 ; Home
                                    509 ;--------------------------------------------------------
                                    510 	.area HOME    (CODE)
                                    511 	.area HOME    (CODE)
      000049                        512 __sdcc_program_startup:
      000049 02 03 14         [24]  513 	ljmp	_main
                                    514 ;	return from main will return to caller
                                    515 ;--------------------------------------------------------
                                    516 ; code
                                    517 ;--------------------------------------------------------
                                    518 	.area CSEG    (CODE)
                                    519 ;------------------------------------------------------------
                                    520 ;Allocation info for local variables in function 'Keyboard_Read'
                                    521 ;------------------------------------------------------------
                                    522 ;x             Allocated to registers r7 
                                    523 ;y             Allocated to registers r7 
                                    524 ;i             Allocated to registers r6 
                                    525 ;__400000004   Allocated to registers r3 
                                    526 ;__400000001   Allocated to registers r4 
                                    527 ;__400000002   Allocated to registers 
                                    528 ;value         Allocated to registers 
                                    529 ;__400000005   Allocated to registers 
                                    530 ;value         Allocated to registers 
                                    531 ;------------------------------------------------------------
                                    532 ;	keyboard.h:16: byte_t Keyboard_Read(void) {
                                    533 ;	-----------------------------------------
                                    534 ;	 function Keyboard_Read
                                    535 ;	-----------------------------------------
      0000B1                        536 _Keyboard_Read:
                           000007   537 	ar7 = 0x07
                           000006   538 	ar6 = 0x06
                           000005   539 	ar5 = 0x05
                           000004   540 	ar4 = 0x04
                           000003   541 	ar3 = 0x03
                           000002   542 	ar2 = 0x02
                           000001   543 	ar1 = 0x01
                           000000   544 	ar0 = 0x00
                                    545 ;	keyboard.h:23: byte_t x, y = 0x01;
      0000B1 7F 01            [12]  546 	mov	r7,#0x01
                                    547 ;	keyboard.h:25: for (byte_t i=0; i<=2; i++) {
      0000B3 7E 00            [12]  548 	mov	r6,#0x00
      0000B5                        549 00134$:
      0000B5 EE               [12]  550 	mov	a,r6
      0000B6 24 FD            [12]  551 	add	a,#0xff - 0x02
      0000B8 50 03            [24]  552 	jnc	00257$
      0000BA 02 01 40         [24]  553 	ljmp	00110$
      0000BD                        554 00257$:
                                    555 ;	keyboard.h:26: KEYBOARD_PORT = 0xFF & ~y;
      0000BD EF               [12]  556 	mov	a,r7
      0000BE F4               [12]  557 	cpl	a
      0000BF F5 90            [12]  558 	mov	_P1,a
                                    559 ;	keyboard.h:28: x = ~((KEYBOARD_PORT & 0xF0) >> 4) & 0x0F;
      0000C1 AC 90            [24]  560 	mov	r4,_P1
      0000C3 53 04 F0         [24]  561 	anl	ar4,#0xf0
      0000C6 E4               [12]  562 	clr	a
      0000C7 CC               [12]  563 	xch	a,r4
      0000C8 C4               [12]  564 	swap	a
      0000C9 54 0F            [12]  565 	anl	a,#0x0f
      0000CB 6C               [12]  566 	xrl	a,r4
      0000CC CC               [12]  567 	xch	a,r4
      0000CD 54 0F            [12]  568 	anl	a,#0x0f
      0000CF CC               [12]  569 	xch	a,r4
      0000D0 6C               [12]  570 	xrl	a,r4
      0000D1 CC               [12]  571 	xch	a,r4
      0000D2 30 E3 02         [24]  572 	jnb	acc.3,00258$
      0000D5 44 F0            [12]  573 	orl	a,#0xfffffff0
      0000D7                        574 00258$:
      0000D7 EC               [12]  575 	mov	a,r4
      0000D8 F4               [12]  576 	cpl	a
      0000D9 FC               [12]  577 	mov	r4,a
      0000DA 74 0F            [12]  578 	mov	a,#0x0f
      0000DC 5C               [12]  579 	anl	a,r4
      0000DD FD               [12]  580 	mov	r5,a
                                    581 ;	keyboard.h:30: if (x==8) { // last column - special functions
      0000DE BD 08 1B         [24]  582 	cjne	r5,#0x08,00107$
                                    583 ;	keyboard.h:31: switch (y) {
      0000E1 BF 01 02         [24]  584 	cjne	r7,#0x01,00261$
      0000E4 80 0A            [24]  585 	sjmp	00101$
      0000E6                        586 00261$:
      0000E6 BF 02 02         [24]  587 	cjne	r7,#0x02,00262$
      0000E9 80 09            [24]  588 	sjmp	00102$
      0000EB                        589 00262$:
                                    590 ;	keyboard.h:32: case 1:
      0000EB BF 04 0E         [24]  591 	cjne	r7,#0x04,00107$
      0000EE 80 08            [24]  592 	sjmp	00103$
      0000F0                        593 00101$:
                                    594 ;	keyboard.h:33: return 0x0C; // PROG
      0000F0 75 82 0C         [24]  595 	mov	dpl, #0x0c
      0000F3 22               [24]  596 	ret
                                    597 ;	keyboard.h:34: case 2:
      0000F4                        598 00102$:
                                    599 ;	keyboard.h:35: return 0x0D; // VERB
      0000F4 75 82 0D         [24]  600 	mov	dpl, #0x0d
      0000F7 22               [24]  601 	ret
                                    602 ;	keyboard.h:36: case 4:
      0000F8                        603 00103$:
                                    604 ;	keyboard.h:37: return 0x0E; // NOUN
      0000F8 75 82 0E         [24]  605 	mov	dpl, #0x0e
      0000FB 22               [24]  606 	ret
                                    607 ;	keyboard.h:40: }
      0000FC                        608 00107$:
                                    609 ;	keyboard.h:43: if (x != 0) return 3*(log2_table(y)-1) + log2_table(x); 
      0000FC ED               [12]  610 	mov	a,r5
      0000FD 60 3A            [24]  611 	jz	00109$
                                    612 ;	keyboard.h:10: if (value == 0x01) return 1;
      0000FF BF 01 04         [24]  613 	cjne	r7,#0x01,00120$
      000102 7C 01            [12]  614 	mov	r4,#0x01
      000104 80 10            [24]  615 	sjmp	00125$
      000106                        616 00120$:
                                    617 ;	keyboard.h:11: if (value == 0x02) return 2;
      000106 BF 02 04         [24]  618 	cjne	r7,#0x02,00122$
      000109 7C 02            [12]  619 	mov	r4,#0x02
      00010B 80 09            [24]  620 	sjmp	00125$
      00010D                        621 00122$:
                                    622 ;	keyboard.h:12: if (value == 0x04) return 3;
      00010D BF 04 04         [24]  623 	cjne	r7,#0x04,00124$
      000110 7C 03            [12]  624 	mov	r4,#0x03
      000112 80 02            [24]  625 	sjmp	00125$
      000114                        626 00124$:
                                    627 ;	keyboard.h:13: return 0;
      000114 7C 00            [12]  628 	mov	r4,#0x00
                                    629 ;	keyboard.h:43: if (x != 0) return 3*(log2_table(y)-1) + log2_table(x); 
      000116                        630 00125$:
      000116 EC               [12]  631 	mov	a,r4
      000117 14               [12]  632 	dec	a
      000118 75 F0 03         [24]  633 	mov	b,#0x03
      00011B A4               [48]  634 	mul	ab
      00011C FC               [12]  635 	mov	r4,a
                                    636 ;	keyboard.h:10: if (value == 0x01) return 1;
      00011D BD 01 04         [24]  637 	cjne	r5,#0x01,00127$
      000120 7B 01            [12]  638 	mov	r3,#0x01
      000122 80 10            [24]  639 	sjmp	00132$
      000124                        640 00127$:
                                    641 ;	keyboard.h:11: if (value == 0x02) return 2;
      000124 BD 02 04         [24]  642 	cjne	r5,#0x02,00129$
      000127 7B 02            [12]  643 	mov	r3,#0x02
      000129 80 09            [24]  644 	sjmp	00132$
      00012B                        645 00129$:
                                    646 ;	keyboard.h:12: if (value == 0x04) return 3;
      00012B BD 04 04         [24]  647 	cjne	r5,#0x04,00131$
      00012E 7B 03            [12]  648 	mov	r3,#0x03
      000130 80 02            [24]  649 	sjmp	00132$
      000132                        650 00131$:
                                    651 ;	keyboard.h:13: return 0;
      000132 7B 00            [12]  652 	mov	r3,#0x00
                                    653 ;	keyboard.h:43: if (x != 0) return 3*(log2_table(y)-1) + log2_table(x); 
      000134                        654 00132$:
      000134 EB               [12]  655 	mov	a,r3
      000135 2C               [12]  656 	add	a, r4
      000136 F5 82            [12]  657 	mov	dpl,a
      000138 22               [24]  658 	ret
      000139                        659 00109$:
                                    660 ;	keyboard.h:45: y <<= 1;
      000139 EF               [12]  661 	mov	a,r7
      00013A 2F               [12]  662 	add	a,r7
      00013B FF               [12]  663 	mov	r7,a
                                    664 ;	keyboard.h:25: for (byte_t i=0; i<=2; i++) {
      00013C 0E               [12]  665 	inc	r6
      00013D 02 00 B5         [24]  666 	ljmp	00134$
      000140                        667 00110$:
                                    668 ;	keyboard.h:49: KEYBOARD_PORT = 0xFF & ~y;
      000140 EF               [12]  669 	mov	a,r7
      000141 F4               [12]  670 	cpl	a
      000142 F5 90            [12]  671 	mov	_P1,a
                                    672 ;	keyboard.h:51: x = ~((KEYBOARD_PORT & 0xF0) >> 4) & 0x0F;
      000144 AE 90            [24]  673 	mov	r6,_P1
      000146 53 06 F0         [24]  674 	anl	ar6,#0xf0
      000149 E4               [12]  675 	clr	a
      00014A CE               [12]  676 	xch	a,r6
      00014B C4               [12]  677 	swap	a
      00014C 54 0F            [12]  678 	anl	a,#0x0f
      00014E 6E               [12]  679 	xrl	a,r6
      00014F CE               [12]  680 	xch	a,r6
      000150 54 0F            [12]  681 	anl	a,#0x0f
      000152 CE               [12]  682 	xch	a,r6
      000153 6E               [12]  683 	xrl	a,r6
      000154 CE               [12]  684 	xch	a,r6
      000155 30 E3 02         [24]  685 	jnb	acc.3,00277$
      000158 44 F0            [12]  686 	orl	a,#0xfffffff0
      00015A                        687 00277$:
      00015A EE               [12]  688 	mov	a,r6
      00015B F4               [12]  689 	cpl	a
      00015C FE               [12]  690 	mov	r6,a
      00015D 74 0F            [12]  691 	mov	a,#0x0f
      00015F 5E               [12]  692 	anl	a,r6
                                    693 ;	keyboard.h:53: if (x == 0) return 0xFF; // none key
      000160 FF               [12]  694 	mov	r7,a
      000161 70 04            [24]  695 	jnz	00112$
      000163 75 82 FF         [24]  696 	mov	dpl, #0xff
      000166 22               [24]  697 	ret
      000167                        698 00112$:
                                    699 ;	keyboard.h:55: if (x == 1) return 0x0A; // *
      000167 BF 01 04         [24]  700 	cjne	r7,#0x01,00114$
      00016A 75 82 0A         [24]  701 	mov	dpl, #0x0a
      00016D 22               [24]  702 	ret
      00016E                        703 00114$:
                                    704 ;	keyboard.h:56: if (x == 2) return 0x00; // 0
      00016E BF 02 04         [24]  705 	cjne	r7,#0x02,00116$
      000171 75 82 00         [24]  706 	mov	dpl, #0x00
      000174 22               [24]  707 	ret
      000175                        708 00116$:
                                    709 ;	keyboard.h:57: if (x == 4) return 0x0B; // #
      000175 BF 04 04         [24]  710 	cjne	r7,#0x04,00118$
      000178 75 82 0B         [24]  711 	mov	dpl, #0x0b
      00017B 22               [24]  712 	ret
      00017C                        713 00118$:
                                    714 ;	keyboard.h:59: return 0xFF;
      00017C 75 82 FF         [24]  715 	mov	dpl, #0xff
                                    716 ;	keyboard.h:60: }
      00017F 22               [24]  717 	ret
                                    718 ;------------------------------------------------------------
                                    719 ;Allocation info for local variables in function 'MAX7219_SPI_Write_Byte'
                                    720 ;------------------------------------------------------------
                                    721 ;data          Allocated to registers 
                                    722 ;i             Allocated to registers r7 
                                    723 ;------------------------------------------------------------
                                    724 ;	display.h:17: void MAX7219_SPI_Write_Byte(byte_t data) {
                                    725 ;	-----------------------------------------
                                    726 ;	 function MAX7219_SPI_Write_Byte
                                    727 ;	-----------------------------------------
      000180                        728 _MAX7219_SPI_Write_Byte:
                                    729 ;	display.h:22: for(i=0; i<8; i++) {
      000180 7F 00            [12]  730 	mov	r7,#0x00
      000182                        731 00102$:
                                    732 ;	display.h:23: MAX7219_CLK_PIN = 0;
                                    733 ;	assignBit
      000182 C2 B5            [12]  734 	clr	_P3_5
                                    735 ;	display.h:31: __endasm;
      000184 E5 82            [12]  736 	mov	a, dpl
      000186 33               [12]  737 	rlc	a
                                    738 ;	display.h:32: ASM_MOV_C_TO_PIN(MAX7219_DIN_PIN);
      000187 92 B3            [24]  739 	mov	_P3_3, c 
                                    740 ;	display.h:35: __endasm;
      000189 F5 82            [12]  741 	mov	dpl, a
                                    742 ;	display.h:37: MAX7219_CLK_PIN = 1;
                                    743 ;	assignBit
      00018B D2 B5            [12]  744 	setb	_P3_5
                                    745 ;	display.h:22: for(i=0; i<8; i++) {
      00018D 0F               [12]  746 	inc	r7
      00018E BF 08 00         [24]  747 	cjne	r7,#0x08,00113$
      000191                        748 00113$:
      000191 40 EF            [24]  749 	jc	00102$
                                    750 ;	display.h:39: }
      000193 22               [24]  751 	ret
                                    752 ;------------------------------------------------------------
                                    753 ;Allocation info for local variables in function 'MAX7219_Select'
                                    754 ;------------------------------------------------------------
                                    755 ;index         Allocated to registers 
                                    756 ;------------------------------------------------------------
                                    757 ;	display.h:41: void MAX7219_Select(byte_t index) {
                                    758 ;	-----------------------------------------
                                    759 ;	 function MAX7219_Select
                                    760 ;	-----------------------------------------
      000194                        761 _MAX7219_Select:
                                    762 ;	display.h:50: __endasm;
      000194 E5 82            [12]  763 	mov	a, dpl
      000196 13               [12]  764 	rrc	a
                                    765 ;	display.h:51: ASM_MOV_C_TO_PIN(MAX7219_CS0_PIN);
      000197 92 A5            [24]  766 	mov	_P2_5, c 
                                    767 ;	display.h:55: __endasm;
      000199 13               [12]  768 	rrc	a
                                    769 ;	display.h:56: ASM_MOV_C_TO_PIN(MAX7219_CS1_PIN);
      00019A 92 A6            [24]  770 	mov	_P2_6, c 
                                    771 ;	display.h:57: }
      00019C 22               [24]  772 	ret
                                    773 ;------------------------------------------------------------
                                    774 ;Allocation info for local variables in function 'MAX7219_Write'
                                    775 ;------------------------------------------------------------
                                    776 ;value         Allocated with name '_MAX7219_Write_PARM_2'
                                    777 ;reg           Allocated to registers r7 
                                    778 ;------------------------------------------------------------
                                    779 ;	display.h:59: void MAX7219_Write(byte_t reg, byte_t value) {
                                    780 ;	-----------------------------------------
                                    781 ;	 function MAX7219_Write
                                    782 ;	-----------------------------------------
      00019D                        783 _MAX7219_Write:
      00019D AF 82            [24]  784 	mov	r7, dpl
                                    785 ;	display.h:60: MAX7219_CS_PIN = 1; // enable CS
                                    786 ;	assignBit
      00019F D2 A7            [12]  787 	setb	_P2_7
                                    788 ;	display.h:61: MAX7219_SPI_Write_Byte(reg);   // send address
      0001A1 8F 82            [24]  789 	mov	dpl, r7
      0001A3 12 01 80         [24]  790 	lcall	_MAX7219_SPI_Write_Byte
                                    791 ;	display.h:62: MAX7219_SPI_Write_Byte(value); // send value
      0001A6 85 08 82         [24]  792 	mov	dpl, _MAX7219_Write_PARM_2
      0001A9 12 01 80         [24]  793 	lcall	_MAX7219_SPI_Write_Byte
                                    794 ;	display.h:63: MAX7219_CS_PIN = 0; // disable CS
                                    795 ;	assignBit
      0001AC C2 A7            [12]  796 	clr	_P2_7
                                    797 ;	display.h:64: }
      0001AE 22               [24]  798 	ret
                                    799 ;------------------------------------------------------------
                                    800 ;Allocation info for local variables in function 'Display_WriteFloat'
                                    801 ;------------------------------------------------------------
                                    802 ;value         Allocated with name '_Display_WriteFloat_PARM_2'
                                    803 ;index         Allocated to registers r7 
                                    804 ;digit         Allocated to registers r0 r1 
                                    805 ;number        Allocated with name '_Display_WriteFloat_number_10000_50'
                                    806 ;i             Allocated to registers r7 
                                    807 ;------------------------------------------------------------
                                    808 ;	display.h:74: void Display_WriteFloat(byte_t index, float value) {
                                    809 ;	-----------------------------------------
                                    810 ;	 function Display_WriteFloat
                                    811 ;	-----------------------------------------
      0001AF                        812 _Display_WriteFloat:
      0001AF AF 82            [24]  813 	mov	r7, dpl
                                    814 ;	display.h:76: long number = (long) (value * 100);
      0001B1 C0 07            [24]  815 	push	ar7
      0001B3 C0 09            [24]  816 	push	_Display_WriteFloat_PARM_2
      0001B5 C0 0A            [24]  817 	push	(_Display_WriteFloat_PARM_2 + 1)
      0001B7 C0 0B            [24]  818 	push	(_Display_WriteFloat_PARM_2 + 2)
      0001B9 C0 0C            [24]  819 	push	(_Display_WriteFloat_PARM_2 + 3)
      0001BB 90 00 00         [24]  820 	mov	dptr,#0x0000
      0001BE 75 F0 C8         [24]  821 	mov	b, #0xc8
      0001C1 74 42            [12]  822 	mov	a, #0x42
      0001C3 12 05 C1         [24]  823 	lcall	___fsmul
      0001C6 AB 82            [24]  824 	mov	r3, dpl
      0001C8 AC 83            [24]  825 	mov	r4, dph
      0001CA AD F0            [24]  826 	mov	r5, b
      0001CC FE               [12]  827 	mov	r6, a
      0001CD E5 81            [12]  828 	mov	a,sp
      0001CF 24 FC            [12]  829 	add	a,#0xfc
      0001D1 F5 81            [12]  830 	mov	sp,a
      0001D3 8B 82            [24]  831 	mov	dpl, r3
      0001D5 8C 83            [24]  832 	mov	dph, r4
      0001D7 8D F0            [24]  833 	mov	b, r5
      0001D9 EE               [12]  834 	mov	a, r6
      0001DA 12 07 2A         [24]  835 	lcall	___fs2slong
      0001DD 85 82 0D         [24]  836 	mov	_Display_WriteFloat_number_10000_50,dpl
      0001E0 85 83 0E         [24]  837 	mov	(_Display_WriteFloat_number_10000_50 + 1),dph
      0001E3 85 F0 0F         [24]  838 	mov	(_Display_WriteFloat_number_10000_50 + 2),b
      0001E6 F5 10            [12]  839 	mov	(_Display_WriteFloat_number_10000_50 + 3),a
      0001E8 D0 07            [24]  840 	pop	ar7
                                    841 ;	display.h:78: MAX7219_Select(index);
      0001EA 8F 82            [24]  842 	mov	dpl, r7
      0001EC 12 01 94         [24]  843 	lcall	_MAX7219_Select
                                    844 ;	display.h:80: for(byte_t i=6; i>0; i--) {
      0001EF 7F 06            [12]  845 	mov	r7,#0x06
      0001F1                        846 00103$:
      0001F1 EF               [12]  847 	mov	a,r7
      0001F2 60 6C            [24]  848 	jz	00105$
                                    849 ;	display.h:81: digit = number % 10;
      0001F4 75 2C 0A         [24]  850 	mov	__modslong_PARM_2,#0x0a
      0001F7 E4               [12]  851 	clr	a
      0001F8 F5 2D            [12]  852 	mov	(__modslong_PARM_2 + 1),a
      0001FA F5 2E            [12]  853 	mov	(__modslong_PARM_2 + 2),a
      0001FC F5 2F            [12]  854 	mov	(__modslong_PARM_2 + 3),a
      0001FE 85 0D 82         [24]  855 	mov	dpl, _Display_WriteFloat_number_10000_50
      000201 85 0E 83         [24]  856 	mov	dph, (_Display_WriteFloat_number_10000_50 + 1)
      000204 85 0F F0         [24]  857 	mov	b, (_Display_WriteFloat_number_10000_50 + 2)
      000207 E5 10            [12]  858 	mov	a, (_Display_WriteFloat_number_10000_50 + 3)
      000209 C0 07            [24]  859 	push	ar7
      00020B 12 07 F0         [24]  860 	lcall	__modslong
      00020E A8 82            [24]  861 	mov	r0, dpl
      000210 A9 83            [24]  862 	mov	r1, dph
      000212 D0 07            [24]  863 	pop	ar7
                                    864 ;	display.h:82: number = number / 10;
      000214 75 2C 0A         [24]  865 	mov	__divslong_PARM_2,#0x0a
      000217 E4               [12]  866 	clr	a
      000218 F5 2D            [12]  867 	mov	(__divslong_PARM_2 + 1),a
      00021A F5 2E            [12]  868 	mov	(__divslong_PARM_2 + 2),a
      00021C F5 2F            [12]  869 	mov	(__divslong_PARM_2 + 3),a
                                    870 ;	display.h:84: MAX7219_Write(i, i==4 ? digit | 0x80 : digit);
      00021E 85 0D 82         [24]  871 	mov	dpl, _Display_WriteFloat_number_10000_50
      000221 85 0E 83         [24]  872 	mov	dph, (_Display_WriteFloat_number_10000_50 + 1)
      000224 85 0F F0         [24]  873 	mov	b, (_Display_WriteFloat_number_10000_50 + 2)
      000227 E5 10            [12]  874 	mov	a, (_Display_WriteFloat_number_10000_50 + 3)
      000229 C0 07            [24]  875 	push	ar7
      00022B C0 01            [24]  876 	push	ar1
      00022D C0 00            [24]  877 	push	ar0
      00022F 12 08 3F         [24]  878 	lcall	__divslong
      000232 85 82 0D         [24]  879 	mov	_Display_WriteFloat_number_10000_50,dpl
      000235 85 83 0E         [24]  880 	mov	(_Display_WriteFloat_number_10000_50 + 1),dph
      000238 85 F0 0F         [24]  881 	mov	(_Display_WriteFloat_number_10000_50 + 2),b
      00023B F5 10            [12]  882 	mov	(_Display_WriteFloat_number_10000_50 + 3),a
      00023D D0 00            [24]  883 	pop	ar0
      00023F D0 01            [24]  884 	pop	ar1
      000241 D0 07            [24]  885 	pop	ar7
      000243 BF 04 08         [24]  886 	cjne	r7,#0x04,00109$
      000246 74 80            [12]  887 	mov	a,#0x80
      000248 48               [12]  888 	orl	a,r0
      000249 FD               [12]  889 	mov	r5,a
      00024A 89 06            [24]  890 	mov	ar6,r1
      00024C 80 04            [24]  891 	sjmp	00110$
      00024E                        892 00109$:
      00024E 88 05            [24]  893 	mov	ar5,r0
      000250 89 06            [24]  894 	mov	ar6,r1
      000252                        895 00110$:
      000252 8D 08            [24]  896 	mov	_MAX7219_Write_PARM_2,r5
      000254 8F 82            [24]  897 	mov	dpl, r7
      000256 C0 07            [24]  898 	push	ar7
      000258 12 01 9D         [24]  899 	lcall	_MAX7219_Write
      00025B D0 07            [24]  900 	pop	ar7
                                    901 ;	display.h:80: for(byte_t i=6; i>0; i--) {
      00025D 1F               [12]  902 	dec	r7
      00025E 80 91            [24]  903 	sjmp	00103$
      000260                        904 00105$:
                                    905 ;	display.h:86: }
      000260 22               [24]  906 	ret
                                    907 ;------------------------------------------------------------
                                    908 ;Allocation info for local variables in function 'Display_WriteDigit'
                                    909 ;------------------------------------------------------------
                                    910 ;value         Allocated with name '_Display_WriteDigit_PARM_2'
                                    911 ;index         Allocated to registers r7 
                                    912 ;------------------------------------------------------------
                                    913 ;	display.h:88: void Display_WriteDigit(byte_t index, byte_t value) {
                                    914 ;	-----------------------------------------
                                    915 ;	 function Display_WriteDigit
                                    916 ;	-----------------------------------------
      000261                        917 _Display_WriteDigit:
                                    918 ;	display.h:89: MAX7219_Select(index);
      000261 12 01 94         [24]  919 	lcall	_MAX7219_Select
                                    920 ;	display.h:93: MAX7219_Write(7, value/10);
      000264 AF 11            [24]  921 	mov	r7,_Display_WriteDigit_PARM_2
      000266 8F 06            [24]  922 	mov	ar6,r7
      000268 75 F0 0A         [24]  923 	mov	b,#0x0a
      00026B EE               [12]  924 	mov	a,r6
      00026C 84               [48]  925 	div	ab
      00026D F5 08            [12]  926 	mov	_MAX7219_Write_PARM_2, a
      00026F 75 82 07         [24]  927 	mov	dpl, #0x07
      000272 C0 07            [24]  928 	push	ar7
      000274 12 01 9D         [24]  929 	lcall	_MAX7219_Write
      000277 D0 07            [24]  930 	pop	ar7
                                    931 ;	display.h:94: MAX7219_Write(8, value%10);
      000279 75 F0 0A         [24]  932 	mov	b,#0x0a
      00027C EF               [12]  933 	mov	a,r7
      00027D 84               [48]  934 	div	ab
      00027E AF F0            [24]  935 	mov	r7,b
      000280 8F 08            [24]  936 	mov	_MAX7219_Write_PARM_2,r7
      000282 75 82 08         [24]  937 	mov	dpl, #0x08
                                    938 ;	display.h:95: }
      000285 02 01 9D         [24]  939 	ljmp	_MAX7219_Write
                                    940 ;------------------------------------------------------------
                                    941 ;Allocation info for local variables in function 'Delay_polling'
                                    942 ;------------------------------------------------------------
                                    943 ;ms            Allocated to registers r6 r7 
                                    944 ;------------------------------------------------------------
                                    945 ;	delay.h:6: void Delay_polling(unsigned int ms) {
                                    946 ;	-----------------------------------------
                                    947 ;	 function Delay_polling
                                    948 ;	-----------------------------------------
      000288                        949 _Delay_polling:
      000288 AE 82            [24]  950 	mov	r6, dpl
      00028A AF 83            [24]  951 	mov	r7, dph
                                    952 ;	delay.h:7: TMOD |= 0x01;
      00028C 43 89 01         [24]  953 	orl	_TMOD,#0x01
                                    954 ;	delay.h:9: while(ms--) {
      00028F                        955 00104$:
      00028F 8E 04            [24]  956 	mov	ar4,r6
      000291 8F 05            [24]  957 	mov	ar5,r7
      000293 1E               [12]  958 	dec	r6
      000294 BE FF 01         [24]  959 	cjne	r6,#0xff,00134$
      000297 1F               [12]  960 	dec	r7
      000298                        961 00134$:
      000298 EC               [12]  962 	mov	a,r4
      000299 4D               [12]  963 	orl	a,r5
      00029A 60 11            [24]  964 	jz	00107$
                                    965 ;	delay.h:10: TH0 = 0xFC;
      00029C 75 8C FC         [24]  966 	mov	_TH0,#0xfc
                                    967 ;	delay.h:11: TL0 = 0x17;
      00029F 75 8A 17         [24]  968 	mov	_TL0,#0x17
                                    969 ;	delay.h:12: TR0 = 1;
                                    970 ;	assignBit
      0002A2 D2 8C            [12]  971 	setb	_TR0
                                    972 ;	delay.h:13: while(!TF0);
      0002A4                        973 00101$:
                                    974 ;	delay.h:14: TF0 = 0;
                                    975 ;	assignBit
      0002A4 10 8D 02         [24]  976 	jbc	_TF0,00136$
      0002A7 80 FB            [24]  977 	sjmp	00101$
      0002A9                        978 00136$:
                                    979 ;	delay.h:15: TR0 = 0;
                                    980 ;	assignBit
      0002A9 C2 8C            [12]  981 	clr	_TR0
      0002AB 80 E2            [24]  982 	sjmp	00104$
      0002AD                        983 00107$:
                                    984 ;	delay.h:17: }
      0002AD 22               [24]  985 	ret
                                    986 ;------------------------------------------------------------
                                    987 ;Allocation info for local variables in function 'Delay_5us'
                                    988 ;------------------------------------------------------------
                                    989 ;i             Allocated to registers r7 
                                    990 ;------------------------------------------------------------
                                    991 ;	delay.h:19: void Delay_5us(void) {
                                    992 ;	-----------------------------------------
                                    993 ;	 function Delay_5us
                                    994 ;	-----------------------------------------
      0002AE                        995 _Delay_5us:
                                    996 ;	delay.h:21: for(i=0; i<5; i++);
      0002AE 7F 05            [12]  997 	mov	r7,#0x05
      0002B0                        998 00104$:
      0002B0 DF FE            [24]  999 	djnz	r7,00104$
                                   1000 ;	delay.h:22: }
      0002B2 22               [24] 1001 	ret
                                   1002 ;------------------------------------------------------------
                                   1003 ;Allocation info for local variables in function 'Serial_SendByte'
                                   1004 ;------------------------------------------------------------
                                   1005 ;value         Allocated to registers 
                                   1006 ;------------------------------------------------------------
                                   1007 ;	serial.h:21: void Serial_SendByte(byte_t value) {
                                   1008 ;	-----------------------------------------
                                   1009 ;	 function Serial_SendByte
                                   1010 ;	-----------------------------------------
      0002B3                       1011 _Serial_SendByte:
                                   1012 ;	serial.h:28: __endasm;
      0002B3 85 82 99         [24] 1013 	mov	_SBUF, dpl
      0002B6                       1014 1$:
      0002B6 30 99 FD         [24] 1015 	jnb _TI, 1$
      0002B9 C2 99            [12] 1016 	clr	_TI
                                   1017 ;	serial.h:29: }
      0002BB 22               [24] 1018 	ret
                                   1019 ;------------------------------------------------------------
                                   1020 ;Allocation info for local variables in function 'Serial_SendFloat'
                                   1021 ;------------------------------------------------------------
                                   1022 ;value         Allocated to registers 
                                   1023 ;------------------------------------------------------------
                                   1024 ;	serial.h:31: void Serial_SendFloat(float value) {
                                   1025 ;	-----------------------------------------
                                   1026 ;	 function Serial_SendFloat
                                   1027 ;	-----------------------------------------
      0002BC                       1028 _Serial_SendFloat:
                                   1029 ;	serial.h:50: __endasm;
      0002BC 85 82 99         [24] 1030 	mov	_SBUF, dpl
      0002BF                       1031 1$:
      0002BF 30 99 FD         [24] 1032 	jnb _TI, 1$
      0002C2 C2 99            [12] 1033 	clr	_TI
      0002C4 85 83 99         [24] 1034 	mov	_SBUF, dph
      0002C7                       1035 2$:
      0002C7 30 99 FD         [24] 1036 	jnb _TI, 2$
      0002CA C2 99            [12] 1037 	clr	_TI
      0002CC 85 F0 99         [24] 1038 	mov	_SBUF, b
      0002CF                       1039 3$:
      0002CF 30 99 FD         [24] 1040 	jnb _TI, 3$
      0002D2 C2 99            [12] 1041 	clr	_TI
      0002D4 F5 99            [12] 1042 	mov	_SBUF, a
      0002D6                       1043 4$:
      0002D6 30 99 FD         [24] 1044 	jnb _TI, 4$
      0002D9 C2 99            [12] 1045 	clr	_TI
                                   1046 ;	serial.h:69: }
      0002DB 22               [24] 1047 	ret
                                   1048 ;------------------------------------------------------------
                                   1049 ;Allocation info for local variables in function 'Serial_ReadByte'
                                   1050 ;------------------------------------------------------------
                                   1051 ;	serial.h:73: byte_t Serial_ReadByte(void) {
                                   1052 ;	-----------------------------------------
                                   1053 ;	 function Serial_ReadByte
                                   1054 ;	-----------------------------------------
      0002DC                       1055 _Serial_ReadByte:
                                   1056 ;	serial.h:76: __asm__("1$: jnb _RI, 1$");
      0002DC                       1057 1$:
      0002DC 30 98 FD         [24] 1058 	jnb _RI, 1$
                                   1059 ;	serial.h:77: __asm__("clr _RI");
      0002DF C2 98            [12] 1060 	clr	_RI
                                   1061 ;	serial.h:78: return SBUF;
      0002E1 85 99 82         [24] 1062 	mov	dpl, _SBUF
                                   1063 ;	serial.h:79: }
      0002E4 22               [24] 1064 	ret
                                   1065 ;------------------------------------------------------------
                                   1066 ;Allocation info for local variables in function 'Serial_ReadFloat'
                                   1067 ;------------------------------------------------------------
                                   1068 ;value         Allocated with name '_Serial_ReadFloat_value_10000_72'
                                   1069 ;p             Allocated to registers 
                                   1070 ;------------------------------------------------------------
                                   1071 ;	serial.h:81: float Serial_ReadFloat(void) {
                                   1072 ;	-----------------------------------------
                                   1073 ;	 function Serial_ReadFloat
                                   1074 ;	-----------------------------------------
      0002E5                       1075 _Serial_ReadFloat:
                                   1076 ;	serial.h:83: byte_t *p = (byte_t*)&value;
                                   1077 ;	serial.h:85: __asm__("1$: jnb _RI, 1$");
      0002E5                       1078 1$:
      0002E5 30 98 FD         [24] 1079 	jnb _RI, 1$
                                   1080 ;	serial.h:86: __asm__("clr _RI");
      0002E8 C2 98            [12] 1081 	clr	_RI
                                   1082 ;	serial.h:87: p[0] = SBUF;
      0002EA 85 99 2C         [24] 1083 	mov	_Serial_ReadFloat_value_10000_72,_SBUF
                                   1084 ;	serial.h:89: __asm__("2$: jnb _RI, 2$");
      0002ED                       1085 2$:
      0002ED 30 98 FD         [24] 1086 	jnb _RI, 2$
                                   1087 ;	serial.h:90: __asm__("clr _RI");
      0002F0 C2 98            [12] 1088 	clr	_RI
                                   1089 ;	serial.h:91: p[1] = SBUF;
      0002F2 78 2D            [12] 1090 	mov	r0,#(_Serial_ReadFloat_value_10000_72 + 0x0001)
      0002F4 A6 99            [24] 1091 	mov	@r0,_SBUF
                                   1092 ;	serial.h:93: __asm__("3$: jnb _RI, 3$");
      0002F6                       1093 3$:
      0002F6 30 98 FD         [24] 1094 	jnb _RI, 3$
                                   1095 ;	serial.h:94: __asm__("clr _RI");
      0002F9 C2 98            [12] 1096 	clr	_RI
                                   1097 ;	serial.h:95: p[2] = SBUF;
      0002FB 78 2E            [12] 1098 	mov	r0,#(_Serial_ReadFloat_value_10000_72 + 0x0002)
      0002FD A6 99            [24] 1099 	mov	@r0,_SBUF
                                   1100 ;	serial.h:97: __asm__("4$: jnb _RI, 4$");
      0002FF                       1101 4$:
      0002FF 30 98 FD         [24] 1102 	jnb _RI, 4$
                                   1103 ;	serial.h:98: __asm__("clr _RI");
      000302 C2 98            [12] 1104 	clr	_RI
                                   1105 ;	serial.h:99: p[3] = SBUF;
      000304 78 2F            [12] 1106 	mov	r0,#(_Serial_ReadFloat_value_10000_72 + 0x0003)
      000306 A6 99            [24] 1107 	mov	@r0,_SBUF
                                   1108 ;	serial.h:101: return value;
      000308 85 2C 82         [24] 1109 	mov	dpl, _Serial_ReadFloat_value_10000_72
      00030B 85 2D 83         [24] 1110 	mov	dph, (_Serial_ReadFloat_value_10000_72 + 1)
      00030E 85 2E F0         [24] 1111 	mov	b, (_Serial_ReadFloat_value_10000_72 + 2)
      000311 E5 2F            [12] 1112 	mov	a, (_Serial_ReadFloat_value_10000_72 + 3)
                                   1113 ;	serial.h:102: }
      000313 22               [24] 1114 	ret
                                   1115 ;------------------------------------------------------------
                                   1116 ;Allocation info for local variables in function 'main'
                                   1117 ;------------------------------------------------------------
                                   1118 ;key           Allocated to registers r7 
                                   1119 ;t_go0         Allocated to registers 
                                   1120 ;counter       Allocated to registers 
                                   1121 ;__300000007   Allocated to registers 
                                   1122 ;th1           Allocated to registers 
                                   1123 ;__300000009   Allocated to registers 
                                   1124 ;n_SCON        Allocated to registers 
                                   1125 ;a             Allocated to registers r4 r5 r6 r7 
                                   1126 ;b             Allocated to registers r0 r1 r2 r3 
                                   1127 ;_a            Allocated to registers 
                                   1128 ;_b            Allocated to registers 
                                   1129 ;__400010018   Allocated to registers 
                                   1130 ;__400010014   Allocated to registers 
                                   1131 ;delta_angle   Allocated to registers 
                                   1132 ;__400010015   Allocated to registers 
                                   1133 ;__400010016   Allocated to registers 
                                   1134 ;vx            Allocated to registers 
                                   1135 ;vy            Allocated to registers 
                                   1136 ;__400010019   Allocated to registers 
                                   1137 ;value         Allocated to registers 
                                   1138 ;------------------------------------------------------------
                                   1139 ;	pgc.c:79: int main(void) {    
                                   1140 ;	-----------------------------------------
                                   1141 ;	 function main
                                   1142 ;	-----------------------------------------
      000314                       1143 _main:
                                   1144 ;	serial.h:14: TMOD |= 0x20;
      000314 43 89 20         [24] 1145 	orl	_TMOD,#0x20
                                   1146 ;	serial.h:15: TH1 = th1;
      000317 75 8D FD         [24] 1147 	mov	_TH1,#0xfd
                                   1148 ;	serial.h:16: TL1 = th1;
      00031A 75 8B FD         [24] 1149 	mov	_TL1,#0xfd
                                   1150 ;	serial.h:17: TR1 = 1;
                                   1151 ;	assignBit
      00031D D2 8E            [12] 1152 	setb	_TR1
                                   1153 ;	serial.h:9: SCON = n_SCON;
      00031F 75 98 50         [24] 1154 	mov	_SCON,#0x50
                                   1155 ;	pgc.c:89: Serial_SendByte(0x09); // request gravity y
      000322 75 82 09         [24] 1156 	mov	dpl, #0x09
      000325 12 02 B3         [24] 1157 	lcall	_Serial_SendByte
                                   1158 ;	pgc.c:90: gravity_y = Serial_ReadFloat(); // wait answer and save
      000328 12 02 E5         [24] 1159 	lcall	_Serial_ReadFloat
      00032B AC 82            [24] 1160 	mov	r4, dpl
      00032D AD 83            [24] 1161 	mov	r5, dph
      00032F AE F0            [24] 1162 	mov	r6, b
      000331 FF               [12] 1163 	mov	r7, a
      000332 90 00 25         [24] 1164 	mov	dptr,#_gravity_y
      000335 EC               [12] 1165 	mov	a,r4
      000336 F0               [24] 1166 	movx	@dptr,a
      000337 ED               [12] 1167 	mov	a,r5
      000338 A3               [24] 1168 	inc	dptr
      000339 F0               [24] 1169 	movx	@dptr,a
      00033A EE               [12] 1170 	mov	a,r6
      00033B A3               [24] 1171 	inc	dptr
      00033C F0               [24] 1172 	movx	@dptr,a
      00033D EF               [12] 1173 	mov	a,r7
      00033E A3               [24] 1174 	inc	dptr
      00033F F0               [24] 1175 	movx	@dptr,a
                                   1176 ;	pgc.c:94: TMOD &= 0xF0;
      000340 53 89 F0         [24] 1177 	anl	_TMOD,#0xf0
                                   1178 ;	pgc.c:95: TMOD |= 0x01;
      000343 43 89 01         [24] 1179 	orl	_TMOD,#0x01
                                   1180 ;	pgc.c:97: TH0 = 0x00;
      000346 75 8C 00         [24] 1181 	mov	_TH0,#0x00
                                   1182 ;	pgc.c:98: TL0 = 0x00;
      000349 75 8A 00         [24] 1183 	mov	_TL0,#0x00
                                   1184 ;	pgc.c:100: ET0 = 0; // ignore for now
                                   1185 ;	assignBit
      00034C C2 A9            [12] 1186 	clr	_ET0
                                   1187 ;	pgc.c:102: EA = 1;
                                   1188 ;	assignBit
      00034E D2 AF            [12] 1189 	setb	_EA
                                   1190 ;	pgc.c:104: TR0 = 1;
                                   1191 ;	assignBit
      000350 D2 8C            [12] 1192 	setb	_TR0
                                   1193 ;	pgc.c:109: for (key=1; key<=3; key++) {
      000352 7F 01            [12] 1194 	mov	r7,#0x01
      000354                       1195 00153$:
                                   1196 ;	pgc.c:110: MAX7219_Select(key);
      000354 8F 82            [24] 1197 	mov	dpl, r7
      000356 C0 07            [24] 1198 	push	ar7
      000358 12 01 94         [24] 1199 	lcall	_MAX7219_Select
                                   1200 ;	display.h:67: MAX7219_Write(MAX7219_REG_SHUTDOWN, 0x01);  // wake up
      00035B 75 08 01         [24] 1201 	mov	_MAX7219_Write_PARM_2,#0x01
      00035E 75 82 0C         [24] 1202 	mov	dpl, #0x0c
      000361 12 01 9D         [24] 1203 	lcall	_MAX7219_Write
                                   1204 ;	display.h:68: MAX7219_Write(MAX7219_REG_TEST, 0x00);      // normal mode
      000364 75 08 00         [24] 1205 	mov	_MAX7219_Write_PARM_2,#0x00
      000367 75 82 0F         [24] 1206 	mov	dpl, #0x0f
      00036A 12 01 9D         [24] 1207 	lcall	_MAX7219_Write
                                   1208 ;	display.h:69: MAX7219_Write(MAX7219_REG_DECODE, 0xFF);    // decode mode
      00036D 75 08 FF         [24] 1209 	mov	_MAX7219_Write_PARM_2,#0xff
      000370 75 82 09         [24] 1210 	mov	dpl, #0x09
      000373 12 01 9D         [24] 1211 	lcall	_MAX7219_Write
                                   1212 ;	display.h:70: MAX7219_Write(MAX7219_REG_SCANLIMIT, 0x07); // amount digits
      000376 75 08 07         [24] 1213 	mov	_MAX7219_Write_PARM_2,#0x07
      000379 75 82 0B         [24] 1214 	mov	dpl, #0x0b
      00037C 12 01 9D         [24] 1215 	lcall	_MAX7219_Write
                                   1216 ;	display.h:71: MAX7219_Write(MAX7219_REG_INTENSITY, 0x0F); // brightness
      00037F 75 08 0F         [24] 1217 	mov	_MAX7219_Write_PARM_2,#0x0f
      000382 75 82 0A         [24] 1218 	mov	dpl, #0x0a
      000385 12 01 9D         [24] 1219 	lcall	_MAX7219_Write
      000388 D0 07            [24] 1220 	pop	ar7
                                   1221 ;	pgc.c:109: for (key=1; key<=3; key++) {
      00038A 0F               [12] 1222 	inc	r7
      00038B EF               [12] 1223 	mov	a,r7
      00038C 24 FC            [12] 1224 	add	a,#0xff - 0x03
      00038E 50 C4            [24] 1225 	jnc	00153$
                                   1226 ;	pgc.c:115: PROG = 10;
      000390 75 1A 0A         [24] 1227 	mov	_PROG,#0x0a
                                   1228 ;	pgc.c:116: VERB = 40;
      000393 75 1B 28         [24] 1229 	mov	_VERB,#0x28
                                   1230 ;	pgc.c:117: NOUN = 66;
      000396 75 1C 42         [24] 1231 	mov	_NOUN,#0x42
                                   1232 ;	pgc.c:118: float a=0.0f;
      000399 7C 00            [12] 1233 	mov	r4,#0x00
      00039B 7D 00            [12] 1234 	mov	r5,#0x00
      00039D 7E 00            [12] 1235 	mov	r6,#0x00
      00039F 7F 00            [12] 1236 	mov	r7,#0x00
                                   1237 ;	pgc.c:119: float b=0.0f;
      0003A1 78 00            [12] 1238 	mov	r0,#0x00
      0003A3 79 00            [12] 1239 	mov	r1,#0x00
      0003A5 7A 00            [12] 1240 	mov	r2,#0x00
      0003A7 7B 00            [12] 1241 	mov	r3,#0x00
                                   1242 ;	pgc.c:120: while (1) { // ALGUM PROBLEMA AQ!
      0003A9                       1243 00103$:
                                   1244 ;	pgc.c:121: PROG++;
      0003A9 05 1A            [12] 1245 	inc	_PROG
                                   1246 ;	pgc.c:122: VERB++;
      0003AB 05 1B            [12] 1247 	inc	_VERB
                                   1248 ;	pgc.c:123: NOUN++;
      0003AD 05 1C            [12] 1249 	inc	_NOUN
                                   1250 ;	pgc.c:124: a+=0.1f;
      0003AF C0 03            [24] 1251 	push	ar3
      0003B1 C0 02            [24] 1252 	push	ar2
      0003B3 C0 01            [24] 1253 	push	ar1
      0003B5 C0 00            [24] 1254 	push	ar0
      0003B7 74 CD            [12] 1255 	mov	a,#0xcd
      0003B9 C0 E0            [24] 1256 	push	acc
      0003BB 14               [12] 1257 	dec	a
      0003BC C0 E0            [24] 1258 	push	acc
      0003BE C0 E0            [24] 1259 	push	acc
      0003C0 74 3D            [12] 1260 	mov	a,#0x3d
      0003C2 C0 E0            [24] 1261 	push	acc
                                   1262 ;	pgc.c:125: b+=0.5f;
      0003C4 8C 82            [24] 1263 	mov	dpl, r4
      0003C6 8D 83            [24] 1264 	mov	dph, r5
      0003C8 8E F0            [24] 1265 	mov	b, r6
      0003CA EF               [12] 1266 	mov	a, r7
      0003CB 12 07 97         [24] 1267 	lcall	___fsadd
      0003CE AC 82            [24] 1268 	mov	r4, dpl
      0003D0 AD 83            [24] 1269 	mov	r5, dph
      0003D2 AE F0            [24] 1270 	mov	r6, b
      0003D4 FF               [12] 1271 	mov	r7, a
      0003D5 E5 81            [12] 1272 	mov	a,sp
      0003D7 24 FC            [12] 1273 	add	a,#0xfc
      0003D9 F5 81            [12] 1274 	mov	sp,a
      0003DB D0 00            [24] 1275 	pop	ar0
      0003DD D0 01            [24] 1276 	pop	ar1
      0003DF D0 02            [24] 1277 	pop	ar2
      0003E1 D0 03            [24] 1278 	pop	ar3
      0003E3 C0 07            [24] 1279 	push	ar7
      0003E5 C0 06            [24] 1280 	push	ar6
      0003E7 C0 05            [24] 1281 	push	ar5
      0003E9 C0 04            [24] 1282 	push	ar4
      0003EB E4               [12] 1283 	clr	a
      0003EC C0 E0            [24] 1284 	push	acc
      0003EE C0 E0            [24] 1285 	push	acc
      0003F0 C0 E0            [24] 1286 	push	acc
      0003F2 74 3F            [12] 1287 	mov	a,#0x3f
      0003F4 C0 E0            [24] 1288 	push	acc
                                   1289 ;	pgc.c:127: Display_WriteDigit(1, PROG);
      0003F6 88 82            [24] 1290 	mov	dpl, r0
      0003F8 89 83            [24] 1291 	mov	dph, r1
      0003FA 8A F0            [24] 1292 	mov	b, r2
      0003FC EB               [12] 1293 	mov	a, r3
      0003FD 12 07 97         [24] 1294 	lcall	___fsadd
      000400 A8 82            [24] 1295 	mov	r0, dpl
      000402 A9 83            [24] 1296 	mov	r1, dph
      000404 AA F0            [24] 1297 	mov	r2, b
      000406 FB               [12] 1298 	mov	r3, a
      000407 E5 81            [12] 1299 	mov	a,sp
      000409 24 FC            [12] 1300 	add	a,#0xfc
      00040B F5 81            [12] 1301 	mov	sp,a
      00040D D0 04            [24] 1302 	pop	ar4
      00040F D0 05            [24] 1303 	pop	ar5
      000411 D0 06            [24] 1304 	pop	ar6
      000413 D0 07            [24] 1305 	pop	ar7
      000415 85 1A 11         [24] 1306 	mov	_Display_WriteDigit_PARM_2,_PROG
      000418 75 82 01         [24] 1307 	mov	dpl, #0x01
      00041B C0 07            [24] 1308 	push	ar7
      00041D C0 06            [24] 1309 	push	ar6
      00041F C0 05            [24] 1310 	push	ar5
      000421 C0 04            [24] 1311 	push	ar4
      000423 C0 03            [24] 1312 	push	ar3
      000425 C0 02            [24] 1313 	push	ar2
      000427 C0 01            [24] 1314 	push	ar1
      000429 C0 00            [24] 1315 	push	ar0
      00042B 12 02 61         [24] 1316 	lcall	_Display_WriteDigit
      00042E D0 00            [24] 1317 	pop	ar0
      000430 D0 01            [24] 1318 	pop	ar1
      000432 D0 02            [24] 1319 	pop	ar2
      000434 D0 03            [24] 1320 	pop	ar3
      000436 D0 04            [24] 1321 	pop	ar4
      000438 D0 05            [24] 1322 	pop	ar5
      00043A D0 06            [24] 1323 	pop	ar6
      00043C D0 07            [24] 1324 	pop	ar7
                                   1325 ;	pgc.c:128: Display_WriteDigit(2, VERB);
      00043E 85 1B 11         [24] 1326 	mov	_Display_WriteDigit_PARM_2,_VERB
      000441 75 82 02         [24] 1327 	mov	dpl, #0x02
      000444 C0 07            [24] 1328 	push	ar7
      000446 C0 06            [24] 1329 	push	ar6
      000448 C0 05            [24] 1330 	push	ar5
      00044A C0 04            [24] 1331 	push	ar4
      00044C C0 03            [24] 1332 	push	ar3
      00044E C0 02            [24] 1333 	push	ar2
      000450 C0 01            [24] 1334 	push	ar1
      000452 C0 00            [24] 1335 	push	ar0
      000454 12 02 61         [24] 1336 	lcall	_Display_WriteDigit
      000457 D0 00            [24] 1337 	pop	ar0
      000459 D0 01            [24] 1338 	pop	ar1
      00045B D0 02            [24] 1339 	pop	ar2
      00045D D0 03            [24] 1340 	pop	ar3
      00045F D0 04            [24] 1341 	pop	ar4
      000461 D0 05            [24] 1342 	pop	ar5
      000463 D0 06            [24] 1343 	pop	ar6
      000465 D0 07            [24] 1344 	pop	ar7
                                   1345 ;	pgc.c:129: Display_WriteDigit(3, NOUN);
      000467 85 1C 11         [24] 1346 	mov	_Display_WriteDigit_PARM_2,_NOUN
      00046A 75 82 03         [24] 1347 	mov	dpl, #0x03
      00046D C0 07            [24] 1348 	push	ar7
      00046F C0 06            [24] 1349 	push	ar6
      000471 C0 05            [24] 1350 	push	ar5
      000473 C0 04            [24] 1351 	push	ar4
      000475 C0 03            [24] 1352 	push	ar3
      000477 C0 02            [24] 1353 	push	ar2
      000479 C0 01            [24] 1354 	push	ar1
      00047B C0 00            [24] 1355 	push	ar0
      00047D 12 02 61         [24] 1356 	lcall	_Display_WriteDigit
      000480 D0 00            [24] 1357 	pop	ar0
      000482 D0 01            [24] 1358 	pop	ar1
      000484 D0 02            [24] 1359 	pop	ar2
      000486 D0 03            [24] 1360 	pop	ar3
      000488 D0 04            [24] 1361 	pop	ar4
      00048A D0 05            [24] 1362 	pop	ar5
      00048C D0 06            [24] 1363 	pop	ar6
      00048E D0 07            [24] 1364 	pop	ar7
                                   1365 ;	pgc.c:131: Display_WriteFloat(1, a);
      000490 8C 09            [24] 1366 	mov	_Display_WriteFloat_PARM_2,r4
      000492 8D 0A            [24] 1367 	mov	(_Display_WriteFloat_PARM_2 + 1),r5
      000494 8E 0B            [24] 1368 	mov	(_Display_WriteFloat_PARM_2 + 2),r6
      000496 8F 0C            [24] 1369 	mov	(_Display_WriteFloat_PARM_2 + 3),r7
      000498 75 82 01         [24] 1370 	mov	dpl, #0x01
      00049B C0 07            [24] 1371 	push	ar7
      00049D C0 06            [24] 1372 	push	ar6
      00049F C0 05            [24] 1373 	push	ar5
      0004A1 C0 04            [24] 1374 	push	ar4
      0004A3 C0 03            [24] 1375 	push	ar3
      0004A5 C0 02            [24] 1376 	push	ar2
      0004A7 C0 01            [24] 1377 	push	ar1
      0004A9 C0 00            [24] 1378 	push	ar0
      0004AB 12 01 AF         [24] 1379 	lcall	_Display_WriteFloat
      0004AE D0 00            [24] 1380 	pop	ar0
      0004B0 D0 01            [24] 1381 	pop	ar1
      0004B2 D0 02            [24] 1382 	pop	ar2
      0004B4 D0 03            [24] 1383 	pop	ar3
      0004B6 D0 04            [24] 1384 	pop	ar4
      0004B8 D0 05            [24] 1385 	pop	ar5
      0004BA D0 06            [24] 1386 	pop	ar6
      0004BC D0 07            [24] 1387 	pop	ar7
                                   1388 ;	pgc.c:132: Display_WriteFloat(2, b);
      0004BE 88 09            [24] 1389 	mov	_Display_WriteFloat_PARM_2,r0
      0004C0 89 0A            [24] 1390 	mov	(_Display_WriteFloat_PARM_2 + 1),r1
      0004C2 8A 0B            [24] 1391 	mov	(_Display_WriteFloat_PARM_2 + 2),r2
      0004C4 8B 0C            [24] 1392 	mov	(_Display_WriteFloat_PARM_2 + 3),r3
      0004C6 75 82 02         [24] 1393 	mov	dpl, #0x02
      0004C9 C0 07            [24] 1394 	push	ar7
      0004CB C0 06            [24] 1395 	push	ar6
      0004CD C0 05            [24] 1396 	push	ar5
      0004CF C0 04            [24] 1397 	push	ar4
      0004D1 C0 03            [24] 1398 	push	ar3
      0004D3 C0 02            [24] 1399 	push	ar2
      0004D5 C0 01            [24] 1400 	push	ar1
      0004D7 C0 00            [24] 1401 	push	ar0
      0004D9 12 01 AF         [24] 1402 	lcall	_Display_WriteFloat
      0004DC D0 00            [24] 1403 	pop	ar0
      0004DE D0 01            [24] 1404 	pop	ar1
      0004E0 D0 02            [24] 1405 	pop	ar2
      0004E2 D0 03            [24] 1406 	pop	ar3
      0004E4 D0 04            [24] 1407 	pop	ar4
      0004E6 D0 05            [24] 1408 	pop	ar5
      0004E8 D0 06            [24] 1409 	pop	ar6
      0004EA D0 07            [24] 1410 	pop	ar7
                                   1411 ;	pgc.c:133: Display_WriteFloat(3, a+b);
      0004EC C0 07            [24] 1412 	push	ar7
      0004EE C0 06            [24] 1413 	push	ar6
      0004F0 C0 05            [24] 1414 	push	ar5
      0004F2 C0 04            [24] 1415 	push	ar4
      0004F4 C0 03            [24] 1416 	push	ar3
      0004F6 C0 02            [24] 1417 	push	ar2
      0004F8 C0 01            [24] 1418 	push	ar1
      0004FA C0 00            [24] 1419 	push	ar0
      0004FC C0 00            [24] 1420 	push	ar0
      0004FE C0 01            [24] 1421 	push	ar1
      000500 C0 02            [24] 1422 	push	ar2
      000502 C0 03            [24] 1423 	push	ar3
      000504 8C 82            [24] 1424 	mov	dpl, r4
      000506 8D 83            [24] 1425 	mov	dph, r5
      000508 8E F0            [24] 1426 	mov	b, r6
      00050A EF               [12] 1427 	mov	a, r7
      00050B 12 07 97         [24] 1428 	lcall	___fsadd
      00050E 85 82 09         [24] 1429 	mov	_Display_WriteFloat_PARM_2,dpl
      000511 85 83 0A         [24] 1430 	mov	(_Display_WriteFloat_PARM_2 + 1),dph
      000514 85 F0 0B         [24] 1431 	mov	(_Display_WriteFloat_PARM_2 + 2),b
      000517 F5 0C            [12] 1432 	mov	(_Display_WriteFloat_PARM_2 + 3),a
      000519 E5 81            [12] 1433 	mov	a,sp
      00051B 24 FC            [12] 1434 	add	a,#0xfc
      00051D F5 81            [12] 1435 	mov	sp,a
      00051F 75 82 03         [24] 1436 	mov	dpl, #0x03
      000522 12 01 AF         [24] 1437 	lcall	_Display_WriteFloat
                                   1438 ;	pgc.c:135: Delay_polling(300);
      000525 90 01 2C         [24] 1439 	mov	dptr,#0x012c
      000528 12 02 88         [24] 1440 	lcall	_Delay_polling
      00052B D0 00            [24] 1441 	pop	ar0
      00052D D0 01            [24] 1442 	pop	ar1
      00052F D0 02            [24] 1443 	pop	ar2
      000531 D0 03            [24] 1444 	pop	ar3
      000533 D0 04            [24] 1445 	pop	ar4
      000535 D0 05            [24] 1446 	pop	ar5
      000537 D0 06            [24] 1447 	pop	ar6
      000539 D0 07            [24] 1448 	pop	ar7
                                   1449 ;	pgc.c:232: dsky_buffer = key; // DEBUG
                                   1450 ;	pgc.c:235: }
      00053B 02 03 A9         [24] 1451 	ljmp	00103$
                                   1452 	.area CSEG    (CODE)
                                   1453 	.area CONST   (CODE)
                                   1454 	.area XINIT   (CODE)
                                   1455 	.area CABS    (ABS,CODE)
