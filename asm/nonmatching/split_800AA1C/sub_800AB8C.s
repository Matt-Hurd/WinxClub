	arm_func_start sub_800AB8C
sub_800AB8C
	STMFD SP!, {r4, r5, r6, lr}
	mov r4, r0
	LDR r0, _0800AFC8
	add r5, r4, #0x24
	STR r0, [r4]
	LDR r0, [r4, #0x28]
	mov r6, r1
	cmp r0, #0
	movne r0, r5
	blne sub_8006FE4
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov ip, #0
	mov lr, #0
	STMIA r5!, {r0, r1, r2, r3, ip, lr}
	STMIA r5, {r0, r1, r2, r3, ip, lr}
	LDR r0, [r4, #0x54]
	cmp r0, #0
	beq %11
	mov r2, #0
	mov r1, #0
	bl sub_803D9A8
	mov r0, #0
	STR r0, [r4, #0x54]
11
	add r0, r4, #0x58
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r5, #0
	mov ip, #0
	mov lr, #0
	STMIA r0!, {r1, r2, r3, r5, ip, lr}
	STMIA r0, {r1, r2, r3, r5}
	mov r1, #0
	mov r0, r4
	bl sub_800805E
	cmp r6, #0
	movne r0, r4
	LDMNEFD SP!, {r4, r5, r6, lr}
	bne sub_803DA18
	LDMFD SP!, {r4, r5, r6, lr}
	bx lr

