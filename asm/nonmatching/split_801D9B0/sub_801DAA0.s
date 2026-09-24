	thumb_func_start sub_801DAA0
sub_801DAA0
	push {r4, r5}
	ldr r3, [r1]
	ldrh r1, [r3, #4]
	cmp r1, #0
	beq %16
	cmp r1, #1
	bne %19
	movs r1, #0
	b %20
16
	movs r1, #0
17
	lsls r2, r1, #1
	adds r4, r2, r3
	ldrh r5, [r4, #6]
	adds r2, r2, r0
	strh r5, [r2, #8]
	ldrh r5, [r2, #0x18]
	cmp r5, #0
	bne %18
	ldrh r4, [r4, #6]
	strh r4, [r2, #0x18]
18
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #4
	blo %17
19
	pop {r4, r5}
	bx lr
20
	lsls r2, r1, #1
	adds r4, r2, r3
	ldrh r4, [r4, #6]
	adds r1, #1
	lsls r1, r1, #0x18
	adds r2, r2, r0
	lsrs r1, r1, #0x18
	cmp r1, #4
	strh r4, [r2, #0x18]
	blo %20
	b %19

