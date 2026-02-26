	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_8005380

	arm_func_start sub_80053F8

sub_80053F8
	STMFD SP!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	LDR r0, [r0, #0x24]
	LDR r3, [r4, #0x1c]
	mov r7, r1
	mov r6, r2
	mov r2, #1
	mov r1, #0x40
	mov lr, pc
	bx r3
	movs r5, r0
	moveq r0, r5
	LDMEQFD SP!, {r3, r4, r5, r6, r7, lr}
	bxeq lr
	LDR r0, [r4, #0x24]
	LDR r3, [r4, #0x1c]
	mov r2, #2
	mov r1, #0x2d00
	mov lr, pc
	bx r3
	STR r0, [r5, #0x24]
	cmp r0, #0
	LDR r0, [r4, #0x24]
	bne %2
	LDR r3, [r4, #0x20]
	mov r2, #1
	mov r1, r5
	mov lr, pc
	bx r3
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	mov r0, #0
	bx lr
2
	LDR r3, [r4, #0x1c]
	mov r2, #3
	mov r1, r6
	mov lr, pc
	bx r3
	STR r0, [r5, #0x28]
	cmp r0, #0
	bne %3
	LDR r1, [r5, #0x24]
	LDR r0, [r4, #0x24]
	LDR r3, [r4, #0x20]
	mov r2, #2
	mov lr, pc
	bx r3
	LDR r3, [r4, #0x20]!
	LDR r0, [r4, #4]
	mov r2, #1
	mov r1, r5
	mov lr, pc
	bx r3
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	mov r0, #0
	bx lr
3
	add r0, r0, r6
	STR r0, [r5, #0x2c]
	STR r7, [r5, #0x38]
	mov r0, #0
	STRB r0, [r5]
	mov r0, r5
	mov r2, #0
	mov r1, r4
	bl sub_8005380
	mov r0, r5
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	bx lr

	END
