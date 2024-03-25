    INCLUDE asm/macros.inc
    AREA text, CODE


	thumb_func_start sub_80405F8
sub_80405F8 ;@ 0x080405F8
	bx pc
	ALIGN

	arm_func_start sub_80405FC
sub_80405FC ;@ 0x080405FC
	LDR r3, _08040614 ;@ =0xFED954B7
	umull r1, r2, r3, r0
	LDR r3, _08040618 ;@ =0xFFFFBFB6
	MOV r1, r2, LSR #0xe
	mla r0, r3, r1, r0
	bx lr
	ALIGN
_08040614 DCDU 0xFED954B7
_08040618 DCDU 0xFFFFBFB6
	END