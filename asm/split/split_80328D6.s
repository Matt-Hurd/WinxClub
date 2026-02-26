	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EB8
	IMPORT sub_800065C
	IMPORT sub_800116A
	IMPORT sub_80012F0
	IMPORT sub_8001338
	IMPORT sub_802E5D2
	IMPORT sub_803F38C
	IMPORT sub_803FF24
	IMPORT sub_8040148
	IMPORT sub_80401C0
	IMPORT sub_80401E4
	IMPORT sub_8040594

	non_word_aligned_thumb_func_start sub_80328D6

sub_80328D6
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	adds r7, r4, #0
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	adds r7, #0x1c
	cmp r0, #3
	sub sp, #0xc
	bne %7
	str r1, [r4, #0x14]
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #2
	bpl %6
	ldr r0, _08032A8C
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
	beq %4
	lsls r0, r0, #0x1c
	bmi %5
	ldr r0, _08032A8C
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80012F0
	b %5
4
	lsls r0, r0, #0x1c
	bpl %5
	ldr r0, _08032A8C
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8001338
5
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
	bpl %6
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
6
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
7
	adds r0, r4, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #2
	bpl %8
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
8
	ldr r0, [r4, #0x30]
	lsls r0, r0, #2
	bpl %6
	ldr r0, _08032A8C
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
	bpl %6
	movs r1, #1
	ldr r0, [r4, #8]
	bl sub_80401E4
	b %6

	ALIGN
_08032A8C DCDU gUnknown_03003EB8

	END
