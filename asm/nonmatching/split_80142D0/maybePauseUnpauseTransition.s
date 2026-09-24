	thumb_func_start maybePauseUnpauseTransition
maybePauseUnpauseTransition
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0xef
	movs r2, #0x9f
	cmp r1, #0
	beq %17
	ldrh r3, [r4, #0xe]
	cmp r3, #0
	beq %17
	ldr r1, [r4, #0x70]
	cmp r1, #0
	beq %13
	adds r4, #0x54
	ldm r4!, {r1, r3, r5, r6}
	subs r4, #0x64
	str r6, [r4, #0x54]
	ldr r6, [r4, #0x64]
	str r6, [r4, #0x58]
	ldr r6, [r4, #0x68]
	adds r4, #0x60
	stm r4!, {r1, r3, r5}
	subs r4, #0x6c
	str r6, [r4, #0x5c]
13
	adds r6, r4, #0
	adds r6, #0x60
	ldrb r1, [r6, #0xe]
	movs r7, #0
	cmp r1, #0
	bls %23
14
	ldrb r0, [r6, #0xf]
	movs r5, #0
	cmp r0, #0
	bls %16
15
	movs r0, #0xef
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0x9f
	strh r0, [r3, #2]
	ldrb r0, [r6, #0xf]
	ldr r1, [r4, #0x54]
	muls r0, r7
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, sp
	bl sub_8040034
	adds r5, #1
	ldrb r0, [r6, #0xf]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r0, r5
	bhi %15
16
	adds r7, #1
	ldrb r0, [r6, #0xe]
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x18
	cmp r0, r7
	bhi %14
	b %23
17
	cmp r1, #0
	bne %23
	ldrb r1, [r4, #0xc]
	ldr r3, _08014730
	lsls r1, r1, #2
	ldr r7, [r3, r1]
	cmp r7, #0
	beq %23
18
	ldrh r0, [r7, #0xe]
	cmp r0, #0
	beq %22
	adds r5, r7, #0
	adds r5, #0x60
	ldrb r0, [r5, #0xe]
	movs r6, #0
	cmp r0, #0
	bls %22
19
	ldrb r0, [r5, #0xf]
	movs r4, #0
	cmp r0, #0
	bls %21
20
	movs r0, #0xef
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0x9f
	strh r0, [r3, #2]
	ldrb r0, [r5, #0xf]
	ldr r1, [r7, #0x54]
	muls r0, r6
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, sp
	bl sub_8040034
	adds r4, #1
	ldrb r0, [r5, #0xf]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r0, r4
	bhi %20
21
	adds r6, #1
	ldrb r0, [r5, #0xe]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r0, r6
	bhi %19
22
	ldr r7, [r7, #4]
	cmp r7, #0
	bne %18
23
	ldr r0, _08014734
	ldr r0, [r0]
	bl sub_80014E4
	bl VBlankIntrWait
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

