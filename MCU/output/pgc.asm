;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (Linux)
;--------------------------------------------------------
	.module pgc
	
	.optsdcc -mmcs51 --model-small
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _Serial_ReadFloat
	.globl _Serial_ReadByte
	.globl _Serial_SendFloat
	.globl _Serial_SendByte
	.globl _MAX7219_WriteByte
	.globl _MAX7219_WriteFloat
	.globl _MAX7219_Write
	.globl _MAX7219_SPI_Write_Byte
	.globl _Keyboard_Read
	.globl _fabsf
	.globl _sqrtf
	.globl _atan2f
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
	.globl _P
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ET2
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _T2EX
	.globl _T2
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _A
	.globl _ACC
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _dsky_key_pressed
	.globl _dsky_state
	.globl _dsky_buffer
	.globl _t_go
	.globl _a0_y
	.globl _a0_x
	.globl _NOUN
	.globl _VERB
	.globl _PROG
	.globl _gimbal
	.globl _throttle
	.globl _gravity_y
	.globl _ut
	.globl _av_accel_ang
	.globl _av_accel
	.globl _ang_vel
	.globl _angle
	.globl _vel_y
	.globl _vel_x
	.globl _pos_y
	.globl _pos_x
	.globl _MAX7219_WriteByte_PARM_2
	.globl _MAX7219_WriteFloat_PARM_2
	.globl _MAX7219_Write_PARM_2
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_ACC	=	0x00e0
_A	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_T2	=	0x0090
_T2EX	=	0x0091
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_ET2	=	0x00ad
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_P	=	0x00d0
_FL	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_MAX7219_Write_PARM_2:
	.ds 1
_MAX7219_WriteFloat_PARM_2:
	.ds 4
_MAX7219_WriteFloat_number_10000_48:
	.ds 4
_MAX7219_WriteByte_PARM_2:
	.ds 1
_pos_x::
	.ds 4
_pos_y::
	.ds 4
_vel_x::
	.ds 4
_vel_y::
	.ds 4
_angle::
	.ds 4
_ang_vel::
	.ds 4
_av_accel::
	.ds 4
_av_accel_ang::
	.ds 4
_ut::
	.ds 4
_gravity_y::
	.ds 4
_throttle::
	.ds 4
_gimbal::
	.ds 4
_PROG::
	.ds 1
_VERB::
	.ds 1
_NOUN::
	.ds 1
_a0_x::
	.ds 4
_a0_y::
	.ds 4
_t_go::
	.ds 4
_dsky_buffer::
	.ds 1
_dsky_state::
	.ds 1
_dsky_key_pressed::
	.ds 1
_main__a_50000_119:
	.ds 4
_main__b_50000_119:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_Serial_ReadFloat_value_10000_72:
	.ds 4
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
; restartable atomic support routines
	.ds	5
sdcc_atomic_exchange_rollback_start::
	nop
	nop
sdcc_atomic_exchange_pdata_impl:
	movx	a, @r0
	mov	r3, a
	mov	a, r2
	movx	@r0, a
	sjmp	sdcc_atomic_exchange_exit
	nop
	nop
sdcc_atomic_exchange_xdata_impl:
	movx	a, @dptr
	mov	r3, a
	mov	a, r2
	movx	@dptr, a
	sjmp	sdcc_atomic_exchange_exit
sdcc_atomic_compare_exchange_idata_impl:
	mov	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	mov	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_pdata_impl:
	movx	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_xdata_impl:
	movx	a, @dptr
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@dptr, a
	ret
sdcc_atomic_exchange_rollback_end::

sdcc_atomic_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_exchange_pdata_impl
sdcc_atomic_exchange_idata_impl:
	mov	a, r2
	xch	a, @r0
	mov	dpl, a
	ret
sdcc_atomic_exchange_exit:
	mov	dpl, r3
	ret
sdcc_atomic_compare_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
	sjmp	sdcc_atomic_compare_exchange_idata_impl
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	pgc.c:28: byte_t dsky_buffer = 0x00;
	mov	_dsky_buffer,#0x00
;	pgc.c:29: byte_t dsky_state = 0;
	mov	_dsky_state,#0x00
;	pgc.c:30: bool dsky_key_pressed = false;
	mov	_dsky_key_pressed,#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Keyboard_Read'
