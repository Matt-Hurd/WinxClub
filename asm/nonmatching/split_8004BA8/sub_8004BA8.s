	thumb_func_start sub_8004BA8
sub_8004BA8
	push {r4, r5, r6}
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1e
	bpl %6
	cmp r1, #0
	bne %1
	ldr r1, [r0, #0x10]
	ldrh r2, [r1, #8]
	ldrh r1, [r1, #0xa]
	subs r1, r2, r1
	NEGS r1, r1
	b %2
1
	cmp r1, #0
	bgt %2
	ldr r2, [r0, #0x10]
	ldrh r3, [r2, #8]
	ldrh r2, [r2, #0xa]
	subs r2, r3, r2
	NEGS r3, r1
	cmp r2, r3
	bge %2
	NEGS r1, r2
2
	adds r4, r1, #1
	cmp r1, #0
	bge %6
	movs r5, #1
	lsls r5, r5, #0xa
	movs r6, #0x3f
	lsls r6, r6, #0xa
3
	ldr r1, [r0, #0x10]
	ldr r2, [r1, #4]
	ldrh r1, [r2]
	lsrs r3, r1, #0xa
	lsls r3, r3, #0x1a
	beq %4
	adds r3, r1, #0
	subs r1, r1, r5
	ands r1, r6
	bics r3, r6
	orrs r1, r3
	strh r1, [r2]
	b %5
4
	lsrs r1, r1, #0xa
	lsls r1, r1, #0xa
	strh r1, [r2]
	ldr r1, [r0, #0x10]
	adds r1, #4
	ldr r2, [r1]
	subs r2, #2
	str r2, [r1]
5
	ldr r1, [r0, #0x10]
	adds r1, #0xa
	ldrh r2, [r1]
	adds r2, #1
	strh r2, [r1]
	adds r1, r4, #0
	adds r4, #1
	cmp r1, #0
	blt %3
6
	pop {r4, r5, r6}
	bx lr

