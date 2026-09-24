	non_word_aligned_thumb_func_start sub_80022E2
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _080023F4
	movs r2, #1
	ldr r1, [r0]
	lsls r2, r2, #0xb
	adds r1, r1, r2
	ldr r1, [r1, #0x28]
	lsls r2, r1, #0x1f
	bmi %12
	lsls r1, r1, #0x1e
	bmi %12
	movs r1, #0x27
	lsls r1, r1, #6
	adds r1, r5, r1
	str r1, [sp]
	ldr r1, [r1, #0x3c]
	lsls r2, r1, #0x14
	lsrs r1, r2, #0x15
	beq %12
	ldr r1, [sp]
	lsrs r2, r2, #0x15
	lsls r3, r2, #1
	adds r2, r3, r2
	ldr r1, [r1, #0x14]
	lsls r2, r2, #2
	adds r4, r1, r2
6
	ldr r6, [r4, #4]
	movs r3, #0x58
	lsls r0, r6, #0x1e
	lsrs r0, r0, #0x1e
	muls r0, r3
	ldr r2, [r4]
	movs r1, #0x21
	ldr r3, [r2]
	lsls r1, r1, #6
	adds r0, r0, r5
	lsls r3, r3, #0xc
	lsrs r7, r3, #0x1a
	adds r1, r0, r1
	lsls r3, r7, #1
	adds r3, r3, r7
	ldr r0, [r1, #0x30]
	lsls r3, r3, #3
	ldr r0, [r0, r3]
	lsls r0, r0, #0x19
	bpl %7
	ldr r0, _080023F4
	lsls r3, r6, #0x13
	ldr r0, [r0]
	ldr r6, [r1, #0x2c]
	lsrs r3, r3, #0x16
	bl __call_via_r6
7
	ldr r0, [sp]
	ldr r0, [r0, #0x14]
	ldr r1, [r4, #4]
	lsls r1, r1, #8
	lsrs r1, r1, #0x15
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r4, r0, r1
	cmp r0, r4
	bne %6
	ldr r1, [r5, #8]
	movs r0, #0
	cmp r1, #0
	beq %8
	ldrb r0, [r1]
8
	subs r0, #1
	bmi %12
	movs r7, #0x40
9
	movs r2, #0x58
	muls r2, r0
	adds r3, r2, r5
	movs r2, #0x11
	lsls r2, r2, #7
	adds r2, r3, r2
	ldr r4, [r2, #0x10]
	movs r1, #0
	ldr r4, [r4]
	lsls r4, r4, #6
	lsrs r4, r4, #0x1a
	beq %11
	movs r4, #0x21
	lsls r4, r4, #6
	adds r4, r3, r4
10
	lsls r3, r1, #1
	adds r3, r3, r1
	ldr r6, [r4, #0x30]
	lsls r3, r3, #3
	adds r3, r6, r3
	ldr r6, [r3]
	adds r1, #1
	bics r6, r7
	str r6, [r3]
	ldr r3, [r2, #0x10]
	ldr r3, [r3]
	lsls r3, r3, #6
	lsrs r3, r3, #0x1a
	cmp r3, r1
	bhi %10
11
	subs r0, #1
	bpl %9
12
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_80022E2

