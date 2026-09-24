	thumb_func_start sub_802F6F4
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r7, #0xa0
	adds r4, r0, #0
	ldrh r0, [r7, #2]
	cmp r0, #0
	beq %47
	adds r5, r4, #0
	adds r5, #0xc0
	ldr r0, [r5]
	ldr r1, _0802F884
	adds r1, r0, r1
	adds r0, r4, #0
	adds r0, #0x80
	str r1, [r5]
	ldr r2, [r0, #0x3c]
	adds r2, r2, r1
	str r2, [r0, #0x3c]
	cmp r1, #0
	bge %41
	NEGS r2, r1
	b %42
41
	adds r2, r1, #0
42
	ldr r3, _0802F888
	ldr r0, _0802F88C
	cmp r2, r3
	ldr r0, [r0]
	ble %43
	ldr r6, [r4, #0x30]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, _0802F890
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq %45
	ldr r0, [r4, #0x30]
	bl sub_800065C
	b %45
43
	ldr r1, _0802F894
	ldr r6, [r4, #0x30]
	cmp r2, r1
	ble %44
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, _0802F898
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq %45
	ldr r0, [r4, #0x30]
	bl sub_800065C
	b %45
44
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, _0802F89C
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq %45
	ldr r0, [r4, #0x30]
	bl sub_800065C
45
	ldr r0, [r5]
	cmp r0, #0
	ble %47
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x30]
	ldr r0, [r0, #0x30]
	ldr r1, [r1, #0x30]
	movs r2, #5
	lsls r2, r2, #0x11
	subs r1, r1, r2
	cmp r0, r1
	ble %47
	adds r0, r4, #0
	adds r0, #0xc4
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	strh r1, [r7, #2]
	movs r1, #0x7d
	movs r0, #0xa
	strb r0, [r1, r4]
	ldr r0, _0802F88C
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq %46
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
46
	lsls r0, r1, #0x10
	ldrh r1, [r4, #0x18]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq %48
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	b %48
47
	b %49
48
	ldr r0, [r4, #0x2c]
	ldrb r1, [r0, #5]
	cmp r1, #0xbd
	beq %49
	ldrh r2, [r0, #0x2a]
	movs r1, #3
	lsls r1, r1, #0xa
	bics r2, r1
	movs r3, #1
	lsls r3, r3, #0xb
	orrs r2, r3
	strh r2, [r0, #0x2a]
	movs r1, #0xbd
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %49
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
49
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_802F6F4

