	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __rt_memclr_w
	IMPORT sub_800808E
	IMPORT sub_8008F50

	arm_func_start sub_8008FFC

sub_8008FFC
	STMFD SP!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	mov r4, r0
	bl sub_800808E
	LDR r6, [r5]
	mov r1, #0xf4
	add r0, r4, #0x30
	mov r7, r0
	add r1, r1, #0x5400
	add r5, r6, #4
	bl __rt_memclr_w
	LDR r0, [r6]
	mov r3, r5
	MOV r2, r0, LSR #0x1b
	mov r0, r4
	mov r1, r7
	bl sub_8008F50
	LDMFD SP!, {r3, r4, r5, r6, r7, lr}
	mov r0, #0
	bx lr

	END
