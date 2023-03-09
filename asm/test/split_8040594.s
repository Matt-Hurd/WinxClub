    INCLUDE asm/macros.inc
    AREA text, CODE


	thumb_func_start sub_8040594
sub_8040594 ;@ 0x08040594
	bx pc
	ALIGN

	arm_func_start sub_8040598
sub_8040598 ;@ 0x08040598
	LDR r3, _080405B0 ;@ =0x51EB851F
	umull r1, r2, r3, r0
	mvn r3, #0x63
	MOV r1, r2, LSR #5
	mla r0, r3, r1, r0
	bx lr
	ALIGN
_080405B0 DCDU 0x51EB851F
