	INCLUDE asm/macros.inc
	AREA text, CODE


	thumb_func_start sub_80405B4
	bx pc
	ALIGN
	thumb_func_end sub_80405B4

	arm_func_start sub_80405B8
	LDR r3, _080405D0
	umull r1, r2, r3, r0
	LDR r3, _080405D4
	MOV r1, r2, LSR #6
	mla r0, r3, r1, r0
	bx lr
	arm_func_end sub_80405B8
	ALIGN
_080405D0 DCDU 0x10624DD3
_080405D4 DCDU 0xFFFFFC18
	END
