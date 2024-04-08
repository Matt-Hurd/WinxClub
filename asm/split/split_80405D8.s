    INCLUDE asm/macros.inc
    AREA text, CODE


	thumb_func_start sub_80405D8
sub_80405D8 ;@ 0x080405D8
	bx pc
	ALIGN

	arm_func_start sub_80405DC
sub_80405DC ;@ 0x080405DC
	LDR r3, _080405F4 ;@ =0xAAAAAAAB
	umull r1, r2, r3, r0
	mvn r3, #0xb
	MOV r1, r2, LSR #3
	mla r0, r3, r1, r0
	bx lr
	ALIGN
_080405F4 DCDU 0xAAAAAAAB
	END