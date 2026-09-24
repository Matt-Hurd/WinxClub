	thumb_func_start sub_8016BE0
sub_8016BE0
	push {r4, r5, r6, r7}
	ldr r5, [r1]
	ldr r6, _08016D7C
	movs r0, #0
	movs r7, #1
28
	lsls r2, r0, #1
	adds r4, r2, r5
	movs r3, #4
	ldrsh r2, [r4, r3]
	cmp r2, #0
	blt %31
	ldrh r2, [r4, #4]
	adds r3, r7, #0
	lsls r4, r2, #0x1b
	lsrs r4, r4, #0x1b
	lsls r3, r4
	cmp r2, #0
	beq %29
	lsrs r2, r2, #5
	lsls r2, r2, #2
	ldr r2, [r6, r2]
	ands r2, r3
	beq %30
29
	movs r2, #1
	b %35
30
	movs r2, #0
	b %35
31
	NEGS r2, r2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r4, r2, #0x1b
	lsrs r4, r4, #0x1b
	adds r3, r7, #0
	lsls r3, r4
	cmp r2, #0
	beq %32
	lsrs r2, r2, #5
	lsls r2, r2, #2
	ldr r2, [r6, r2]
	ands r2, r3
	beq %33
32
	movs r2, #1
	b %34
33
	movs r2, #0
34
	subs r2, r7, r2
35
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhs %36
	cmp r2, #0
	bne %28
	b %37
36
	cmp r2, #0
	bne %43
37
	ldr r1, [r1, #0x14]
	ldr r0, [r1]
	ldrb r0, [r0]
	cmp r0, #2
	beq %43
	ldr r6, _08016D80
	movs r7, #0x43
	lsls r7, r7, #3
38
	adds r0, r1, #0
	ldrh r3, [r0, #0x10]
	ldr r2, [r6]
	movs r4, #0x53
	lsls r3, r3, #0x1a
	lsrs r3, r3, #0x18
	adds r3, r3, r2
	movs r5, #0x73
	lsls r5, r5, #3
	lsls r4, r4, #3
	adds r4, r3, r4
	adds r5, r3, r5
	ldr r1, [r1, #0x14]
	ldr r3, [r0, #0x18]
	cmp r3, #0
	beq %39
	ldr r4, [r0, #0x14]
	str r4, [r3, #0x14]
	b %40
39
	ldr r3, [r0, #0x14]
	str r3, [r4]
40
	ldr r3, [r0, #0x14]
	cmp r3, #0
	beq %41
	ldr r4, [r0, #0x18]
	str r4, [r3, #0x18]
	b %42
41
	ldr r3, [r0, #0x18]
	str r3, [r5]
42
	ldrh r0, [r0, #0x10]
	lsls r3, r0, #0x1a
	lsrs r3, r3, #0x19
	adds r2, r3, r2
	adds r2, r2, r7
	ldrh r3, [r2]
	lsrs r0, r0, #6
	subs r0, r3, r0
	strh r0, [r2]
	ldr r0, [r1]
	ldrb r0, [r0]
	cmp r0, #2
	bne %38
43
	pop {r4, r5, r6, r7}
	bx lr

