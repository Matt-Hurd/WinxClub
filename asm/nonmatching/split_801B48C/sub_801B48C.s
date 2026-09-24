	thumb_func_start sub_801B48C
sub_801B48C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r5, _0801B870
	adds r4, r1, #0
	ldr r0, [r5]
	bl sub_8002004
	movs r3, #0x58
	ldr r2, [r5]
	muls r3, r6
	adds r2, r3, r2
	movs r3, #0x11
	lsls r3, r3, #7
	adds r2, r2, r3
	ldr r3, _0801B874
	adds r1, r0, #0
	ldr r5, [r3]
	ldr r1, [r1, #4]
	ldr r0, [r0]
	ldr r2, [r2, #0x10]
	ldr r6, [r5, #0xc]
	movs r7, #7
	lsls r7, r7, #0x10
	adds r2, #0xc
	cmp r6, #0
	beq %5
	ldr r5, [r5, #4]
	subs r5, r0, r5
	subs r5, r6, r5
	NEGS r6, r7
	cmp r5, r6
	bge %1
	adds r5, r6, #0
	b %2
1
	cmp r5, r7
	ble %2
	adds r5, r7, #0
2
	ldr r6, [r4]
	subs r5, r6, r5
	movs r6, #3
	lsls r6, r6, #0x1d
	cmp r5, r6
	str r5, [r4]
	blt %3
	ldr r6, [r3]
	ldr r6, [r6, #0xc]
	cmp r6, #0
	bgt %4
3
	movs r6, #5
	lsls r6, r6, #0x1d
	cmp r5, r6
	bgt %6
	ldr r5, [r3]
	ldr r5, [r5, #0xc]
	cmp r5, #0
	bge %6
4
	ldr r5, [r3]
	ldr r6, [r5, #0xc]
	NEGS r6, r6
	str r6, [r5, #0xc]
	b %6
5
	ldrh r5, [r2]
	lsls r5, r5, #0x13
	subs r5, #1
	ands r5, r0
	str r5, [r4]
6
	ldr r3, [r3]
	ldr r5, [r3, #0x10]
	cmp r5, #0
	beq %11
	ldr r2, [r3, #8]
	subs r2, r1, r2
	subs r2, r5, r2
	ldr r5, _0801B878
	cmp r2, r5
	bge %7
	adds r2, r5, #0
	b %8
7
	cmp r2, r7
	ble %8
	adds r2, r7, #0
8
	ldr r5, [r4, #4]
	subs r2, r5, r2
	str r2, [r4, #4]
	movs r4, #7
	lsls r4, r4, #0x1c
	cmp r2, r4
	blt %9
	ldr r4, [r3, #0x10]
	cmp r4, #0
	bgt %10
9
	movs r4, #9
	lsls r4, r4, #0x1c
	cmp r2, r4
	bgt %12
	ldr r2, [r3, #0x10]
	cmp r2, #0
	bge %12
10
	ldr r2, [r3, #0x10]
	NEGS r2, r2
	str r2, [r3, #0x10]
	b %12
11
	ldrh r2, [r2, #2]
	lsls r2, r2, #0x13
	subs r2, #1
	ands r2, r1
	str r2, [r4, #4]
12
	adds r3, #4
	stm r3!, {r0, r1}
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

