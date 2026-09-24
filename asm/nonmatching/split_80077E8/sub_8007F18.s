	arm_func_start sub_8007F18
	STMFD SP!, {r3, r4, r5, r6, r7, r8, sb, lr}
	LDR sb, [r0, #0x30]
	mov r5, r0
	LDR r0, [r0, #0x34]
	LDR r8, [r1, #0xc]
	cmp r0, sb
	LDRLO r0, [r5, #0x2c]
	mov r4, r1
	sub r6, r0, sb
	LDR r0, [r4, #0x10]
	mov r7, r2
	cmp r0, r6
	movlo r6, r0
	cmp r6, #0
	beq %39
	cmn r7, #5
	moveq r7, #0
39
	sub r0, r0, r6
	STR r0, [r4, #0x10]
	LDR r0, [r4, #0x14]
	mov r2, r6
	add r0, r0, r6
	STR r0, [r4, #0x14]
	mov r0, r8
	mov r1, sb
	bl __rt_memcpy
	LDR r0, [r5, #0x2c]
	add r1, sb, r6
	cmp r0, r1
	add r8, r8, r6
	bne %41
	LDR r1, [r5, #0x34]
	LDR sb, [r5, #0x28]
	cmp r1, r0
	STREQ sb, [r5, #0x34]
	LDR r0, [r5, #0x34]
	sub r6, r0, sb
	LDR r0, [r4, #0x10]
	cmp r0, r6
	movlo r6, r0
	cmp r6, #0
	beq %40
	cmn r7, #5
	moveq r7, #0
40
	sub r0, r0, r6
	STR r0, [r4, #0x10]
	LDR r0, [r4, #0x14]
	mov r2, r6
	add r0, r0, r6
	STR r0, [r4, #0x14]
	mov r0, r8
	mov r1, sb
	bl __rt_memcpy
	add r8, r8, r6
	add r1, sb, r6
41
	STR r8, [r4, #0xc]
	STR r1, [r5, #0x30]
	mov r0, r7
	LDMFD SP!, {r3, r4, r5, r6, r7, r8, sb, lr}
	bx lr
	arm_func_end sub_8007F18
