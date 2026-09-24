	thumb_func_start sub_8017620
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0
	adds r2, r0, #0
	sub sp, #0x1c
	str r0, [sp, #8]
	cmp r1, #0xff
	beq %11
	adds r2, r1, #0
11
	lsls r5, r2, #0x18
	lsrs r5, r5, #0x18
	movs r2, #0x40
	cmp r1, #0xff
	beq %12
	adds r2, r1, #1
12
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0x61
	lsls r0, r0, #4
	str r1, [sp, #4]
	adds r1, r6, r0
	str r1, [sp, #0x18]
	ldr r7, _080177D0
	b %28
13
	lsls r0, r5, #2
	adds r1, r0, r6
	movs r3, #5
	lsls r3, r3, #7
	adds r0, r1, r3
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r4, [r0, #0x18]
	cmp r4, #0
	beq %22
	ldr r0, [sp, #8]
	movs r1, #0xb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	lsls r0, r5, #1
	adds r0, r0, r6
	lsls r1, r1, #7
	adds r0, r0, r1
	str r0, [sp, #0xc]
	b %25
14
	ldr r0, _080177A4
	ldr r1, [r0]
	ldrb r0, [r4, #4]
	lsls r2, r0, #0x1f
	bpl %15
	movs r2, #1
	b %18
15
	lsls r2, r0, #0x1e
	bpl %16
	ldrh r2, [r4, #0x10]
	movs r3, #5
	lsls r3, r3, #7
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x18
	adds r2, r2, r1
	adds r2, r2, r3
	ldr r2, [r2, #0x18]
	cmp r2, r4
	bne %16
	movs r2, #1
	b %18
16
	lsls r2, r0, #0x1e
	bpl %17
	ldr r2, [r4, #0x18]
	ldrb r2, [r2, #4]
	lsls r2, r2, #0x1b
	bpl %17
	movs r2, #1
	b %18
17
	movs r2, #0
18
	cmp r2, #0
	beq %21
	movs r2, #3
	lsls r2, r2, #9
	adds r2, r1, r2
	ldr r2, [r2, #0x24]
	ldr r3, [r4, #8]
	cmp r3, #0
	bne %20
	ldrh r3, [r4, #0xc]
	cmp r3, r7
	beq %19
	lsls r2, r3, #2
	adds r1, r2, r1
	movs r2, #3
	lsls r2, r2, #9
	adds r1, r1, r2
	ldr r1, [r1, #0x1c]
	str r1, [r4, #8]
	b %20
19
	ldrh r1, [r4, #0xe]
	ldr r3, _080177D4
	cmp r1, r3
	beq %20
	cmp r2, #0
	beq %20
	ldr r2, [r2, #0x14]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	str r1, [r4, #8]
20
	strh r7, [r4, #0xc]
	movs r1, #0xf0
	ands r0, r1
	strh r7, [r4, #0xe]
	strb r0, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r2, r2, r1
	adds r1, r4, #0
	bl __call_via_r2
21
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x1c
	bne %23
	ldr r0, [r4, #8]
	ldr r1, [r0]
	ldr r2, [r1, #8]
	adds r2, r2, r1
	adds r1, r4, #0
	bl __call_via_r2
	cmp r0, #0
	beq %23
	adds r0, r4, #0
	bl sub_803FBBC
	ldr r4, [r4, #0x14]
	b %24
22
	b %26
23
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x1c
	bne %26
	ldr r4, [r4, #0x14]
24
	cmp r4, #0
	beq %26
25
	ldr r0, [sp, #0xc]
	ldrh r0, [r0, #0x18]
	lsls r0, r0, #0x1e
	bpl %14
26
	cmp r5, #4
	bls %27
	ldr r1, [sp, #0x14]
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq %27
	ldr r1, [sp, #0x10]
	ldr r1, [r1, #0x18]
	cmp r1, #0
	bne %27
	lsls r1, r5, #1
	adds r4, r1, r6
	movs r1, #0xb
	lsls r1, r1, #7
	adds r1, r4, r1
	ldrh r1, [r1, #0x18]
	lsls r1, r1, #0x1f
	bmi %27
	bl __da__FPv
	ldr r1, [sp, #0x14]
	movs r0, #0
	adds r4, #0xff
	adds r4, #0x81
	str r0, [r1, #0x18]
	strh r0, [r4, #0x18]
	ldr r1, [sp, #0x18]
	ldrb r0, [r1, #8]
	adds r0, #0xff
	strb r0, [r1, #8]
27
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
28
	ldr r0, [sp, #4]
	cmp r5, r0
	bhs %29
	ldr r1, [sp, #0x18]
	ldrb r0, [r1, #8]
	ldr r1, [sp, #8]
	cmp r0, r1
	bls %29
	b %13
29
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_8017620
