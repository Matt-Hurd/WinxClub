    INCLUDE asm/macros.inc
    AREA text, CODE


	thumb_func_start sub_8040640
sub_8040640 ;@ 0x08040640
	bx pc
	ALIGN

	arm_func_start sub_8040644
sub_8040644 ;@ 0x08040644
	LDR r3, _0804065C ;@ =0xAAAAAAAB
	umull r1, r2, r3, r0
	mvn r3, #2
	MOV r1, r2, LSR #1
	mla r0, r3, r1, r0
	bx lr
	ALIGN
_0804065C DCDU 0xAAAAAAAB
