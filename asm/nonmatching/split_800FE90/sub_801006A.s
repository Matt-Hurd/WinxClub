	non_word_aligned_thumb_func_start sub_801006A
sub_801006A
	push {r4, r5, r6, r7, lr}
	ldr r3, _08010210
	adds r5, r0, #0
	add sp, r3
	ldr r0, [r1]
	adds r4, r1, #0
	movs r1, #1
	movs r7, #0
	movs r2, #0
	adds r3, r7, #0
	bl sub_802EF0A
	adds r1, r0, #0
	beq %21
	movs r2, #0
	ldr r0, [r4, #4]
	bl sub_8010920
	ldr r0, [r4, #4]
	ldr r1, [r0]
	ldr r2, [r1, #0x18]
	adds r6, r2, r1
	ldr r2, [r4, #0xc]
	mvns r1, r7
	cmp r2, #0
	beq %16
	ldr r1, [r2]
16
	movs r2, #0
	bl __call_via_r6
	ldr r6, _08010214
	add r6, sp
	adds r0, r6, #0
	bl sub_80103C8
	movs r3, #0xd
	lsls r3, r3, #9
	ldr r0, [r4, #8]
	add r3, sp
	str r0, [r3, #0x18]
	add r0, sp, #0x208
	str r0, [r3, #8]
	ldr r0, _08010218
	adds r1, r6, #0
	str r0, [r3, #0xc]
	ldr r0, _0801021C
	str r0, [r3, #0x14]
	ldr r0, _08010220
	str r0, [r3, #0x10]
	ldr r0, [r4, #0x10]
	strb r0, [r3, #0x1c]
	ldr r0, [r4, #0x14]
	strb r0, [r3, #0x1d]
	ldrh r0, [r4, #0x18]
	strh r0, [r3, #0x1e]
	ldrh r0, [r4, #0x1a]
	strh r0, [r3, #0x20]
	ldr r0, [r4, #4]
	bl sub_8010604
	ldr r0, [r4, #4]
	bl sub_80106B0
	movs r1, #0xf
	lsls r1, r1, #0x12
	bl __16__rt_sdiv
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r5, #8]
	movs r2, #1
	lsls r2, r2, #9
	str r7, [r5, #0xc]
	str r2, [sp]
	ldm r4!, {r1, r2}
	adds r0, r5, #0
	subs r4, #8
	add r3, sp, #8
	bl sub_800FFBA
	ldr r0, [r4, #4]
	ldr r1, _08010200
	str r0, [r5, #4]
	movs r0, #1
	strh r0, [r1, #8]
17
	ldr r6, [r4, #0x1c]
	cmp r6, #0
	beq %18
	movs r2, #0
	mvns r2, r2
	movs r1, #0
	movs r0, #0
	bl __call_via_r6
18
	ldr r0, [r4, #4]
	ldr r1, [r0]
	ldr r2, [r1, #0xc]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r6, [r4, #0x1c]
	cmp r6, #0
	beq %19
	movs r2, #0
	mvns r2, r2
	movs r1, #0
	movs r0, #1
	bl __call_via_r6
19
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	str r0, [r5, #0xc]
	bl sub_80081A8
	ldr r6, _080101E4
20
	ldr r0, [r6]
	bl sub_800B08E
	ldr r0, [r6]
	ldr r0, [r0, #8]
	ldr r1, [r5, #0xc]
	lsrs r1, r1, #8
	cmp r0, r1
	blo %20
	ldr r0, [r6]
	str r7, [r0, #8]
	ldr r0, [r5, #0xc]
	b %22
21
	b %26
22
	ldr r3, _08010224
	lsrs r0, r0, #8
	ldr r1, _08010228
	muls r0, r3
	adds r0, r0, r1
	bl sub_800812A
	ldr r0, [r4, #4]
	ldr r1, [r0]
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl __call_via_r1
	adds r6, r0, #0
	bne %24
	ldr r0, _0801022C
	ldr r0, [r0]
	cmp r0, #0
	bne %23
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq %23
	ldr r0, [r4, #4]
	ldr r6, [r0, #0x64]
	bl sub_8008160
	adds r1, r0, #0
	adds r2, r6, #0
	movs r0, #2
	ldr r3, [r4, #0x1c]
	bl __call_via_r3
23
	ldr r0, [r5, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r5, #0xc]
	b %19
24
	ldr r0, [r4, #4]
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r1, r2, r1
	bl __call_via_r1
	cmp r6, #1
	bne %17
	str r7, [r5, #4]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq %25
	ldr r1, [r4, #4]
	ldr r1, [r1, #0x6c]
	str r1, [r0]
25
	str r7, [r5, #0x20]
	str r7, [r5, #0x24]
26
	ldr r3, _08010230
	add sp, r3
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
