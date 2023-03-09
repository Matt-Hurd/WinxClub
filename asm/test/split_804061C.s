    INCLUDE asm/macros.inc
    AREA text, CODE


	thumb_func_start sub_804061C
sub_804061C ;@ 0x0804061C
	bx pc
	ALIGN

	arm_func_start sub_8040620
sub_8040620 ;@ 0x08040620
	LDR r3, _08040638 ;@ =0xCCCCCCCD
	umull r1, r2, r3, r0
	LDR r3, _0804063C ;@ =0xFFFFB000
	MOV r1, r2, LSR #0xe
	mla r0, r3, r1, r0
	bx lr
	ALIGN
_08040638 DCDU 0xCCCCCCCD
_0804063C DCDU 0xFFFFB000
