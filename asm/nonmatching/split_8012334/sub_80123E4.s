	thumb_func_start sub_80123E4
sub_80123E4
	push {r4, r5, r6, r7}
	ldr r1, _08012460
	movs r3, #0x4c
	subs r1, #0x10
	ldrh r0, [r1, #0x12]
	ldr r7, _08012460
	ldr r4, _08012464
	subs r7, #0x34
	muls r0, r3
	ldr r3, [r7, #0xc]
	adds r0, r0, r4
	str r3, [r0]
	subs r0, #0x4c
	movs r1, #0
	movs r2, #0
	cmp r0, r4
	blo %23
	ldr r4, [r7, #0x10]
	ldr r5, [r7, #0x14]
	ldr r6, [r7, #0x18]
15
	ldrh r3, [r0, #4]
	lsls r3, r3, #0x1e
	beq %19
	ldr r7, _08012460
	ldr r3, [r0, #0x4c]
	subs r7, #0x34
	ldr r7, [r7, #0xc]
	cmp r3, r7
	bne %16
	str r3, [r0]
	b %18
16
	cmp r1, #2
	bhs %17
	subs r3, #4
	str r3, [r0]
	adds r1, #1
	b %18
17
	movs r1, #0
	str r4, [r0]
18
	adds r2, #1
	b %22
19
	ldr r1, [r0, #0x30]
	cmp r1, #0
	beq %20
	str r5, [r0]
	b %21
20
	str r6, [r0]
21
	movs r2, #0
	movs r1, #0
22
	ldr r3, _08012464
	subs r0, #0x4c
	cmp r0, r3
	bhs %15
23
	movs r0, #0x4c
	ldr r4, _08012464
	muls r0, r2
	ldr r1, _08012460
	adds r0, r0, r4
	subs r1, #0x10
	str r0, [r1]
	pop {r4, r5, r6, r7}
	bx lr
