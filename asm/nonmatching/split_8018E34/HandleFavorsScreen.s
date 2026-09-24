	non_word_aligned_thumb_func_start HandleFavorsScreen
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x19c
	add r4, sp, #0x10
	ldr r5, _080195B0
	adds r1, r4, #0
	adds r1, #0xf8
	adds r0, r4, #0
	movs r2, #0x78
	adds r3, r5, #0
	adds r0, #8
	bl __vecmap1c__FPvT1iPFPv_v
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #1
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	str r0, [r3, #0x10]
	bl sub_80143E0
	movs r0, #0x31
	lsls r0, r0, #4
	adds r1, r4, r0
	movs r3, #0xb
	lsls r3, r3, #7
	adds r0, r4, #0
	adds r0, #0xff
	add r3, sp
	str r1, [r3, #0xc]
	adds r0, #0xa9
	movs r2, #0x78
	adds r3, r5, #0
	bl __vecmap1c__FPvT1iPFPv_v
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	ldr r0, [r3, #0xc]
	bl sub_80143E0
	movs r0, #0x71
	lsls r0, r0, #3
	adds r0, r4, r0
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	str r0, [r3, #8]
	bl sub_80143E0
	movs r0, #1
	lsls r0, r0, #0xa
	adds r0, r4, r0
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	str r0, [r3, #4]
	bl sub_80143E0
	movs r0, #0x8f
	lsls r0, r0, #3
	adds r0, r4, r0
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	str r0, [r3]
	bl sub_80143E0
	movs r0, #0x4f
	lsls r0, r0, #4
	adds r0, r4, r0
	movs r3, #5
	lsls r3, r3, #8
	add r3, sp
	str r0, [r3, #0x7c]
	bl sub_80143E0
	adds r0, r4, #0
	bl sub_8018F5E
	movs r3, #5
	lsls r3, r3, #8
	add r3, sp
	add r1, sp, #0xd0
	str r1, [r3, #0x78]
	add r4, sp, #0x190
	add r7, sp, #0x170
16
	ldr r0, _080195B4
	movs r2, #0
	ldr r0, [r0]
	adds r5, r2, #0
	ldr r1, [r0, #0x14]
	lsls r3, r1, #0x1c
	bmi %17
	ldrh r5, [r0, #8]
17
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r1, r1, #0x1c
	bmi %18
	ldrh r2, [r0, #4]
18
	ldrh r0, [r7, #0x1c]
	ldrh r1, [r7, #0x1e]
	movs r3, #5
	lsls r3, r3, #8
	add r3, sp
	str r1, [sp, #4]
	ldr r1, [r3, #0x78]
	lsls r6, r2, #0x10
	ldr r1, [r1, #0x38]
	lsrs r6, r6, #0x10
	str r1, [sp, #8]
	ldr r1, [r3, #0x78]
	ldr r1, [r1, #0x3c]
	str r1, [sp, #0xc]
	lsls r1, r6, #0x16
	lsrs r1, r1, #0x1f
	adds r0, r1, r0
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _080195B8
	str r1, [sp]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #8]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, [sp]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq %19
	ldr r0, [sp, #8]
	ldr r1, [sp]
	bl sub_800065C
19
	lsls r0, r6, #0x17
	ldr r1, [sp, #4]
	lsrs r0, r0, #0x1f
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, _080195B8
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #0xc]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, [sp]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq %20
	ldr r0, [sp, #0xc]
	ldr r1, [sp]
	bl sub_800065C
20
	lsls r0, r5, #0x16
	bpl %21
	movs r0, #2
	strb r0, [r4]
	b %26
21
	lsls r0, r5, #0x17
	bpl %22
	movs r0, #1
	strb r0, [r4]
	b %26
22
	lsls r0, r5, #0x1a
	bpl %23
	movs r1, #0
	mvns r1, r1
	add r0, sp, #0x10
	bl sub_8018E7E
	b %26
23
	lsls r0, r5, #0x1b
	bpl %24
	movs r1, #1
	add r0, sp, #0x10
	bl sub_8018E7E
	b %26
24
	lsls r0, r5, #0x1e
	bpl %25
	movs r0, #3
	strb r0, [r4]
	b %26
25
	lsls r0, r5, #0x1d
	bpl %26
	movs r0, #3
	strb r0, [r4]
26
	lsls r0, r6, #0x1a
	ldr r1, _080195BC
	lsrs r0, r0, #0x1f
	adds r5, r0, r1
	ldr r1, [r4, #0x1c]
	ldr r0, _080195B8
	str r1, [sp, #0xc]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #0xc]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	beq %27
	adds r1, r5, #0
	ldr r0, [r4, #0x1c]
	bl sub_800065C
27
	lsls r0, r6, #0x1b
	ldr r1, _080195C0
	lsrs r0, r0, #0x1f
	adds r5, r0, r1
	ldr r0, _080195B8
	ldr r6, [r4, #0x20]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	beq %28
	adds r1, r5, #0
	ldr r0, [r4, #0x20]
	bl sub_800065C
28
	bl sub_800EF2A
	ldrb r0, [r4]
	cmp r0, #0
	bne %29
	b %16
29
	ldrh r2, [r7, #0x1a]
	ldr r1, _080195C4
	ldrb r0, [r4]
	ldrb r4, [r1, r2]
	ldrh r2, [r7, #0x18]
	add r5, sp, #0x10
	ldr r6, _080195C8
	cmp r0, #1
	ldrb r7, [r1, r2]
	beq %31
	cmp r0, #2
	beq %30
	cmp r0, #3
	beq %32
	cmp r0, #6
	bne %33
	movs r0, #0xb
	bl SetNextGlobalFunction
	b %33
30
	ldr r0, [r6]
	adds r0, #0x40
	bl sub_8028C2E
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl SetNextGlobalFunction
	b %34
31
	ldr r0, [r6]
	adds r0, #0x40
	bl sub_8028C2E
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	bl SetNextGlobalFunction
	b %34
32
	movs r0, #0x11
	bl SetNextGlobalFunction
33
	movs r2, #0xff
	movs r1, #4
	ldr r0, [r6]
	bl sub_8028A7C
34
	adds r0, r5, #0
	bl sub_8018E34
	movs r1, #0
	movs r3, #5
	lsls r3, r3, #8
	add r3, sp
	ldr r0, [r3, #0x7c]
	bl sub_8014436
	movs r1, #0
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	ldr r0, [r3]
	bl sub_8014436
	movs r1, #0
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	ldr r0, [r3, #4]
	bl sub_8014436
	movs r1, #0
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	ldr r0, [r3, #8]
	bl sub_8014436
	movs r1, #0
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	ldr r0, [r3, #0xc]
	bl sub_8014436
	ldr r4, _080195CC
	adds r1, r5, #0
	adds r1, #0xff
	movs r2, #0x77
	movs r0, #0x53
	lsls r0, r0, #3
	mvns r2, r2
	adds r1, #0x31
	adds r3, r4, #0
	adds r0, r5, r0
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r1, #0
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	ldr r0, [r3, #0x10]
	bl sub_8014436
	movs r2, #0x77
	adds r1, r5, #0
	subs r1, #0x70
	mvns r2, r2
	adds r3, r4, #0
	adds r0, r5, #0
	adds r0, #0x80
	bl __vecmap1ci__FPvT1iPFPvi_v
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x19c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end HandleFavorsScreen
