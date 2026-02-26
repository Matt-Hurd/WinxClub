	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __nw__FUi
	IMPORT __vecmap1c__FPvT1iPFPv_v
	IMPORT sub_80143E0

	thumb_func_start sub_802B288

sub_802B288
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0xff
	adds r0, #0xfd
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	pop {r4}
	pop {r3}
	bx r3
2
	adds r0, r4, #4
	bl sub_80143E0
	adds r0, r4, #0
	adds r0, #0x7c
	bl sub_80143E0
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #0xe5
	movs r2, #0x78
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r3, _0802B640
	bl __vecmap1c__FPvT1iPFPv_v
	movs r1, #0
	strb r1, [r4]
	strb r1, [r4, #2]
	movs r0, #0
3
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r2, #0xff
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, #0xc1
	lsrs r0, r0, #0x18
	cmp r0, #3
	str r1, [r2, #0x24]
	blo %3
	movs r0, #0
4
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r2, #0xff
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, #0xc1
	lsrs r0, r0, #0x18
	cmp r0, #2
	str r1, [r2, #0x30]
	blo %4
	adds r0, r4, #0
	b %1

	ALIGN
_0802B640 DCDU sub_80143E0

	END
