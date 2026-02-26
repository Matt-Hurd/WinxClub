	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__317dword_803E67C
	IMPORT __VTABLE__355dword_803ECBC
	IMPORT __nw__FUi
	IMPORT gUnknown_03003E80

	thumb_func_start sub_8004924

sub_8004924
	push {r3, lr}
	cmp r0, #0
	bne %17
	movs r0, #0x18
	bl __nw__FUi
	cmp r0, #0
	beq %18
17
	ldr r1, _08004B94
	movs r2, #2
	str r1, [r0]
	ldr r1, _08004B98
	str r0, [r1]
	ldr r1, _08004B9C
	str r1, [r0]
	movs r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	str r1, [r0, #0x10]
	ldr r1, [r0, #0x14]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	bics r1, r2
	movs r2, #4
	bics r1, r2
	movs r2, #8
	bics r1, r2
	str r1, [r0, #0x14]
18
	add sp, #4
	pop {r3}
	bx r3

	ALIGN
_08004B94 DCDU __VTABLE__355dword_803ECBC
_08004B98 DCDU gUnknown_03003E80
_08004B9C DCDU __VTABLE__317dword_803E67C

	END
