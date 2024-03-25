    INCLUDE asm/macros.inc
    AREA text, CODE


	thumb_func_start sub_8040504
sub_8040504 ;@ 0x08040504
	bx pc
	ALIGN

	arm_func_start sub_8040508
sub_8040508 ;@ 0x08040508
	LDR r3, _08040524 ;@ =0x2E8BA2E9
	MOV r2, r0, ASR #0x1f
	smull ip, r1, r3, r0
	mvn r3, #0x57
	rsb r1, r2, r1, asr #4
	mla r0, r3, r1, r0
	bx lr
	ALIGN
_08040524 DCDU 0x2E8BA2E9
	END