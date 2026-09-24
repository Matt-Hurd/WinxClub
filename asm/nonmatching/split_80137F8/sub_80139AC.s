	thumb_func_start sub_80139AC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	sub sp, #0xc
	beq %9
	cmp r6, #1
	bne %13
9
	adds r7, r4, #0
	adds r7, #0x20
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	beq %13
	cmp r0, #1
	beq %18
	cmp r0, #2
	bne %13
	ldr r1, _08013B60
	ldr r0, [r4, #0x4c]
	ldr r1, [r1]
	ldr r2, [r1, #8]
	ldr r3, [r0]
	cmp r2, r3
	blo %13
	movs r3, #8
	ldrsb r5, [r0, r3]
	ldrh r2, [r4, #0x22]
	movs r3, #0x22
	adds r2, r2, r5
	strh r2, [r4, #0x22]
	ldrb r2, [r0, #4]
	ldr r1, [r1, #8]
	adds r1, r1, r2
	str r1, [r0]
	ldrsh r1, [r4, r3]
	movs r3, #6
	ldrsh r2, [r0, r3]
	cmp r1, r2
	blt %10
	movs r3, #8
	ldrsb r5, [r0, r3]
	cmp r5, #0
	bgt %11
10
	cmp r1, r2
	bgt %12
	movs r3, #8
	ldrsb r0, [r0, r3]
	cmp r0, #0
	bge %12
11
	ldr r0, [r4, #0x4c]
	bl sub_803DA18
	movs r0, #0
	str r0, [r4, #0x4c]
	strb r0, [r7, #0xc]
12
	ldrh r0, [r4, #0xe]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4, #0xe]
13
	ldrh r0, [r4, #0xe]
	cmp r0, #0
	beq %17
	cmp r6, #0
	beq %14
	cmp r6, #1
	bne %15
14
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x44]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
15
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_80402F8
	cmp r6, #0
	beq %16
	cmp r6, #2
	bne %17
16
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x48]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
17
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
18
	ldrb r0, [r7, #0xd]
	ldr r5, [r4, #0x4c]
	bl sub_80133A0
	mov ip, r0
	ldr r0, _08013B60
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r2, [r5]
	cmp r0, r2
	blo %13
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
	ldrb r2, [r5, #4]
	ldr r1, [r1, #8]
	adds r1, r1, r2
	str r1, [r5]
	strh r0, [r4, #0x3a]
	ldrh r0, [r5, #6]
	ldrh r1, [r5, #8]
	cmp r0, r1
	beq %19
	movs r2, #0x38
	ldrb r2, [r2, r4]
	ldr r1, [r4, #0x14]
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #1
	adds r2, r1, r2
	subs r2, #0x20
	ldrh r2, [r2, #0x1c]
	cmp r2, r0
	bne %20
19
	ldr r0, [r4, #0x4c]
	bl sub_803DA18
	movs r0, #0
	str r0, [r4, #0x4c]
	strb r0, [r7, #0xc]
	b %22
20
	ldr r2, [r5, #0xc]
	cmp r2, #0
	beq %22
	ldrh r2, [r5, #0xa]
	lsls r3, r2, #1
	adds r3, r3, r2
	lsls r3, r3, #1
	adds r1, r1, r3
	ldrh r1, [r1, #2]
	cmp r1, r0
	bhs %21
	adds r0, r2, #1
	strh r0, [r5, #0xa]
21
	movs r3, #0x22
	ldrsh r1, [r4, r3]
	mov r0, ip
	str r1, [sp, #8]
	ldrh r7, [r0, #2]
	adds r0, r7, #0
	bl __16__rt_sdiv
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #4]
	ldrh r1, [r4, #0x1e]
	adds r0, r7, #0
	bl __16__rt_udiv
	ldrh r1, [r5, #0xa]
	ldr r2, [sp, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r2, r0
	cmp r1, r0
	blt %22
	ldr r0, [sp, #8]
	adds r0, #1
	strh r0, [r4, #0x22]
22
	ldrh r0, [r4, #0xe]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #0xe]
	b %13
	thumb_func_end sub_80139AC

