	thumb_func_start sub_803AD40
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	adds r6, r4, #4
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	movs r7, #0
	cmp r0, #0
	beq %13
	cmp r0, #1
	beq %13
	cmp r0, #2
	bne %12
	ldr r0, _0803AE5C
	ldr r5, [r4, #4]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	mvns r1, r7
	cmp r2, #0
	beq %10
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
10
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	subs r0, #0xff
	subs r0, #0x8b
	ldr r0, [r4, #4]
	beq %15
	movs r2, #0
	movs r1, #0xff
	adds r1, #0x8b
	bl sub_80007A0
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bpl %11
	ldr r0, _0803AE58
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8001338
11
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r7
	str r0, [r5]
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %12
	bl sub_8000914
12
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
13
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x28]
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r1, [r4]
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r1, [r4, #4]
	ldr r0, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1f
	beq %14
	cmp r1, #0
	beq %12
	ldr r0, _0803AE58
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r4, #4]
	b %12
14
	ldr r2, [r4, #0x1c]
	ldr r3, [r1, #0x2c]
	ldr r5, [r1, #0x30]
	subs r3, r2, r3
	ldr r2, [r4, #0x20]
	adds r0, r1, #0
	subs r2, r2, r5
	ldr r5, [r1, #0x34]
	adds r0, #0x34
	adds r5, r5, r3
	str r5, [r1, #0x34]
	ldr r5, [r1, #0x38]
	adds r4, #0x1c
	adds r5, r5, r2
	str r5, [r0, #4]
	ldr r5, [r0, #8]
	adds r3, r5, r3
	str r3, [r0, #8]
	ldr r3, [r0, #0xc]
	adds r2, r3, r2
	str r2, [r0, #0xc]
	ldm r4!, {r2, r3}
	str r2, [r1, #0x2c]
	str r3, [r1, #0x30]
	ldr r0, [r1]
	movs r2, #0xff
	adds r2, #1
	orrs r0, r2
	str r0, [r1]
	b %12
15
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %12
	cmp r0, #0
	beq %12
	ldr r0, _0803AE58
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r4, #4]
	b %12
	thumb_func_end sub_803AD40
