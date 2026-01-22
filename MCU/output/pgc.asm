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
	.globl _LED_WriteData
	.globl _Display_Write
	.globl _MAX7219_Write
	.globl _MAX7219_Select
	.globl _MAX7219_WriteByte
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
	.globl _REG3
	.globl _REG2
	.globl _REG1
	.globl _fuel_level
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
	.globl _led_state
	.globl _dsky_NOUN
	.globl _dsky_VERB
	.globl _dsky_PROG
	.globl _dsky_state
	.globl _dsky_key_pressed
	.globl _t_go
	.globl _a0_y
	.globl _a0_x
	.globl _gimbal
	.globl _throttle
	.globl _NOUN
	.globl _VERB
	.globl _PROG
	.globl _Display_Write_PARM_3
	.globl _Display_Write_PARM_2
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
_Display_Write_PARM_2:
	.ds 4
_Display_Write_PARM_3:
	.ds 1
_Display_Write_number_10000_56:
	.ds 4
_PROG::
	.ds 1
_VERB::
	.ds 1
_NOUN::
	.ds 1
_throttle::
	.ds 4
_gimbal::
	.ds 4
_a0_x::
	.ds 4
_a0_y::
	.ds 4
_t_go::
	.ds 4
_dsky_key_pressed::
	.ds 1
_dsky_state::
	.ds 1
_dsky_PROG::
	.ds 1
_dsky_VERB::
	.ds 1
_dsky_NOUN::
	.ds 1
_led_state::
	.ds 1
_main_counter_10000_80:
	.ds 1
_main__a_50000_120:
	.ds 4
_main__b_50000_120:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_Serial_ReadFloat_value_10000_74:
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
_fuel_level::
	.ds 4
_REG1::
	.ds 4
_REG2::
	.ds 4
_REG3::
	.ds 4
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
;	pgc.c:27: bool dsky_key_pressed = false;
	mov	_dsky_key_pressed,#0x00
;	pgc.c:28: byte_t dsky_state = 0;
	mov	_dsky_state,#0x00
;	pgc.c:29: byte_t dsky_PROG = 0, dsky_VERB = 0, dsky_NOUN = 0;
	mov	_dsky_PROG,#0x00
;	pgc.c:29: __xdata float REG1, REG2, REG3;
	mov	_dsky_VERB,#0x00
;	pgc.c:29: byte_t dsky_PROG = 0, dsky_VERB = 0, dsky_NOUN = 0;
	mov	_dsky_NOUN,#0x00
;	pgc.c:32: byte_t led_state = 0b1111;
	mov	_led_state,#0x0f
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
	mov	_P1,a
;	keyboard.h:28: x = ~((KEYBOARD_PORT & 0xF0) >> 4) & 0x0F;
	mov	r4,_P1
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
	mov	_P1,a
