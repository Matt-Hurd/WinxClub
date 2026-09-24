	thumb_func_start sub_80121C4
sub_80121C4
	ldr r1, _0801232C
	push {r4, r5, r6}
	ldrb r2, [r1, #0xe]
	cmp r2, #0
	beq %13
	ldrb r1, [r1, #0xf]
	adds r2, r1, r2
	cmp r1, r2
	bhs %13
	lsls r4, r0, #1
	adds r4, r4, r0
	ldr r0, _0801232C
	lsls r4, r4, #2
	subs r0, #0x18
	ldr r0, [r0]
	ldr r5, _08012330
10
	movs r3, #0x4c
	muls r3, r1
	adds r3, r3, r5
	ldrh r6, [r3, #4]
	lsls r6, r6, #0x1e
	bne %12
	ldr r6, [r0, r4]
	ldr r3, [r3, #8]
	adds r6, r6, r0
	cmp r6, r3
	bne %12
	movs r0, #0
	mvns r0, r0
11
	pop {r4, r5, r6}
	bx lr
12
	adds r1, #1
	cmp r1, r2
	blo %10
13
	movs r0, #0
	b %11

