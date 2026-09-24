	thumb_func_start sub_8002698
sub_8002698
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r7, #0
11
	lsls r0, r4, #2
	adds r6, r0, r5
	ldr r0, [r6, #0xc]
	cmp r0, #0
	beq %12
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r7, [r6, #0xc]
12
	ldr r0, _08002824
	ldr r2, [r0]
	adds r0, r7, #0
	ldr r1, [r2, #8]
	cmp r1, #0
	beq %13
	ldrb r0, [r1]
13
	cmp r0, r4
	bls %14
	movs r0, #0x58
	muls r0, r4
	movs r1, #0x11
	lsls r1, r1, #7
	adds r0, r2, r0
	adds r0, r0, r1
	ldr r0, [r0, #0x14]
	movs r2, #0
	ldrh r0, [r0]
	lsls r1, r0, #2
	adds r3, r7, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [r6, #0xc]
14
	adds r4, #1
	cmp r4, #4
	blo %11
	ldr r0, _08002824
	adds r1, r7, #0
	ldr r0, [r0]
	ldr r2, [r0, #8]
	cmp r2, #0
	beq %15
	ldrb r1, [r2]
15
	movs r3, #0x58
	muls r1, r3
	adds r0, r0, r1
	movs r1, #0x1f
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r0, [r0, #0x28]
	movs r1, #0x7d
	lsls r1, r1, #0x19
	adds r0, r0, r1
	asrs r0, r0, #5
	movs r1, #1
	lsls r1, r1, #0xb
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r4, r5, r1
	str r0, [r4, #0x24]
	lsls r0, r0, #2
	movs r2, #0
	movs r1, #0
	bl sub_803D984
	str r0, [r4, #0x20]
	str r0, [r5, #8]
	str r7, [r5, #4]
	ldr r1, [r4, #0x24]
	movs r0, #0
	lsrs r1, r1, #1
	subs r1, #1
	beq %17
16
	ldr r2, [r4, #0x20]
	lsls r1, r0, #3
	adds r2, r2, r1
	ldr r3, [r5, #8]
	adds r2, #8
	str r2, [r3, r1]
	ldr r1, [r4, #0x24]
	adds r0, #1
	lsrs r1, r1, #1
	subs r1, #1
	cmp r1, r0
	bhi %16
17
	ldr r1, [r4, #0x24]
	ldr r0, [r5, #8]
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r0, #0x40
	str r7, [r0, #0x38]
	adds r5, #0x1c
	str r5, [r4, #0x1c]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

