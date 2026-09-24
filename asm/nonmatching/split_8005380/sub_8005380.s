	arm_func_start sub_8005380
sub_8005380
	STMFD SP!, {r3, r4, r5, lr}
	mov r4, r0
	cmp r2, #0
	LDRNE r0, [r4, #0x3c]
	mov r5, r1
	STRNE r0, [r2]
	LDRB r0, [r4]
	cmp r0, #4
	cmpne r0, #5
	bne %1
	LDR r1, [r4, #0xc]
	LDR r0, [r5, #0x24]
	LDR r3, [r5, #0x20]
	mov r2, #4
	mov lr, pc
	bx r3
1
	LDRB r0, [r4]
	cmp r0, #6
	moveq r1, r5
	LDREQ r0, [r4, #4]
	bleq sub_8006BA4
	mov r0, #0
	STRB r0, [r4]
	STR r0, [r4, #0x1c]
	STR r0, [r4, #0x20]
	LDR r0, [r4, #0x28]
	STR r0, [r4, #0x34]
	STR r0, [r4, #0x30]
	LDMFD SP!, {r3, r4, r5, lr}
	bx lr

