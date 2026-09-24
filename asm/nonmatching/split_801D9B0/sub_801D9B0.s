	thumb_func_start sub_801D9B0
sub_801D9B0
	push {r4, r5, r6}
	adds r0, r1, #0
	movs r2, #0
	movs r4, #1
	ldr r5, _0801DCE0
	b %11
1
	movs r1, #0
2
	lsls r3, r1, #1
	ldrsh r2, [r0, r3]
	cmp r2, #0
	blt %5
	ldrh r2, [r0, r3]
	adds r3, r4, #0
	lsls r6, r2, #0x1b
	lsrs r6, r6, #0x1b
	lsls r3, r6
	cmp r2, #0
	beq %3
	lsrs r2, r2, #5
	lsls r2, r2, #2
	ldr r2, [r5, r2]
	ands r2, r3
	beq %4
3
	movs r2, #1
	b %9
4
	movs r2, #0
	b %9
5
	NEGS r2, r2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r6, r2, #0x1b
	lsrs r6, r6, #0x1b
	adds r3, r4, #0
	lsls r3, r6
	cmp r2, #0
	beq %6
	lsrs r2, r2, #5
	lsls r2, r2, #2
	ldr r2, [r5, r2]
	ands r2, r3
	beq %7
6
	movs r2, #1
	b %8
7
	movs r2, #0
8
	subs r2, r4, r2
9
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #4
	bhs %10
	cmp r2, #0
	bne %2
10
	cmp r2, #0
	bne %11
	ldr r0, [r0, #0x18]
11
	cmp r0, #0
	beq %12
	cmp r2, #0
	beq %1
12
	pop {r4, r5, r6}
	bx lr

