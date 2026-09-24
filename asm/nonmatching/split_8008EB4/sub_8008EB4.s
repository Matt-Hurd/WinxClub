	arm_func_start sub_8008EB4
sub_8008EB4
	STMFD SP!, {r4, lr}
	movs r4, r0
	bne %1
	mov r0, #0x124
	add r0, r0, #0x5400
	bl __nw__FUi
	movs r4, r0
	moveq r0, r4
	LDMEQFD SP!, {r4, lr}
	bxeq lr
1
	mov r0, r4
	bl sub_800802E
	LDR r0, _08009E20
	STR r0, [r4]
	mov r0, #6
	strh r0, [r4, #6]
	mov r0, #0
	STR r0, [r4, #0x20]
	STR r0, [r4, #0x24]
	STR r0, [r4, #0x28]
	STR r0, [r4, #0x2c]
	mov r0, r4
	LDMFD SP!, {r4, lr}
	bx lr

