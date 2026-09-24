	arm_func_start sub_8007C78
sub_8007C78
	STMFD SP!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x1c
	mov r7, r0
	mov r0, #0
	LDR r4, [sp, #0x38]
	STR r0, [sp, #0x18]
	LDR r0, [r4, #0x24]
	mov sb, r3
	LDR r3, [r4, #0x1c]
	mov r8, r2
	mov r6, r1
	mov r1, #0x4c
	mov r2, #7
	mov lr, pc
	bx r3
	movs r5, r0
	addeq sp, sp, #0x1c
	LDMEQFD SP!, {r4, r5, r6, r7, r8, sb, lr}
	mvneq r0, #3
	bxeq lr
	add r2, sp, #0x18
	add r0, sp, #0x10
	STMIA r0, {r2, r5}
	mov r2, #0
	STMIA sp, {r2, r8}
	mov r0, r7
	add r7, sp, #8
	STMIA r7, {r6, sb}
	mov r2, #0x13
	mov r3, #0
	mov r1, #0x13
	bl sub_80077E8
	mov r7, r0
	cmn r0, #5
	beq %29
	cmn r7, #3
	beq %30
	LDR r0, [r6]
	cmp r0, #0
	bne %30
29
	mvn r7, #2
30
	LDR r3, [r4, #0x20]!
	LDR r0, [r4, #4]
	mov r2, #7
	mov r1, r5
	mov lr, pc
	bx r3
	mov r0, r7
	add sp, sp, #0x1c
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr

