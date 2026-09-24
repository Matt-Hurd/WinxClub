	arm_func_start sub_8007040
sub_8007040
	STMFD SP!, {r4, r5, r6, lr}
	LDR r3, [r0, #0x1c]
	mov r4, r0
	LDR r0, [r0, #0x24]
	add lr, pc, #0xC
	mov r5, #0xf
	mov r2, #6
	mov r1, #0x18
	bx r3
loc_08007064
	STR r0, [r4, #0x18]
	cmp r0, #0
	LDMEQFD SP!, {r4, r5, r6, lr}
	mvneq r0, #3
	bxeq lr
	mov r6, #0
	STR r6, [r0, #0x14]
	LDR r0, [r4, #0x18]
	mov r2, #0x8000
	STR r6, [r0, #0xc]
	LDR r0, [r4, #0x18]
	mov r1, #0
	STR r5, [r0, #0x10]
	mov r0, r4
	bl sub_80053F8
	LDR r1, [r4, #0x18]
	cmp r0, #0
	STR r0, [r1, #0x14]
	bne %2
	cmp r4, #0
	LDRNE r0, [r4, #0x18]
	cmpne r0, #0
	LDRNE r0, [r4, #0x20]
	cmpne r0, #0
	beq %1
	LDR r0, [r4, #0x24]
	LDR r1, [r4, #0x18]
	LDR r3, [r4, #0x20]
	mov r2, #6
	mov lr, pc
	bx r3
	STR r6, [r4, #0x18]
1
	LDMFD SP!, {r4, r5, r6, lr}
	mvn r0, #3
	bx lr
2
	mov r0, r4
	bl sub_8006F90
	LDMFD SP!, {r4, r5, r6, lr}
	mov r0, #0
	bx lr

