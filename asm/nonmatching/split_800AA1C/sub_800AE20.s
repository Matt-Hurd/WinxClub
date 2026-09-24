	arm_func_start sub_800AE20
	STMFD SP!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x9c
	add r5, sp, #0x1c
	mov r8, r0
	mov r0, r5
	mov sb, r1
	bl sub_800802E
	LDR r0, _0800AFC8
	add r4, r5, #0x24
	STR r0, [sp, #0x1c]
	mov r0, #3
	strh r0, [sp, #0x22]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r6, #0
	mov r7, #0
	mov ip, #0
	mov lr, #0
	STMIA r4!, {r0, r1, r2, r3, r6, r7, ip, lr}
	STMIA r4, {r0, r1, r2, r3}
	mov r6, #0
	STR r6, [sp, #0x70]
	add r0, r5, #0x58
	mov r3, #0
	mov r2, #0
	mov r1, #0
	mov r7, #0
	mov lr, #0
	mov ip, #0
	STMIA r0!, {r1, r2, r3, r7, ip, lr}
	STMIA r0, {r1, r2, r3, r7}
	add r7, sp, #4
	mov r0, r7
	sub r4, r4, #0x20
	bl sub_8008008
	mov r1, r7
	mov r0, r5
	STR r8, [sp, #4]
	STR sb, [sp, #0xc]
	bl sub_800ACD0
	cmp r0, #0
	bne %15
	mov r4, #0
	mov r1, #0
	mov r0, r5
	bl sub_800AB8C
	mov r0, r4
	add sp, sp, #0x9c
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
15
	ldrh r0, [sp, #0x20]
	mov r1, #2
	cmp r0, #0
	LDRNE r0, [sp, #0x3c]
	STRNE r0, [sp, #0x4c]
	mov r0, #0x1000000
	STR r0, [sp, #0x50]
	mov r0, r4
	bl sub_8007104
	cmp r0, #1
	bne %16
	mov r0, r4
	bl sub_8006FE4
	mov r2, #0
	mov r1, #0
	LDR r0, [sp, #0x70]
	bl sub_803D9A8
	STR r6, [sp, #0x70]
	b %17
16
	cmp r0, #0
	beq %17
	mov r2, #0
	mov r1, #0
	LDR r0, [sp, #0x70]
	bl sub_803D9A8
	STR r6, [sp, #0x70]
	b %18
17
	LDR r0, [sp, #0x4c]
	adds r0, r0, #-0x1000000
	bne %19
18
	mov r4, #0
	mov r1, #0
	mov r0, r5
	bl sub_800AB8C
	mov r0, r4
	add sp, sp, #0x9c
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
19
	mov r4, #1
	mov r1, #0
	mov r0, r5
	bl sub_800AB8C
	mov r0, r4
	add sp, sp, #0x9c
	LDMFD SP!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	arm_func_end sub_800AE20