;	keyboard.h:51: x = ~((KEYBOARD_PORT & 0xF0) >> 4) & 0x0F;
	mov	r6,_P1
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
;Allocation info for local variables in function 'MAX7219_WriteByte'
;------------------------------------------------------------
;data          Allocated to registers 
;i             Allocated to registers r7 
;------------------------------------------------------------
;	display.h:15: void MAX7219_WriteByte(byte_t data) {
;	-----------------------------------------
;	 function MAX7219_WriteByte
;	-----------------------------------------
_MAX7219_WriteByte:
;	display.h:20: __asm__("mov a, dpl");
	mov	a, dpl
;	display.h:22: for(i=0; i<8; i++) {
	mov	r7,#0x00
00102$:
;	display.h:23: MAX7219_CLK_PIN = 0;
;	assignBit
	clr	_P3_5
;	display.h:25: __asm__("rlc a");
	rlc	a
;	display.h:26: ASM_MOV_CARRY_TO_PIN(MAX7219_DIN_PIN);
	mov	_P3_3, c
;	display.h:28: MAX7219_CLK_PIN = 1;
;	assignBit
	setb	_P3_5
;	display.h:22: for(i=0; i<8; i++) {
	inc	r7
	cjne	r7,#0x08,00113$
00113$:
	jc	00102$
;	display.h:30: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MAX7219_Select'
;------------------------------------------------------------
;index         Allocated to registers 
;------------------------------------------------------------
;	display.h:32: void MAX7219_Select(byte_t index) {
;	-----------------------------------------
;	 function MAX7219_Select
;	-----------------------------------------
_MAX7219_Select:
;	display.h:38: __asm__("mov a, dpl");
	mov	a, dpl
;	display.h:39: __asm__("rrc a");
	rrc	a
;	display.h:40: ASM_MOV_CARRY_TO_PIN(MAX7219_CS0_PIN);
	mov	_P2_5, c
;	display.h:42: __asm__("rrc a");
	rrc	a
;	display.h:43: ASM_MOV_CARRY_TO_PIN(MAX7219_CS1_PIN);
	mov	_P2_6, c
;	display.h:44: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MAX7219_Write'
;------------------------------------------------------------
;value         Allocated with name '_MAX7219_Write_PARM_2'
;reg           Allocated to registers r7 
;------------------------------------------------------------
;	display.h:46: void MAX7219_Write(byte_t reg, byte_t value) {
;	-----------------------------------------
;	 function MAX7219_Write
;	-----------------------------------------
_MAX7219_Write:
	mov	r7, dpl
;	display.h:47: MAX7219_CS_PIN = 1; // enable CS
;	assignBit
	setb	_P2_7
;	display.h:48: MAX7219_WriteByte(reg);   // send address
	mov	dpl, r7
	lcall	_MAX7219_WriteByte
;	display.h:49: MAX7219_WriteByte(value); // send value
	mov	dpl, _MAX7219_Write_PARM_2
	lcall	_MAX7219_WriteByte
;	display.h:50: MAX7219_CS_PIN = 0; // disable CS
;	assignBit
	clr	_P2_7
;	display.h:51: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Display_Write'
;------------------------------------------------------------
;register_value Allocated with name '_Display_Write_PARM_2'
;digit_value   Allocated with name '_Display_Write_PARM_3'
;index         Allocated to registers r7 
;digit         Allocated to registers r0 r1 
;number        Allocated with name '_Display_Write_number_10000_56'
;i             Allocated to registers r7 
;------------------------------------------------------------
;	display.h:61: void Display_Write(byte_t index, float register_value, byte_t digit_value) {
;	-----------------------------------------
;	 function Display_Write
;	-----------------------------------------
_Display_Write:
	mov	r7, dpl
;	display.h:63: long number = (long) (register_value * 100);
	push	ar7
	push	_Display_Write_PARM_2
	push	(_Display_Write_PARM_2 + 1)
	push	(_Display_Write_PARM_2 + 2)
	push	(_Display_Write_PARM_2 + 3)
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
	mov	_Display_Write_number_10000_56,dpl
	mov	(_Display_Write_number_10000_56 + 1),dph
	mov	(_Display_Write_number_10000_56 + 2),b
	mov	(_Display_Write_number_10000_56 + 3),a
	pop	ar7
;	display.h:65: MAX7219_Select(index);
	mov	dpl, r7
	lcall	_MAX7219_Select
;	display.h:67: for(byte_t i=6; i>0; i--) {
	mov	r7,#0x06
00103$:
	mov	a,r7
	jz	00101$
;	display.h:68: digit = number % 10;
	mov	__modslong_PARM_2,#0x0a
	clr	a
	mov	(__modslong_PARM_2 + 1),a
	mov	(__modslong_PARM_2 + 2),a
	mov	(__modslong_PARM_2 + 3),a
	mov	dpl, _Display_Write_number_10000_56
	mov	dph, (_Display_Write_number_10000_56 + 1)
	mov	b, (_Display_Write_number_10000_56 + 2)
	mov	a, (_Display_Write_number_10000_56 + 3)
	push	ar7
	lcall	__modslong
	mov	r0, dpl
	mov	r1, dph
	pop	ar7
;	display.h:69: number = number / 10;
	mov	__divslong_PARM_2,#0x0a
	clr	a
	mov	(__divslong_PARM_2 + 1),a
	mov	(__divslong_PARM_2 + 2),a
	mov	(__divslong_PARM_2 + 3),a
;	display.h:71: MAX7219_Write(i, i==4 ? digit | 0x80 : digit);
	mov	dpl, _Display_Write_number_10000_56
	mov	dph, (_Display_Write_number_10000_56 + 1)
	mov	b, (_Display_Write_number_10000_56 + 2)
	mov	a, (_Display_Write_number_10000_56 + 3)
	push	ar7
	push	ar1
	push	ar0
	lcall	__divslong
	mov	_Display_Write_number_10000_56,dpl
	mov	(_Display_Write_number_10000_56 + 1),dph
	mov	(_Display_Write_number_10000_56 + 2),b
	mov	(_Display_Write_number_10000_56 + 3),a
	pop	ar0
	pop	ar1
	pop	ar7
	cjne	r7,#0x04,00109$
	mov	a,#0x80
	orl	a,r0
	mov	r5,a
	mov	ar6,r1
	sjmp	00110$
00109$:
	mov	ar5,r0
	mov	ar6,r1
00110$:
	mov	_MAX7219_Write_PARM_2,r5
	mov	dpl, r7
	push	ar7
	lcall	_MAX7219_Write
	pop	ar7
;	display.h:67: for(byte_t i=6; i>0; i--) {
	dec	r7
	sjmp	00103$
00101$:
;	display.h:74: MAX7219_Write(7, digit_value/10);
	mov	r7,_Display_Write_PARM_3
	mov	ar6,r7
	mov	b,#0x0a
	mov	a,r6
	div	ab
	mov	_MAX7219_Write_PARM_2, a
	mov	dpl, #0x07
	push	ar7
	lcall	_MAX7219_Write
	pop	ar7
;	display.h:75: MAX7219_Write(8, digit_value%10);
	mov	b,#0x0a
	mov	a,r7
	div	ab
	mov	r7,b
	mov	_MAX7219_Write_PARM_2,r7
	mov	dpl, #0x08
;	display.h:76: }
	ljmp	_MAX7219_Write
;------------------------------------------------------------
;Allocation info for local variables in function 'LED_WriteData'
;------------------------------------------------------------
;data          Allocated to registers 
;i             Allocated to registers r7 
;------------------------------------------------------------
;	led.h:14: void LED_WriteData(byte_t data) {
;	-----------------------------------------
;	 function LED_WriteData
;	-----------------------------------------
_LED_WriteData:
;	led.h:19: __asm__("mov a, dpl");
	mov	a, dpl
;	led.h:21: for(i=0; i<4; i++) {
	mov	r7,#0x00
00102$:
;	led.h:22: LED_CLK_PIN = 0;
;	assignBit
	clr	_P3_4
;	led.h:24: __asm__("rrc a");
	rrc	a
;	led.h:25: ASM_MOV_CARRY_TO_PIN(LED_DIN_PIN);
	mov	_P3_2, c
;	led.h:27: LED_CLK_PIN = 1;
;	assignBit
	setb	_P3_4
;	led.h:21: for(i=0; i<4; i++) {
	inc	r7
	cjne	r7,#0x04,00113$
00113$:
	jc	00102$
;	led.h:29: }
	ret
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
;value         Allocated with name '_Serial_ReadFloat_value_10000_74'
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
	mov	_Serial_ReadFloat_value_10000_74,_SBUF
;	serial.h:89: __asm__("2$: jnb _RI, 2$");
2$:
	jnb _RI, 2$
;	serial.h:90: __asm__("clr _RI");
	clr	_RI
;	serial.h:91: p[1] = SBUF;
	mov	r0,#(_Serial_ReadFloat_value_10000_74 + 0x0001)
	mov	@r0,_SBUF
;	serial.h:93: __asm__("3$: jnb _RI, 3$");
3$:
	jnb _RI, 3$
;	serial.h:94: __asm__("clr _RI");
	clr	_RI
;	serial.h:95: p[2] = SBUF;
	mov	r0,#(_Serial_ReadFloat_value_10000_74 + 0x0002)
	mov	@r0,_SBUF
;	serial.h:97: __asm__("4$: jnb _RI, 4$");
4$:
	jnb _RI, 4$
;	serial.h:98: __asm__("clr _RI");
	clr	_RI
;	serial.h:99: p[3] = SBUF;
	mov	r0,#(_Serial_ReadFloat_value_10000_74 + 0x0003)
	mov	@r0,_SBUF
;	serial.h:101: return value;
	mov	dpl, _Serial_ReadFloat_value_10000_74
	mov	dph, (_Serial_ReadFloat_value_10000_74 + 1)
	mov	b, (_Serial_ReadFloat_value_10000_74 + 2)
	mov	a, (_Serial_ReadFloat_value_10000_74 + 3)
;	serial.h:102: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;key           Allocated to registers r7 
;t_go0         Allocated to registers 
;counter       Allocated with name '_main_counter_10000_80'
;__300000007   Allocated to registers 
;th1           Allocated to registers 
;__300000009   Allocated to registers 
;n_SCON        Allocated to registers 
;_a            Allocated with name '_main__a_50000_120'
;_b            Allocated with name '_main__b_50000_120'
;__400000018   Allocated to registers r4 r5 r6 r7 
;__400000014   Allocated to registers r4 r5 r6 r7 
;delta_angle   Allocated to registers r4 r5 r6 r7 
;__400000015   Allocated to registers r0 r1 r2 r3 
;__400000016   Allocated to registers r4 r5 r6 r7 
;vx            Allocated to registers 
;vy            Allocated to registers 
;__400000019   Allocated to registers 
;value         Allocated to registers 
;------------------------------------------------------------
;	pgc.c:57: int main(void) {    
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	pgc.c:60: byte_t counter = 0;
	mov	_main_counter_10000_80,#0x00
;	pgc.c:63: REG1 = 0;
	mov	dptr,#_REG1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	pgc.c:64: REG2 = 0;
	mov	dptr,#_REG2
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	pgc.c:65: REG3 = 0;
	mov	dptr,#_REG3
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
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
;	pgc.c:72: Serial_SendByte(0x09); // request gravity y
	mov	dpl, #0x09
	lcall	_Serial_SendByte
;	pgc.c:73: gravity_y = Serial_ReadFloat(); // wait answer and save
	lcall	_Serial_ReadFloat
	mov	r3, dpl
	mov	r4, dph
	mov	r5, b
	mov	r6, a
	mov	dptr,#_gravity_y
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	pgc.c:77: TMOD &= 0xF0;
	anl	_TMOD,#0xf0
;	pgc.c:78: TMOD |= 0x01;
	orl	_TMOD,#0x01
;	pgc.c:80: TH0 = 0x00;
	mov	_TH0,#0x00
;	pgc.c:81: TL0 = 0x00;
	mov	_TL0,#0x00
;	pgc.c:83: ET0 = 0;
;	assignBit
	clr	_ET0
;	pgc.c:84: EA = 0;
;	assignBit
	clr	_EA
;	pgc.c:86: TR0 = 1;
;	assignBit
	setb	_TR0
;	pgc.c:91: for (key=1; key<=3; key++) {
	mov	r6,#0x01
00165$:
;	pgc.c:92: MAX7219_Select(key);
	mov	dpl, r6
	push	ar6
	lcall	_MAX7219_Select
;	display.h:54: MAX7219_Write(MAX7219_REG_SHUTDOWN, 0x01);  // wake up
	mov	_MAX7219_Write_PARM_2,#0x01
	mov	dpl, #0x0c
	lcall	_MAX7219_Write
;	display.h:55: MAX7219_Write(MAX7219_REG_TEST, 0x00);      // normal mode
	mov	_MAX7219_Write_PARM_2,#0x00
	mov	dpl, #0x0f
	lcall	_MAX7219_Write
;	display.h:56: MAX7219_Write(MAX7219_REG_DECODE, 0xFF);    // decode mode
	mov	_MAX7219_Write_PARM_2,#0xff
	mov	dpl, #0x09
	lcall	_MAX7219_Write
;	display.h:57: MAX7219_Write(MAX7219_REG_SCANLIMIT, 0x07); // amount digits
	mov	_MAX7219_Write_PARM_2,#0x07
	mov	dpl, #0x0b
	lcall	_MAX7219_Write
;	display.h:58: MAX7219_Write(MAX7219_REG_INTENSITY, 0x0F); // brightness
	mov	_MAX7219_Write_PARM_2,#0x0f
	mov	dpl, #0x0a
	lcall	_MAX7219_Write
	pop	ar6
;	pgc.c:91: for (key=1; key<=3; key++) {
	inc	r6
	mov	a,r6
	add	a,#0xff - 0x03
	jnc	00165$
;	pgc.c:97: while (1) {
00156$:
;	pgc.c:44: Serial_SendByte(0x20); // request package
	mov	dpl, #0x20
	lcall	_Serial_SendByte
;	pgc.c:46: ut = Serial_ReadFloat();
	lcall	_Serial_ReadFloat
	mov	r3, dpl
	mov	r4, dph
	mov	r5, b
	mov	r6, a
	mov	dptr,#_ut
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	pgc.c:47: pos_x = Serial_ReadFloat();
	lcall	_Serial_ReadFloat
	mov	r3, dpl
	mov	r4, dph
	mov	r5, b
	mov	r6, a
	mov	dptr,#_pos_x
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	pgc.c:48: pos_y = Serial_ReadFloat();
	lcall	_Serial_ReadFloat
	mov	r3, dpl
	mov	r4, dph
	mov	r5, b
	mov	r6, a
	mov	dptr,#_pos_y
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	pgc.c:49: vel_x = Serial_ReadFloat();
	lcall	_Serial_ReadFloat
	mov	r3, dpl
	mov	r4, dph
	mov	r5, b
	mov	r6, a
	mov	dptr,#_vel_x
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	pgc.c:50: vel_y = Serial_ReadFloat();
	lcall	_Serial_ReadFloat
	mov	r3, dpl
	mov	r4, dph
	mov	r5, b
	mov	r6, a
	mov	dptr,#_vel_y
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	pgc.c:51: angle = Serial_ReadFloat();
	lcall	_Serial_ReadFloat
	mov	r3, dpl
	mov	r4, dph
	mov	r5, b
	mov	r6, a
	mov	dptr,#_angle
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	pgc.c:52: ang_vel = Serial_ReadFloat();
	lcall	_Serial_ReadFloat
	mov	r3, dpl
	mov	r4, dph
	mov	r5, b
	mov	r6, a
	mov	dptr,#_ang_vel
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	pgc.c:53: av_accel = Serial_ReadFloat();
	lcall	_Serial_ReadFloat
	mov	r3, dpl
	mov	r4, dph
	mov	r5, b
	mov	r6, a
	mov	dptr,#_av_accel
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	pgc.c:54: av_accel_ang = Serial_ReadFloat();
	lcall	_Serial_ReadFloat
	mov	r3, dpl
	mov	r4, dph
	mov	r5, b
	mov	r6, a
	mov	dptr,#_av_accel_ang
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	pgc.c:100: t_go = t_go0 - ut;
	mov	dptr,#_ut
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
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
;	pgc.c:102: if (t_go < 3.0f) t_go = 3.0f;
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
	mov	r6, dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r6
	jz	00103$
	clr	a
	mov	_t_go,a
	mov	(_t_go + 1),a
	mov	(_t_go + 2),#0x40
	mov	(_t_go + 3),#0x40
00103$:
;	pgc.c:36: float _a = -12.0f / (t_go * t_go);
	push	_t_go
	push	(_t_go + 1)
	push	(_t_go + 2)
	push	(_t_go + 3)
	mov	dpl, _t_go
	mov	dph, (_t_go + 1)
	mov	b, (_t_go + 2)
	mov	a, (_t_go + 3)
	lcall	___fsmul
	mov	r3, dpl
	mov	r4, dph
	mov	r5, b
	mov	r6, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar3
	push	ar4
	push	ar5
	push	ar6
;	pgc.c:37: float _b = -6.0f / t_go;
	mov	dptr,#0x0000
	mov	b, #0x40
	mov	a, #0xc1
	lcall	___fsdiv
	mov	_main__a_50000_120,dpl
	mov	(_main__a_50000_120 + 1),dph
	mov	(_main__a_50000_120 + 2),b
	mov	(_main__a_50000_120 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_t_go
	push	(_t_go + 1)
	push	(_t_go + 2)
	push	(_t_go + 3)
;	pgc.c:39: a0_x = _a * pos_x + _b * vel_x;
	mov	dptr,#0x0000
	mov	a,#0xc0
	mov	b,a
	lcall	___fsdiv
	mov	_main__b_50000_120,dpl
	mov	(_main__b_50000_120 + 1),dph
	mov	(_main__b_50000_120 + 2),b
	mov	(_main__b_50000_120 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_pos_x
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl, _main__a_50000_120
	mov	dph, (_main__a_50000_120 + 1)
	mov	b, (_main__a_50000_120 + 2)
	mov	a, (_main__a_50000_120 + 3)
	lcall	___fsmul
	mov	r0, dpl
	mov	r1, dph
	mov	r2, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar7
	push	ar2
	push	ar1
	push	ar0
	mov	dptr,#_vel_x
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl, _main__b_50000_120
	mov	dph, (_main__b_50000_120 + 1)
	mov	b, (_main__b_50000_120 + 2)
	mov	a, (_main__b_50000_120 + 3)
	lcall	___fsmul
	mov	r3, dpl
	mov	r4, dph
	mov	r5, b
	mov	r6, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar7
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	mov	dpl, r0
	mov	dph, r1
	mov	b, r2
	mov	a, r7
	lcall	___fsadd
	mov	_a0_x,dpl
	mov	(_a0_x + 1),dph
	mov	(_a0_x + 2),b
	mov	(_a0_x + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	pgc.c:40: a0_y = _a * pos_y + _b * vel_y - gravity_y;
	mov	dptr,#_pos_y
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl, _main__a_50000_120
	mov	dph, (_main__a_50000_120 + 1)
	mov	b, (_main__a_50000_120 + 2)
	mov	a, (_main__a_50000_120 + 3)
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
	mov	dptr,#_vel_y
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl, _main__b_50000_120
	mov	dph, (_main__b_50000_120 + 1)
	mov	b, (_main__b_50000_120 + 2)
	mov	a, (_main__b_50000_120 + 3)
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
	mov	dptr,#_gravity_y
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
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
;	pgc.c:108: throttle = sqrtf(a0_x * a0_x + a0_y * a0_y) / av_accel;
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
	mov	dptr,#_av_accel
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
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
;	pgc.c:111: if (throttle != 0) {
	mov	b,_throttle
	mov	a,(_throttle + 1)
	orl	b,a
	mov	a,(_throttle + 2)
	orl	b,a
	mov	a,(_throttle + 3)
	anl	a,#0x7F
	orl	a,b
	jnz	00337$
	ljmp	00110$
00337$:
;	pgc.c:113: float delta_angle = angle_from_vec2(a0_x, a0_y) - angle;
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
	mov	dptr,#_angle
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
;	pgc.c:115: if (delta_angle > 3.14159265f) {
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
;	pgc.c:116: delta_angle -= 6.2831853f;
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
;	pgc.c:117: } else if (delta_angle < -3.14159265f) {
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
;	pgc.c:118: delta_angle += 6.2831853f;
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
;	pgc.c:123: gimbal = (ang_vel - sqrtf(0.8f * fabsf(delta_angle) * av_accel_ang * throttle) * signf(delta_angle)) / av_accel_ang;
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
	mov	dptr,#_av_accel_ang
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
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
;	utils.h:20: return value < 0 ? -1 : 1;
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
	jz	00169$
	mov	r6,#0xff
	mov	r7,#0xff
	sjmp	00170$
00169$:
	mov	r6,#0x01
	mov	r7,#0x00
00170$:
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
;	pgc.c:123: gimbal = (ang_vel - sqrtf(0.8f * fabsf(delta_angle) * av_accel_ang * throttle) * signf(delta_angle)) / av_accel_ang;
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
	mov	dptr,#_ang_vel
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl, r0
	mov	dph, r1
	mov	b, r2
	mov	a, r3
	lcall	___fssub
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_av_accel_ang
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
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
;	pgc.c:125: gimbal = 0.0f;
	clr	a
	mov	_gimbal,a
	mov	(_gimbal + 1),a
	mov	(_gimbal + 2),a
	mov	(_gimbal + 3),a
00111$:
;	pgc.c:129: Serial_SendByte(0x21); // send package
	mov	dpl, #0x21
	lcall	_Serial_SendByte
;	pgc.c:130: Serial_SendFloat(throttle); // throttle
	mov	dpl, _throttle
	mov	dph, (_throttle + 1)
	mov	b, (_throttle + 2)
	mov	a, (_throttle + 3)
	lcall	_Serial_SendFloat
;	pgc.c:131: Serial_SendFloat(gimbal); // gimbal
	mov	dpl, _gimbal
	mov	dph, (_gimbal + 1)
	mov	b, (_gimbal + 2)
	mov	a, (_gimbal + 3)
	lcall	_Serial_SendFloat
;	pgc.c:134: counter++;
	inc	_main_counter_10000_80
;	pgc.c:135: if (counter == 5) {
	mov	a,#0x05
	cjne	a,_main_counter_10000_80,00341$
	sjmp	00342$
00341$:
	ljmp	00122$
00342$:
;	pgc.c:136: counter = 0;
	mov	_main_counter_10000_80,#0x00
;	pgc.c:138: REG1 = REG2 = REG3 = 0;
	mov	dptr,#_REG3
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_REG2
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_REG1
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	pgc.c:140: if (dsky_state != 0) { // editting
	mov	a,_dsky_state
	jz	00113$
;	pgc.c:141: led_state &= 0b1110;
	anl	_led_state,#0x0e
	sjmp	00114$
00113$:
;	pgc.c:143: led_state |= 0b0001;
	orl	_led_state,#0x01
00114$:
;	pgc.c:147: LED_WriteData(led_state);
	mov	dpl, _led_state
	lcall	_LED_WriteData
;	pgc.c:149: if (VERB == 16) {
	mov	a,#0x10
	cjne	a,_VERB,00344$
	sjmp	00345$
00344$:
	ljmp	00120$
00345$:
;	pgc.c:150: switch (NOUN) {
	mov	a,#0x01
	cjne	a,_NOUN,00346$
	sjmp	00115$
00346$:
	mov	a,#0x02
;	pgc.c:151: case 1:
	cjne	a,_NOUN,00118$
	sjmp	00116$
00115$:
;	pgc.c:152: REG1 = t_go;
	mov	dptr,#_REG1
	mov	a,_t_go
	movx	@dptr,a
	mov	a,(_t_go + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_t_go + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_t_go + 3)
	inc	dptr
	movx	@dptr,a
;	pgc.c:153: break;
;	pgc.c:155: case 2:
	sjmp	00118$
00116$:
;	pgc.c:156: Serial_SendByte(0x0a);
	mov	dpl, #0x0a
	lcall	_Serial_SendByte
;	pgc.c:157: REG1 = Serial_ReadFloat();
	lcall	_Serial_ReadFloat
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	dptr,#_REG1
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	pgc.c:162: }
00118$:
;	pgc.c:163: REG2 = fabsf(vel_y);
	mov	dptr,#_vel_y
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_fabsf
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	dptr,#_REG2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	pgc.c:164: REG3 = fabsf(pos_y);
	mov	dptr,#_pos_y
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_fabsf
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	dptr,#_REG3
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00120$:
;	pgc.c:167: Display_Write(1, REG1, dsky_PROG);
	mov	dptr,#_REG1
	movx	a,@dptr
	mov	_Display_Write_PARM_2,a
	inc	dptr
	movx	a,@dptr
	mov	(_Display_Write_PARM_2 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_Display_Write_PARM_2 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_Display_Write_PARM_2 + 3),a
	mov	_Display_Write_PARM_3,_dsky_PROG
	mov	dpl, #0x01
	lcall	_Display_Write
;	pgc.c:168: Display_Write(2, REG2, dsky_VERB);
	mov	dptr,#_REG2
	movx	a,@dptr
	mov	_Display_Write_PARM_2,a
	inc	dptr
	movx	a,@dptr
	mov	(_Display_Write_PARM_2 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_Display_Write_PARM_2 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_Display_Write_PARM_2 + 3),a
	mov	_Display_Write_PARM_3,_dsky_VERB
	mov	dpl, #0x02
	lcall	_Display_Write
;	pgc.c:169: Display_Write(3, REG3, dsky_NOUN);
	mov	dptr,#_REG3
	movx	a,@dptr
	mov	_Display_Write_PARM_2,a
	inc	dptr
	movx	a,@dptr
	mov	(_Display_Write_PARM_2 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_Display_Write_PARM_2 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_Display_Write_PARM_2 + 3),a
	mov	_Display_Write_PARM_3,_dsky_NOUN
	mov	dpl, #0x03
	lcall	_Display_Write
00122$:
;	pgc.c:173: key = Keyboard_Read();
	lcall	_Keyboard_Read
	mov	r7, dpl
;	pgc.c:175: if (key == 0xFF) {
	cjne	r7,#0xff,00124$
;	pgc.c:176: dsky_key_pressed = false;
	mov	_dsky_key_pressed,#0x00
;	pgc.c:177: continue;
	ljmp	00156$
00124$:
;	pgc.c:180: if (dsky_key_pressed) continue;
	mov	a,_dsky_key_pressed
	jz	00350$
	ljmp	00156$
00350$:
;	pgc.c:182: dsky_key_pressed = true;
	mov	_dsky_key_pressed,#0x01
;	pgc.c:192: if (key == 0x0A) { // CLR (*)
	cjne	r7,#0x0a,00133$
;	pgc.c:193: switch (dsky_state) {                
	mov	a,#0x01
	cjne	a,_dsky_state,00353$
	sjmp	00127$
00353$:
	mov	a,#0x02
	cjne	a,_dsky_state,00354$
	sjmp	00128$
00354$:
	mov	a,#0x03
	cjne	a,_dsky_state,00355$
	sjmp	00129$
00355$:
	ljmp	00156$
;	pgc.c:194: case 1: // PROG
00127$:
;	pgc.c:195: dsky_PROG = 0;
	mov	_dsky_PROG,#0x00
;	pgc.c:196: break;
	ljmp	00156$
;	pgc.c:198: case 2: // VERB
00128$:
;	pgc.c:199: dsky_VERB = 0;
	mov	_dsky_VERB,#0x00
;	pgc.c:200: break;
	ljmp	00156$
;	pgc.c:202: case 3: // NOUN
00129$:
;	pgc.c:203: dsky_NOUN = 0;
	mov	_dsky_NOUN,#0x00
;	pgc.c:204: break;
	ljmp	00156$
;	pgc.c:209: continue;
00133$:
;	pgc.c:212: if (key == 0x0B) { // ENTER (#)
	cjne	r7,#0x0b,00141$
;	pgc.c:213: switch (dsky_state) {
	mov	a,_dsky_state
	add	a,#0xff - 0x03
	jc	00139$
	mov	a,_dsky_state
	mov	b,#0x03
	mul	ab
	mov	dptr,#00359$
	jmp	@a+dptr
00359$:
	ljmp	00156$
	ljmp	00135$
	ljmp	00136$
	ljmp	00137$
;	pgc.c:217: case 1:
00135$:
;	pgc.c:218: PROG = dsky_PROG;
	mov	_PROG,_dsky_PROG
;	pgc.c:219: break;
;	pgc.c:221: case 2:
	sjmp	00139$
00136$:
;	pgc.c:222: VERB = dsky_VERB;
	mov	_VERB,_dsky_VERB
;	pgc.c:223: break;
;	pgc.c:225: case 3:
	sjmp	00139$
00137$:
;	pgc.c:226: NOUN = dsky_NOUN;
	mov	_NOUN,_dsky_NOUN
;	pgc.c:231: }
00139$:
;	pgc.c:233: dsky_state = 0;
	mov	_dsky_state,#0x00
;	pgc.c:234: continue;
	ljmp	00156$
00141$:
;	pgc.c:237: if (key == 0x0C) { // PROG
	cjne	r7,#0x0c,00143$
;	pgc.c:238: dsky_PROG = 0;
	mov	_dsky_PROG,#0x00
;	pgc.c:239: dsky_state = 1;
	mov	_dsky_state,#0x01
;	pgc.c:240: continue;
	ljmp	00156$
00143$:
;	pgc.c:243: if (key == 0x0D) { // VERB
	cjne	r7,#0x0d,00145$
;	pgc.c:244: dsky_VERB = 0;
	mov	_dsky_VERB,#0x00
;	pgc.c:245: dsky_state = 2;
	mov	_dsky_state,#0x02
;	pgc.c:246: continue;
	ljmp	00156$
00145$:
;	pgc.c:249: if (key == 0x0E) { // NOUN
	cjne	r7,#0x0e,00147$
;	pgc.c:250: dsky_NOUN = 0;
	mov	_dsky_NOUN,#0x00
;	pgc.c:251: dsky_state = 3;
	mov	_dsky_state,#0x03
;	pgc.c:252: continue;
	ljmp	00156$
00147$:
;	pgc.c:255: if (dsky_state != 0) { // DSKY: edditing | KEY: 0 - 9
	mov	a,_dsky_state
	jnz	00366$
	ljmp	00156$
00366$:
;	pgc.c:256: switch (dsky_state) {                
	mov	a,#0x01
	cjne	a,_dsky_state,00367$
	sjmp	00148$
00367$:
	mov	a,#0x02
	cjne	a,_dsky_state,00368$
	sjmp	00149$
00368$:
	mov	a,#0x03
	cjne	a,_dsky_state,00369$
	sjmp	00150$
00369$:
	ljmp	00156$
;	pgc.c:257: case 1: // PROG
00148$:
;	pgc.c:258: dsky_PROG *= 10;
	mov	a,_dsky_PROG
	mov	b,#0x0a
	mul	ab
;	pgc.c:259: dsky_PROG += key;
	add	a,r7
	mov	_dsky_PROG,a
;	pgc.c:260: break;
	ljmp	00156$
;	pgc.c:262: case 2: // VERB
00149$:
;	pgc.c:263: dsky_VERB *= 10;
	mov	a,_dsky_VERB
	mov	b,#0x0a
	mul	ab
;	pgc.c:264: dsky_VERB += key;
	add	a,r7
	mov	_dsky_VERB,a
;	pgc.c:265: break;
	ljmp	00156$
;	pgc.c:267: case 3: // NOUN
00150$:
;	pgc.c:268: dsky_NOUN *= 10;
	mov	a,_dsky_NOUN
	mov	b,#0x0a
	mul	ab
;	pgc.c:269: dsky_NOUN += key;
	add	a,r7
	mov	_dsky_NOUN,a
;	pgc.c:270: break;
;	pgc.c:274: }
;	pgc.c:277: }
	ljmp	00156$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
