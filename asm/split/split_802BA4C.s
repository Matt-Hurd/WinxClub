	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__304dword_803E32C
	IMPORT __nw__FUi
	IMPORT sub_802E418

	thumb_func_start sub_802BA4C

sub_802BA4C
	push {r4, lr}
	adds r4, r0, #0
	bne %5
	movs r0, #0x40
	bl __nw__FUi
	adds r4, r0, #0
	bne %5
	adds r0, r4, #0
4
	pop {r4}
	pop {r3}
	bx r3
5
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _0802BCD4
	str r0, [r4]
	adds r0, r4, #0
	b %4

	ALIGN
_0802BCD4 DCDU __VTABLE__304dword_803E32C

	END
