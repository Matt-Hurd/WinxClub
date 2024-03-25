    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003EB8
	IMPORT sub_800065C
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_80012F0
	IMPORT sub_8001338
	IMPORT sub_80268AC
	IMPORT sub_8028BE4
	IMPORT sub_802E47A
	IMPORT sub_802E8B0
	IMPORT sub_803FF24
	IMPORT sub_8040148
	IMPORT sub_80401E4
	IMPORT sub_8040594

	thumb_func_start sub_802DDDC
sub_802DDDC ;@ 0x0802DDDC
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_802E47A
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _0802DDFA
	ldr r0, _0802DFEC ;@ =gUnknown_03003EB8
	adds r1, r4, #0
	adds r1, #0x44
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x44]
_0802DDFA
	ldr r5, _0802DFF0 ;@ =gUnknown_0300345C
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x3a
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _0802DE24
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x3a
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
_0802DE24
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802DE2A
sub_802DE2A ;@ 0x0802DE2A
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	str r1, [r0, #0x14]
	ldr r0, [r0, #0x2c]
	adds r7, r4, #0
	adds r7, #0x1c
	lsls r0, r0, #2
	cmp r0, #0
	bge _0802DF1E
	ldr r0, _0802DFEC ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x2c]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	bl sub_800065C
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #4]
	lsls r1, r1, #3
	lsrs r1, r1, #0x1f
	ldr r1, [r0]
	beq _0802DE6A
	movs r2, #2
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	b _0802DE74
_0802DE6A
	movs r2, #2
	bics r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
_0802DE74
	ldr r0, [r4, #0x2c]
	ldr r5, [r4, #4]
	lsrs r6, r0, #0x1f
	ldr r0, [r5]
	beq _0802DE8E
	lsls r0, r0, #0x1c
	bmi _0802DE9C
	ldr r0, _0802DFEC ;@ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80012F0
	b _0802DE9C
_0802DE8E
	lsls r0, r0, #0x1c
	bpl _0802DE9C
	ldr r0, _0802DFEC ;@ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8001338
_0802DE9C
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	lsls r1, r6, #3
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	adds r1, r7, #0
	bl sub_803FF24
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
	lsls r2, r1, #0x16
	bmi _0802DED8
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802DED8
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
	bpl _0802DF1E
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
_0802DF1E
	ldr r0, [r4, #0x30]
	lsls r0, r0, #2
	bpl _0802DFD0
	ldr r0, _0802DFEC ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x44]
	ldr r1, [r4, #0x30]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	bl sub_800065C
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x44]
	lsls r1, r1, #3
	lsrs r1, r1, #0x1f
	ldr r1, [r0]
	beq _0802DF50
	movs r2, #2
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	b _0802DF5A
_0802DF50
	movs r2, #2
	bics r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
_0802DF5A
	adds r1, r7, #0
	ldr r0, [r4, #0x44]
	bl sub_803FF24
	ldr r0, [r4, #0x44]
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
	lsls r2, r1, #0x16
	bmi _0802DF8A
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802DF8A
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #0x44]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0
	adds r0, r6, #0
	ldr r5, [r4, #0x44]
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
	ldr r0, [r4, #0x30]
	lsls r0, r0, #6
	bpl _0802DFD0
	movs r1, #1
	ldr r0, [r4, #0x44]
	bl sub_80401E4
_0802DFD0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_802DFD8
sub_802DFD8 ;@ 0x0802DFD8
	push {r3, lr}
	bl sub_802E8B0
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_802DFE4
sub_802DFE4 ;@ 0x0802DFE4
	ldr r0, [r0, #0x48]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x1b
	bx lr
	ALIGN
_0802DFEC DCDU gUnknown_03003EB8
_0802DFF0 DCDU gUnknown_0300345C
	END