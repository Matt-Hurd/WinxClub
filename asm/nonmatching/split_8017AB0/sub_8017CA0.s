	thumb_func_start sub_8017CA0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r5, #0
	sub sp, #0xc
16
	lsls r0, r5, #1
	adds r6, r0, r7
	adds r6, #0xff
	adds r6, #0x81
	ldrh r0, [r6, #0x18]
	cmp r0, #0
	beq %17
	bl GetEWRAMStart
	adds r1, r0, #0
	ldrh r0, [r6, #0x18]
	movs r3, #0
	lsrs r0, r0, #2
	lsls r0, r0, #2
	movs r2, #0
	bl sub_803DA9C
	lsls r1, r5, #2
	adds r1, r1, r7
	str r0, [r1, #0x18]
17
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #0x40
	blo %16
	movs r1, #0xff
	str r1, [sp, #8]
	ldr r6, [r7, #4]
	movs r5, #0
	cmp r6, #0
	beq %23
18
	ldrh r0, [r6, #0x10]
	ldr r1, [sp, #8]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	cmp r0, r1
	beq %20
	cmp r5, #0
	beq %19
	ldr r1, [sp, #8]
	lsls r0, r1, #2
	movs r1, #7
	lsls r1, r1, #7
	adds r0, r0, r7
	adds r1, r0, r1
	str r5, [r1, #0x18]
	movs r1, #5
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #8]
	subs r0, r4, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	adds r1, #0xff
	adds r1, #1
	strh r0, [r1, #0x18]
19
	ldrh r0, [r6, #0x10]
	lsls r1, r0, #0x1a
	lsrs r1, r1, #0x1a
	lsls r0, r1, #2
	str r1, [sp, #8]
	movs r1, #5
	adds r0, r0, r7
	ldr r4, [r0, #0x18]
	lsls r1, r1, #7
	adds r0, r0, r1
	str r4, [r0, #0x18]
	movs r5, #0
20
	movs r2, #0x1c
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_803F3E8
	adds r0, r5, #0
	movs r1, #0
	str r0, [r4, #0x18]
	adds r5, r4, #0
	cmp r0, #0
	str r1, [r4, #0x14]
	beq %21
	str r5, [r0, #0x14]
21
	movs r0, #1
	ldr r1, [r6]
	lsls r0, r0, #0x19
	adds r4, #0x1c
	cmp r1, r0
	blo %22
	movs r0, #0x81
	lsls r0, r0, #0x12
	cmp r1, r0
	bhs %22
	ldrh r0, [r1, #2]
	str r0, [sp, #4]
	adds r2, r0, #0
	adds r0, r4, #0
	bl sub_803F3E8
	str r4, [r5]
	ldr r0, [sp, #4]
	adds r4, r4, r0
	lsls r0, r4, #0x1e
	beq %22
	lsls r0, r4, #0x1e
	lsrs r0, r0, #0x1e
	movs r1, #4
	subs r0, r1, r0
	adds r4, r0, r4
22
	ldr r6, [r6, #0x14]
	cmp r6, #0
	bne %18
	cmp r5, #0
	beq %23
	movs r1, #0
	str r1, [r5, #0x14]
	ldr r1, [sp, #8]
	lsls r0, r1, #2
	movs r1, #7
	lsls r1, r1, #7
	adds r0, r0, r7
	adds r1, r0, r1
	str r5, [r1, #0x18]
	movs r1, #5
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #8]
	subs r0, r4, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	adds r1, #0xff
	adds r1, #1
	strh r0, [r1, #0x18]
23
	ldr r0, [r7, #4]
	bl __da__FPv
	movs r1, #0
	str r1, [r7, #4]
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_8017CA0
