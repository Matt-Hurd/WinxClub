	thumb_func_start sub_80024D8
sub_80024D8
	movs r3, #0x58
	muls r1, r3
	movs r3, #0x11
	lsls r3, r3, #7
	adds r1, r1, r0
	adds r1, r1, r3
	push {r4, r5, r6, r7}
	ldr r3, [r1, #0x10]
	ldr r1, [r3, #8]
	subs r1, #1
	bmi %11
10
	ldr r5, [r0, #0x10]
	ldr r6, [r3, #0x20]
	lsls r4, r1, #2
	str r5, [r6, r4]
	ldr r5, [r3, #0x20]
	adds r4, r5, r4
	str r4, [r0, #0x10]
	subs r1, #1
	bpl %10
11
	movs r7, #0
	str r7, [r3, #8]
	ldr r1, [r0, #0x10]
	movs r4, #0
	adds r6, r1, #0
	beq %14
12
	adds r4, #1
	cmp r4, r2
	beq %14
	ldr r5, [r1]
	cmp r5, #0
	beq %13
	adds r1, #4
	cmp r5, r1
	beq %13
	movs r4, #0
	adds r6, r5, #0
13
	adds r1, r5, #0
	bne %12
14
	lsls r1, r2, #2
	adds r1, r1, r6
	str r2, [r3, #8]
	str r6, [r3, #0x20]
	subs r1, #0x40
	ldr r1, [r1, #0x3c]
	str r1, [r0, #0x10]
	movs r0, #0
	cmp r2, #0
	bls %16
15
	lsls r1, r0, #2
	adds r0, #1
	cmp r0, r2
	str r7, [r6, r1]
	blo %15
16
	pop {r4, r5, r6, r7}
	bx lr

