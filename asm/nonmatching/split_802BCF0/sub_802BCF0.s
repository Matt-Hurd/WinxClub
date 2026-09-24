	thumb_func_start sub_802BCF0
sub_802BCF0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r1, [r0, #0x34]
	adds r5, r4, #0
	lsls r0, r1, #0x15
	lsrs r0, r0, #0x1d
	adds r5, #0x1c
	cmp r0, #0
	sub sp, #0xc
	ldr r7, _0802BF98
	beq %4
	adds r6, r4, #4
	cmp r0, #1
	beq %10
	cmp r0, #2
	bne %3
	ldr r0, _0802BF9C
	ldr r5, [r4, #4]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq %1
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
1
	lsls r0, r1, #0x10
	ldr r1, [r4, #0x38]
	lsrs r0, r0, #0x10
	adds r1, #2
	cmp r0, r1
	ldr r0, [r4, #4]
	beq %12
	movs r2, #0
	bl sub_80007A0
	ldr r5, [r4, #4]
	movs r6, #0
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bpl %2
	adds r1, r5, #0
	ldr r0, [r7]
	bl sub_8001338
2
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r6
	str r0, [r5]
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %3
	bl sub_8000914
3
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
4
	ldr r0, [r4, #4]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %3
	lsls r0, r1, #6
	lsrs r0, r0, #0x1c
	cmp r0, #5
	bhs %11
	add r3, pc, #0x4
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
5
	DCB 0x02
6
	DCB 0x2E
7
	DCB 0x0D
8
	DCB 0x18
9
	DCB 0x24, 0x00
loc_802bd92
	movs r2, #0x11
	ldr r0, [r4, #0x1c]
	lsls r2, r2, #0x10
	adds r0, r0, r2
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r2, #3
	lsls r2, r2, #0x10
	adds r0, r0, r2
	str r0, [r4, #0x20]
	b %11
loc_802bda8
	movs r2, #7
	ldr r0, [r4, #0x1c]
	lsls r2, r2, #0x10
	adds r0, r0, r2
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r2, #1
	lsls r2, r2, #0x11
	adds r0, r0, r2
	str r0, [r4, #0x20]
	b %11
loc_802bdbe
	movs r2, #1
	ldr r0, [r4, #0x1c]
	lsls r2, r2, #0x12
	adds r0, r0, r2
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r2, #0xd
	lsls r2, r2, #0x11
	subs r0, r0, r2
	str r0, [r4, #0x20]
	b %11
10
	b %16
loc_802bdd6
	movs r2, #1
	ldr r0, [r4, #0x1c]
	lsls r2, r2, #0x12
	adds r0, r0, r2
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r2, #0xd
	lsls r2, r2, #0x11
	subs r0, r0, r2
	str r0, [r4, #0x20]
11
	lsls r1, r1, #0x18
	ldr r2, _0802BFA0
	lsrs r1, r1, #0x18
	ldrsb r2, [r2, r1]
	ldr r0, [r4, #0x1c]
	lsls r2, r2, #0x10
	adds r0, r0, r2
	ldr r2, _0802BFA4
	str r0, [r4, #0x1c]
	ldrsb r2, [r2, r1]
	ldr r0, [r4, #0x20]
	lsls r2, r2, #0x10
	adds r0, r0, r2
	str r0, [r4, #0x20]
	ldr r0, _0802BFA8
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x24]
	ldr r0, _0802BFAC
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #4]
	adds r1, #1
	movs r2, #0
	b %13
12
	b %18
13
	bl sub_80007A0
	adds r1, r5, #0
	ldr r0, [r4, #4]
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0
	adds r0, r6, #0
	ldr r5, [r4, #4]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	movs r2, #4
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bmi %14
	adds r1, r5, #0
	ldr r0, [r7]
	bl sub_80012F0
14
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	bl sub_8000914
	movs r1, #7
	ldr r0, [r4, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
15
	b %3
16
	ldr r0, [r5]
	ldr r1, [r4, #0x24]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1f
	beq %17
	cmp r0, #0
	beq %15
	adds r1, r6, #0
	ldr r0, [r7]
	bl sub_8000DE6
	movs r6, #0
	str r6, [r4, #4]
	b %3
17
	adds r1, r5, #0
	bl sub_803FF24
	b %3
18
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %15
	cmp r0, #0
	beq %15
	adds r1, r6, #0
	ldr r0, [r7]
	bl sub_8000DE6
	movs r6, #0
	str r6, [r4, #4]
	b %3

