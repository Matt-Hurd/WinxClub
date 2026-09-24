	non_word_aligned_thumb_func_start sub_801406E
	push {r0, r4, r5, r6, r7, lr}
	sub sp, #0x30
	movs r0, #0
	movs r1, #0
	str r1, [sp, #0x18]
	str r0, [sp, #0x14]
	add r0, sp, #0x20
	add r1, sp, #0x10
	add r2, sp, #0xc
	str r2, [sp, #8]
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [sp, #0x30]
	add r1, sp, #0x28
	add r2, sp, #0x24
	add r3, sp, #0x1c
	bl sub_803F928
	add r3, sp, #0
	movs r0, #0x24
	ldrsh r0, [r3, r0]
	cmp r0, #0
	ble %10
	movs r0, #0x28
	ldrsh r0, [r3, r0]
	cmp r0, #0
	ble %10
	ldr r1, [sp, #0x30]
	ldr r5, [sp, #0x30]
	adds r1, #0x40
	str r1, [sp, #0x2c]
	adds r5, #0x20
4
	add r3, sp, #0
	movs r0, #0xc
	ldrsh r0, [r3, r0]
	ldr r1, [sp, #0x18]
	movs r7, #0
	adds r0, r1, r0
	ldr r1, [sp, #0x2c]
	ldrh r1, [r1, #0x1c]
	muls r0, r1
	movs r1, #0x10
	ldrsh r1, [r3, r1]
	adds r0, r0, r1
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1e
	adds r0, r1, r0
	ldr r1, [sp, #0x30]
	asrs r0, r0, #2
	ldr r1, [r1, #0x54]
	lsls r0, r0, #2
	adds r4, r0, r1
	ldr r1, [sp, #0x30]
	ldrh r0, [r1, #0x20]
	ldr r1, [sp, #0x18]
	muls r0, r1
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1e
	adds r0, r1, r0
	ldr r1, [sp, #0x30]
	asrs r0, r0, #2
	ldr r1, [r1, #0x48]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r3, #0x20]
	lsls r1, r1, #2
	adds r6, r0, r1
	ldr r1, [sp, #0x18]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x18]
	ldr r1, [sp, #0x30]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq %5
	movs r1, #0x24
	ldrsh r1, [r3, r1]
	ldr r2, [sp, #0x14]
	adds r0, r4, #0
	bl sub_803F464
5
	add r3, sp, #0
	movs r0, #0x24
	ldrsh r0, [r3, r0]
	cmp r0, #0
	ble %13
6
	ldr r1, [r4]
	ldr r0, [r6]
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r0, #0x1c
	beq %7
	ldrb r3, [r5, #0xe]
	lsls r2, r0, #0x1c
	lsrs r2, r2, #0x1c
	lsls r3, r3, #4
	orrs r2, r3
7
	mov ip, r2
	movs r2, #0xff
	lsls r2, r2, #8
	ands r2, r1
	lsls r3, r0, #0x14
	lsrs r3, r3, #0x1c
	beq %8
	movs r2, #0xf
	ldrb r3, [r5, #0xe]
	lsls r2, r2, #8
	ands r2, r0
	lsls r3, r3, #0xc
	orrs r2, r3
8
	mov r3, ip
	orrs r3, r2
	movs r2, #0xff
	lsls r2, r2, #0x10
	mov ip, r3
	lsls r3, r0, #0xc
	ands r2, r1
	lsrs r3, r3, #0x1c
	beq %9
	movs r2, #0xf
	ldrb r3, [r5, #0xe]
	lsls r2, r2, #0x10
	ands r2, r0
	lsls r3, r3, #0x14
	orrs r2, r3
9
	mov r3, ip
	orrs r2, r3
	lsrs r1, r1, #0x18
	lsls r1, r1, #0x18
	lsls r3, r0, #4
	lsrs r3, r3, #0x1c
	beq %12
	movs r1, #0xf
	lsls r1, r1, #0x18
	ands r0, r1
	b %11
10
	b %14
11
	ldrb r1, [r5, #0xe]
	lsls r1, r1, #0x1c
	orrs r1, r0
12
	orrs r1, r2
	adds r0, r1, #0
	stm r4!, {r0}
	movs r0, #0x24
	add r3, sp, #0
	ldrsh r0, [r3, r0]
	adds r7, #4
	lsls r7, r7, #0x10
	lsrs r7, r7, #0x10
	adds r6, #4
	cmp r7, r0
	blt %6
13
	add r3, sp, #0
	movs r0, #0x28
	ldrsh r0, [r3, r0]
	ldr r1, [sp, #0x18]
	cmp r1, r0
	blt %4
14
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_801406E

