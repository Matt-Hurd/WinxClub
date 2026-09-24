	non_word_aligned_thumb_func_start sub_800F87A
sub_800F87A
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x5c]
	movs r6, #1
	cmp r0, #4
	beq %17
	bgt %12
	cmp r0, #1
	beq %14
	cmp r0, #2
	bne %22
	ldr r1, [r4]
	ldr r5, [r4, #0x10]
	ldr r2, [r1, #0x18]
	adds r0, r4, #0
	adds r1, r2, r1
	bl __call_via_r1
	bics r0, r6
	str r0, [r4, #0x10]
	cmp r0, r5
	bls %15
	subs r1, r0, r5
	b %16
12
	cmp r0, #8
	bne %22
	movs r0, #0
13
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
14
	ldr r0, [r4, #0x68]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x18
	adds r0, r1, r0
	asrs r1, r0, #8
	adds r0, r4, #0
	bl sub_800FE3A
	movs r0, #2
	str r0, [r4, #0x5c]
	b %22
15
	ldr r1, [r4, #8]
	lsls r6, r1
	subs r1, r6, r5
	adds r1, r1, r0
16
	adds r0, r4, #0
	bl sub_800F7D6
	b %22
17
	adds r0, r4, #0
	ldm r4!, {r1, r5}
	ldr r2, [r1, #0x18]
	subs r4, #8
	adds r1, r2, r1
	bl __call_via_r1
	adds r1, r4, #0
	adds r1, #0x80
	ldrh r2, [r1, #4]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	cmp r2, r0
	bhs %18
	subs r0, r0, r2
	b %19
18
	ldr r7, [r4, #8]
	adds r3, r6, #0
	lsls r3, r7
	subs r2, r3, r2
	adds r0, r2, r0
19
	lsrs r0, r0, #4
	lsls r0, r0, #4
	ldr r2, [r1]
	subs r0, #0x20
	cmp r2, r0
	bhs %20
	adds r0, r2, #0
	movs r3, #8
	str r3, [r4, #0x5c]
20
	subs r2, r2, r0
	str r2, [r1]
	cmp r0, #0
	ble %22
21
	ldr r7, [r4, #8]
	movs r3, #1
	ldrh r2, [r1, #4]
	lsls r3, r7
	subs r3, #1
	ands r2, r3
	lsrs r2, r2, #1
	lsls r2, r2, #1
	movs r6, #0
	strh r6, [r5, r2]
	ldrh r2, [r1, #4]
	subs r0, #2
	adds r2, #2
	strh r2, [r1, #4]
	cmp r0, #0
	bgt %21
22
	movs r0, #1
	b %13

