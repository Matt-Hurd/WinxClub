	thumb_func_start sub_802B6F4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0x1d
	lsls r0, r0, #0x12
	sub sp, #0x1c
	str r0, [sp, #8]
	ldrb r6, [r4, #1]
	movs r5, #0xd
	lsls r5, r5, #0x13
	adds r0, r6, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #4]
	lsls r0, r0, #0x12
	ldr r1, _0802BA10
	lsrs r0, r0, #0x11
	ldrsh r0, [r1, r0]
	lsls r0, r0, #2
	str r0, [sp, #0xc]
	adds r1, r5, #0
	bl __16_ll_mulss
	add r2, pc, #0x2E4
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r0, r0, #0x10
	movs r1, #0xa0
	subs r0, r1, r0
	subs r0, #0x38
	lsls r6, r0, #0x10
	asrs r6, r6, #0x10
	adds r0, r6, #0
	adds r0, #0x38
	lsls r1, r0, #0x10
	movs r5, #0
	asrs r1, r1, #0x10
	ldr r7, _0802BA1C
	str r1, [sp, #0x18]
6
	lsls r0, r5, #1
	ldrh r0, [r7, r0]
	ldr r1, [sp, #0x18]
	add r3, sp, #0
	adds r0, #0x7c
	strh r0, [r3]
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	strh r1, [r3, #2]
	adds r0, #0xc1
	ldr r0, [r0, #0x24]
	mov r1, sp
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo %6
	movs r1, #0x7c
	add r3, sp, #0
	strh r1, [r3]
	adds r0, r6, #0
	adds r0, #0x4d
	strh r0, [r3, #2]
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #0xc1
	str r0, [sp, #0x14]
	ldr r0, [r0, #0x38]
	mov r1, sp
	bl sub_8040034
	ldr r1, [r4, #4]
	adds r0, r4, #4
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	adds r1, r6, #0
	adds r1, #0x3c
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	movs r1, #0x7c
	bl __call_via_r3
	ldr r1, [r4, #0x7c]
	adds r0, r4, #0
	ldr r2, [r1, #0x14]
	adds r0, #0x7c
	adds r3, r2, r1
	adds r1, r6, #0
	adds r1, #0x46
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	movs r1, #0x7c
	bl __call_via_r3
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r1, [r0]
	adds r6, #0x50
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r5, r2, #0
	movs r1, #0x90
	bl __call_via_r3
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #0x6d
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	adds r2, r5, #0
	movs r1, #0xbb
	bl __call_via_r3
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl __16_ll_mulss
	add r2, pc, #0x21C
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r1, r0, #0x10
	movs r5, #0
	movs r6, #0x28
	str r1, [sp, #0x10]
7
	ldr r1, [sp, #0x10]
	lsls r0, r5, #6
	adds r0, r0, r1
	subs r0, #0x60
	add r3, sp, #0
	strh r0, [r3]
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xc1
	strh r6, [r3, #2]
	ldr r0, [r0, #0x30]
	mov r1, sp
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo %7
	ldrb r0, [r4, #1]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #1]
	cmp r0, #0x5a
	blo %10
	movs r0, #2
	strb r0, [r4, #2]
	movs r5, #0
	mov r7, sp
8
	ldr r1, _0802BA1C
	lsls r0, r5, #1
	ldrh r0, [r1, r0]
	add r3, sp, #0
	adds r0, #0x7c
	strh r0, [r3]
	movs r0, #0x38
	strh r0, [r3, #2]
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xc1
	ldr r0, [r0, #0x24]
	adds r1, r7, #0
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo %8
	movs r5, #0
	mov r7, sp
9
	lsls r0, r5, #6
	adds r0, #0x14
	add r3, sp, #0
	strh r0, [r3]
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xc1
	strh r6, [r3, #2]
	ldr r0, [r0, #0x30]
	adds r1, r7, #0
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo %9
	movs r1, #0x7c
	add r3, sp, #0
	strh r1, [r3]
	movs r0, #0x4d
	strh r0, [r3, #2]
	ldr r0, [sp, #0x14]
	mov r1, sp
	ldr r0, [r0, #0x38]
	bl sub_8040034
10
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_802B6F4

