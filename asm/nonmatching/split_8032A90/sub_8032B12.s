	non_word_aligned_thumb_func_start sub_8032B12
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, r3, #0
	ldr r3, _08032E94
	movs r7, #0xff
	ldr r3, [r3]
	lsls r7, r7, #0xb
	ldr r5, [r3, #0x20]
	str r5, [r4, #0x48]
	movs r5, #5
	lsls r5, r5, #8
	adds r5, r3, r5
	ldr r6, [r5, #0x1c]
	lsls r6, r6, #5
	lsrs r6, r6, #0x19
	lsls r6, r6, #2
	adds r6, r6, r3
	ldr r6, [r6, #0x20]
	str r6, [r4, #0x44]
	ldr r5, [r5, #0x1c]
	lsls r5, r5, #0xc
	lsrs r5, r5, #0x19
	lsls r5, r5, #2
	adds r3, r5, r3
	ldr r3, [r3, #0x20]
	str r3, [r4, #0x4c]
	ldr r3, [r3, #0x2c]
	str r3, [r4, #0x14]
	ldrb r5, [r3, #5]
	ldr r6, [r4, #0x34]
	adds r3, #0x2c
	bics r6, r7
	lsls r5, r5, #0xb
	orrs r5, r6
	str r5, [r4, #0x34]
	ldr r6, [r3]
	ldr r3, [r3, #4]
	adds r5, r4, #0
	str r3, [r4, #0x20]
	adds r5, #0x1c
	adds r3, r0, #1
	str r6, [r4, #0x1c]
	bne %6
	ldr r0, [r1, #0x7c]
	ldr r1, [r4, #0x34]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #0x34]
	b %7
6
	ldr r1, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	str r0, [r4, #0x34]
7
	ldr r0, [r4, #0x34]
	movs r1, #1
	movs r3, #5
	lsls r6, r0, #0x18
	lsrs r6, r6, #0x18
	lsls r3, r3, #0x11
	lsls r1, r1, #0x12
	cmp r6, #0
	beq %9
	cmp r6, #1
	beq %8
	cmp r6, #2
	bne %10
	ldr r6, [r4, #0x1c]
	subs r3, r6, r3
	str r3, [r4, #0x1c]
	ldr r3, [r4, #0x20]
	adds r1, r3, r1
	str r1, [r4, #0x20]
	b %10
8
	movs r3, #1
	ldr r1, [r4, #0x20]
	lsls r3, r3, #0x13
	adds r1, r1, r3
	str r1, [r4, #0x20]
	b %10
9
	ldr r6, [r4, #0x1c]
	adds r3, r6, r3
	str r3, [r4, #0x1c]
	ldr r3, [r4, #0x20]
	adds r1, r3, r1
	str r1, [r4, #0x20]
10
	movs r1, #0xf
	lsls r1, r1, #0x16
	bics r0, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #6
	orrs r0, r1
	str r0, [r4, #0x34]
	ldr r1, [r4, #0x4c]
	movs r3, #0x16
	adds r1, #0xc0
	ldr r1, [r1, #0x3c]
	ldr r2, _08032E98
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	muls r1, r3
	adds r1, r1, r2
	ldr r2, _08032E9C
	lsls r0, r0, #6
	ldr r2, [r2]
	lsrs r0, r0, #0x1c
	adds r2, #0xb0
	ldrb r2, [r2, #7]
	lsls r2, r2, #2
	adds r1, r1, r2
	ldrh r1, [r1, #6]
	str r1, [r4, #0x38]
	adds r1, r4, #0
	adds r1, #0x50
	cmp r0, #0
	bne %11
	movs r0, #1
	strb r0, [r1, #4]
	b %12
11
	movs r0, #0
	strb r0, [r1, #4]
12
	ldr r6, _08032E90
	ldr r0, [r6]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_803F38C
	adds r1, r5, #0
	ldr r0, [r4, #4]
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	subs r1, #2
	ldr r0, [r4, #4]
	bl sub_80401C0
	ldr r0, [r4, #4]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
	ldr r0, [r6]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x38]
	adds r1, #3
	movs r2, #0
	bl sub_80007A0
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_803F38C
	adds r1, r5, #0
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	subs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401C0
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
	ldr r0, [r6]
	bl sub_800116A
	movs r2, #0
	movs r1, #0x78
	str r0, [r4, #0x40]
	bl sub_80007A0
	movs r1, #1
	ldr r0, [r4, #0x40]
	bl sub_803F38C
	adds r1, r5, #0
	ldr r0, [r4, #0x40]
	bl sub_803FF24
	ldr r0, [r4, #0x48]
	ldr r0, [r0, #0x2c]
	ldrb r1, [r0, #5]
	ldr r0, [r4, #0x40]
	subs r1, #1
	bl sub_80401C0
	ldr r0, _08032EA0
	ldr r1, [r0]
	movs r0, #0x49
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_8032B12

