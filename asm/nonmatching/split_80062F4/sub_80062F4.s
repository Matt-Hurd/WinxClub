	arm_func_start sub_80062F4
	STMFD SP!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	LDR r1, [sp, #0x18]
	mov r7, r3
	LDR r3, [r1, #0x1c]!
	mov r4, r0
	LDR r0, [r1, #8]
	mov r6, r2
	mov r2, #5
	mov r1, #0x1c
	mov lr, pc
	bx r3
	cmp r0, #0
	LDMEQFD SP!, {r3, r4, r5, r6, r7, lr}
	bxeq lr
	mov r1, #0
	STRB r1, [r0]
	STRB r4, [r0, #0x10]
	STRB r5, [r0, #0x11]
	add r1, r0, #0x14
	STMIA r1, {r6, r7}
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	bx lr
	arm_func_end sub_80062F4

