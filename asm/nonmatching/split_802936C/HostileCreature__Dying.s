	thumb_func_start HostileCreature__Dying
HostileCreature__Dying
	push {r4, lr}
	ldr r3, [r1]
	adds r2, r0, #0
	ldrh r4, [r3, #8]
	adds r2, #0x80
	cmp r4, #0xd
	beq %8
	bgt %7
	cmp r4, #2
	beq %10
	cmp r4, #3
	beq %6
	cmp r4, #4
	bne %12
	ldr r1, [r3, #4]
	movs r0, #1
	lsls r1, r1, #0x10
	bne %5
	movs r0, #0
5
	movs r3, #1
	lsls r3, r3, #0xe
	ldr r1, [r2, #0x34]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x11
	bics r1, r3
	orrs r0, r1
	str r0, [r2, #0x34]
6
	pop {r4}
	pop {r3}
	bx r3
7
	cmp r4, #0xe
	beq %9
	cmp r4, #0x13
	beq %11
	cmp r4, #0x18
	bne %12
	ldr r0, [r3, #4]
	ldr r3, _080296CC
	ldr r1, [r2, #0x2c]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x10
	ands r1, r3
	orrs r0, r1
	str r0, [r2, #0x2c]
	b %6
8
	ldr r1, [r3, #4]
	ldr r3, [r2, #0x30]
	ldr r4, _080296D0
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x10
	ands r3, r4
	orrs r1, r3
	str r1, [r2, #0x30]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x17
	adds r0, #0xb0
	strb r1, [r0, #6]
	b %6
9
	ldr r1, [r2, #0x30]
	ldr r0, [r3, #4]
	lsrs r1, r1, #7
	lsls r1, r1, #7
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x19
	orrs r0, r1
	str r0, [r2, #0x30]
	b %6
10
	ldr r1, [r3, #4]
	bl sub_80293D0
	b %6
11
	ldr r0, _080296D4
	movs r2, #5
	ldr r0, [r0]
	lsls r2, r2, #8
	ldr r1, [r3, #4]
	adds r2, r0, r2
	ldr r3, [r2, #0x1c]
	movs r4, #0x7f
	lsls r4, r4, #0x14
	lsls r1, r1, #0x19
	lsrs r1, r1, #5
	bics r3, r4
	orrs r1, r3
	movs r3, #1
	lsls r3, r3, #9
	bics r1, r3
	lsls r3, r3, #1
	bics r1, r3
	lsls r3, r3, #1
	bics r1, r3
	str r1, [r2, #0x1c]
	movs r2, #0x29
	lsls r2, r2, #5
	movs r1, #0
	adds r0, r0, r2
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	b %6
12
	bl Dying__7DefaultFv
	b %6

