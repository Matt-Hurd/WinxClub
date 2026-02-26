	INCLUDE asm/macros.inc
	AREA text, CODE


	arm_func_start sub_8040448

sub_8040448
	LDR r3, _08040464
	MOV r2, r0, ASR #0x1f
	smull ip, r1, r3, r0
	mvn r3, #9
	rsb r1, r2, r1, asr #2
	mla r0, r3, r1, r0
	bx lr
	ALIGN

	ALIGN
_08040464 DCDU 0x66666667

	END
