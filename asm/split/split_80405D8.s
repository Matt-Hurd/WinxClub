	INCLUDE asm/macros.inc
	AREA text, CODE


	thumb_func_start sub_80405D8
	bx pc
	ALIGN
	thumb_func_end sub_80405D8

	arm_func_start sub_80405DC
	LDR r3, _080405F4
	umull r1, r2, r3, r0
	mvn r3, #0xb
	MOV r1, r2, LSR #3
	mla r0, r3, r1, r0
	bx lr
	arm_func_end sub_80405DC
	ALIGN
_080405F4 DCDU 0xAAAAAAAB
	END
