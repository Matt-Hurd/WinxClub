    INCLUDE asm/macros.inc
    AREA text, CODE


	thumb_func_start sub_8040490
sub_8040490 ;@ 0x08040490
	bx pc
	ALIGN

	arm_func_start sub_8040494
sub_8040494 ;@ 0x08040494
	LDR r3, _080404B0 ;@ =0x66666667
	MOV r2, r0, ASR #0x1f
	smull ip, r1, r3, r0
	mvn r3, #0x13
	rsb r1, r2, r1, asr #3
	mla r0, r3, r1, r0
	bx lr
	ALIGN
_080404B0 DCDU 0x66666667
	END