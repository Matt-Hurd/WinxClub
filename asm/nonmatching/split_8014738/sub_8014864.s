	thumb_func_start sub_8014864
sub_8014864
	adds r2, r0, #0
	adds r2, #0x60
	push {r4, r5, r6, r7}
	strb r1, [r2, #0xd]
	ldrb r1, [r2, #0xe]
	movs r4, #0
	cmp r1, #0
	bls %15
	movs r7, #3
	lsls r7, r7, #0xa
12
	ldrb r1, [r2, #0xf]
	movs r3, #0
	cmp r1, #0
	bls %14
13
	ldrb r1, [r2, #0xf]
	ldr r5, [r0, #0x54]
	muls r1, r4
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	ldrb r5, [r2, #0xd]
	ldrh r6, [r1, #0x26]
	adds r3, #1
	lsls r5, r5, #0x1e
	lsrs r5, r5, #0x14
	bics r6, r7
	orrs r5, r6
	strh r5, [r1, #0x26]
	ldr r5, [r1]
	movs r6, #0x80
	orrs r5, r6
	str r5, [r1]
	ldrb r1, [r2, #0xf]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	cmp r1, r3
	bhi %13
14
	adds r4, #1
	ldrb r1, [r2, #0xe]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r1, r4
	bhi %12
15
	pop {r4, r5, r6, r7}
	bx lr

