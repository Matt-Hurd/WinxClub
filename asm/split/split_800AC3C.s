	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_8006FE4
	IMPORT sub_8007104
	IMPORT sub_803D9A8

	arm_func_start sub_800AC3C

sub_800AC3C
	STMFD SP!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldrh r0, [r0, #4]
	mov r5, r1
	mov r1, #2
	cmp r0, #0
	LDRNE r0, [r4, #0x20]
	STRNE r0, [r4, #0x30]
	add r0, r4, #0x24
	mov r6, r0
	STR r5, [r4, #0x34]
	bl sub_8007104
	mov r7, #0
	cmp r0, #1
	bne %12
	mov r0, r6
	bl sub_8006FE4
	mov r2, #0
	mov r1, #0
	LDR r0, [r4, #0x54]
	bl sub_803D9A8
	STR r7, [r4, #0x54]
	b %13
12
	cmp r0, #0
	beq %13
	mov r2, #0
	mov r1, #0
	LDR r0, [r4, #0x54]
	bl sub_803D9A8
	STR r7, [r4, #0x54]
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	mov r0, #0
	bx lr
13
	LDR r0, [r4, #0x30]
	sub r0, r0, r5
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	bx lr

	END
