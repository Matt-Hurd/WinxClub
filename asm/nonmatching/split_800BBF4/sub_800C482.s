	non_word_aligned_thumb_func_start sub_800C482
sub_800C482
	push {r4, r5}
	movs r4, #0xc1
	adds r2, r0, #0
	adds r0, r1, #0
	lsls r4, r4, #5
	cmp r1, #0x20
	bhs %69
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	adds r1, r1, r4
	ldrb r2, [r1, #0xc]
	adds r2, #1
	strb r2, [r1, #0xc]
68
	pop {r4, r5}
	bx lr
69
	movs r0, #0xcd
	lsls r0, r0, #5
	adds r1, r2, r0
	ldrb r0, [r1, #0xa]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #2
	adds r3, r3, r2
	adds r3, r3, r4
	ldrb r3, [r3, #0xd]
	strb r3, [r1, #0xa]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #2
	adds r3, r3, r2
	adds r3, r3, r4
	ldrb r5, [r3, #0xc]
	adds r5, #1
	strb r5, [r3, #0xc]
	ldrb r5, [r1, #0xb]
	strb r5, [r3, #0xd]
	movs r5, #0xff
	strb r5, [r3, #0xe]
	ldrb r3, [r1, #0xd]
	cmp r3, #0
	beq %70
	ldrb r5, [r1, #0xb]
	lsls r3, r5, #1
	adds r3, r3, r5
	lsls r3, r3, #2
	adds r2, r3, r2
	adds r2, r2, r4
	strb r0, [r2, #0xe]
70
	strb r0, [r1, #0xb]
	ldrb r2, [r1, #0xd]
	adds r2, #1
	strb r2, [r1, #0xd]
	b %68

