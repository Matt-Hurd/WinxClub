	thumb_func_start sub_801C210
sub_801C210
	push {r0, r4, r5, r6, r7, lr}
	sub sp, #0xa8
	movs r4, #0
	add r5, sp, #0x58
	adds r1, r5, #0
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r2, _0801C494
	bl CpuSet
	movs r0, #0
	str r0, [sp, #4]
	add r0, sp, #4
	ldr r2, _0801C494
	add r1, sp, #8
	bl CpuSet
	ldr r0, _0801C498
	ldr r0, [r0]
	bl sub_8002004
	ldr r3, [r0, #4]
	movs r0, #5
	ldr r6, [sp, #0xa8]
	lsls r0, r0, #8
	adds r2, r6, r0
	ldr r0, [r2, #0x1c]
	movs r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	beq %7
	add r0, sp, #8
1
	ldr r6, [sp, #0xa8]
	lsls r5, r1, #2
	adds r5, r5, r6
	ldr r5, [r5, #0x20]
	ldr r6, [r5, #0x2c]
	ldr r6, [r6]
	lsls r6, r6, #0x16
	lsrs r6, r6, #0x1f
	bne %2
	movs r6, #0x8c
	ldr r6, [r6, r5]
	lsls r6, r6, #0x11
	lsrs r6, r6, #0x1f
	beq %2
	ldr r6, [r5, #0x5c]
	ldr r5, [r5, #0x30]
	subs r6, r6, r3
	ldr r5, [r5, #0x10]
	asrs r7, r6, #0x1f
	lsrs r7, r7, #0x10
	ldr r5, [r5]
	adds r6, r7, r6
	lsls r5, r5, #1
	lsrs r5, r5, #0x16
	asrs r6, r6, #0x10
	adds r6, r5, r6
	lsls r5, r4, #2
	add r7, sp, #0x58
	str r6, [r7, r5]
	str r1, [r0, r5]
	adds r4, #1
2
	ldr r5, [r2, #0x1c]
	adds r1, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x19
	cmp r5, r1
	bhi %1
	cmp r4, #0
	beq %7
	movs r5, #0
	subs r1, r4, #1
	beq %7
	mov lr, r1
3
	movs r1, #0
	subs r0, r4, r5
	subs r2, r0, #1
	beq %6
	subs r0, #1
	mov ip, r0
4
	lsls r0, r1, #2
	add r7, sp, #0x58
	ldr r2, [r7, r0]
	adds r6, r0, r7
	ldr r3, [r6, #4]
	cmp r2, r3
	bhs %5
	str r3, [r7, r0]
	str r2, [r6, #4]
	add r7, sp, #8
	adds r2, r0, r7
	ldr r6, [r2, #4]
	ldr r3, [r7, r0]
	str r6, [r7, r0]
	str r3, [r2, #4]
5
	adds r1, #1
	cmp ip, r1
	bhi %4
6
	adds r5, #1
	cmp r5, lr
	blo %3
7
	movs r0, #0
	cmp r4, #0
	bls %11
	movs r5, #3
	lsls r5, r5, #0xa
	movs r6, #0x80
8
	lsls r1, r0, #2
	add r2, sp, #8
	ldr r1, [r2, r1]
	ldr r2, [sp, #0xa8]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1, #0x20]
	ldr r1, [r1, #0x2c]
	ldrb r2, [r1, #5]
	cmp r2, #0x80
	bls %9
	lsls r3, r0, #1
	adds r3, #0x82
	cmp r3, r2
	beq %10
	ldrh r2, [r1, #0x2a]
	lsls r7, r3, #0x18
	lsrs r7, r7, #0x1e
	lsls r7, r7, #0xa
	bics r2, r5
	orrs r2, r7
	strh r2, [r1, #0x2a]
	strb r3, [r1, #5]
	ldr r2, [r1]
	lsls r3, r2, #0x16
	bmi %10
	orrs r2, r6
	str r2, [r1]
	b %10
9
	lsls r3, r0, #1
	adds r3, #0x42
	cmp r3, r2
	beq %10
	ldrh r2, [r1, #0x2a]
	lsls r7, r3, #0x18
	lsrs r7, r7, #0x1e
	lsls r7, r7, #0xa
	bics r2, r5
	orrs r2, r7
	strh r2, [r1, #0x2a]
	strb r3, [r1, #5]
	ldr r2, [r1]
	lsls r3, r2, #0x16
	bmi %10
	orrs r2, r6
	str r2, [r1]
10
	adds r0, #1
	cmp r0, r4
	blo %8
11
	add sp, #0xac
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