;------------------------------------------------------------
;x             Allocated to registers r7 
;y             Allocated to registers r7 
;i             Allocated to registers r6 
;__400000004   Allocated to registers r3 
;__400000001   Allocated to registers r4 
;__400000002   Allocated to registers 
;value         Allocated to registers 
;__400000005   Allocated to registers 
;value         Allocated to registers 
;------------------------------------------------------------
;	keyboard.h:16: byte_t Keyboard_Read(void) {
;	-----------------------------------------
;	 function Keyboard_Read
;	-----------------------------------------
_Keyboard_Read:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	keyboard.h:23: byte_t x, y = 0x01;
	mov	r7,#0x01
;	keyboard.h:25: for (byte_t i=0; i<=2; i++) {
	mov	r6,#0x00
00134$:
	mov	a,r6
	add	a,#0xff - 0x02
	jnc	00257$
	ljmp	00110$
00257$:
;	keyboard.h:26: KEYBOARD_PORT = 0xFF & ~y;
	mov	a,r7
	cpl	a
	mov	_P2,a
;	keyboard.h:28: x = ~((KEYBOARD_PORT & 0xF0) >> 4) & 0x0F;
	mov	r4,_P2
	anl	ar4,#0xf0
	clr	a
	xch	a,r4
	swap	a
	anl	a,#0x0f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x0f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	jnb	acc.3,00258$
	orl	a,#0xfffffff0
00258$:
	mov	a,r4
	cpl	a
	mov	r4,a
	mov	a,#0x0f
	anl	a,r4
	mov	r5,a
;	keyboard.h:30: if (x==8) { // last column - special functions
	cjne	r5,#0x08,00107$
;	keyboard.h:31: switch (y) {
	cjne	r7,#0x01,00261$
	sjmp	00101$
00261$:
	cjne	r7,#0x02,00262$
	sjmp	00102$
00262$:
;	keyboard.h:32: case 1:
	cjne	r7,#0x04,00107$
	sjmp	00103$
00101$:
;	keyboard.h:33: return 0x0C; // PROG
	mov	dpl, #0x0c
	ret
;	keyboard.h:34: case 2:
00102$:
;	keyboard.h:35: return 0x0D; // VERB
	mov	dpl, #0x0d
	ret
;	keyboard.h:36: case 4:
00103$:
;	keyboard.h:37: return 0x0E; // NOUN
	mov	dpl, #0x0e
	ret
;	keyboard.h:40: }
00107$:
;	keyboard.h:43: if (x != 0) return 3*(log2_table(y)-1) + log2_table(x); 
	mov	a,r5
	jz	00109$
;	keyboard.h:10: if (value == 0x01) return 1;
	cjne	r7,#0x01,00120$
	mov	r4,#0x01
	sjmp	00125$
00120$:
;	keyboard.h:11: if (value == 0x02) return 2;
	cjne	r7,#0x02,00122$
	mov	r4,#0x02
	sjmp	00125$
00122$:
;	keyboard.h:12: if (value == 0x04) return 3;
	cjne	r7,#0x04,00124$
	mov	r4,#0x03
	sjmp	00125$
00124$:
;	keyboard.h:13: return 0;
	mov	r4,#0x00
;	keyboard.h:43: if (x != 0) return 3*(log2_table(y)-1) + log2_table(x); 
00125$:
	mov	a,r4
	dec	a
	mov	b,#0x03
	mul	ab
	mov	r4,a
;	keyboard.h:10: if (value == 0x01) return 1;
	cjne	r5,#0x01,00127$
	mov	r3,#0x01
	sjmp	00132$
00127$:
;	keyboard.h:11: if (value == 0x02) return 2;
	cjne	r5,#0x02,00129$
	mov	r3,#0x02
	sjmp	00132$
00129$:
;	keyboard.h:12: if (value == 0x04) return 3;
	cjne	r5,#0x04,00131$
	mov	r3,#0x03
	sjmp	00132$
00131$:
;	keyboard.h:13: return 0;
	mov	r3,#0x00
;	keyboard.h:43: if (x != 0) return 3*(log2_table(y)-1) + log2_table(x); 
00132$:
	mov	a,r3
	add	a, r4
	mov	dpl,a
	ret
00109$:
;	keyboard.h:45: y <<= 1;
	mov	a,r7
	add	a,r7
	mov	r7,a
;	keyboard.h:25: for (byte_t i=0; i<=2; i++) {
	inc	r6
	ljmp	00134$
00110$:
;	keyboard.h:49: KEYBOARD_PORT = 0xFF & ~y;
	mov	a,r7
	cpl	a
	mov	_P2,a
;	keyboard.h:51: x = ~((KEYBOARD_PORT & 0xF0) >> 4) & 0x0F;
	mov	r6,_P2
	anl	ar6,#0xf0
	clr	a
	xch	a,r6
	swap	a
	anl	a,#0x0f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x0f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	jnb	acc.3,00277$
	orl	a,#0xfffffff0
00277$:
	mov	a,r6
	cpl	a
	mov	r6,a
	mov	a,#0x0f
	anl	a,r6
;	keyboard.h:53: if (x == 0) return 0xFF; // none key
	mov	r7,a
	jnz	00112$
	mov	dpl, #0xff
	ret
00112$:
;	keyboard.h:55: if (x == 1) return 0x0A; // *
	cjne	r7,#0x01,00114$
	mov	dpl, #0x0a
	ret
00114$:
;	keyboard.h:56: if (x == 2) return 0x00; // 0
	cjne	r7,#0x02,00116$
	mov	dpl, #0x00
	ret
00116$:
;	keyboard.h:57: if (x == 4) return 0x0B; // #
	cjne	r7,#0x04,00118$
	mov	dpl, #0x0b
	ret
00118$:
;	keyboard.h:59: return 0xFF;
	mov	dpl, #0xff
;	keyboard.h:60: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MAX7219_SPI_Write_Byte'
;------------------------------------------------------------
;data          Allocated to registers r7 
;i             Allocated to registers r6 
;------------------------------------------------------------
;	display.h:13: void MAX7219_SPI_Write_Byte(byte_t data) {
;	-----------------------------------------
;	 function MAX7219_SPI_Write_Byte
;	-----------------------------------------
_MAX7219_SPI_Write_Byte:
	mov	r7, dpl
;	display.h:16: for(i=0; i<8; i++) {
	mov	r6,#0x00
00102$:
;	display.h:17: MAX7219_CLK_PIN = 0;
;	assignBit
	clr	_P0_1
;	display.h:18: MAX7219_DIN_PIN = (data & 0x80);
	mov	a,r7
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P0_0,c
;	display.h:19: data = data << 1;
	mov	a,r7
	add	a,r7
	mov	r7,a
;	display.h:20: MAX7219_CLK_PIN = 1;
;	assignBit
	setb	_P0_1
;	display.h:16: for(i=0; i<8; i++) {
	inc	r6
	cjne	r6,#0x08,00113$
00113$:
	jc	00102$
;	display.h:22: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MAX7219_Write'
;------------------------------------------------------------
;value         Allocated with name '_MAX7219_Write_PARM_2'
;reg           Allocated to registers r7 
;------------------------------------------------------------
;	display.h:29: void MAX7219_Write(byte_t reg, byte_t value) {
;	-----------------------------------------
;	 function MAX7219_Write
;	-----------------------------------------
_MAX7219_Write:
	mov	r7, dpl
;	display.h:30: MAX7219_CS_PIN = 1; // enable CS
;	assignBit
	setb	_P0_4
;	display.h:31: MAX7219_SPI_Write_Byte(reg);   // send address
	mov	dpl, r7
	lcall	_MAX7219_SPI_Write_Byte
;	display.h:32: MAX7219_SPI_Write_Byte(value); // send value
	mov	dpl, _MAX7219_Write_PARM_2
	lcall	_MAX7219_SPI_Write_Byte
;	display.h:33: MAX7219_CS_PIN = 0; // disable CS
;	assignBit
	clr	_P0_4
;	display.h:34: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MAX7219_WriteFloat'
;------------------------------------------------------------
;value         Allocated with name '_MAX7219_WriteFloat_PARM_2'
;index         Allocated to registers r7 
;digit         Allocated to registers r0 r1 
;number        Allocated with name '_MAX7219_WriteFloat_number_10000_48'
;__200000007   Allocated to registers 
;index         Allocated to registers 
;i             Allocated to registers r7 
;------------------------------------------------------------
;	display.h:36: void MAX7219_WriteFloat(byte_t index, float value) {
;	-----------------------------------------
;	 function MAX7219_WriteFloat
;	-----------------------------------------
_MAX7219_WriteFloat:
	mov	r7, dpl
;	display.h:38: long number = (long) (value * 100);
	push	ar7
	push	_MAX7219_WriteFloat_PARM_2
	push	(_MAX7219_WriteFloat_PARM_2 + 1)
	push	(_MAX7219_WriteFloat_PARM_2 + 2)
	push	(_MAX7219_WriteFloat_PARM_2 + 3)
	mov	dptr,#0x0000
	mov	b, #0xc8
	mov	a, #0x42
	lcall	___fsmul
	mov	r3, dpl
	mov	r4, dph
	mov	r5, b
	mov	r6, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl, r3
	mov	dph, r4
	mov	b, r5
	mov	a, r6
	lcall	___fs2slong
	mov	_MAX7219_WriteFloat_number_10000_48,dpl
	mov	(_MAX7219_WriteFloat_number_10000_48 + 1),dph
	mov	(_MAX7219_WriteFloat_number_10000_48 + 2),b
	mov	(_MAX7219_WriteFloat_number_10000_48 + 3),a
	pop	ar7
;	display.h:25: MAX7219_CS0_PIN = index & 0b01;
	mov	a,r7
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P0_2,c
;	display.h:26: MAX7219_CS1_PIN = index & 0b10;
	mov	a,r7
	rr	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P0_3,c
;	display.h:42: for(byte_t i=6; i>0; i--) {
	mov	r7,#0x06
00104$:
	mov	a,r7
	jz	00106$
;	display.h:43: digit = number % 10;
	mov	__modslong_PARM_2,#0x0a
	clr	a
	mov	(__modslong_PARM_2 + 1),a
	mov	(__modslong_PARM_2 + 2),a
	mov	(__modslong_PARM_2 + 3),a
	mov	dpl, _MAX7219_WriteFloat_number_10000_48
	mov	dph, (_MAX7219_WriteFloat_number_10000_48 + 1)
	mov	b, (_MAX7219_WriteFloat_number_10000_48 + 2)
	mov	a, (_MAX7219_WriteFloat_number_10000_48 + 3)
	push	ar7
	lcall	__modslong
	mov	r0, dpl
	mov	r1, dph
;	display.h:44: number = number / 10;
	mov	__divslong_PARM_2,#0x0a
	clr	a
	mov	(__divslong_PARM_2 + 1),a
	mov	(__divslong_PARM_2 + 2),a
	mov	(__divslong_PARM_2 + 3),a
;	display.h:46: MAX7219_Write(i, i==4 ? digit | 0x80 : digit);
	mov	dpl, _MAX7219_WriteFloat_number_10000_48
	mov	dph, (_MAX7219_WriteFloat_number_10000_48 + 1)
	mov	b, (_MAX7219_WriteFloat_number_10000_48 + 2)
	mov	a, (_MAX7219_WriteFloat_number_10000_48 + 3)
	push	ar1
	push	ar0
	lcall	__divslong
	mov	_MAX7219_WriteFloat_number_10000_48,dpl
	mov	(_MAX7219_WriteFloat_number_10000_48 + 1),dph
	mov	(_MAX7219_WriteFloat_number_10000_48 + 2),b
	mov	(_MAX7219_WriteFloat_number_10000_48 + 3),a
	pop	ar0
	pop	ar1
	pop	ar7
	cjne	r7,#0x04,00110$
	mov	a,#0x80
	orl	a,r0
	mov	r5,a
	mov	ar6,r1
	sjmp	00111$
00110$:
	mov	ar5,r0
	mov	ar6,r1
00111$:
	mov	_MAX7219_Write_PARM_2,r5
	mov	dpl, r7
	push	ar7
	lcall	_MAX7219_Write
	pop	ar7
;	display.h:42: for(byte_t i=6; i>0; i--) {
	dec	r7
	sjmp	00104$
00106$:
;	display.h:48: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MAX7219_WriteByte'
;------------------------------------------------------------
;value         Allocated with name '_MAX7219_WriteByte_PARM_2'
;index         Allocated to registers r7 
;__200000009   Allocated to registers 
;index         Allocated to registers 
;------------------------------------------------------------
;	display.h:50: void MAX7219_WriteByte(byte_t index, byte_t value) {
;	-----------------------------------------
;	 function MAX7219_WriteByte
;	-----------------------------------------
_MAX7219_WriteByte:
;	display.h:25: MAX7219_CS0_PIN = index & 0b01;
	mov	a,dpl
	mov	r7,a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P0_2,c
;	display.h:26: MAX7219_CS1_PIN = index & 0b10;
	mov	a,r7
	rr	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P0_3,c
;	display.h:53: if (value > 99) value = 99;
	mov	a,_MAX7219_WriteByte_PARM_2
	add	a,#0xff - 0x63
	jnc	00102$
	mov	_MAX7219_WriteByte_PARM_2,#0x63
00102$:
;	display.h:55: MAX7219_Write(7, value/10);
	mov	r7,_MAX7219_WriteByte_PARM_2
	mov	ar6,r7
	mov	b,#0x0a
	mov	a,r6
	div	ab
	mov	_MAX7219_Write_PARM_2, a
	mov	dpl, #0x07
	push	ar7
	lcall	_MAX7219_Write
	pop	ar7
;	display.h:56: MAX7219_Write(8, value%10);
	mov	b,#0x0a
	mov	a,r7
	div	ab
	mov	r7,b
	mov	_MAX7219_Write_PARM_2,r7
	mov	dpl, #0x08
;	display.h:57: }
	ljmp	_MAX7219_Write
;------------------------------------------------------------
;Allocation info for local variables in function 'Serial_SendByte'
;------------------------------------------------------------
;value         Allocated to registers 
;------------------------------------------------------------
;	serial.h:21: void Serial_SendByte(byte_t value) {
;	-----------------------------------------
;	 function Serial_SendByte
;	-----------------------------------------
_Serial_SendByte:
;	serial.h:28: __endasm;
	mov	_SBUF, dpl
1$:
	jnb _TI, 1$
	clr	_TI
;	serial.h:29: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Serial_SendFloat'
;------------------------------------------------------------
;value         Allocated to registers 
;------------------------------------------------------------
;	serial.h:31: void Serial_SendFloat(float value) {
;	-----------------------------------------
;	 function Serial_SendFloat
;	-----------------------------------------
_Serial_SendFloat:
;	serial.h:50: __endasm;
	mov	_SBUF, dpl
1$:
	jnb _TI, 1$
	clr	_TI
	mov	_SBUF, dph
2$:
	jnb _TI, 2$
	clr	_TI
	mov	_SBUF, b
3$:
	jnb _TI, 3$
	clr	_TI
	mov	_SBUF, a
4$:
	jnb _TI, 4$
	clr	_TI
;	serial.h:69: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Serial_ReadByte'
;------------------------------------------------------------
;	serial.h:73: byte_t Serial_ReadByte(void) {
;	-----------------------------------------
;	 function Serial_ReadByte
;	-----------------------------------------
_Serial_ReadByte:
;	serial.h:76: __asm__("1$: jnb _RI, 1$");
1$:
	jnb _RI, 1$
;	serial.h:77: __asm__("clr _RI");
	clr	_RI
;	serial.h:78: return SBUF;
	mov	dpl, _SBUF
;	serial.h:79: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Serial_ReadFloat'
;------------------------------------------------------------
;value         Allocated with name '_Serial_ReadFloat_value_10000_72'
;p             Allocated to registers 
;------------------------------------------------------------
;	serial.h:81: float Serial_ReadFloat(void) {
;	-----------------------------------------
;	 function Serial_ReadFloat
;	-----------------------------------------
_Serial_ReadFloat:
;	serial.h:83: byte_t *p = (byte_t*)&value;
;	serial.h:85: __asm__("1$: jnb _RI, 1$");
1$:
	jnb _RI, 1$
;	serial.h:86: __asm__("clr _RI");
	clr	_RI
;	serial.h:87: p[0] = SBUF;
	mov	_Serial_ReadFloat_value_10000_72,_SBUF
;	serial.h:89: __asm__("2$: jnb _RI, 2$");
2$:
	jnb _RI, 2$
;	serial.h:90: __asm__("clr _RI");
	clr	_RI
;	serial.h:91: p[1] = SBUF;
	mov	r0,#(_Serial_ReadFloat_value_10000_72 + 0x0001)
	mov	@r0,_SBUF
;	serial.h:93: __asm__("3$: jnb _RI, 3$");
3$:
	jnb _RI, 3$
;	serial.h:94: __asm__("clr _RI");
	clr	_RI
;	serial.h:95: p[2] = SBUF;
	mov	r0,#(_Serial_ReadFloat_value_10000_72 + 0x0002)
	mov	@r0,_SBUF
;	serial.h:97: __asm__("4$: jnb _RI, 4$");
4$:
	jnb _RI, 4$
;	serial.h:98: __asm__("clr _RI");
	clr	_RI
;	serial.h:99: p[3] = SBUF;
	mov	r0,#(_Serial_ReadFloat_value_10000_72 + 0x0003)
	mov	@r0,_SBUF
;	serial.h:101: return value;
	mov	dpl, _Serial_ReadFloat_value_10000_72
	mov	dph, (_Serial_ReadFloat_value_10000_72 + 1)
	mov	b, (_Serial_ReadFloat_value_10000_72 + 2)
	mov	a, (_Serial_ReadFloat_value_10000_72 + 3)
;	serial.h:102: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;key           Allocated to registers r7 
;t_go0         Allocated to registers 
;__300000011   Allocated to registers 
;th1           Allocated to registers 
;__300000013   Allocated to registers 
;n_SCON        Allocated to registers 
;__500000015   Allocated to registers 
;index         Allocated to registers 
;_a            Allocated with name '_main__a_50000_119'
;_b            Allocated with name '_main__b_50000_119'
;__400000024   Allocated to registers r4 r5 r6 r7 
;__400000020   Allocated to registers r4 r5 r6 r7 
;delta_angle   Allocated to registers r4 r5 r6 r7 
;__400000021   Allocated to registers r0 r1 r2 r3 
;__400000022   Allocated to registers r4 r5 r6 r7 
;vx            Allocated to registers 
;vy            Allocated to registers 
;__400000025   Allocated to registers 
;value         Allocated to registers 
;------------------------------------------------------------
;	pgc.c:79: int main(void) {    
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	serial.h:14: TMOD |= 0x20;
	orl	_TMOD,#0x20
;	serial.h:15: TH1 = th1;
	mov	_TH1,#0xfd
;	serial.h:16: TL1 = th1;
	mov	_TL1,#0xfd
;	serial.h:17: TR1 = 1;
;	assignBit
	setb	_TR1
;	serial.h:9: SCON = n_SCON;
	mov	_SCON,#0x50
;	pgc.c:88: Serial_SendByte(0x09); // request gravity y
	mov	dpl, #0x09
	lcall	_Serial_SendByte
;	pgc.c:89: gravity_y = Serial_ReadFloat(); // wait answer and save
	lcall	_Serial_ReadFloat
	mov	_gravity_y,dpl
	mov	(_gravity_y + 1),dph
	mov	(_gravity_y + 2),b
	mov	(_gravity_y + 3),a
;	pgc.c:93: TMOD &= 0xF0;
	anl	_TMOD,#0xf0
;	pgc.c:94: TMOD |= 0x01;
	orl	_TMOD,#0x01
;	pgc.c:96: TH0 = 0x00;
	mov	_TH0,#0x00
;	pgc.c:97: TL0 = 0x00;
	mov	_TL0,#0x00
;	pgc.c:99: ET0 = 0; // ignore for now
;	assignBit
	clr	_ET0
;	pgc.c:101: EA = 1;
;	assignBit
	setb	_EA
;	pgc.c:103: TR0 = 1;
;	assignBit
	setb	_TR0
;	pgc.c:108: for (key=1; key<=3; key++) {
	mov	r7,#0x01
00149$:
;	pgc.c:25: float t_go;
	mov	a,r7
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P0_2,c
;	pgc.c:26: 
	mov	a,r7
	rr	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P0_3,c
;	display.h:60: MAX7219_Write(MAX7219_REG_SHUTDOWN, 0x01);  // wake up
	mov	_MAX7219_Write_PARM_2,#0x01
	mov	dpl, #0x0c
	push	ar7
	lcall	_MAX7219_Write
;	display.h:61: MAX7219_Write(MAX7219_REG_TEST, 0x00);      // normal mode
	mov	_MAX7219_Write_PARM_2,#0x00
	mov	dpl, #0x0f
	lcall	_MAX7219_Write
;	display.h:62: MAX7219_Write(MAX7219_REG_DECODE, 0xFF);    // decode mode
	mov	_MAX7219_Write_PARM_2,#0xff
	mov	dpl, #0x09
	lcall	_MAX7219_Write
;	display.h:63: MAX7219_Write(MAX7219_REG_SCANLIMIT, 0x07); // amount digits
	mov	_MAX7219_Write_PARM_2,#0x07
	mov	dpl, #0x0b
	lcall	_MAX7219_Write
;	display.h:64: MAX7219_Write(MAX7219_REG_INTENSITY, 0x0F); // brightness
	mov	_MAX7219_Write_PARM_2,#0x0f
	mov	dpl, #0x0a
	lcall	_MAX7219_Write
	pop	ar7
;	pgc.c:108: for (key=1; key<=3; key++) {
	inc	r7
	mov	a,r7
	add	a,#0xff - 0x03
	jnc	00149$
;	pgc.c:114: while (1) {
00139$:
;	pgc.c:66: Serial_SendByte(0x20); // request package
	mov	dpl, #0x20
	lcall	_Serial_SendByte
;	pgc.c:68: ut = Serial_ReadFloat();
	lcall	_Serial_ReadFloat
	mov	_ut,dpl
	mov	(_ut + 1),dph
	mov	(_ut + 2),b
	mov	(_ut + 3),a
;	pgc.c:69: pos_x = Serial_ReadFloat();
	lcall	_Serial_ReadFloat
	mov	_pos_x,dpl
	mov	(_pos_x + 1),dph
	mov	(_pos_x + 2),b
	mov	(_pos_x + 3),a
;	pgc.c:70: pos_y = Serial_ReadFloat();
	lcall	_Serial_ReadFloat
	mov	_pos_y,dpl
	mov	(_pos_y + 1),dph
	mov	(_pos_y + 2),b
	mov	(_pos_y + 3),a
;	pgc.c:71: vel_x = Serial_ReadFloat();
	lcall	_Serial_ReadFloat
	mov	_vel_x,dpl
	mov	(_vel_x + 1),dph
	mov	(_vel_x + 2),b
	mov	(_vel_x + 3),a
;	pgc.c:72: vel_y = Serial_ReadFloat();
	lcall	_Serial_ReadFloat
	mov	_vel_y,dpl
	mov	(_vel_y + 1),dph
	mov	(_vel_y + 2),b
	mov	(_vel_y + 3),a
;	pgc.c:73: angle = Serial_ReadFloat();
	lcall	_Serial_ReadFloat
	mov	_angle,dpl
	mov	(_angle + 1),dph
	mov	(_angle + 2),b
	mov	(_angle + 3),a
;	pgc.c:74: ang_vel = Serial_ReadFloat();
	lcall	_Serial_ReadFloat
	mov	_ang_vel,dpl
	mov	(_ang_vel + 1),dph
	mov	(_ang_vel + 2),b
	mov	(_ang_vel + 3),a
;	pgc.c:75: av_accel = Serial_ReadFloat();
	lcall	_Serial_ReadFloat
	mov	_av_accel,dpl
	mov	(_av_accel + 1),dph
	mov	(_av_accel + 2),b
	mov	(_av_accel + 3),a
;	pgc.c:76: av_accel_ang = Serial_ReadFloat();
	lcall	_Serial_ReadFloat
	mov	_av_accel_ang,dpl
	mov	(_av_accel_ang + 1),dph
	mov	(_av_accel_ang + 2),b
	mov	(_av_accel_ang + 3),a
;	pgc.c:117: t_go = t_go0 - ut;
	push	_ut
	push	(_ut + 1)
	push	(_ut + 2)
	push	(_ut + 3)
	mov	dptr,#0x0000
	mov	b, #0xf0
	mov	a, #0x41
	lcall	___fssub
	mov	_t_go,dpl
	mov	(_t_go + 1),dph
	mov	(_t_go + 2),b
	mov	(_t_go + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	pgc.c:119: if (t_go < 3.0f) t_go = 3.0f;
	clr	a
	push	acc
	push	acc
	mov	a,#0x40
	push	acc
	push	acc
	mov	dpl, _t_go
	mov	dph, (_t_go + 1)
	mov	b, (_t_go + 2)
	mov	a, (_t_go + 3)
	lcall	___fslt
	mov	r7, dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00103$
	clr	a
	mov	_t_go,a
	mov	(_t_go + 1),a
	mov	(_t_go + 2),#0x40
	mov	(_t_go + 3),#0x40
00103$:
;	pgc.c:58: float _a = -12.0f / (t_go * t_go);
	push	_t_go
	push	(_t_go + 1)
	push	(_t_go + 2)
	push	(_t_go + 3)
	mov	dpl, _t_go
	mov	dph, (_t_go + 1)
	mov	b, (_t_go + 2)
	mov	a, (_t_go + 3)
	lcall	___fsmul
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
;	pgc.c:59: float _b = -6.0f / t_go;
	mov	dptr,#0x0000
	mov	b, #0x40
	mov	a, #0xc1
	lcall	___fsdiv
	mov	_main__a_50000_119,dpl
	mov	(_main__a_50000_119 + 1),dph
	mov	(_main__a_50000_119 + 2),b
	mov	(_main__a_50000_119 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_t_go
	push	(_t_go + 1)
	push	(_t_go + 2)
	push	(_t_go + 3)
;	pgc.c:61: a0_x = _a * pos_x + _b * vel_x;
	mov	dptr,#0x0000
	mov	a,#0xc0
	mov	b,a
	lcall	___fsdiv
	mov	_main__b_50000_119,dpl
	mov	(_main__b_50000_119 + 1),dph
	mov	(_main__b_50000_119 + 2),b
	mov	(_main__b_50000_119 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_pos_x
	push	(_pos_x + 1)
	push	(_pos_x + 2)
	push	(_pos_x + 3)
	mov	dpl, _main__a_50000_119
	mov	dph, (_main__a_50000_119 + 1)
	mov	b, (_main__a_50000_119 + 2)
	mov	a, (_main__a_50000_119 + 3)
	lcall	___fsmul
	mov	r0, dpl
	mov	r1, dph
	mov	r2, b
	mov	r3, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	_vel_x
	push	(_vel_x + 1)
	push	(_vel_x + 2)
	push	(_vel_x + 3)
	mov	dpl, _main__b_50000_119
	mov	dph, (_main__b_50000_119 + 1)
	mov	b, (_main__b_50000_119 + 2)
	mov	a, (_main__b_50000_119 + 3)
	lcall	___fsmul
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl, r0
	mov	dph, r1
	mov	b, r2
	mov	a, r3
	lcall	___fsadd
	mov	_a0_x,dpl
	mov	(_a0_x + 1),dph
	mov	(_a0_x + 2),b
	mov	(_a0_x + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	pgc.c:62: a0_y = _a * pos_y + _b * vel_y - gravity_y;
	push	_pos_y
	push	(_pos_y + 1)
	push	(_pos_y + 2)
	push	(_pos_y + 3)
	mov	dpl, _main__a_50000_119
	mov	dph, (_main__a_50000_119 + 1)
	mov	b, (_main__a_50000_119 + 2)
	mov	a, (_main__a_50000_119 + 3)
	lcall	___fsmul
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	_vel_y
	push	(_vel_y + 1)
	push	(_vel_y + 2)
	push	(_vel_y + 3)
	mov	dpl, _main__b_50000_119
	mov	dph, (_main__b_50000_119 + 1)
	mov	b, (_main__b_50000_119 + 2)
	mov	a, (_main__b_50000_119 + 3)
	lcall	___fsmul
	mov	r0, dpl
	mov	r1, dph
	mov	r2, b
	mov	r3, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	___fsadd
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_gravity_y
	push	(_gravity_y + 1)
	push	(_gravity_y + 2)
	push	(_gravity_y + 3)
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	___fssub
	mov	_a0_y,dpl
	mov	(_a0_y + 1),dph
	mov	(_a0_y + 2),b
	mov	(_a0_y + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	pgc.c:125: throttle = sqrtf(a0_x * a0_x + a0_y * a0_y) / av_accel;
	push	_a0_x
	push	(_a0_x + 1)
	push	(_a0_x + 2)
	push	(_a0_x + 3)
	mov	dpl, _a0_x
	mov	dph, (_a0_x + 1)
	mov	b, (_a0_x + 2)
	mov	a, (_a0_x + 3)
	lcall	___fsmul
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	_a0_y
	push	(_a0_y + 1)
	push	(_a0_y + 2)
	push	(_a0_y + 3)
	mov	dpl, _a0_y
	mov	dph, (_a0_y + 1)
	mov	b, (_a0_y + 2)
	mov	a, (_a0_y + 3)
	lcall	___fsmul
	mov	r0, dpl
	mov	r1, dph
	mov	r2, b
	mov	r3, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	___fsadd
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	_sqrtf
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	push	_av_accel
	push	(_av_accel + 1)
	push	(_av_accel + 2)
	push	(_av_accel + 3)
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	___fsdiv
	mov	_throttle,dpl
	mov	(_throttle + 1),dph
	mov	(_throttle + 2),b
	mov	(_throttle + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	pgc.c:128: if (throttle != 0) {
	mov	b,_throttle
	mov	a,(_throttle + 1)
	orl	b,a
	mov	a,(_throttle + 2)
	orl	b,a
	mov	a,(_throttle + 3)
	anl	a,#0x7F
	orl	a,b
	jnz	00272$
	ljmp	00110$
00272$:
;	pgc.c:130: float delta_angle = angle_from_vec2(a0_x, a0_y) - angle;
	mov	r4,_a0_y
	mov	r5,(_a0_y + 1)
	mov	r6,(_a0_y + 2)
	mov	r7,(_a0_y + 3)
	mov	r0,_a0_x
	mov	r1,(_a0_x + 1)
	mov	r2,(_a0_x + 2)
	mov	r3,(_a0_x + 3)
	mov	_atan2f_PARM_2,r4
	mov	(_atan2f_PARM_2 + 1),r5
	mov	(_atan2f_PARM_2 + 2),r6
	mov	a,r7
	cpl	acc.7
	mov	(_atan2f_PARM_2 + 3),a
	mov	dpl, r0
	mov	dph, r1
	mov	b, r2
	mov	a, r3
	lcall	_atan2f
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	push	_angle
	push	(_angle + 1)
	push	(_angle + 2)
	push	(_angle + 3)
;	pgc.c:132: if (delta_angle > 3.14159265f) {
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	___fssub
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0fdb
	mov	b, #0x49
	mov	a, #0x40
	lcall	___fslt
	mov	r3, dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	jz	00107$
;	pgc.c:133: delta_angle -= 6.2831853f;
	mov	a,#0xdb
	push	acc
	mov	a,#0x0f
	push	acc
	mov	a,#0xc9
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	___fssub
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	sjmp	00108$
00107$:
;	pgc.c:134: } else if (delta_angle < -3.14159265f) {
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#0xdb
	push	acc
	mov	a,#0x0f
	push	acc
	mov	a,#0x49
	push	acc
	mov	a,#0xc0
	push	acc
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	___fslt
	mov	r3, dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	jz	00108$
;	pgc.c:135: delta_angle += 6.2831853f;
	mov	a,#0xdb
	push	acc
	mov	a,#0x0f
	push	acc
	mov	a,#0xc9
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	___fsadd
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00108$:
;	pgc.c:140: gimbal = (ang_vel - sqrtf(0.8f * fabsf(delta_angle) * av_accel_ang * throttle) * signf(delta_angle)) / av_accel_ang;
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_fabsf
	mov	r0, dpl
	mov	r1, dph
	mov	r2, b
	mov	r3, a
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dptr,#0xcccd
	mov	b, #0x4c
	mov	a, #0x3f
	lcall	___fsmul
	mov	r0, dpl
	mov	r1, dph
	mov	r2, b
	mov	r3, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_av_accel_ang
	push	(_av_accel_ang + 1)
	push	(_av_accel_ang + 2)
	push	(_av_accel_ang + 3)
	mov	dpl, r0
	mov	dph, r1
	mov	b, r2
	mov	a, r3
	lcall	___fsmul
	mov	r0, dpl
	mov	r1, dph
	mov	r2, b
	mov	r3, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_throttle
	push	(_throttle + 1)
	push	(_throttle + 2)
	push	(_throttle + 3)
	mov	dpl, r0
	mov	dph, r1
	mov	b, r2
	mov	a, r3
	lcall	___fsmul
	mov	r0, dpl
	mov	r1, dph
	mov	r2, b
	mov	r3, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl, r0
	mov	dph, r1
	mov	b, r2
	mov	a, r3
	lcall	_sqrtf
	mov	r0, dpl
	mov	r1, dph
	mov	r2, b
	mov	r3, a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	utils.h:17: return value < 0 ? -1 : 1;
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	___fslt
	mov	r7, dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	mov	a,r7
	jz	00153$
	mov	r6,#0xff
	mov	r7,#0xff
	sjmp	00154$
00153$:
	mov	r6,#0x01
	mov	r7,#0x00
00154$:
	mov	dpl, r6
	mov	dph, r7
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	___sint2fs
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
;	pgc.c:140: gimbal = (ang_vel - sqrtf(0.8f * fabsf(delta_angle) * av_accel_ang * throttle) * signf(delta_angle)) / av_accel_ang;
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl, r0
	mov	dph, r1
	mov	b, r2
	mov	a, r3
	lcall	___fsmul
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl, _ang_vel
	mov	dph, (_ang_vel + 1)
	mov	b, (_ang_vel + 2)
	mov	a, (_ang_vel + 3)
	lcall	___fssub
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_av_accel_ang
	push	(_av_accel_ang + 1)
	push	(_av_accel_ang + 2)
	push	(_av_accel_ang + 3)
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	___fsdiv
	mov	_gimbal,dpl
	mov	(_gimbal + 1),dph
	mov	(_gimbal + 2),b
	mov	(_gimbal + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	sjmp	00111$
00110$:
;	pgc.c:142: gimbal = 0.0f;
	clr	a
	mov	_gimbal,a
	mov	(_gimbal + 1),a
	mov	(_gimbal + 2),a
	mov	(_gimbal + 3),a
00111$:
;	pgc.c:146: Serial_SendByte(0x21); // send package
	mov	dpl, #0x21
	lcall	_Serial_SendByte
;	pgc.c:147: Serial_SendFloat(throttle); // throttle
	mov	dpl, _throttle
	mov	dph, (_throttle + 1)
	mov	b, (_throttle + 2)
	mov	a, (_throttle + 3)
	lcall	_Serial_SendFloat
;	pgc.c:148: Serial_SendFloat(gimbal); // gimbal
	mov	dpl, _gimbal
	mov	dph, (_gimbal + 1)
	mov	b, (_gimbal + 2)
	mov	a, (_gimbal + 3)
	lcall	_Serial_SendFloat
;	pgc.c:151: MAX7219_WriteByte(1, PROG);
	mov	_MAX7219_WriteByte_PARM_2,_PROG
	mov	dpl, #0x01
	lcall	_MAX7219_WriteByte
;	pgc.c:152: MAX7219_WriteByte(2, VERB);
	mov	_MAX7219_WriteByte_PARM_2,_VERB
	mov	dpl, #0x02
	lcall	_MAX7219_WriteByte
;	pgc.c:153: MAX7219_WriteByte(3, NOUN);
	mov	_MAX7219_WriteByte_PARM_2,_NOUN
	mov	dpl, #0x03
	lcall	_MAX7219_WriteByte
;	pgc.c:155: MAX7219_WriteFloat(1, t_go);
	mov	_MAX7219_WriteFloat_PARM_2,_t_go
	mov	(_MAX7219_WriteFloat_PARM_2 + 1),(_t_go + 1)
	mov	(_MAX7219_WriteFloat_PARM_2 + 2),(_t_go + 2)
	mov	(_MAX7219_WriteFloat_PARM_2 + 3),(_t_go + 3)
	mov	dpl, #0x01
	lcall	_MAX7219_WriteFloat
;	pgc.c:158: key = Keyboard_Read();
	lcall	_Keyboard_Read
	mov	r7, dpl
;	pgc.c:160: if (key == 0xFF) {
	cjne	r7,#0xff,00113$
;	pgc.c:161: dsky_key_pressed = false;
	mov	_dsky_key_pressed,#0x00
;	pgc.c:162: continue;
	ljmp	00139$
00113$:
;	pgc.c:165: if (dsky_key_pressed) continue;
	mov	a,_dsky_key_pressed
	jz	00278$
	ljmp	00139$
00278$:
;	pgc.c:167: dsky_key_pressed = true;
	mov	_dsky_key_pressed,#0x01
;	pgc.c:169: if (key == 0x0A) { // CLR (*)
	cjne	r7,#0x0a,00117$
;	pgc.c:170: dsky_buffer = 0;
	mov	_dsky_buffer,#0x00
;	pgc.c:171: continue;
	ljmp	00139$
00117$:
;	pgc.c:174: if (key == 0x0B) { // ENTER (#)
	cjne	r7,#0x0b,00129$
;	pgc.c:175: if (dsky_state == 0) continue;
	mov	a,_dsky_state
	jnz	00283$
	ljmp	00139$
00283$:
;	pgc.c:177: if (dsky_state == 1) PROG = dsky_buffer;
	mov	a,#0x01
	cjne	a,_dsky_state,00126$
	mov	_PROG,_dsky_buffer
	sjmp	00127$
00126$:
;	pgc.c:178: else if (dsky_state == 2) VERB = dsky_buffer;
	mov	a,#0x02
	cjne	a,_dsky_state,00123$
	mov	_VERB,_dsky_buffer
	sjmp	00127$
00123$:
;	pgc.c:179: else if (dsky_state == 3) NOUN = dsky_buffer;
	mov	a,#0x03
	cjne	a,_dsky_state,00127$
	mov	_NOUN,_dsky_buffer
00127$:
;	pgc.c:181: dsky_state = 0;
	mov	_dsky_state,#0x00
;	pgc.c:183: continue;
	ljmp	00139$
00129$:
;	pgc.c:186: if (key == 0x0C) { // PROG
	cjne	r7,#0x0c,00131$
;	pgc.c:187: dsky_state = 1;
	mov	_dsky_state,#0x01
;	pgc.c:188: continue;
	ljmp	00139$
00131$:
;	pgc.c:191: if (key == 0x0D) { // VERB
	cjne	r7,#0x0d,00133$
;	pgc.c:192: dsky_state = 2;
	mov	_dsky_state,#0x02
;	pgc.c:193: continue;
	ljmp	00139$
00133$:
;	pgc.c:196: if (key == 0x0E) { // NOUN
	cjne	r7,#0x0e,00135$
;	pgc.c:197: dsky_state = 3;
	mov	_dsky_state,#0x03
;	pgc.c:198: continue;
	ljmp	00139$
00135$:
;	pgc.c:201: if (dsky_state != 0) { // 0 - 9
	mov	a,_dsky_state
	jnz	00296$
	ljmp	00139$
00296$:
;	pgc.c:202: dsky_buffer = key; // DEBUG
	mov	_dsky_buffer,r7
;	pgc.c:205: }
	ljmp	00139$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
