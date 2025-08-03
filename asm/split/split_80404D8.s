	INCLUDE asm/macros.inc
	AREA text, CODE


	thumb_func_start sub_80404D8
sub_80404D8
	bx pc
	ALIGN

	arm_func_start sub_80404DC
sub_80404DC
	LDR r3, _080404FC
	MOV r2, r0, ASR #0x1f
	smull ip, r1, r3, r0
	LDR r3, _08040500
	add r1, r1, r0
	rsb r1, r2, r1, asr #8
	mla r0, r3, r1, r0
	bx lr
	ALIGN
_080404FC DCDU 0xB60B60B7
_08040500 DCDU 0xFFFFFE98
	END