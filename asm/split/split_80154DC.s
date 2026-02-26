	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__302Anonymous3
	IMPORT __nw__FUi
	IMPORT __vecmap1c__FPvT1iPFPv_v
	IMPORT gUnknown_03003E88
	IMPORT sub_80143E0
	IMPORT sub_8017444
	IMPORT sub_80177D8

	thumb_func_start sub_80154DC

sub_80154DC
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0x6d
	lsls r0, r0, #3
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
	bl sub_8017444
	ldr r0, _080158AC
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x80
	bl sub_80143E0
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #5
	bl sub_80143E0
	movs r0, #0x1b
	lsls r0, r0, #5
	adds r1, r4, r0
	adds r0, r4, #0
	adds r0, #0xff
	movs r2, #0x78
	adds r0, #0x81
	ldr r3, _080158B0
	bl __vecmap1c__FPvT1iPFPv_v
	movs r0, #3
	strh r0, [r4, #4]
	ldr r0, _080158B4
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80177D8
	movs r1, #0
	movs r0, #0xf8
	strb r1, [r0, r4]
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #0x61
	strh r1, [r0, #0x1c]
	mvns r2, r1
	strh r2, [r0, #0x1e]
	movs r0, #0xff
	adds r0, #1
	str r1, [r0, r4]
	movs r0, #0
3
	lsls r2, r0, #2
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, r2, r4
	lsrs r0, r0, #0x18
	cmp r0, #8
	str r1, [r2, #8]
	blo %3
	movs r0, #0
4
	lsls r2, r0, #2
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, r2, r4
	lsrs r0, r0, #0x18
	cmp r0, #2
	str r1, [r2, #0x28]
	blo %4
	movs r0, #0
5
	lsls r2, r0, #2
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, r2, r4
	lsrs r0, r0, #0x18
	cmp r0, #3
	str r1, [r2, #0x30]
	blo %5
	adds r0, r4, #0
	str r1, [r4, #0x3c]
	b %1

	ALIGN
_080158AC DCDU __VTABLE__302Anonymous3
_080158B0 DCDU sub_80143E0
_080158B4 DCDU gUnknown_03003E88

	END
