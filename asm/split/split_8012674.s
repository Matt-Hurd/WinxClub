	INCLUDE asm/macros.inc
	AREA text, CODE

	arm_func_start sub_8012674

sub_8012674
	STMFD SP!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	LDRSH r2, [r0]
	LDRSH ip, [r0, #2]
	LDRSH lr, [r0, #4]
	LDRSH r4, [r0, #6]
	LDRSH r5, [r0, #8]
	LDRSH r6, [r0, #0xa]
	LDRSH r7, [r0, #0xc]
	LDRSH r8, [r0, #0xe]
	LDRSH sb, [r1]
	sub sp, sp, #0x18
	STR sb, [sp, #0x14]
	LDRSH sb, [r1, #2]
	STR sb, [sp, #0x10]
	LDRSH sb, [r1, #4]
	STR sb, [sp, #0xc]
	LDRSH sb, [r1, #6]
	STR sb, [sp, #8]
	LDRSH sb, [r1, #8]
	LDRSH sl, [r1, #0xa]
	LDRSH fp, [r1, #0xc]
	LDRSH r1, [r1, #0xe]
	STR r1, [sp, #4]
1
	LDRSH r1, [r3]
	STR r1, [sp]
	LDR r1, [sp, #4]
	mul r1, r8, r1
	LDR r8, [sp]
	sub r1, r8, r1, asr #15
	mul r8, r7, fp
	sub r1, r1, r8, asr #15
	mul r8, r1, fp
	add r8, r7, r8, asr #15
	mul r7, r6, sl
	sub r1, r1, r7, asr #15
	mul r7, r1, sl
	add r7, r6, r7, asr #15
	mul r6, r5, sb
	sub r1, r1, r6, asr #15
	mul r6, r1, sb
	add r6, r5, r6, asr #15
	LDR r5, [sp, #8]
	mul r5, r4, r5
	sub r1, r1, r5, asr #15
	LDR r5, [sp, #8]
	mul r5, r1, r5
	add r5, r4, r5, asr #15
	LDR r4, [sp, #0xc]
	mul r4, lr, r4
	sub r1, r1, r4, asr #15
	LDR r4, [sp, #0xc]
	mul r4, r1, r4
	add r4, lr, r4, asr #15
	LDR lr, [sp, #0x10]
	mul lr, ip, lr
	sub r1, r1, lr, asr #15
	LDR lr, [sp, #0x10]
	mul lr, r1, lr
	add lr, ip, lr, asr #15
	LDR ip, [sp, #0x14]
	mul ip, r2, ip
	sub r1, r1, ip, asr #15
	LDR ip, [sp, #0x14]
	strh r1, [r3], #2
	mul ip, r1, ip
	add ip, r2, ip, asr #15
	mov r2, r1
	LDR r1, [sp, #0x20]
	subs r1, r1, #1
	STR r1, [sp, #0x20]
	bne %1
	strh r2, [r0]
	strh ip, [r0, #2]
	strh lr, [r0, #4]
	strh r4, [r0, #6]
	strh r5, [r0, #8]
	strh r6, [r0, #0xa]
	strh r7, [r0, #0xc]
	strh r8, [r0, #0xe]
	add sp, sp, #0x28
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r0, r3
	bx lr

	END
