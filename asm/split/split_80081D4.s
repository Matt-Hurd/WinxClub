	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__383dword_803EEC4
	IMPORT __nw__FUi
	IMPORT sub_800802E

	arm_func_start sub_80081D4

sub_80081D4
	STMFD SP!, {r4, lr}
	movs r4, r0
	bne %1
	mov r0, #0x54
	bl __nw__FUi
	movs r4, r0
	moveq r0, r4
	LDMEQFD SP!, {r4, lr}
	bxeq lr
1
	mov r0, r4
	bl sub_800802E
	LDR r0, _08008AD8
	STR r0, [r4]
	mov r0, #5
	strh r0, [r4, #6]
	mov r0, #0
	STR r0, [r4, #0x44]
	STR r0, [r4, #0x48]
	mov r0, r4
	LDMFD SP!, {r4, lr}
	bx lr

	ALIGN
_08008AD8 DCDU __VTABLE__383dword_803EEC4

	END
