	arm_func_start sub_8008F18
sub_8008F18
	STMFD SP!, {r3, r4, r5, lr}
	mov r4, r0
	LDR r0, _08009E20
	mov r5, r1
	STR r0, [r4]
	mov r0, r4
	mov r1, #0
	bl sub_800805E
	cmp r5, #0
	movne r0, r4
	LDMNEFD SP!, {r3, r4, r5, lr}
	bne sub_803DA18
	LDMFD SP!, {r3, r4, r5, lr}
	bx lr

