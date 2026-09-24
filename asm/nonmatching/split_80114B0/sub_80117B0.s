	thumb_func_start sub_80117B0
sub_80117B0
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _08011A18
	adds r4, r0, #0
	cmp r0, r2
	bls %35
	adds r4, r2, #0
35
	ldr r1, _08011A14
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08011A1C
	adds r1, #0x24
	strh r0, [r1, #0x18]
	cmp r4, r3
	beq %37
	ldr r3, _08011A20
	cmp r4, r3
	beq %38
	ldr r3, _08011A24
	cmp r4, r3
	beq %39
	cmp r4, r2
	bne %36
	movs r2, #0xe7
	lsls r2, r2, #2
	strh r2, [r1, #0x1a]
	movs r2, #0xff
	adds r2, #0x31
	str r2, [r1, #0xc]
36
	ldr r1, _08011A14
	adds r1, #0x24
	ldrh r1, [r1, #0x10]
	lsls r1, r1, #0x1f
	bpl %46
	ldr r6, _08011A10
	ldr r5, _08011A14
	ldrh r1, [r6]
	adds r5, #0x34
	ldr r7, _08011A28
	lsls r1, r1, #0x1f
	cmp r1, #0
	bge %42
	ldrb r1, [r6, #0xb]
	ldr r3, _08011A2C
	adds r4, r7, #0
	muls r1, r3
	lsrs r1, r1, #0x17
	bl Div
	strh r0, [r6, #0xe]
	movs r0, #0
	strh r0, [r6, #0x10]
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq %42
	movs r2, #8
	b %40
37
	ldr r2, _08011A30
	strh r2, [r1, #0x1a]
	movs r2, #0x60
	str r2, [r1, #0xc]
	b %36
38
	ldr r2, _08011A34
	strh r2, [r1, #0x1a]
	movs r2, #0xb0
	str r2, [r1, #0xc]
	b %36
39
	ldr r2, _08011A38
	strh r2, [r1, #0x1a]
	movs r2, #0xe0
	str r2, [r1, #0xc]
	b %36
40
	ldrh r1, [r4, #4]
	lsls r3, r1, #0x1f
	bmi %41
	orrs r1, r2
	strh r1, [r4, #4]
41
	subs r0, #1
	adds r4, #0x4c
	cmp r0, #0
	bne %40
42
	ldrb r1, [r5, #0xf]
	movs r3, #0x4c
	ldrb r2, [r5, #0xe]
	ldr r0, _08011A14
	muls r1, r3
	adds r1, r1, r7
	adds r0, #0x24
	cmp r2, #0
	beq %45
	ldrh r4, [r0, #0x1a]
43
	ldr r3, [r1, #4]
	lsls r3, r3, #0x1f
	bmi %44
	ldr r3, [r1, #0x14]
	muls r3, r4
	lsrs r3, r3, #8
	str r3, [r1, #0x44]
44
	subs r2, #1
	adds r1, #0x4c
	cmp r2, #0
	bne %43
45
	ldrh r1, [r0, #0x18]
	movs r0, #1
	lsls r0, r0, #0x18
	bl Div
	movs r1, #1
	lsls r1, r1, #0x10
	subs r0, r1, r0
	lsls r1, r1, #7
	orrs r0, r1
	ldr r1, _08011A3C
	str r0, [r1]
46
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

