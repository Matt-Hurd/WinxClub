	non_word_aligned_thumb_func_start sub_803315E
sub_803315E
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x30]
	adds r7, r4, #0
	adds r7, #0x1c
	lsls r0, r0, #2
	cmp r0, #0
	bge %46
	ldr r0, _080332F8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x30]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x30]
	ldr r5, [r4, #0x3c]
	lsls r1, r0, #0xe
	lsrs r1, r1, #0x1b
	lsls r0, r0, #8
	lsrs r6, r0, #0x1a
	ldr r0, _080332FC
	str r1, [sp, #8]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [sp, #8]
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, _08033304
	strb r6, [r5, #3]
	muls r0, r6
	str r0, [r5, #8]
	ldr r0, [r4, #0x30]
	lsls r0, r0, #3
	lsrs r1, r0, #0x1f
	ldr r0, [r4, #0x3c]
	bl sub_803F38C
	adds r1, r7, #0
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	ldr r0, [r4, #0x3c]
	bl sub_80401C0
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0
	adds r0, r6, #0
	ldr r5, [r4, #0x3c]
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
	lsls r0, r0, #7
	bpl %45
	ldr r0, [r4, #0x3c]
	bl sub_8000914
45
	ldr r0, [r4, #0x30]
	lsls r0, r0, #6
	bpl %46
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
46
	ldr r0, [r4, #0x50]
	lsls r0, r0, #2
	bpl %48
	ldr r0, _080332F8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x40]
	ldr r1, [r4, #0x50]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x50]
	ldr r5, [r4, #0x40]
	lsls r1, r0, #0xe
	lsrs r1, r1, #0x1b
	lsls r0, r0, #8
	lsrs r6, r0, #0x1a
	ldr r0, _080332FC
	str r1, [sp, #8]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [sp, #8]
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, _08033304
	strb r6, [r5, #3]
	muls r0, r6
	str r0, [r5, #8]
	ldr r0, [r4, #0x50]
	lsls r0, r0, #3
	lsrs r1, r0, #0x1f
	ldr r0, [r4, #0x40]
	bl sub_803F38C
	adds r1, r7, #0
	ldr r0, [r4, #0x40]
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	ldr r0, [r4, #0x40]
	bl sub_80401C0
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #0x40]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0
	adds r0, r6, #0
	ldr r5, [r4, #0x40]
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
	ldr r0, [r4, #0x50]
	lsls r0, r0, #7
	bpl %47
	ldr r0, [r4, #0x40]
	bl sub_8000914
47
	ldr r0, [r4, #0x50]
	lsls r0, r0, #6
	bpl %48
	movs r1, #1
	ldr r0, [r4, #0x40]
	bl sub_80401E4
48
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
