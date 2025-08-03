	INCLUDE asm/macros.inc
	AREA text, CODE


	thumb_func_start sub_8040550
sub_8040550
	bx pc
	ALIGN

	arm_func_start sub_8040554
sub_8040554
	LDR r3, _08040570
	MOV r2, r0, ASR #0x1f
	smull ip, r1, r3, r0
	mvn r3, #0x5f
	rsb r1, r2, r1, asr #4
	mla r0, r3, r1, r0
	bx lr
	ALIGN
_08040570 DCDU 0x2AAAAAAB
	END
