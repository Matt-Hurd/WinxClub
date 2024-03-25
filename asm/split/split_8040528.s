    INCLUDE asm/macros.inc
    AREA text, CODE


	thumb_func_start sub_8040528
sub_8040528 ;@ 0x08040528
	bx pc
	ALIGN

	arm_func_start sub_804052C
sub_804052C ;@ 0x0804052C
	LDR r3, _0804054C ;@ =0xB60B60B7
	MOV r2, r0, ASR #0x1f
	smull ip, r1, r3, r0
	mvn r3, #0x59
	add r1, r1, r0
	rsb r1, r2, r1, asr #6
	mla r0, r3, r1, r0
	bx lr
	ALIGN
_0804054C DCDU 0xB60B60B7
	END