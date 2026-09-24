	thumb_func_start sub_80333DC
sub_80333DC
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r5, #0x80
	adds r4, r0, #0
	ldr r0, [r5, #0x14]
	movs r1, #1
	lsls r1, r1, #0xb
	orrs r0, r1
	sub sp, #4
	str r0, [r5, #0x14]
	adds r0, r4, #0
	adds r0, #0xc0
	ldr r1, [r0, #0x3c]
	movs r2, #0x30
	bics r1, r2
	ldr r2, [sp, #8]
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1a
	orrs r1, r2
	str r1, [r0, #0x3c]
	ldr r0, _0803363C
	movs r2, #5
	ldr r0, [r0]
	lsls r2, r2, #8
	ldr r1, [r0, #0x20]
	adds r2, r0, r2
	str r1, [r5, #0x20]
	ldr r2, [r2, #0x1c]
	lsls r2, r2, #5
	lsrs r2, r2, #0x19
	lsls r2, r2, #2
	adds r0, r2, r0
	ldr r0, [r0, #0x20]
	str r0, [r5, #0x24]
	ldr r3, [r1, #0x58]
	ldr r0, _08033640
	str r3, [sp]
	ldr r6, [r1, #0x5c]
	ldr r0, [r0]
	bl sub_8002004
	ldr r1, [r0]
	ldr r0, [r0, #4]
	movs r3, #0x19
	subs r2, r6, r0
	movs r6, #0xf
	lsls r6, r6, #0x18
	lsrs r7, r6, #5
	lsls r3, r3, #0x12
	cmp r2, r3
	ble %4
	lsls r2, r3, #1
	ldr r3, [r4, #0x7c]
	adds r2, r0, r2
	bics r3, r6
	movs r6, #3
	lsls r6, r6, #0x18
	adds r0, r0, r7
	adds r3, r3, r6
	str r3, [r4, #0x7c]
	b %5
4
	movs r2, #5
	lsls r2, r2, #0x13
	movs r3, #0x23
	lsls r3, r3, #0x11
	subs r2, r0, r2
	adds r0, r0, r3
	ldr r3, [r4, #0x7c]
	bics r3, r6
	movs r6, #1
	lsls r6, r6, #0x18
	adds r3, r3, r6
	str r3, [r4, #0x7c]
5
	ldr r3, [sp]
	subs r6, r3, r1
	adds r3, r4, #0
	adds r3, #0x90
	cmp r6, r7
	ble %6
	movs r6, #0x23
	lsls r6, r6, #0x13
	movs r7, #0x2d
	lsls r7, r7, #0x12
	adds r6, r1, r6
	adds r1, r1, r7
	movs r7, #2
	strb r7, [r3, #8]
	b %7
6
	movs r6, #5
	lsls r6, r6, #0x13
	movs r7, #0xf
	lsls r7, r7, #0x12
	subs r6, r1, r6
	adds r1, r1, r7
	movs r7, #0
	strb r7, [r3, #8]
7
	cmp r6, #0
	bgt %8
	movs r6, #0xf
	lsls r6, r6, #0x11
8
	cmp r2, #0
	bgt %9
	movs r2, #0xf
	lsls r2, r2, #0x11
9
	ldr r3, _0803363C
	ldr r7, [r3]
	ldr r3, [r7, #0x14]
	cmp r6, r3
	blt %10
	movs r6, #0xf
	lsls r6, r6, #0x11
	subs r6, r3, r6
10
	ldr r3, [r7, #0x18]
	cmp r2, r3
	blt %11
	movs r2, #0xf
	lsls r2, r2, #0x11
	subs r2, r3, r2
11
	str r2, [r5, #0x70]
	str r6, [r5, #0x6c]
	str r2, [r4, #0x5c]
	str r6, [r4, #0x58]
	str r0, [r5, #0x78]
	movs r0, #3
	lsls r0, r0, #0x10
	str r1, [r5, #0x74]
	str r0, [r4, #0x70]
	movs r0, #1
	lsls r0, r0, #0x17
	str r0, [r4, #0x78]
	movs r7, #0
	str r7, [r5, #0x1c]
	ldr r2, [sp, #8]
	movs r1, #0x16
	ldr r3, _08033644
	muls r1, r2
	ldrh r0, [r3, r1]
	strh r0, [r4, #0xe]
	adds r2, r0, #1
	strh r2, [r4, #0xa]
	adds r0, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	adds r0, r1, r3
	ldrh r0, [r0, #2]
	strh r0, [r4, #0x1e]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	adds r0, #2
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

