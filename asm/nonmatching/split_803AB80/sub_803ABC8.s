	thumb_func_start sub_803ABC8
sub_803ABC8
	push {r3, r4, r5, r6, r7, lr}
	str r1, [r0, #0x10]
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	movs r1, #0xf
	lsls r1, r1, #0x16
	bics r0, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #6
	orrs r0, r1
	movs r1, #0xff
	lsls r1, r1, #0xb
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #0x10
	adds r6, r3, #0
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldr r0, _0803AE4C
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	ldr r5, [r0, #0x58]
	ldr r0, _0803AE50
	ldr r0, [r0]
	bl sub_8002004
	ldr r1, [r0]
	movs r3, #0xf
	lsls r3, r3, #0x13
	subs r2, r5, r1
	cmp r2, r3
	ldr r0, [r0, #4]
	ldr r2, [r4, #0x34]
	ble %4
	lsls r2, r2, #6
	lsrs r2, r2, #0x1c
	lsls r2, r2, #5
	adds r2, #0x60
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r0, [r4, #0x20]
	str r1, [r4, #0x1c]
	b %5
4
	lsls r2, r2, #6
	lsrs r2, r2, #0x1c
	lsls r2, r2, #5
	adds r2, #0x10
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r0, [r4, #0x20]
	str r1, [r4, #0x1c]
5
	ldr r0, [r4, #0x34]
	lsls r1, r6, #0x18
	lsrs r0, r0, #8
	lsls r0, r0, #8
	lsrs r1, r1, #0x18
	orrs r0, r1
	lsls r1, r0, #6
	lsrs r1, r1, #0x1c
	ldr r2, _0803AE54
	lsls r1, r1, #1
	str r0, [r4, #0x34]
	ldrh r1, [r2, r1]
	movs r2, #0x3c
	ldr r6, _0803AE58
	str r1, [r4, #0x38]
	movs r1, #4
	strb r1, [r2, r4]
	movs r1, #7
	lsls r1, r1, #8
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
	movs r0, #0
	str r0, [r4, #0x24]
	movs r0, #1
	lsls r0, r0, #0x11
	str r0, [r4, #0x28]
	ldr r0, [r6]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	movs r2, #2
	ldr r1, [r0]
	lsls r7, r2, #7
	orrs r1, r2
	bics r1, r7
	str r1, [r0]
	ldr r0, [r4, #4]
	ldr r2, [r4, #0x1c]
	ldr r3, [r0, #0x2c]
	ldr r5, [r0, #0x30]
	subs r3, r2, r3
	ldr r2, [r4, #0x20]
	adds r1, r0, #0
	subs r2, r2, r5
	ldr r5, [r0, #0x34]
	adds r1, #0x34
	adds r5, r5, r3
	str r5, [r0, #0x34]
	ldr r5, [r0, #0x38]
	adds r5, r5, r2
	str r5, [r1, #4]
	ldr r5, [r1, #8]
	adds r3, r5, r3
	str r3, [r1, #8]
	ldr r3, [r1, #0xc]
	adds r2, r3, r2
	str r2, [r1, #0xc]
	ldr r2, [r4, #0x1c]
	ldr r3, [r4, #0x20]
	str r2, [r0, #0x2c]
	str r3, [r0, #0x30]
	ldr r1, [r0]
	orrs r1, r7
	str r1, [r0]
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bmi %6
	adds r1, r5, #0
	ldr r0, [r6]
	bl sub_80012F0
6
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r5]
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
	bmi %7
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
7
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r4, [r4, #4]
	movs r5, #1
	ldr r0, [r4]
	lsls r0, r0, #0x1f
	bmi %9
	adds r1, r4, #0
	ldr r0, [r6]
	bl sub_80011D8
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi %8
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq %8
	ldr r0, _0803AE5C
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_800CD58
8
	ldr r0, [r4]
	orrs r0, r5
	str r0, [r4]
	lsls r1, r0, #0x1e
	bpl %9
	orrs r0, r7
	str r0, [r4]
9
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

