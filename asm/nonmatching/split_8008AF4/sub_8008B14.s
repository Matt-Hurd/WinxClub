	arm_func_start sub_8008B14
	STMFD SP!, {r4, lr}
	movs r4, r0
	bne %1
	mov r0, #0x3c
	bl __nw__FUi
	movs r4, r0
	moveq r0, r4
	LDMEQFD SP!, {r4, lr}
	bxeq lr
1
	mov r0, r4
	bl sub_800802E
	LDR r0, _08008EAC
	STR r0, [r4]
	mov r0, #2
	strh r0, [r4, #6]
	mov r0, r4
	LDMFD SP!, {r4, lr}
	bx lr
	arm_func_end sub_8008B14

