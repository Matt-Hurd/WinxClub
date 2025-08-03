	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_030033BE
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_0803EB10
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_80012F0
	IMPORT sub_802E418
	IMPORT sub_802E4AA
	IMPORT maybeMallocEWRAM
	IMPORT sub_803DA18
	IMPORT sub_803FF24
	IMPORT sub_8040148
	IMPORT sub_80401E4
	IMPORT sub_8040594

	thumb_func_start sub_803772C
sub_803772C
	push {r4, lr}
	adds r4, r0, #0
	bne _08037744
	movs r0, #0x44
	bl maybeMallocEWRAM
	adds r4, r0, #0
	bne _08037744
	adds r0, r4, #0
_0803773E
	pop {r4}
	pop {r3}
	bx r3
_08037744
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _08037A00
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	b _0803773E

	non_word_aligned_thumb_func_start sub_8037756
sub_8037756
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08037A00
	adds r5, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _08037776
	ldr r0, _08037A04
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
_08037776
	movs r1, #0
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq _08037788
	adds r0, r4, #0
	bl sub_803DA18
_08037788
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_803778E
sub_803778E
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [r0, #0x10]
	adds r6, r3, #0
	ldr r3, [r1, #0x2c]
	adds r4, r0, #0
	str r3, [r0, #0x14]
	ldr r0, [r1, #0x30]
	str r0, [r4, #0x18]
	ldrb r5, [r3, #5]
	movs r0, #0xff
	ldr r7, [r4, #0x34]
	lsls r0, r0, #0xb
	bics r7, r0
	lsls r5, r5, #0xb
	orrs r5, r7
	str r5, [r4, #0x34]
	adds r3, #0x2c
	ldr r7, [r3]
	ldr r3, [r3, #4]
	adds r5, r4, #0
	str r3, [r4, #0x20]
	adds r5, #0x1c
	adds r3, r6, #1
	str r7, [r4, #0x1c]
	bne _080377D4
	ldr r1, [r1, #0x7c]
	ldr r3, [r4, #0x34]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsrs r3, r3, #8
	lsls r3, r3, #8
	orrs r1, r3
	str r1, [r4, #0x34]
	b _080377E2
_080377D4
	ldr r1, [r4, #0x34]
	lsls r3, r6, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r3, r3, #0x18
	orrs r1, r3
	str r1, [r4, #0x34]
_080377E2
	movs r3, #0xf
	ldr r1, [r4, #0x34]
	lsls r3, r3, #0x16
	lsls r2, r2, #0x1c
	lsrs r2, r2, #6
	bics r1, r3
	orrs r1, r2
	lsls r2, r1, #6
	lsrs r3, r2, #0x1c
	ldr r6, _08037A08
	lsls r3, r3, #1
	str r1, [r4, #0x34]
	ldrh r3, [r6, r3]
	lsrs r2, r2, #0x1c
	str r3, [r4, #0x38]
	bne _080378A0
	movs r3, #1
	lsls r3, r3, #0x11
	lsls r6, r1, #0x18
	movs r7, #7
	lsls r7, r7, #0x12
	lsrs r6, r6, #0x18
	lsrs r2, r3, #6
	cmp r6, #0
	beq _0803787A
	cmp r6, #1
	beq _0803783E
	cmp r6, #2
	beq _0803785A
	cmp r6, #3
	bne _0803789A
	movs r6, #5
	ldr r3, [r4, #0x20]
	lsls r6, r6, #0x10
	subs r3, r3, r6
	str r3, [r4, #0x20]
	ldr r3, _08037A0C
	str r3, [r4, #0x28]
	adds r3, r1, #0
	adds r1, r1, r2
	ands r1, r0
	bics r3, r0
	orrs r3, r1
	adds r0, r3, #0
	str r0, [r4, #0x34]
	b _0803789A
_0803783E
	ldr r6, [r4, #0x20]
	str r3, [r4, #0x28]
	adds r3, r1, #0
	movs r7, #0x11
	lsls r7, r7, #0x10
	subs r1, r1, r2
	ands r1, r0
	adds r6, r6, r7
	bics r3, r0
	orrs r3, r1
	adds r0, r3, #0
	str r6, [r4, #0x20]
	str r0, [r4, #0x34]
	b _0803789A
_0803785A
	ldr r6, [r4, #0x1c]
	subs r6, r6, r7
	str r6, [r4, #0x1c]
	ldr r6, [r4, #0x20]
	adds r3, r6, r3
	str r3, [r4, #0x20]
	ldr r3, _08037A0C
	str r3, [r4, #0x24]
	adds r3, r1, #0
	subs r1, r1, r2
	ands r1, r0
	bics r3, r0
	orrs r3, r1
	adds r0, r3, #0
	str r0, [r4, #0x34]
	b _0803789A
_0803787A
	ldr r6, [r4, #0x1c]
	adds r6, r6, r7
	str r6, [r4, #0x1c]
	ldr r6, [r4, #0x20]
	str r3, [r4, #0x24]
	adds r3, r1, #0
	movs r7, #1
	lsls r7, r7, #0x10
	subs r1, r1, r2
	ands r1, r0
	adds r6, r6, r7
	bics r3, r0
	orrs r3, r1
	adds r0, r3, #0
	str r6, [r4, #0x20]
	str r0, [r4, #0x34]
_0803789A
	movs r0, #1
	movs r1, #0x40
	strb r0, [r1, r4]
_080378A0
	ldr r0, _08037A04
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #4]
	adds r1, r5, #0
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r7, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r7, r0
	adds r0, r7, #0
	ldr r6, [r4, #4]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r7
	lsrs r2, r7, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	movs r2, #4
	strh r1, [r6, #0x24]
	ldr r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r6]
	ldr r0, [r4, #4]
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r6, [r4, #4]
	ldr r0, [r6]
	lsls r0, r0, #0x1c
	bmi _0803791E
	ldr r0, _08037A04
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_80012F0
_0803791E
	ldr r0, [r6]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r6]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x34]
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	movs r6, #0x80
	lsls r2, r1, #0x16
	cmp r2, #0
	blt _08037952
	orrs r1, r6
	str r1, [r0]
_08037952
	ldr r0, [r4, #4]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
	ldr r0, _08037A04
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x38]
	adds r1, #3
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x3c]
	adds r1, r5, #0
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r7, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r7, r0
	adds r0, r7, #0
	ldr r5, [r4, #0x3c]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r7
	lsrs r2, r7, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	movs r3, #3
	lsls r3, r3, #0xa
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x34]
	ldrh r2, [r0, #0x2a]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _080379E8
	orrs r1, r6
	str r1, [r0]
_080379E8
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08037A00 DCDU gUnknown_0803EB10
_08037A04 DCDU gUnknown_03003EB8
_08037A08 DCDU gUnknown_030033BE
_08037A0C DCDU 0xFFFE0000
	END
