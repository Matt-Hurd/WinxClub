	thumb_func_start sub_80115EC
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _08011730
	adds r4, r0, #0
	adds r6, #0x24
	adds r5, r6, #0
	adds r5, #0x10
	ldrb r1, [r5, #0xf]
	adds r0, r5, #0
	ldrb r2, [r0, #0xe]
	ldr r7, _08011758
	cmp r1, r4
	bls %16
	cmp r2, #0
	beq %14
	movs r3, #0x4c
	muls r1, r3
	ldr r0, _08011734
	adds r1, r1, r7
	str r1, [r0]
	adds r1, r4, #0
	muls r1, r3
	adds r1, r1, r7
	str r1, [r0, #4]
	ldrb r1, [r5, #0xe]
	movs r2, #0x21
	muls r1, r3
	lsrs r1, r1, #2
	lsls r2, r2, #0x1a
	orrs r1, r2
	str r1, [r0, #8]
	ldr r0, [r0, #8]
14
	ldrb r0, [r5, #0xe]
	ldrh r2, [r6, #0x12]
	adds r0, r0, r4
	cmp r2, r0
	bls %21
	movs r1, #1
15
	movs r3, #0x4c
	muls r3, r0
	adds r3, r3, r7
	adds r0, #1
	cmp r2, r0
	strh r1, [r3, #4]
	bhi %15
	b %21
16
	cmp r1, r4
	bhs %21
	cmp r4, #7
	bls %17
	movs r4, #7
17
	movs r0, #0xe
	subs r0, r0, r4
	cmp r2, r0
	bhs %18
	adds r0, r2, #0
18
	movs r3, #0x4c
	adds r1, r1, r0
	adds r2, r4, r0
	muls r1, r3
	adds r1, r1, r7
	muls r2, r3
	adds r2, r2, r7
	muls r3, r0
	beq %20
19
	subs r1, #4
	ldr r7, [r1]
	subs r2, #4
	str r7, [r2]
	subs r3, #4
	bne %19
20
	bl sub_8011596
21
	strb r4, [r5, #0xf]
	ldrb r0, [r5, #0xe]
	adds r0, r0, r4
	strh r0, [r6, #0x12]
	cmp r4, #0
	beq %26
	ldr r0, [r6, #8]
	ldr r1, [r6, #0x14]
	movs r2, #1
	subs r0, r0, r1
	lsls r0, r0, #1
	lsls r2, r2, #9
	cmp r4, #2
	bls %22
	lsls r2, r4, #8
22
	adds r4, r2, #0
	cmp r0, r2
	beq %24
	ldr r5, _08011730
	cmp r1, #0
	beq %23
	movs r0, #0
	ldr r2, [r5, #4]
	bl __call_via_r2
23
	adds r1, r4, #0
	movs r0, #0
	ldr r2, [r5]
	bl __call_via_r2
	lsrs r1, r4, #1
	str r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #8]
24
	ldrh r0, [r6, #0x1c]
	bl sub_80114FA
25
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
26
	ldr r1, _0801173C
	movs r0, #0
	strh r0, [r1]
	b %25
	thumb_func_end sub_80115EC

