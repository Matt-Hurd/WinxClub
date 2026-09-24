	non_word_aligned_thumb_func_start Bird__44
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r7, #0x80
	adds r5, r0, #0
	ldr r0, [r7, #0x28]
	cmp r0, #0
	bne %12
	ldr r0, [r5, #0x7c]
	movs r4, #0
	lsls r1, r0, #8
	lsrs r0, r1, #0x18
	cmp r0, #0
	beq %9
	ldr r0, _0802FFF8
	lsrs r1, r1, #0x18
	lsls r2, r1, #1
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r3, r2, r0
	movs r2, #0xb
	lsls r2, r2, #7
	adds r2, r3, r2
	ldrh r3, [r2, #0x18]
	adds r0, r1, r0
	movs r1, #9
	lsrs r3, r3, #1
	lsls r3, r3, #1
	lsls r1, r1, #7
	adds r0, r0, r1
	strh r3, [r2, #0x18]
	str r4, [r0, #0x18]
9
	ldr r1, _0802FFDC
	ldr r0, [r7, #4]
	movs r3, #1
	ands r0, r1
	str r0, [r7, #4]
	ldr r0, [r7, #0xc]
	lsls r3, r3, #0xc
	bics r0, r3
	lsls r1, r3, #2
	bics r0, r1
	str r0, [r7, #0xc]
	str r3, [r7, #0x28]
	str r3, [r7, #0x2c]
	ldr r0, _0802FFFC
	strh r4, [r5, #0x26]
	strh r0, [r5, #0x22]
	strh r4, [r5, #0x24]
	strh r0, [r5, #0x20]
	ldr r6, [r5, #0x2c]
	ldr r0, [r6]
	lsls r0, r0, #0x1e
	bpl %10
	ldr r0, _08030000
	ldr r0, [r0]
	bl sub_8002004
	ldr r1, [r6, #0x2c]
	ldr r2, [r0]
	add r3, sp, #0
	subs r1, r1, r2
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x10
	adds r1, r2, r1
	asrs r1, r1, #0x10
	strh r1, [r3]
	ldr r1, [r6, #0x30]
	ldr r0, [r0, #4]
	subs r0, r1, r0
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strh r0, [r3, #2]
	b %11
10
	ldr r0, [r6, #0x2c]
	add r3, sp, #0
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldr r1, [r6, #0x30]
	asrs r0, r0, #0x10
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x10
	adds r1, r2, r1
	asrs r1, r1, #0x10
	strh r0, [r3]
	strh r1, [r3, #2]
11
	ldr r0, [r5, #0x2c]
	adds r6, r5, #0
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	adds r6, #0xa0
	str r0, [r6, #4]
	str r1, [r6]
	ldr r0, _0802FFF8
	movs r1, #3
	ldr r0, [r0]
	lsls r1, r1, #9
	adds r0, #0x10
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0x58]
	ldr r1, [r7, #0x20]
	cmp r0, r1
	ble %13
	add r3, sp, #0
	ldrh r0, [r3]
	NEGS r0, r0
	strh r0, [r6, #0x12]
	b %14
12
	b %24
13
	add r3, sp, #0
	ldrh r0, [r3]
	movs r1, #0xf0
	subs r0, r1, r0
	strh r0, [r6, #0x12]
14
	add r3, sp, #0
	ldrh r0, [r3, #2]
	movs r1, #0xa
	subs r0, r1, r0
	strh r0, [r6, #0x10]
	bl rand
	ldrh r1, [r6, #0x10]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	strh r0, [r6, #0x10]
	movs r3, #0x12
	ldrsh r0, [r6, r3]
	cmp r0, #0
	ble %15
	bl rand
	ldrh r1, [r6, #0x12]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	adds r0, r0, r1
	strh r0, [r6, #0x12]
	b %16
15
	bl rand
	ldrh r1, [r6, #0x12]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	subs r0, r1, r0
	strh r0, [r6, #0x12]
16
	ldrh r1, [r6, #0x14]
	ldr r0, [r5, #0x2c]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	movs r7, #0x80
	ldrb r1, [r0, #5]
	cmp r1, #0x20
	beq %17
	ldrh r1, [r0, #0x2a]
	movs r2, #3
	lsls r2, r2, #0xa
	bics r1, r2
	orrs r1, r4
	strh r1, [r0, #0x2a]
	movs r2, #0x20
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %17
	orrs r1, r7
	str r1, [r0]
17
	movs r3, #0x12
	ldrsh r0, [r6, r3]
	ldr r4, [r5, #0x2c]
	movs r3, #1
	ldrh r2, [r4, #0x28]
	lsls r3, r3, #0xc
	lsrs r1, r0, #0x1f
	lsls r1, r1, #0xc
	bics r2, r3
	orrs r1, r2
	strh r1, [r4, #0x28]
	adds r0, r4, #0
	bl sub_80003F4
	ldr r0, [r4]
	lsls r1, r0, #0x1e
	bmi %21
	movs r6, #1
	ldr r1, [r4, #0x3c]
	lsls r6, r6, #9
	cmp r1, #0
	ldr r2, _08030004
	blt %18
	movs r3, #0xf
	ldr r1, [r4, #0x34]
	lsls r3, r3, #0x14
	cmp r1, r3
	bge %18
	ldr r1, [r4, #0x40]
	cmp r1, #0
	blt %18
	movs r3, #5
	ldr r1, [r4, #0x38]
	lsls r3, r3, #0x15
	cmp r1, r3
	blt %19
18
	lsls r0, r0, #0x16
	bmi %21
	adds r1, r4, #0
	ldr r0, [r2]
	bl sub_800C1CA
	ldr r0, [r4]
	orrs r0, r6
	orrs r0, r7
	str r0, [r4]
	b %21
19
	lsls r0, r0, #0x16
	bpl %20
	adds r1, r4, #0
	ldr r0, [r2]
	bl sub_800BE0E
	ldr r0, [r4]
	movs r2, #0x20
	bics r0, r6
	orrs r0, r2
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4]
20
	ldr r0, [r4, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x28]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	lsrs r0, r0, #0x17
	orrs r0, r1
	strh r0, [r4, #0x28]
	ldr r0, [r4, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x26]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	orrs r0, r7
	str r0, [r4]
21
	ldr r0, [r4]
	orrs r0, r7
	str r0, [r4]
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %22
	bl sub_8000914
22
	ldr r1, [r5, #0x2c]
	ldr r2, [r1]
	lsls r0, r2, #0x14
	lsrs r3, r0, #0x1f
	beq %23
	asrs r0, r0, #0x1f
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x14
	bics r2, r3
	orrs r0, r2
	str r0, [r1]
23
	ldr r4, _08030008
	movs r5, #0x93
	ldr r0, [r4]
	lsls r5, r5, #5
	adds r0, r5, r0
	bl sub_8028BE4
	cmp r0, #0
	bne %24
	movs r0, #0x25
	ldr r1, [r4]
	lsls r0, r0, #7
	adds r0, r0, r1
	bl sub_8028BE4
	cmp r0, #0
	bne %24
	ldr r0, [r4]
	adds r0, r5, r0
	bl sub_8028C2E
24
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end Bird__44
