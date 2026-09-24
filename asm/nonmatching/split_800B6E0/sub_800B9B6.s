	non_word_aligned_thumb_func_start sub_800B9B6
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_800B94A
	movs r1, #0x19
	lsls r1, r1, #5
	adds r0, r4, #0
	adds r0, #0x80
	bl __16__rt_memclr_w
	movs r0, #0
	movs r3, #0x1d
	lsls r3, r3, #5
20
	adds r1, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r4
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	adds r0, r0, r3
	strh r2, [r0]
	adds r0, r1, #0
	cmp r1, #0x10
	blt %20
	movs r0, #0xf
	lsls r0, r0, #6
	adds r0, r4, r0
	movs r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	movs r0, #0
	movs r5, #0x1f
	lsls r5, r5, #6
21
	adds r1, r0, #1
	movs r5, #0x1f
	lsls r5, r5, #6
	adds r0, r4, r0
	adds r0, r0, r5
	strb r1, [r0, #2]
	adds r0, r1, #0
	cmp r1, #8
	blt %21
	movs r0, #0
	mov lr, r0
22
	mov r0, lr
	lsls r0, r0, #7
	ldr r1, _0800BBE8
	adds r0, r0, r4
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x10
	lsrs r1, r1, #4
	lsls r1, r1, #4
	adds r1, #8
	orrs r1, r2
	strb r1, [r0]
	adds r0, #1
	movs r2, #1
23
	subs r6, r2, #1
	movs r5, #1
	movs r1, #8
	subs r3, r1, r2
	lsls r5, r6
	movs r1, #0
	cmp r5, #0
	mov ip, r5
	bls %25
	lsls r6, r3, #0x1d
	lsrs r6, r6, #0x1d
	lsls r5, r6, #3
24
	ldrb r3, [r0]
	movs r7, #0x38
	adds r1, #1
	lsrs r3, r3, #3
	lsls r3, r3, #3
	orrs r3, r6
	bics r3, r7
	orrs r3, r5
	movs r7, #0x40
	orrs r3, r7
	movs r7, #0x80
	orrs r3, r7
	strb r3, [r0]
	adds r0, #1
	cmp ip, r1
	bhi %24
25
	adds r2, #1
	cmp r2, #8
	blo %23
	mov r0, lr
	adds r0, #1
	mov lr, r0
	cmp r0, #8
	blt %22
	ldr r0, _0800BBC4
	ldr r0, [r0]
	bl sub_800B082
	movs r1, #0x1f
	lsls r1, r1, #6
	adds r1, r4, r1
	cmp r0, #3
	blo %26
	movs r0, #4
	strb r0, [r1, #0xa]
	b %27
26
	movs r5, #0
	strb r5, [r1, #0xa]
27
	movs r1, #1
	ldr r0, _0800BBAC
	lsls r1, r1, #0xa
	adds r0, r4, r0
	bl __16__rt_memclr_w
	movs r1, #0xff
	lsls r1, r1, #0x10
	movs r0, #0
	movs r5, #0x1f
	lsls r5, r5, #6
28
	lsls r2, r0, #3
	adds r2, r2, r4
	adds r2, r2, r5
	ldr r3, [r2, #0x10]
	adds r0, #1
	lsls r3, r3, #8
	lsrs r3, r3, #8
	lsls r6, r0, #0x18
	orrs r3, r6
	orrs r3, r1
	str r3, [r2, #0x10]
	cmp r0, #0x80
	blt %28
	movs r0, #0x2f
	lsls r0, r0, #6
	adds r0, r4, r0
	movs r5, #0
	strb r5, [r0, #0xc]
	movs r1, #0xff
	strb r1, [r0, #0xd]
	strb r5, [r0, #0xe]
	ldr r0, _0800BBB4
	movs r1, #5
	lsls r1, r1, #8
	adds r0, r4, r0
	bl __16__rt_memclr_w
	movs r0, #7
	lsls r0, r0, #0x18
	adds r1, r0, #0
	movs r2, #0
	movs r6, #3
	lsls r6, r6, #8
29
	add r7, pc, #0xD4
	ldm r7!, {r3, r7}
	stm r1!, {r3, r7}
	ldr r3, [r0]
	movs r7, #1
	lsls r7, r7, #9
	bics r3, r6
	adds r3, r3, r7
	str r3, [r0]
	subs r1, #8
	adds r1, #8
	adds r0, #8
	adds r2, #1
	cmp r2, #0x80
	blt %29
	movs r0, #0
	movs r1, #0xff
30
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #1
	movs r3, #0x13
	lsls r3, r3, #8
	adds r2, r2, r4
	adds r3, r2, r3
	ldrh r6, [r3, #0x18]
	movs r7, #3
	lsls r7, r7, #8
	bics r6, r7
	subs r7, #0xff
	subs r7, #1
	adds r6, r6, r7
	strh r6, [r3, #0x18]
	ldr r3, _0800BBEC
	adds r0, #1
	adds r3, r2, r3
	strb r0, [r3, #0xf]
	movs r3, #0x99
	lsls r3, r3, #5
	adds r2, r2, r3
	strb r1, [r2]
	cmp r0, #0x80
	blt %30
	ldr r0, _0800BBF0
	movs r7, #0xc1
	adds r0, r4, r0
	strb r5, [r0, #0xe]
	strb r1, [r0, #0xf]
	lsls r7, r7, #5
	adds r0, r4, r7
	strb r5, [r0]
	adds r6, r1, #0
	movs r1, #0xff
	strb r5, [r0, #1]
	adds r0, r7, #4
	adds r1, #0x81
	adds r0, r4, r0
	bl __16__rt_memclr_w
	movs r0, #0
	movs r1, #0xff
	adds r1, #1
31
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r4
	adds r2, r2, r7
	strh r1, [r2, #4]
	strh r5, [r2, #6]
	strh r5, [r2, #8]
	strh r1, [r2, #0xa]
	adds r0, #1
	strb r5, [r2, #0xc]
	strb r0, [r2, #0xd]
	strb r6, [r2, #0xe]
	cmp r0, #0x20
	blt %31
	movs r0, #0xcd
	lsls r0, r0, #5
	adds r0, r4, r0
	strb r5, [r0, #0xa]
	strb r6, [r0, #0xb]
	strb r5, [r0, #0xd]
	adds r0, r4, #0
	bl sub_800B8CE
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_800B9B6
