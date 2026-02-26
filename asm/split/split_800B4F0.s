	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__335dword_803EA8C
	IMPORT __VTABLE__360dword_803ECD0
	IMPORT __nw__FUi
	IMPORT gUnknown_03003E94
	IMPORT sub_800B464
	IMPORT sub_800B496
	IMPORT sub_80114B0
	IMPORT sub_803D9C4

	thumb_func_start sub_800B4F0

sub_800B4F0
	push {r4, lr}
	adds r4, r0, #0
	bne %8
	movs r0, #0x14
	bl __nw__FUi
	adds r4, r0, #0
	bne %8
	adds r0, r4, #0
7
	pop {r4}
	pop {r3}
	bx r3
8
	ldr r0, _0800B6D8
	movs r1, #0x61
	str r0, [r4]
	ldr r0, _0800B6CC
	lsls r1, r1, #5
	str r4, [r0]
	ldr r0, _0800B6DC
	movs r3, #0
	movs r2, #0
	str r0, [r4]
	movs r0, #1
	bl sub_803D9C4
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #2
	lsrs r0, r0, #1
	lsls r0, r0, #1
	bics r0, r1
	movs r1, #4
	bics r0, r1
	movs r1, #8
	bics r0, r1
	movs r1, #0x10
	bics r0, r1
	str r0, [r4, #8]
	ldr r0, _0800B6D4
	ldr r1, _0800B6D0
	bl sub_80114B0
	adds r0, r4, #0
	b %7

	ALIGN
_0800B6CC DCDU gUnknown_03003E94
_0800B6D0 DCDU sub_800B464
_0800B6D4 DCDU sub_800B496
_0800B6D8 DCDU __VTABLE__360dword_803ECD0
_0800B6DC DCDU __VTABLE__335dword_803EA8C

	END
