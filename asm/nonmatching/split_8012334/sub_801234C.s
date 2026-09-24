	thumb_func_start sub_801234C
sub_801234C
	ldr r1, _08012460
	push {r4, r5, r6}
	ldrb r2, [r1, #0xe]
	cmp r2, #0
	beq %10
	ldrb r1, [r1, #0xf]
	ldr r6, _08012464
	adds r5, r1, #0
	adds r2, r2, r1
	cmp r1, r2
	bhs %3
2
	movs r3, #0x4c
	muls r3, r1
	adds r3, r3, r6
	ldrh r3, [r3, #4]
	lsls r3, r3, #0x1f
	bmi %3
	adds r1, #1
	cmp r1, r2
	blo %2
3
	cmp r1, r2
	bne %7
	movs r3, #0x4c
	muls r3, r5
	adds r3, r3, r6
	adds r1, r5, #1
	cmp r1, r2
	ldr r4, [r3, #0xc]
	bhs %6
4
	movs r3, #0x4c
	muls r3, r1
	adds r3, r3, r6
	ldr r3, [r3, #0xc]
	cmp r3, r4
	bhs %5
	adds r5, r1, #0
	adds r4, r3, #0
5
	adds r1, #1
	cmp r1, r2
	blo %4
6
	cmp r0, r4
	blo %9
	adds r1, r5, #0
7
	movs r0, #0x4c
	muls r0, r1
	adds r0, r0, r6
8
	pop {r4, r5, r6}
	bx lr
9
	movs r0, #0
	b %8
10
	movs r0, #0
	b %8

