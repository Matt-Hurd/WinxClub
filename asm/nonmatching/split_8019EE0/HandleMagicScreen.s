	non_word_aligned_thumb_func_start HandleMagicScreen
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x100
	add r4, sp, #0x14
	ldr r5, _0801A73C
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
	movs r3, #0xd
	lsls r3, r3, #7
	add r3, sp
	str r0, [r3, #0x70]
	bl sub_80143E0
	movs r0, #0xbb
	lsls r0, r0, #2
	adds r1, r4, r0
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #0x85
	adds r6, r1, #0
	movs r2, #0x78
	adds r3, r5, #0
	bl __vecmap1c__FPvT1iPFPv_v
	ldr r0, _0801A740
	movs r2, #0x78
	adds r1, r4, r0
	adds r7, r1, #0
	adds r0, r6, #0
	adds r3, r5, #0
	bl __vecmap1c__FPvT1iPFPv_v
	ldr r0, _0801A744
	movs r2, #0x78
	adds r1, r4, r0
	adds r0, r7, #0
	adds r3, r5, #0
	bl __vecmap1c__FPvT1iPFPv_v
	movs r0, #0xc9
	lsls r0, r0, #3
	adds r0, r4, r0
	movs r3, #0xd
	lsls r3, r3, #7
	add r3, sp
	str r0, [r3, #0x6c]
	bl sub_80143E0
	adds r0, r4, #0
	bl sub_801A0D2
	movs r3, #0xd
	lsls r3, r3, #7
	add r3, sp
	add r1, sp, #0xd4
	str r1, [r3, #0x68]
	add r5, sp, #0x194
	add r6, sp, #0x174
27
	ldr r0, _0801A748
	movs r2, #0
	ldr r0, [r0]
	adds r4, r2, #0
	ldr r1, [r0, #0x14]
	lsls r3, r1, #0x1c
	bmi %28
	ldrh r4, [r0, #8]
28
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x1c
	bmi %29
	ldrh r2, [r0, #4]
29
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x10]
	ldrh r0, [r6, #0x1c]
	ldrh r1, [r6, #0x1e]
	movs r3, #0xd
	lsls r3, r3, #7
	add r3, sp
	str r1, [sp, #4]
	ldr r1, [r3, #0x68]
	ldr r1, [r1, #0x38]
	str r1, [sp, #8]
	ldr r1, [r3, #0x68]
	ldr r1, [r1, #0x3c]
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1f
	adds r0, r1, r0
	lsls r7, r0, #0x10
	ldr r0, _0801A74C
	lsrs r7, r7, #0x10
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #8]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	beq %30
	adds r1, r7, #0
	ldr r0, [sp, #8]
	bl sub_800065C
30
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x17
	ldr r1, [sp, #4]
	lsrs r0, r0, #0x1f
	adds r0, r0, r1
	lsls r7, r0, #0x10
	ldr r0, _0801A74C
	lsrs r7, r7, #0x10
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #0xc]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	beq %31
	adds r1, r7, #0
	ldr r0, [sp, #0xc]
	bl sub_800065C
31
	lsls r0, r4, #0x16
	bpl %32
	movs r0, #2
	strb r0, [r5]
	b %37
32
	lsls r0, r4, #0x17
	bpl %33
	movs r0, #1
	strb r0, [r5]
	b %37
33
	lsls r0, r4, #0x1e
	bpl %34
	movs r0, #3
	strb r0, [r5]
	b %37
34
	lsls r0, r4, #0x1d
	bpl %35
	movs r0, #3
	strb r0, [r5]
	b %37
35
	lsls r0, r4, #0x19
	bpl %36
	movs r1, #0
	mvns r1, r1
	add r0, sp, #0x14
	bl sub_8019F60
	b %37
36
	lsls r0, r4, #0x18
	bpl %37
	movs r1, #1
	add r0, sp, #0x14
	bl sub_8019F60
37
	bl sub_800EF2A
	ldrb r0, [r5]
	cmp r0, #0
	beq %27
	ldrh r2, [r6, #0x1a]
	ldr r1, _0801A750
	ldrb r0, [r5]
	ldrb r5, [r1, r2]
	ldrh r2, [r6, #0x18]
	ldr r6, _0801A754
	add r4, sp, #0x14
	cmp r0, #1
	ldrb r7, [r1, r2]
	beq %39
	cmp r0, #2
	beq %38
	cmp r0, #3
	beq %40
	cmp r0, #6
	bne %41
	movs r0, #0xb
	bl SetNextGlobalFunction
	b %41
38
	ldr r0, [r6]
	adds r0, #0x40
	bl sub_8028C2E
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl SetNextGlobalFunction
	b %42
39
	ldr r0, [r6]
	adds r0, #0x40
	bl sub_8028C2E
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	bl SetNextGlobalFunction
	b %42
40
	movs r0, #0x11
	bl SetNextGlobalFunction
41
	movs r2, #0xff
	movs r1, #4
	ldr r0, [r6]
	bl sub_8028A7C
42
	adds r0, r4, #0
	bl sub_8019EE0
	movs r1, #0
	movs r3, #0xd
	lsls r3, r3, #7
	add r3, sp
	ldr r0, [r3, #0x6c]
	bl sub_8014436
	ldr r0, _0801A75C
	ldr r5, _0801A758
	adds r1, r4, r0
	adds r0, #0xff
	adds r0, #0x69
	movs r2, #0x77
	mvns r2, r2
	adds r0, r4, r0
	adds r6, r1, #0
	adds r3, r5, #0
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r0, #0x9d
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r2, #0x77
	mvns r2, r2
	adds r7, r1, #0
	adds r0, r6, #0
	adds r3, r5, #0
	bl __vecmap1ci__FPvT1iPFPvi_v
	adds r1, r4, #0
	adds r1, #0xff
	movs r2, #0x77
	mvns r2, r2
	adds r1, #0xd
	adds r0, r7, #0
	adds r3, r5, #0
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r1, #0
	movs r3, #0xd
	lsls r3, r3, #7
	add r3, sp
	ldr r0, [r3, #0x70]
	bl sub_8014436
	movs r2, #0x77
	adds r1, r4, #0
	subs r1, #0x70
	mvns r2, r2
	adds r3, r5, #0
	adds r0, r4, #0
	adds r0, #0x80
	bl __vecmap1ci__FPvT1iPFPvi_v
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x100
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end HandleMagicScreen
