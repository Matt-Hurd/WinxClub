	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__319dword_803E684
	IMPORT gUnknown_03000000
	IMPORT sub_80104BC

	thumb_func_start sub_8010574

sub_8010574
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080106A0
	adds r5, r1, #0
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x94
	bl gUnknown_03000000
	adds r0, r4, #0
	adds r0, #0xf0
	bl gUnknown_03000000
	ldr r0, _080106A4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	adds r0, r4, r0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_80104BC
	adds r0, r4, #0
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	ALIGN
_080106A0 DCDU __VTABLE__319dword_803E684
_080106A4 DCDU 0x00001710

	END
