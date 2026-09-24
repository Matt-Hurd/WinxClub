	arm_func_start sub_800ACD0
	STMFD SP!, {r3, r4, r5, lr}
	mov r5, r1
	LDR r1, [r0]
	add lr, pc, #0xC
	LDR r2, [r1, #4]
	mov r4, r0
	add r1, r2, r1
	bx r1
loc_800ACF0
	mov r1, r5
	mov r0, r4
	bl sub_800808E
	LDR r0, [r5, #8]
	add r3, r4, #0x30
	STR r0, [r4, #0x20]
	LDR r0, [r5]
	mov r2, #0
	add r0, r0, #4
	STR r0, [r4, #0x24]
	mov r0, #0x40000000
	STR r0, [r4, #0x28]
	LDR r0, [r5, #8]
	mov r5, #0
	STMIA r3, {r0, r5}
	mov r0, #0x3740
	add r0, r0, #0x8000
	mov r1, #0
	bl sub_803D984
	STR r0, [r4, #0x54]
	LDR r0, _0800AFCC
	STR r0, [r4, #0x40]
	LDR r0, _0800AFD0
	STR r0, [r4, #0x44]
	STR r4, [r4, #0x48]
	add r0, r4, #0x24
	bl sub_8007040
	cmp r0, #0
	LDMEQFD SP!, {r3, r4, r5, lr}
	moveq r0, #1
	bxeq lr
	mov r2, #0
	mov r1, #0
	LDR r0, [r4, #0x54]
	bl sub_803D9A8
	STR r5, [r4, #0x54]
	LDMFD SP!, {r3, r4, r5, lr}
	mov r0, #0
	bx lr
	arm_func_end sub_800ACD0

