	thumb_func_start sub_802B8B0
	push {r4, r5, r6, r7, lr}
	movs r6, #0x1d
	lsls r6, r6, #0x12
	sub sp, #0xc
	str r6, [sp, #8]
	ldrb r5, [r0, #1]
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r5
	lsrs r2, r5, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #4]
	lsls r0, r0, #0x12
	ldr r1, _0802BA10
	lsrs r0, r0, #0x11
	ldrsh r0, [r1, r0]
	adds r1, r6, #0
	lsls r7, r0, #2
	adds r0, r7, #0
	bl __16_ll_mulss
	add r2, pc, #0x12C
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r6, r0, #0x10
	movs r5, #0
11
	ldr r1, _0802BA1C
	lsls r0, r5, #1
	ldrh r0, [r1, r0]
	add r3, sp, #0
	mov r1, sp
	adds r0, r0, r6
	adds r0, #0x7c
	strh r0, [r3]
	movs r0, #0x38
	strh r0, [r3, #2]
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xc1
	ldr r0, [r0, #0x24]
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo %11
	ldrb r0, [r4]
	movs r3, #0x56
	mov r1, sp
	muls r0, r3
	lsrs r0, r0, #1
	adds r0, r0, r6
	adds r0, #0x7c
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0x4d
	strh r0, [r3, #2]
	movs r0, #0xff
	adds r0, #0xf9
	ldr r0, [r0, r4]
	bl sub_8040034
	ldr r1, [r4, #4]
	adds r0, r4, #4
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	adds r1, r6, #0
	adds r1, #0x7c
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x3c
	adds r5, r1, #0
	bl __call_via_r3
	ldr r1, [r4, #0x7c]
	adds r0, r4, #0
	ldr r2, [r1, #0x14]
	adds r0, #0x7c
	adds r3, r2, r1
	movs r2, #0x46
	adds r1, r5, #0
	bl __call_via_r3
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	adds r1, r6, #0
	adds r1, #0x90
	lsls r1, r1, #0x10
	movs r2, #0x50
	asrs r1, r1, #0x10
	bl __call_via_r3
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #0x6d
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	adds r6, #0xbb
	lsls r1, r6, #0x10
	movs r2, #0x50
	asrs r1, r1, #0x10
	bl __call_via_r3
	adds r0, r7, #0
	ldr r1, [sp, #8]
	bl __16_ll_mulss
	add r2, pc, #0x74
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r0, r0, #0x10
	movs r5, #0
	movs r1, #0x14
	subs r6, r1, r0
	mov r7, sp
12
	lsls r0, r5, #6
	adds r0, r6, r0
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0x28
	strh r0, [r3, #2]
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xc1
	ldr r0, [r0, #0x30]
	adds r1, r7, #0
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo %12
	ldrb r0, [r4, #1]
	adds r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #1]
	cmp r0, #0x5a
	blo %14
	movs r0, #0
	strb r0, [r4, #2]
	ldrb r0, [r4]
	cmp r0, #1
	bne %13
	movs r0, #2
	bl SetNextGlobalFunction
13
	adds r0, r4, #0
	bl sub_802B2F8
14
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_802B8B0
