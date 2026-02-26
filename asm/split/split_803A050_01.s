	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT Monster__Create
	IMPORT __VTABLE__332Scanner
	IMPORT __nw__FUi
	IMPORT __vecmap1c__FPvT1iPFPv_v
	IMPORT sub_8041020

	thumb_func_start Scanner__Create

Scanner__Create
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0xf4
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
	bl Monster__Create
	ldr r0, _0803A420
	adds r1, r4, #0
	str r0, [r4]
	adds r0, r4, #0
	adds r1, #0xf0
	movs r2, #8
	adds r0, #0xe0
	ldr r3, _0803A424
	bl __vecmap1c__FPvT1iPFPv_v
	add r0, pc, #0x3A4
	str r0, [r4, #0x4c]
	movs r0, #0xb
	strh r0, [r4, #4]
	movs r0, #2
	movs r1, #0x97
	strb r0, [r1, r4]
	movs r0, #0xff
	movs r1, #0xb6
	strb r0, [r1, r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #4]
	ldr r2, _0803A440
	ands r1, r2
	movs r2, #1
	lsls r2, r2, #0x19
	adds r1, r1, r2
	str r1, [r0, #4]
	adds r0, #0x40
	ldr r1, [r0, #0x30]
	lsrs r2, r2, #0xa
	bics r1, r2
	movs r2, #8
	bics r1, r2
	movs r2, #0x10
	bics r1, r2
	movs r2, #0x20
	orrs r1, r2
	ldr r2, _0803A444
	ands r1, r2
	movs r2, #0x2d
	lsls r2, r2, #8
	adds r1, r1, r2
	movs r2, #1
	lsls r2, r2, #0x10
	bics r1, r2
	str r1, [r0, #0x30]
	adds r0, r4, #0
	b %1

	ALIGN
_0803A420 DCDU __VTABLE__332Scanner
_0803A424 DCDU sub_8041020
_0803A440 DCDU 0xF000FFFF
_0803A444 DCDU 0xFFFF803F

	END
