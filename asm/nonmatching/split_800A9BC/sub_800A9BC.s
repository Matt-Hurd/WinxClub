	arm_func_start sub_800A9BC
sub_800A9BC
1
	STMFD SP!, {r4, lr}
	movs r4, r0
	bne %2
	mov r0, #0x30
	bl __nw__FUi
	movs r4, r0
	moveq r0, r4
	LDMEQFD SP!, {r4, lr}
	bxeq lr
2
	mov r0, r4
	bl sub_800802E
	LDR r0, _0800AA18
	STR r0, [r4]
	mov r0, #1
	strh r0, [r4, #6]
	mov r0, r4
	LDMFD SP!, {r4, lr}
	bx lr

