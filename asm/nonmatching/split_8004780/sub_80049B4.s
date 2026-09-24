	thumb_func_start sub_80049B4
sub_80049B4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x14]
	lsls r1, r0, #0x1c
	bmi %29
	lsls r1, r0, #0x1f
	ldr r2, _08004BA0
	ldr r3, _08004BA4
	bpl %26
	lsls r0, r0, #0x1d
	bmi %26
	ldr r0, [r4, #0x10]
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq %22
	adds r0, #0xc
	ldrb r1, [r0]
	adds r1, #0xff
	strb r1, [r0]
	b %23
22
	ldr r1, [r0, #4]
	ldrh r1, [r1]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	strh r1, [r0, #0xe]
	ldr r0, [r4, #0x10]
	ldr r1, [r0, #4]
	ldrh r1, [r1]
	lsrs r1, r1, #0xa
	strb r1, [r0, #0xc]
	ldr r0, [r4, #0x10]
	adds r0, #4
	ldr r1, [r0]
	adds r1, #2
	str r1, [r0]
23
	ldrh r0, [r4, #0xe]
	cmp r0, #0
	beq %24
	ldrh r1, [r3, #0x10]
	eors r1, r2
	ldr r2, [r4, #0x10]
	ldrh r2, [r2, #0xe]
	bics r2, r0
	ands r0, r1
	orrs r2, r0
	adds r5, r2, #0
	b %25
24
	ldr r0, [r4, #0x10]
	ldrh r5, [r0, #0xe]
25
	ldr r0, [r4, #0x10]
	adds r0, #0xa
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	ldr r0, [r4, #0x10]
	ldrh r0, [r0, #0xa]
	cmp r0, #0
	bne %27
	adds r0, r4, #0
	bl sub_8004984
	b %27
26
	ldrh r5, [r3, #0x10]
	eors r5, r2
27
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq %28
	ldrh r1, [r4, #0xc]
	orrs r5, r1
	subs r0, #1
	strh r0, [r4, #0xa]
28
	ldrh r0, [r4, #4]
	adds r1, r0, #0
	eors r1, r5
	ands r1, r5
	strh r1, [r4, #6]
	bics r0, r5
	strh r0, [r4, #8]
	strh r5, [r4, #4]
	ldr r0, [r4, #0x14]
	lsls r1, r0, #0x1e
	bpl %29
	lsls r0, r0, #0x1d
	bmi %29
	ldr r1, [r4, #0x10]
	ldr r2, [r1, #4]
	ldrh r0, [r2]
	lsls r3, r0, #0x16
	lsrs r3, r3, #0x16
	cmp r3, r5
	bne %31
	lsrs r3, r0, #0xa
	cmp r3, #0x3f
	bne %30
	adds r0, r1, #4
	ldr r1, [r1, #4]
	lsls r2, r5, #0x16
	adds r1, #2
	str r1, [r0]
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldrh r1, [r0]
	lsrs r1, r1, #0xa
	lsls r1, r1, #0xa
	lsrs r2, r2, #0x16
	orrs r1, r2
	strh r1, [r0]
	b %32
29
	b %33
30
	movs r3, #0x3f
	lsls r3, r3, #0xa
	adds r1, r0, #0
	movs r5, #1
	lsls r5, r5, #0xa
	adds r0, r0, r5
	ands r0, r3
	bics r1, r3
	orrs r0, r1
	strh r0, [r2]
	b %32
31
	adds r0, r1, #4
	ldr r1, [r1, #4]
	lsls r2, r5, #0x16
	adds r1, #2
	str r1, [r0]
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldrh r1, [r0]
	lsrs r1, r1, #0xa
	lsls r1, r1, #0xa
	lsrs r2, r2, #0x16
	orrs r1, r2
	strh r1, [r0]
32
	ldr r0, [r4, #0x10]
	adds r0, #0xa
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	ldr r0, [r4, #0x10]
	ldrh r0, [r0, #0xa]
	cmp r0, #0
	bne %33
	adds r0, r4, #0
	bl sub_8004984
33
	pop {r4, r5}
	pop {r3}
	bx r3

