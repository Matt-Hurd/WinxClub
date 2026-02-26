	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__383dword_803EEC4
	IMPORT sub_800805E
	IMPORT sub_803DA18

	arm_func_start sub_800822C

sub_800822C
	STMFD SP!, {r3, r4, r5, lr}
	mov r4, r0
	LDR r0, _08008AD8
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

	ALIGN
_08008AD8 DCDU __VTABLE__383dword_803EEC4

	END
