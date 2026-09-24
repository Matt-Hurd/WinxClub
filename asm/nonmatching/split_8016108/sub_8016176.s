	non_word_aligned_thumb_func_start sub_8016176
sub_8016176
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #1
	sub sp, #0x1c
	ldr r6, [r1]
	movs r2, #0xfc
	strb r0, [r2, r4]
	ldrb r0, [r6, #0xc]
	movs r2, #0x1b
	lsls r2, r2, #5
	adds r7, r4, r2
	strb r0, [r7, #2]
	ldrh r2, [r6, #6]
	strh r2, [r7]
	ldrh r1, [r1, #0x10]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1a
	strb r1, [r7, #5]
	movs r1, #0
	strb r1, [r7, #3]
	ldrb r1, [r6, #0xd]
	cmp r1, #0
	beq %9
	cmp r1, r0
	bhi %9
	subs r0, r1, #1
	b %10
9
	movs r0, #0xff
10
	strb r0, [r7, #4]
	ldr r0, _080163CC
	ldr r0, [r0]
	bl sub_800116A
	movs r2, #0
	movs r1, #0xa4
	str r0, [r4, #0x3c]
	bl sub_80007A0
	movs r0, #0xf0
	add r3, sp, #0
	strh r0, [r3, #0x10]
	movs r0, #0xa0
	strh r0, [r3, #0x12]
	ldr r0, [r4, #0x3c]
	add r1, sp, #0x10
	bl sub_8040034
	movs r1, #5
	ldr r0, [r4, #0x3c]
	bl sub_80401C0
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
	ldrh r2, [r6, #8]
	ldrh r1, [r6, #0xa]
	adds r0, r4, #0
	bl sub_80156B4
	bl sub_800EF2A
	adds r1, r4, #0
	adds r1, #0x80
	ldr r0, _080163D0
	str r1, [sp, #0x18]
	ldr r0, [r0]
	str r0, [r1, #0x50]
	ldrb r0, [r7, #2]
	cmp r0, #2
	bhi %11
	movs r0, #1
	bl sub_80133A0
	ldrh r0, [r0, #2]
	movs r2, #4
	str r2, [sp, #0xc]
	lsls r0, r0, #0x11
	lsrs r1, r0, #0x10
	movs r0, #0xa0
	movs r2, #0xa0
	str r2, [sp]
	movs r2, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r3, #0xf0
	movs r1, #0
	ldr r0, [sp, #0x18]
	bl sub_803F9C4
	b %12
11
	movs r0, #1
	bl sub_80133A0
	ldrh r1, [r0, #2]
	movs r2, #4
	str r2, [sp, #0xc]
	movs r2, #0xa0
	movs r0, #0xa0
	str r2, [sp]
	movs r2, #0
	str r0, [sp, #4]
	movs r3, #0xf0
	str r1, [sp, #8]
	movs r1, #0
	ldr r0, [sp, #0x18]
	bl sub_803F9C4
12
	movs r1, #4
	ldr r0, [sp, #0x18]
	bl sub_80147FA
	ldrh r1, [r6, #4]
	movs r3, #0xff
	movs r2, #0
	ldr r0, [sp, #0x18]
	bl sub_80138E2
	ldrb r0, [r7, #2]
	movs r5, #0
	cmp r0, #0
	bls %14
13
	movs r0, #0
	bl sub_80133A0
	ldrh r1, [r0, #2]
	movs r0, #0x48
	str r0, [sp, #4]
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #3
	movs r2, #4
	str r2, [sp, #0xc]
	adds r0, r0, r4
	adds r0, #0xff
	movs r2, #0xa0
	str r2, [sp]
	adds r0, #0x81
	movs r2, #2
	movs r3, #0xf0
	str r1, [sp, #8]
	movs r1, #0
	str r0, [sp, #0x14]
	bl sub_803F9C4
	movs r1, #4
	ldr r0, [sp, #0x14]
	bl sub_80147FA
	ldrh r0, [r6, #4]
	movs r3, #0xff
	adds r0, r0, r5
	adds r0, #1
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
	ldr r0, [sp, #0x14]
	bl sub_80138E2
	adds r5, #1
	ldrb r0, [r7, #2]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r0, r5
	bhi %13
14
	movs r1, #0
	ldr r0, [sp, #0x18]
	bl sub_80139AC
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

