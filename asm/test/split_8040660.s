    INCLUDE asm/macros.inc
    AREA text, CODE


	thumb_func_start sub_8040660
sub_8040660 ;@ 0x08040660
	bx pc
	ALIGN

	arm_func_start sub_8040664
sub_8040664 ;@ 0x08040664
	LDR r3, _0804067C ;@ =0x91A2B3C5
	umull r1, r2, r3, r0
	LDR r3, _08040680 ;@ =0xFFFFF1F0
	MOV r1, r2, LSR #0xb
	mla r0, r3, r1, r0
	bx lr
	ALIGN
_0804067C DCDU 0x91A2B3C5
_08040680 DCDU 0xFFFFF1F0
