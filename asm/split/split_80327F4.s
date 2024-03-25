    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003EB8
	IMPORT sub_800065C
	IMPORT sub_800116A
	IMPORT sub_80012F0
	IMPORT sub_8001338
	IMPORT sub_80268AC
	IMPORT sub_8028BE4
	IMPORT sub_802E47A
	IMPORT sub_802E4EE
	IMPORT sub_802E5D2
	IMPORT sub_802E8B0
	IMPORT sub_803F38C
	IMPORT sub_803F898
	IMPORT sub_803FF24
	IMPORT sub_8040148
	IMPORT sub_80401C0
	IMPORT sub_80401E4
	IMPORT sub_8040594

	thumb_func_start sub_80327F4
sub_80327F4 ;@ 0x080327F4
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	movs r5, #1
	lsls r5, r5, #0x1d
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	lsrs r6, r5, #4
	lsrs r7, r5, #1
	cmp r0, #3
	bne _0803286E
	adds r0, r4, #0
	adds r0, #0x2c
	movs r1, #0
	movs r2, #0
	stm r0!, {r1, r2}
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _08032868
	bl sub_803F898
	ldr r1, [r4, #0x2c]
	lsls r0, r0, #0x13
	lsrs r1, r1, #0xd
	lsls r1, r1, #0xd
	lsrs r0, r0, #0x13
	orrs r1, r0
	adds r2, r1, #0
	str r2, [r4, #0x2c]
	ldr r0, [r4, #4]
	bics r2, r7
	ldr r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x1c
	orrs r2, r1
	str r2, [r4, #0x2c]
	ldr r1, [r0]
	bics r2, r6
	lsls r1, r1, #0x1f
	lsrs r1, r1, #6
	orrs r2, r1
	str r2, [r4, #0x2c]
	ldr r1, [r0]
	lsls r2, r2, #1
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x1f
	lsrs r2, r2, #1
	orrs r1, r2
	orrs r1, r5
	str r1, [r4, #0x2c]
	ldrb r0, [r0, #5]
	cmp r0, #0x42
	bhi _08032868
	lsls r0, r5, #1
	orrs r0, r1
	str r0, [r4, #0x2c]
_08032868
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_0803286E
	adds r0, r4, #0
	bl sub_802E4EE
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08032868
	ldr r0, [r4, #4]
	bl sub_803F898
	ldr r1, [r4, #0x30]
	lsls r0, r0, #0x13
	lsrs r1, r1, #0xd
	lsls r1, r1, #0xd
	lsrs r0, r0, #0x13
	orrs r1, r0
	adds r2, r1, #0
	str r2, [r4, #0x30]
	ldr r0, [r4, #4]
	bics r2, r7
	ldr r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x1c
	orrs r1, r2
	str r1, [r4, #0x30]
	ldr r0, [r0]
	bics r1, r6
	lsls r0, r0, #0x1f
	lsrs r0, r0, #6
	orrs r0, r1
	orrs r0, r5
	str r0, [r4, #0x30]
	b _08032868

	thumb_func_start sub_80328B0
sub_80328B0 ;@ 0x080328B0
	push {r3, r4, r5, lr}
	bl sub_802E47A
	ldr r4, _08032A88 ;@ =gUnknown_0300345C
	movs r5, #0x25
	ldr r0, [r4]
	lsls r5, r5, #6
	adds r0, r5, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _080328D0
	ldr r0, [r4]
	adds r0, r5, r0
	bl sub_80268AC
_080328D0
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80328D6
sub_80328D6 ;@ 0x080328D6
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	adds r7, r4, #0
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	adds r7, #0x1c
	cmp r0, #3
	sub sp, #0xc
	bne _080329A8
	str r1, [r4, #0x14]
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #2
	bpl _080329A0
	ldr r0, _08032A8C ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x2c]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	bl sub_800065C
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #3
	lsrs r1, r0, #0x1f
	ldr r0, [r4, #4]
	bl sub_803F38C
	ldr r0, [r4, #0x2c]
	ldr r5, [r4, #4]
	lsrs r6, r0, #0x1f
	ldr r0, [r5]
	beq _0803292C
	lsls r0, r0, #0x1c
	bmi _0803293A
	ldr r0, _08032A8C ;@ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80012F0
	b _0803293A
_0803292C
	lsls r0, r0, #0x1c
	bpl _0803293A
	ldr r0, _08032A8C ;@ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8001338
_0803293A
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	lsls r1, r6, #3
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	adds r1, r7, #0
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	ldr r0, [r4, #4]
	bl sub_80401C0
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0
	adds r0, r6, #0
	ldr r5, [r4, #4]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #6
	bpl _080329A0
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
_080329A0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_080329A8
	adds r0, r4, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #2
	bpl _080329F8
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #4]
	movs r2, #4
	ldr r1, [r0]
	movs r6, #0x5a
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x34]
	ldr r5, [r4, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0
	adds r0, r6, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
_080329F8
	ldr r0, [r4, #0x30]
	lsls r0, r0, #2
	bpl _080329A0
	ldr r0, _08032A8C ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #8]
	ldr r1, [r4, #0x30]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	bl sub_800065C
	ldr r0, [r4, #0x30]
	lsls r0, r0, #3
	lsrs r1, r0, #0x1f
	ldr r0, [r4, #8]
	bl sub_803F38C
	ldr r0, [r4, #8]
	movs r2, #3
	ldrh r1, [r0, #0x26]
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #8]
	adds r1, r7, #0
	bl sub_803FF24
	movs r1, #0xbe
	ldr r0, [r4, #8]
	bl sub_80401C0
	ldr r0, [r4, #0x30]
	lsls r0, r0, #6
	bpl _080329A0
	movs r1, #1
	ldr r0, [r4, #8]
	bl sub_80401E4
	b _080329A0

	thumb_func_start sub_8032A58
sub_8032A58 ;@ 0x08032A58
	push {r4, lr}
	adds r4, r0, #0
	bl sub_802E8B0
	movs r1, #7
	ldr r0, [r4, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x4c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x4c]
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8032A7E
sub_8032A7E ;@ 0x08032A7E
	ldr r0, [r0, #0x4c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1b
	bx lr
	ALIGN
_08032A88 DCDU gUnknown_0300345C
_08032A8C DCDU gUnknown_03003EB8
	END