	arm_func_start sub_80403EC
sub_80403EC
	STMFD SP!, {r3, r4, r5, lr}
	mov r5, r1
	mov r1, #0
	mov r4, r0
	bl sub_800805E
	cmp r5, #0
	movne r0, r4
	LDMNEFD SP!, {r3, r4, r5, lr}
	bne sub_803DA18
	LDMFD SP!, {r3, r4, r5, lr}
	bx lr

