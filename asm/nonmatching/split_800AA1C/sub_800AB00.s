	arm_func_start sub_800AB00
sub_800AB00
	STMFD SP!, {r3, r4, r5, lr}
	mov r4, r0
	LDR r0, [r0, #0x28]
	add r5, r4, #0x24
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
	beq %10
	mov r2, #0
	mov r1, #0
	bl sub_803D9A8
	mov r0, #0
	STR r0, [r4, #0x54]
10
	add r0, r4, #0x58
	mov r4, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r5, #0
	mov ip, #0
	mov lr, #0
	STMIA r0!, {r1, r2, r3, r4, r5, ip, lr}
	STMIA r0, {r1, r2, r3}
	LDMFD SP!, {r3, r4, r5, lr}
	bx lr

