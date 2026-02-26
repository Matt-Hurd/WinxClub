	INCLUDE asm/macros.inc
	AREA text, CODE

	arm_func_start sub_8013024

sub_8013024
	STMFD SP!, {r4, r5, lr}
	mov r5, #0x8000
	sub r5, r5, #8
1
	LDRSH ip, [r1], #2
	rsb r2, r2, r2, lsl #3
	MOV r2, r2, LSL #0xc
	add r2, ip, r2, asr #15
	MOV lr, r2, LSL #1
	subs ip, lr, #0x7f00
	subges ip, ip, #0xff
	movgt ip, r5
	bgt %2
	cmn lr, #0x8000
	bicge ip, lr, #7
	bicge ip, ip, #0xff000000
	bicge ip, ip, #0xff0000
	movlt ip, #0x8000
2
	MOV lr, ip, ASR #0x1f
	add ip, ip, lr, lsr #24
	MOV ip, ip, ASR #8
	MOV r4, ip, LSL #0x10
	LDRSH ip, [r1], #2
	rsb r2, r2, r2, lsl #3
	MOV r2, r2, LSL #0xc
	add r2, ip, r2, asr #15
	MOV lr, r2, LSL #1
	subs ip, lr, #0x7f00
	subges ip, ip, #0xff
	movgt ip, r5
	MOV r4, r4, ASR #0x10
	bgt %3
	cmn lr, #0x8000
	bicge ip, lr, #7
	bicge ip, ip, #0xff000000
	bicge ip, ip, #0xff0000
	movlt ip, #0x8000
3
	MOV lr, ip, ASR #0x1f
	add ip, ip, lr, lsr #24
	MOV ip, ip, ASR #8
	orr ip, r4, ip, lsl #8
	strh ip, [r0], #2
	subs r3, r3, #2
	bne %1
	LDMFD SP!, {r4, r5, lr}
	mov r0, r2
	bx lr

	END
