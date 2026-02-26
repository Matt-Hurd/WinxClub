	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__326dword_803E868
	IMPORT __VTABLE__358dword_803ECC8
	IMPORT __nw__FUi
	IMPORT gUnknown_03003E8C
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EAC
	IMPORT sub_800B058
	IMPORT sub_800B12C
	IMPORT sub_800B148
	IMPORT sub_800FEBC

	thumb_func_start sub_800FF00

sub_800FF00
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bne %6
	movs r0, #0x28
	bl __nw__FUi
	adds r4, r0, #0
	bne %6
	adds r0, r4, #0
5
	pop {r4, r5, r6}
	pop {r3}
	bx r3
6
	ldr r0, _080101F4
	movs r5, #0
	str r0, [r4]
	ldr r0, _080101E8
	ldr r6, _080101FC
	str r4, [r0]
	ldr r0, _080101F8
	stm r4!, {r0, r5}
	subs r4, #8
	str r5, [r4, #8]
	str r5, [r4, #0xc]
	str r5, [r4, #0x10]
	str r5, [r4, #0x14]
	str r5, [r4, #0x20]
	str r5, [r4, #0x24]
	ldr r0, [r6]
	movs r1, #0
	bl sub_800B148
	str r0, [r4, #0x1c]
	ldr r1, _08010200
	ldr r0, [r6]
	strh r5, [r1, #8]
	movs r3, #1
	movs r1, #0
	ldr r2, _08010204
	bl sub_800B12C
	ldr r0, _080101E4
	movs r1, #3
	ldr r0, [r0]
	bl sub_800B058
	adds r0, r4, #0
	b %5

	ALIGN
_080101E4 DCDU gUnknown_03003E98
_080101E8 DCDU gUnknown_03003E8C
_080101F4 DCDU __VTABLE__358dword_803ECC8
_080101F8 DCDU __VTABLE__326dword_803E868
_080101FC DCDU gUnknown_03003EAC
_08010200 DCDU REG_IE
_08010204 DCDU sub_800FEBC

	END
