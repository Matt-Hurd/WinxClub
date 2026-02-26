	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_8006244

	arm_func_start sub_8006FE4

sub_8006FE4
	STMFD SP!, {r4, lr}
	movs r4, r0
	LDRNE r0, [r4, #0x18]
	cmpne r0, #0
	LDRNE r1, [r4, #0x20]
	cmpne r1, #0
	LDMEQFD SP!, {r4, lr}
	mvneq r0, #1
	bxeq lr
	LDR r0, [r0, #0x14]
	cmp r0, #0
	movne r1, r4
	blne sub_8006244
	LDR r0, [r4, #0x24]
	LDR r1, [r4, #0x18]
	LDR r3, [r4, #0x20]
	mov r2, #6
	mov lr, pc
	bx r3
	mov r0, #0
	STR r0, [r4, #0x18]
	LDMFD SP!, {r4, lr}
	bx lr

	END
