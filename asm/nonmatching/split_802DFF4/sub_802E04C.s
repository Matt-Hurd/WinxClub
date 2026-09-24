	thumb_func_start sub_802E04C
	push {r3, r4, r5, r6, r7, lr}
	str r1, [r0, #0x10]
	adds r4, r0, #0
	ldr r0, [r1, #0x2c]
	movs r5, #0xff
	str r0, [r4, #0x14]
	ldrb r1, [r0, #5]
	ldr r3, [r4, #0x34]
	lsls r5, r5, #0xb
	adds r1, #0xff
	lsls r1, r1, #0x18
	lsrs r1, r1, #0xd
	bics r3, r5
	orrs r1, r3
	str r1, [r4, #0x34]
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	adds r6, r4, #0
	str r0, [r4, #0x20]
	str r1, [r4, #0x1c]
	adds r0, r1, #0
	movs r1, #1
	lsls r1, r1, #0x10
	subs r0, r0, r1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r1, #3
	lsls r1, r1, #0x10
	adds r0, r0, r1
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x34]
	movs r1, #0xf
	lsls r1, r1, #0x16
	bics r0, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #6
	orrs r0, r1
	lsls r1, r0, #6
	lsrs r1, r1, #0x1c
	ldr r2, _0802E374
	lsls r1, r1, #1
	str r0, [r4, #0x34]
	ldrh r1, [r2, r1]
	adds r6, #0x1c
	adds r5, r4, #0
	str r1, [r4, #0x38]
	movs r1, #7
	lsls r1, r1, #8
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #0x34]
	adds r5, #0x30
	ldrb r0, [r5, #0xc]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	strb r0, [r5, #0xc]
	ldr r0, _0802E378
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	movs r2, #2
	ldr r1, [r0]
	movs r7, #1
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #4]
	adds r1, r6, #0
	bl sub_803FF24
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x34]
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %4
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
4
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r6, [r4, #4]
	ldr r0, [r6]
	lsls r0, r0, #0x1f
	bmi %6
	ldr r0, _0802E378
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_80011D8
	ldr r0, [r6]
	lsls r0, r0, #0x16
	bmi %5
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq %5
	ldr r0, _0802E37C
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_800CD58
5
	ldr r0, [r6]
	orrs r0, r7
	str r0, [r6]
	lsls r1, r0, #0x1e
	bpl %6
	movs r2, #0xff
	adds r2, #1
	orrs r0, r2
	str r0, [r6]
6
	ldr r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	cmp r0, #5
	bhs %13
	add r3, pc, #0x8
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
7
	DCB 0x03
8
	DCB 0x08
9
	DCB 0x0C
10
	DCB 0x10
11
	DCB 0x27, 0x00
loc_802e16e
	movs r0, #3
	strb r0, [r5, #0xd]
	movs r0, #2
	strb r0, [r5, #0xe]
	b %13
loc_802e178
	movs r0, #0
	strb r0, [r5, #0xd]
	strb r7, [r5, #0xe]
	b %13
loc_802e180
	movs r0, #2
	strb r0, [r5, #0xd]
	strb r7, [r5, #0xe]
	b %13
loc_802e188
	movs r0, #2
	strb r0, [r5, #0xd]
	movs r1, #0
	strb r1, [r5, #0xe]
	movs r0, #0x78
	strb r0, [r5, #0xf]
	str r1, [r4, #0x28]
	str r7, [r4, #0x24]
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bmi %12
	ldr r0, _0802E378
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80012F0
12
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r5]
	b %13
loc_802e1b6
	movs r0, #0
	strb r0, [r5, #0xd]
	strb r0, [r5, #0xe]
13
	ldr r0, _0802E380
	ldr r0, [r0]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x3d
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028C2E
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_802E04C

