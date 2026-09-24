	arm_func_start sub_800A2B8
	STMFD SP!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r0
	bl sub_800808E
	LDR r0, [r5]
	mov r1, #0
	add r0, r0, #4
	STR r0, [r4, #0x20]
	LDR r0, [r5, #8]
	STR r0, [r4, #0x24]
	LDR r0, [r5, #8]
	STR r0, [r4, #0x28]
	LDRB r0, [r5, #0xc]
	cmp r0, #2
	LDR r0, [r5, #8]
	bne %3
	STR r0, [r4, #0x2c]
	LDR r0, [r5]
	LDR r0, [r0]
	STR r0, [r4, #0x30]
	b %4
3
	LDR r2, [r5]
	LDR r2, [r2]
	add r0, r0, r2
	add r2, r4, #0x2c
	STMIA r2, {r0, r1}
4
	mov r0, #1
	STR r1, [r4, #0x34]!
	STR r0, [r4, #4]
	LDMFD SP!, {r3, r4, r5, lr}
	bx lr
	arm_func_end sub_800A2B8

