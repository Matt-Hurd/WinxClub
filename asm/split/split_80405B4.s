    INCLUDE asm/macros.inc
    AREA text, CODE


	thumb_func_start sub_80405B4
sub_80405B4 ;@ 0x080405B4
	bx pc
	ALIGN

	arm_func_start sub_80405B8
sub_80405B8 ;@ 0x080405B8
	LDR r3, _080405D0 ;@ =0x10624DD3
	umull r1, r2, r3, r0
	LDR r3, _080405D4 ;@ =0xFFFFFC18
	MOV r1, r2, LSR #6
	mla r0, r3, r1, r0
	bx lr
	ALIGN
_080405D0 DCDU 0x10624DD3
_080405D4 DCDU 0xFFFFFC18
	END