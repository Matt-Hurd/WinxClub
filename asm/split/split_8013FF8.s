	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__320dword_803E6A0
	IMPORT __nw__FUi
	IMPORT sub_80134B8
	IMPORT sub_8013E2C

	thumb_func_start sub_8013FF8

sub_8013FF8
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0x60
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	pop {r4}
	pop {r3}
	bx r3
2
	adds r0, r4, #0
	bl sub_80134B8
	ldr r0, _080142CC
	str r0, [r4]
	movs r0, #0
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_8013E2C
	adds r0, r4, #0
	b %1

	ALIGN
_080142CC DCDU __VTABLE__320dword_803E6A0

	END
