	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__352dword_803EC98
	IMPORT sub_80105AE
	IMPORT sub_803DA18

	thumb_func_start sub_8010278

sub_8010278
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080103B0
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_80105AE
	cmp r5, #0
	beq %3
	adds r0, r4, #0
	bl sub_803DA18
3
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	ALIGN
_080103B0 DCDU __VTABLE__352dword_803EC98

	END
