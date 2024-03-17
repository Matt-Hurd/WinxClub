    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003E88

	thumb_func_start sub_803FAB8
sub_803FAB8 ;@ 0x0803FAB8
	ldr r1, [r0, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	cmp r1, #2
	bne _0803FACE
	adds r0, #0x80
	ldr r0, [r0]
	lsls r0, r0, #0x1d
	bpl _0803FACE
	movs r0, #1
	bx lr
_0803FACE
	movs r0, #0
	bx lr
	ALIGN

	thumb_func_start sub_803FAD4
sub_803FAD4 ;@ 0x0803FAD4
	ldr r1, _0803FB20 ;@ =gUnknown_03003E88
	push {r4}
	ldr r2, [r1]
	ldrh r1, [r0, #0x10]
	movs r3, #0x53
	lsls r3, r3, #3
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x18
	adds r1, r1, r2
	adds r4, r1, r3
	adds r3, #0xff
	adds r3, #1
	adds r1, r1, r3
	movs r3, #0
	str r3, [r0, #0x14]
	ldr r3, [r1]
	str r3, [r0, #0x18]
	ldr r3, [r1]
	cmp r3, #0
	beq _0803FB00
	str r0, [r3, #0x14]
	b _0803FB02
_0803FB00
	str r0, [r4]
_0803FB02
	str r0, [r1]
	ldrh r0, [r0, #0x10]
	lsls r1, r0, #0x1a
	lsrs r1, r1, #0x19
	adds r1, r1, r2
	movs r2, #0x43
	lsls r2, r2, #3
	adds r1, r1, r2
	ldrh r2, [r1]
	lsrs r0, r0, #6
	adds r0, r2, r0
	strh r0, [r1]
	pop {r4}
	bx lr
	ALIGN
_0803FB20 DCDU gUnknown_03003E88
	END