	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__318dword_803E680
	IMPORT __VTABLE__356dword_803ECC0
	IMPORT __nw__FUi
	IMPORT gUnknown_03003E84

	thumb_func_start sub_800525C

sub_800525C
	push {r3, lr}
	cmp r0, #0
	bne %1
	movs r0, #4
	bl __nw__FUi
	cmp r0, #0
	beq %2
1
	ldr r1, _080052B4
	str r1, [r0]
	ldr r1, _080052B8
	str r0, [r1]
	ldr r1, _080052BC
	str r1, [r0]
2
	add sp, #4
	pop {r3}
	bx r3

	ALIGN
_080052B4 DCDU __VTABLE__356dword_803ECC0
_080052B8 DCDU gUnknown_03003E84
_080052BC DCDU __VTABLE__318dword_803E680

	END
