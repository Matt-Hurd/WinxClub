	non_word_aligned_thumb_func_start sub_801B332
	push {r4, r5, r6, r7, lr}
	ldr r1, _0801B480
	movs r2, #4
	ldr r1, [r1]
	sub sp, #0x14
	ands r1, r2
	cmp r1, #0
	ldr r6, _0801B484
	bne %14
	ldr r0, [r0, #0x20]
	ldr r1, _0801B488
	ldr r0, [r0, #0x7c]
	add r3, sp, #0
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	ldrb r1, [r1, r0]
	strh r1, [r3, #0xc]
	adds r1, #0x10
	strh r1, [r3, #0x10]
	ldr r1, _0801B488
	adds r1, #4
	ldrb r0, [r1, r0]
	strh r0, [r3, #0xe]
	adds r0, #0x20
	strh r0, [r3, #0x12]
	b %17
14
	ldr r0, _0801B468
	movs r1, #3
	ldr r0, [r0]
	lsls r1, r1, #9
	adds r0, #0xc
	adds r0, r0, r1
	ldr r5, [r0, #0x1c]
	ldr r0, [r6]
	movs r1, #0x27
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r4, [r0, #0xc]
	ldr r7, _0801B474
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne %15
	ldr r0, [r7]
	bl sub_8000D5A
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
15
	ldrh r1, [r0, #0x10]
	ldrh r0, [r0, #0x12]
	add r3, sp, #0
	strh r1, [r3, #8]
	strh r0, [r3, #0xa]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne %16
	ldr r0, [r7]
	bl sub_8000D5A
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
16
	ldr r0, [r0, #4]
	add r3, sp, #0
	lsls r1, r0, #0x14
	lsrs r1, r1, #0x18
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x18
	lsls r1, r1, #2
	adds r1, #4
	lsls r0, r0, #2
	adds r0, #4
	strh r1, [r3, #4]
	strh r0, [r3, #6]
	movs r0, #4
	ldrsh r0, [r3, r0]
	lsrs r1, r0, #0x1f
	adds r0, r1, r0
	asrs r1, r0, #1
	movs r0, #0x78
	subs r0, r0, r1
	ldrh r1, [r3, #8]
	adds r0, r0, r1
	strh r0, [r3, #0xc]
	adds r0, #1
	strh r0, [r3, #0x10]
	movs r0, #6
	ldrsh r0, [r3, r0]
	lsrs r1, r0, #0x1f
	adds r0, r1, r0
	asrs r1, r0, #1
	movs r0, #0x50
	subs r0, r0, r1
	ldrh r1, [r3, #0xa]
	adds r0, r0, r1
	strh r0, [r3, #0xe]
	adds r0, #1
	strh r0, [r3, #0x12]
	cmp r5, #0
	beq %17
	adds r0, r5, #0
	bl sub_80158E0
	cmp r0, #0
	beq %17
	add r3, sp, #0
	ldrh r0, [r3, #0xe]
	subs r0, #0x20
	strh r0, [r3, #0xe]
	ldrh r0, [r3, #0x12]
	subs r0, #0x20
	strh r0, [r3, #0x12]
17
	add r3, sp, #0
	ldrh r1, [r3, #0xe]
	ldr r0, [r6]
	lsls r2, r1, #8
	movs r1, #0x27
	lsls r1, r1, #6
	adds r1, r0, r1
	str r2, [r1]
	ldrh r2, [r3, #0xc]
	movs r3, #0x13
	lsls r3, r3, #7
	adds r0, r0, r3
	lsls r2, r2, #8
	str r2, [r0, #0x3c]
	add r3, sp, #0
	ldrh r0, [r3, #0x12]
	movs r2, #1
	lsls r0, r0, #8
	str r0, [r1, #8]
	ldrh r0, [r3, #0x10]
	lsls r0, r0, #8
	str r0, [r1, #4]
	ldr r0, [r1, #0x3c]
	orrs r0, r2
	str r0, [r1, #0x3c]
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_801B332
