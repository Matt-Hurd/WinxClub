	thumb_func_start sub_803F814
sub_803F814
	push {r4, r5, r6}
	movs r4, #0x38
	ldrb r4, [r4, r0]
	ldr r5, [sp, #0xc]
	cmp r4, #1
	bne %15
	ldrb r4, [r0, #0x1c]
	lsls r6, r4, #0x1d
	bpl %11
	ldr r6, [r0, #0x14]
	ldrh r4, [r0, #0x20]
	ldrh r6, [r6, #4]
	subs r4, r4, r6
	lsrs r6, r4, #0x1f
	adds r4, r6, r4
	asrs r4, r4, #1
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b %13
11
	lsls r4, r4, #0x1e
	bpl %12
	ldr r6, [r0, #0x14]
	ldrh r4, [r0, #0x20]
	ldrh r6, [r6, #4]
	subs r4, r4, r6
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b %13
12
	movs r4, #0
13
	cmp r1, #0
	beq %14
	ldrh r6, [r0, #0x18]
	adds r6, r6, r4
	strh r6, [r1]
14
	cmp r2, #0
	beq %17
	ldr r6, [r0, #0x14]
	ldrh r1, [r0, #0x18]
	ldrh r6, [r6, #4]
	adds r1, r1, r6
	adds r1, r1, r4
	strh r1, [r2]
	b %17
15
	cmp r1, #0
	beq %16
	ldrh r4, [r0, #0x18]
	strh r4, [r1]
16
	cmp r2, #0
	beq %17
	ldrh r1, [r0, #0x18]
	ldrh r4, [r0, #0x20]
	adds r1, r1, r4
	strh r1, [r2]
17
	cmp r3, #0
	beq %18
	ldrh r1, [r0, #0x1a]
	strh r1, [r3]
18
	cmp r5, #0
	beq %19
	ldrh r1, [r0, #0x1a]
	ldrh r0, [r0, #0x1e]
	adds r0, r1, r0
	strh r0, [r5]
19
	pop {r4, r5, r6}
	bx lr
	ALIGN

