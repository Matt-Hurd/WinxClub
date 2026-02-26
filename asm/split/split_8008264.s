	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_800808E
	IMPORT sub_80081B6

	arm_func_start sub_8008264

sub_8008264
	STMFD SP!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r0
	bl sub_800808E
	LDR r0, [r5]
	add r1, r0, #4
	add r0, r4, #0x20
	bl sub_80081B6
	mov r0, #0
	STR r0, [r4, #0x4c]
	STR r0, [r4, #0x50]
	LDMFD SP!, {r3, r4, r5, lr}
	bx lr

	END
