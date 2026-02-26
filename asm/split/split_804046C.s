	INCLUDE asm/macros.inc
	AREA text, CODE


	arm_func_start sub_804046C

sub_804046C
	LDR r3, _0804048C
	MOV r2, r0, ASR #0x1f
	smull ip, r1, r3, r0
	mvn r3, #0xe
	add r1, r1, r0
	rsb r1, r2, r1, asr #3
	mla r0, r3, r1, r0
	bx lr
	ALIGN

	ALIGN
_0804048C DCDU 0x88888889

	END
