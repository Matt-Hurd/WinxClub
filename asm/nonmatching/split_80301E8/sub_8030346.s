	non_word_aligned_thumb_func_start sub_8030346
	push {r0, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r0, sp, #0x10
	bl sub_80046F8
	ldr r0, [sp, #0x20]
	movs r4, #0
	strb r4, [r0]
	movs r0, #1
	bl sub_800E53C
	movs r0, #3
	bl maybeInitTransitionLevelScreen
	add r0, pc, #0x244
	bl maybeLoadOrRenderBgImage
	movs r2, #4
	str r2, [sp, #0xc]
	movs r2, #0x3c
	movs r0, #0x70
	str r0, [sp, #4]
	str r2, [sp]
	ldr r0, [sp, #0x20]
	movs r1, #0x10
	str r1, [sp, #8]
	movs r1, #1
	movs r2, #1
	adds r3, r4, #0
	adds r0, #4
	adds r4, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	movs r6, #0xff
	adds r3, r6, #0
	movs r2, #0
	adds r0, r4, #0
	ldr r1, _080305B8
	bl sub_80138E2
	movs r4, #0
	movs r7, #0xe
16
	movs r2, #4
	str r2, [sp, #0xc]
	lsls r2, r4, #5
	movs r0, #0x50
	str r0, [sp, #4]
	adds r2, #0x52
	movs r1, #0x10
	str r1, [sp, #8]
	str r2, [sp]
	lsls r0, r4, #4
	subs r0, r0, r4
	ldr r1, [sp, #0x20]
	lsls r0, r0, #3
	adds r5, r0, r1
	adds r5, #0x7c
	movs r1, #0
	movs r2, #0
	adds r3, r7, #0
	adds r0, r5, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r5, #0
	bl sub_80147FA
	ldr r0, _080305BC
	adds r3, r6, #0
	movs r2, #0
	adds r1, r4, r0
	adds r0, r5, #0
	bl sub_80138E2
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo %16
	movs r7, #0
17
	lsls r0, r7, #5
	adds r0, #0x50
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	lsls r0, r7, #3
	movs r5, #0
	adds r1, r0, r1
	str r1, [sp, #0x18]
18
	ldr r0, _080305A4
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, [sp, #0x18]
	lsls r2, r5, #2
	adds r6, r1, r2
	adds r6, #0xff
	adds r6, #0x41
	ldr r1, _080305C0
	str r0, [r6, #0x2c]
	adds r1, r5, r1
	bl sub_800065C
	lsls r1, r5, #6
	adds r1, #0xe
	ldr r4, [r6, #0x2c]
	ldr r0, [sp, #0x1c]
	add r3, sp, #0
	strh r1, [r3, #0xc]
	strh r0, [r3, #0xe]
	lsls r2, r1, #0x10
	ldrh r1, [r3, #0xe]
	ldr r0, [r4, #0x2c]
	lsls r3, r1, #0x10
	ldr r1, [r4, #0x30]
	str r2, [r4, #0x2c]
	str r3, [r4, #0x30]
	subs r1, r3, r1
	ldr r3, [r4, #0x34]
	subs r0, r2, r0
	adds r3, r3, r0
	str r3, [r4, #0x34]
	ldr r3, [r4, #0x38]
	adds r2, r4, #0
	adds r3, r3, r1
	str r3, [r4, #0x38]
	ldr r3, [r4, #0x3c]
	adds r2, #0x34
	adds r0, r3, r0
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r2, #0xc]
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	blt %19
	movs r1, #0xf
	ldr r0, [r4, #0x34]
	lsls r1, r1, #0x14
	cmp r0, r1
	bge %19
	ldr r0, [r4, #0x40]
	cmp r0, #0
	blt %19
	movs r1, #5
	ldr r0, [r4, #0x38]
	lsls r1, r1, #0x15
	cmp r0, r1
	blt %20
19
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi %22
	ldr r0, _080305C4
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_800C1CA
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #9
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4]
	b %22
20
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bpl %21
	ldr r0, _080305C4
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_800BE0E
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4]
21
	ldr r0, [r4, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x28]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	lsrs r0, r0, #0x17
	orrs r0, r1
	strh r0, [r4, #0x28]
	ldr r0, [r4, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x26]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4]
22
	ldr r0, [r6, #0x2c]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #5
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %23
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
23
	ldr r4, [r6, #0x2c]
	movs r6, #1
	ldr r0, [r4]
	lsls r0, r0, #0x1f
	bmi %25
	ldr r0, _080305C8
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80011D8
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi %24
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq %24
	ldr r0, _080305C4
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_800CD58
24
	ldr r0, [r4]
	orrs r0, r6
	str r0, [r4]
	lsls r1, r0, #0x1e
	bpl %25
	movs r1, #0xff
	adds r1, #1
	orrs r0, r1
	str r0, [r4]
25
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	bhs %26
	b %18
26
	adds r7, #1
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x18
	cmp r7, #2
	bhs %27
	b %17
27
	bl FadeToImage
	movs r2, #0x3f
	movs r1, #8
	add r4, sp, #0x10
	adds r0, r4, #0
	bl sub_8004784
	movs r2, #8
	movs r1, #8
	adds r0, r4, #0
	bl sub_80047BE
	adds r0, r4, #0
	bl sub_803D66C
	movs r1, #0
	ldr r0, [sp, #0x20]
	bl sub_80302CC
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_8030346
