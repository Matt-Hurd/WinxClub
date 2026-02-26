	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__382dword_803EE98
	IMPORT __nw__FUi
	IMPORT sub_800802E

	arm_func_start sub_800AD8C

sub_800AD8C
	STMFD SP!, {r4, lr}
	movs r4, r0
	bne %14
	mov r0, #0x80
	bl __nw__FUi
	movs r4, r0
	moveq r0, r4
	LDMEQFD SP!, {r4, lr}
	bxeq lr
14
	mov r0, r4
	bl sub_800802E
	LDR r0, _0800AFC8
	mov r1, #0
	STR r0, [r4]
	mov r0, #3
	strh r0, [r4, #6]
	add r0, r4, #0x24
	mov r2, #0
	mov r3, #0
	mov ip, #0
	mov lr, #0
	STMIA r0!, {r1, r2, r3, ip, lr}
	STMIA r0!, {r1, r2, r3, ip, lr}
	STMIA r0, {r1, r2}
	mov r0, #0
	STR r0, [r4, #0x54]
	add r0, r4, #0x58
	mov r2, #0
	mov r1, #0
	mov lr, #0
	mov ip, #0
	mov r3, #0
	STMIA r0!, {r1, r2, r3, ip, lr}
	STMIA r0, {r1, r2, r3, ip, lr}
	mov r0, r4
	LDMFD SP!, {r4, lr}
	bx lr

	ALIGN
_0800AFC8 DCDU __VTABLE__382dword_803EE98

	END
