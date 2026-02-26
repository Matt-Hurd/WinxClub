	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__352dword_803EC98
	IMPORT __nw__FUi
	IMPORT gUnknown_030031EC
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_0804AE44
	IMPORT sub_8004670
	IMPORT sub_801053C

	thumb_func_start sub_8010234

sub_8010234
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	ldr r0, _080103AC
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
	bl sub_801053C
	ldr r0, _080103B0
	movs r1, #0xb9
	lsls r1, r1, #5
	str r0, [r4]
	movs r0, #0
	adds r1, r4, r1
	strb r0, [r1, #0xc]
	ldr r1, _080103B8
	movs r3, #0
	ldrsb r1, [r1, r3]
	ldr r0, _080103B4
	ldr r2, _080103BC
	ldr r0, [r0]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	bl sub_8004670
	adds r0, r4, #0
	b %1

	ALIGN
_080103AC DCDU 0x00001730
_080103B0 DCDU __VTABLE__352dword_803EC98
_080103B4 DCDU gUnknown_03003E98
_080103B8 DCDU gUnknown_030031EC
_080103BC DCDU gUnknown_0804AE44

	END
