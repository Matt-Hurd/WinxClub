    INCLUDE asm/macros.inc
    AREA text, CODE


	thumb_func_start sub_8040574
sub_8040574 ;@ 0x08040574
	bx pc
	ALIGN

	arm_func_start sub_8040578
sub_8040578 ;@ 0x08040578
	LDR r3, _08040590 ;@ =0xCCCCCCCD
	umull r1, r2, r3, r0
	mvn r3, #9
	MOV r1, r2, LSR #3
	mla r0, r3, r1, r0
	bx lr
	ALIGN
_08040590 DCDU 0xCCCCCCCD
	END