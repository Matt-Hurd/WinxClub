	thumb_func_start sub_8011E64
sub_8011E64
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	ldrh r5, [r2, #4]
	ldrh r4, [r2, #6]
	ldrh r0, [r2]
	sub sp, #8
	adds r6, r1, #0
	str r0, [sp]
	ldrh r0, [r2, #4]
	adds r7, r2, #0
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrh r0, [r1, #6]
	cmp r5, r4
	beq %50
	str r1, [sp, #4]
	ldrh r1, [r1, #4]
	ldr r2, [sp]
	subs r2, r2, r1
	mov ip, r2
	lsls r2, r4, #2
	adds r2, r2, r6
	ldrh r3, [r2, #4]
	ldrh r2, [r2, #6]
	subs r1, r3, r1
	subs r0, r2, r0
	mov r2, ip
	muls r0, r2
	bl Div
	ldr r1, [sp, #4]
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	strh r0, [r7, #2]
	b %51
50
	strh r0, [r7, #2]
51
	lsls r1, r4, #2
	adds r1, r1, r6
	ldr r0, [sp]
	ldrh r1, [r1, #4]
	adds r0, #1
	cmp r1, r0
	bhi %55
	ldrb r1, [r6, #1]
	adds r5, r4, #0
	adds r4, #1
	cmp r1, #0xff
	beq %52
	ldr r2, [sp, #8]
	lsls r2, r2, #0x1d
	bmi %52
	cmp r1, r4
	bhs %52
	adds r4, r1, #0
	adds r5, r1, #0
	lsls r0, r1, #2
	adds r0, r0, r6
	ldrh r0, [r0, #4]
	b %55
52
	ldrb r2, [r6, #2]
	cmp r2, #0xff
	beq %54
	ldrb r1, [r6, #3]
	cmp r1, r4
	bhs %54
	adds r5, r2, #0
	cmp r1, r2
	beq %53
	adds r2, r5, #1
53
	adds r4, r2, #0
	lsls r0, r5, #2
	adds r0, r0, r6
	ldrh r0, [r0, #4]
	b %55
54
	ldrb r1, [r6]
	cmp r1, r4
	bhi %55
	subs r4, #1
	subs r0, #1
55
	strh r5, [r7, #4]
	strh r4, [r7, #6]
	strh r0, [r7]
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

