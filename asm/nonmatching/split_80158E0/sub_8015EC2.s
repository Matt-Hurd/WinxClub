	non_word_aligned_thumb_func_start sub_8015EC2
sub_8015EC2
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0x11
	lsls r0, r0, #0x13
	sub sp, #0x1c
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r0, #0xe0
	str r0, [sp, #0x18]
	ldrh r6, [r0, #0x1a]
	movs r5, #0xf
	lsls r5, r5, #0x14
	adds r0, r6, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	lsls r0, r0, #0x12
	ldr r1, _080160F8
	lsrs r0, r0, #0x11
	ldrsh r0, [r1, r0]
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	adds r1, r5, #0
	bl __16_ll_mulss
	add r2, pc, #0x1F8
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r6, r0, #0x10
	adds r0, r4, #0
	adds r0, #0x80
	str r0, [sp, #0x14]
	ldr r0, [r0]
	movs r2, #0x70
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	adds r0, r6, #0
	adds r0, #0x4d
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #0x14]
	bl __call_via_r3
	movs r5, #0
	movs r7, #0x6c
54
	ldr r1, _080160F0
	lsls r0, r5, #1
	ldrh r0, [r1, r0]
	add r3, sp, #0
	add r1, sp, #4
	adds r0, r0, r6
	adds r0, #8
	strh r0, [r3, #4]
	lsls r0, r5, #2
	adds r0, r0, r4
	strh r7, [r3, #6]
	ldr r0, [r0, #8]
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo %54
	movs r0, #0x1b
	lsls r0, r0, #5
	adds r7, r4, r0
	ldrb r0, [r7, #2]
	movs r5, #0
	cmp r0, #0
	bls %57
55
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0x81
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	ldrb r3, [r7, #2]
	mov ip, r2
	add ip, r1
	lsls r1, r5, #0x1e
	lsrs r1, r1, #0x1f
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r1, r2, #0
	adds r1, #0x8b
	cmp r3, #2
	bls %56
	subs r1, #0xc
56
	lsls r2, r1, #0x10
	lsls r1, r5, #0x1f
	lsrs r1, r1, #0x1f
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r1, r1, r6
	adds r1, #0x50
	lsls r1, r1, #0x10
	asrs r2, r2, #0x10
	asrs r1, r1, #0x10
	mov r3, ip
	bl __call_via_r3
	adds r5, #1
	ldrb r0, [r7, #2]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r0, r5
	bhi %55
57
	ldrb r0, [r7, #2]
	cmp r0, #0
	beq %58
	ldr r0, [sp, #0x14]
	movs r2, #0x70
	ldr r0, [r0]
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	adds r0, r6, #0
	adds r0, #0x48
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #0x14]
	bl __call_via_r3
58
	ldrb r0, [r7, #2]
	cmp r0, #0
	beq %63
	ldrb r0, [r7, #2]
	lsls r1, r0, #0x1f
	bpl %59
	lsls r1, r0, #0x1f
	lsrs r1, r1, #0x1f
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r1, #0x86
	b %60
59
	lsls r1, r0, #0x1f
	lsrs r1, r1, #0x1f
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r1, #0x3a
60
	adds r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r0, #2
	bhi %61
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, #0x8b
	b %62
61
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, #0x7f
62
	add r3, sp, #0
	strh r1, [r3, #4]
	subs r0, #5
	strh r0, [r3, #6]
	ldr r0, [r4, #0x3c]
	add r1, sp, #4
	bl sub_8040034
63
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	bl __16_ll_mulss
	add r2, pc, #0xC8
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r6, r0, #0x10
	ldr r0, [r4, #0x30]
	movs r7, #4
	cmp r0, #0
	beq %64
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #5
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	subs r1, r7, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x94
	bl __call_via_r3
64
	movs r5, #0
	subs r7, r7, r6
65
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r1, [r0, #0x30]
	cmp r1, #0
	beq %66
	ldr r2, _080160F0
	lsls r1, r5, #1
	adds r2, #0x10
	ldrh r1, [r2, r1]
	add r3, sp, #0
	adds r1, r7, r1
	strh r1, [r3, #4]
	movs r1, #0x94
	strh r1, [r3, #6]
	ldr r0, [r0, #0x30]
	add r1, sp, #4
	bl sub_8040034
66
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo %65
	movs r0, #8
	subs r0, r0, r6
	lsls r6, r0, #0x10
	movs r5, #0
	asrs r6, r6, #0x10
	add r7, sp, #4
67
	lsls r0, r5, #2
	adds r1, r0, r4
	ldr r0, [r1, #0x28]
	cmp r0, #0
	beq %68
	lsls r0, r5, #5
	add r3, sp, #0
	strh r6, [r3, #4]
	adds r0, #0x3c
	strh r0, [r3, #6]
	ldr r0, [r1, #0x28]
	adds r1, r7, #0
	bl sub_8040034
68
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo %67
	ldr r0, [sp, #0x18]
	ldrh r0, [r0, #0x1a]
	ldr r1, [sp, #0x18]
	adds r0, #3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	strh r0, [r1, #0x1a]
	cmp r0, #0x5a
	blt %69
	movs r0, #0
	movs r1, #0xf8
	strb r0, [r1, r4]
	ldr r0, _08016104
	movs r1, #0
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bl sub_801742C
	adds r0, r4, #0
	bl sub_80155D6
69
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
