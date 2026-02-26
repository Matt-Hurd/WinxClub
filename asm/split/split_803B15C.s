	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__351dword_803EC7C
	IMPORT __nw__FUi
	IMPORT sub_8010574

	thumb_func_start sub_803B15C

sub_803B15C
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	ldr r0, _0803B300
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	pop {r4}
	pop {r3}
	bx r3
2
	movs r1, #0
	adds r0, r4, #0
	bl sub_8010574
	ldr r0, _0803B304
	str r0, [r4]
	adds r0, r4, #0
	b %1

	ALIGN
_0803B300 DCDU 0x0000172C
_0803B304 DCDU __VTABLE__351dword_803EC7C

	END
