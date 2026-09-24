	thumb_func_start ToggleObjectGroup__44
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _08035B9C
	adds r5, r0, #0
	ldr r1, [r1]
	movs r0, #0x20
	adds r2, r1, #0
	ands r1, r0
	adds r0, r5, #0
	adds r4, r5, #0
	adds r4, #0x80
	adds r0, #0x70
	cmp r1, #0
	beq %10
	ldr r1, [r4, #0x20]
	lsls r6, r1, #0x14
	ldr r1, [r4, #0x24]
	lsrs r6, r6, #0x14
	lsls r1, r1, #0xc
	lsrs r7, r1, #0x18
	ldr r1, [r4, #0x28]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x18
	NEGS r1, r1
	strb r1, [r0, #0xd]
	b %12
10
	movs r1, #0x40
	ands r2, r1
	beq %16
	ldr r2, [r4, #0x28]
	ldr r1, [r4, #0x24]
	lsls r7, r2, #0x18
	lsls r2, r2, #0x10
	lsls r6, r1, #0x14
	lsrs r2, r2, #0x18
	strb r2, [r0, #0xd]
	lsrs r6, r6, #0x14
	lsls r1, r1, #4
	lsrs r7, r7, #0x18
	lsrs r0, r1, #0x18
	beq %11
	ldr r0, _08035B98
	lsrs r1, r1, #0x18
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r1, r0
	ldr r1, [r0, #0x10]
	cmp r1, #0
	bne %11
	bl sub_80268AC
11
	ldr r0, [r4, #0x24]
	lsls r1, r0, #0xc
	lsrs r0, r1, #0x18
	beq %12
	ldr r0, _08035B98
	lsrs r1, r1, #0x18
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r1, r0
	ldr r1, [r0, #0x10]
	cmp r1, #0
	bne %12
	bl sub_80268AC
12
	cmp r6, #0
	beq %15
	movs r0, #0x11
	str r0, [r4, #0x1c]
	strh r6, [r5, #0x18]
	ldr r0, _08035B94
	ldr r4, [r5, #0x2c]
	ldr r0, [r0]
	ldr r2, [r4, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq %13
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r4, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
13
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	beq %14
	movs r2, #0
	adds r1, r6, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
14
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %15
	bl sub_8000914
15
	cmp r7, #0
	beq %16
	ldr r0, _08035B98
	lsls r1, r7, #0x18
	ldr r0, [r0]
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
16
	ldr r0, _08035BA0
	movs r6, #0xff
	ldr r0, [r0]
	adds r6, #0x99
	adds r1, r0, #0
	adds r1, #0xff
	adds r1, #1
	ldrh r2, [r1, #0x18]
	ldrh r6, [r6, r0]
	movs r4, #4
	adds r2, r2, r4
	movs r3, #0
	cmp r2, r6
	bls %17
	strh r3, [r1, #0x18]
17
	ldrh r2, [r1, #0x18]
	ldr r0, [r0, #0x18]
	adds r0, r0, r2
	adds r2, #4
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	strh r2, [r1, #0x18]
	lsls r3, r2, #0x1e
	beq %18
	lsls r3, r2, #0x1e
	lsrs r3, r3, #0x1e
	subs r3, r4, r3
	adds r2, r2, r3
	strh r2, [r1, #0x18]
18
	movs r1, #0x2c
	strh r1, [r0]
	strh r4, [r0, #2]
	movs r2, #0
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _08035BA4
	movs r3, #1
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80179BE
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end ToggleObjectGroup__44

