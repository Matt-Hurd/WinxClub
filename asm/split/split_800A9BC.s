	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0803EE40
	IMPORT maybeMallocEWRAM
	IMPORT sub_800802E

	arm_func_start sub_800A9BC
sub_800A9BC
_0800A9BC
	STMFD SP!, {r4, lr}
	movs r4, r0
	bne _0800A9E0
	mov r0, #0x30
	bl maybeMallocEWRAM
	movs r4, r0
	moveq r0, r4
	LDMEQFD SP!, {r4, lr}
	bxeq lr
_0800A9E0
	mov r0, r4
	bl sub_800802E
	LDR r0, _0800AA18
	STR r0, [r4]
	mov r0, #1
	strh r0, [r4, #6]
	mov r0, r4
	LDMFD SP!, {r4, lr}
	bx lr

	arm_func_start sub_800AA04
sub_800AA04
	LDR r0, [r1]
	MOV r0, r0, LSR #8
	bx lr

	arm_func_start sub_800AA10
sub_800AA10
	mov r0, #4
	bx lr
	ALIGN
_0800AA18 DCDU gUnknown_0803EE40
	END
