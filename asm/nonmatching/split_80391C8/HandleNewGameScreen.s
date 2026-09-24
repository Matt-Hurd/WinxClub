	thumb_func_start HandleNewGameScreen
HandleNewGameScreen
	push {r4, r5, r6, r7, lr}
	ldr r3, _08039980
	ldr r4, _08039984
	add sp, r3
	add r6, sp, #4
	adds r1, r6, #0
	adds r1, #0xf8
	adds r0, r6, #0
	adds r3, r4, #0
	movs r2, #0x78
	adds r0, #8
	bl __vecmap1c__FPvT1iPFPv_v
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #0x3d
	adds r7, r0, #0
	bl sub_80143E0
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r6, r0
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #0xb5
	adds r5, r1, #0
	movs r2, #0x78
	adds r3, r4, #0
	bl __vecmap1c__FPvT1iPFPv_v
	ldr r0, _08039968
	movs r3, #0x13
	lsls r3, r3, #7
	adds r1, r6, r0
	add r3, sp
	str r1, [r3, #0x48]
	adds r0, r5, #0
	movs r2, #0x78
	adds r3, r4, #0
	bl __vecmap1c__FPvT1iPFPv_v
	ldr r0, _08039988
	movs r3, #0x13
	lsls r3, r3, #7
	adds r1, r6, r0
	add r3, sp
	ldr r0, [r3, #0x48]
	adds r5, r1, #0
	movs r2, #0x78
	adds r3, r4, #0
	bl __vecmap1c__FPvT1iPFPv_v
	ldr r0, _0803998C
	movs r2, #0x78
	adds r1, r6, r0
	adds r0, r5, #0
	adds r3, r4, #0
	bl __vecmap1c__FPvT1iPFPv_v
	adds r0, r6, #0
	bl sub_8039336
	movs r0, #0x4d
	lsls r0, r0, #5
	adds r5, r6, r0
26
	ldr r0, _08039990
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi %27
	ldrh r1, [r0, #6]
27
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	lsls r0, r4, #0x1e
	bpl %28
	movs r0, #3
	strb r0, [r5, #0xc]
	b %30
28
	lsls r0, r4, #0x19
	bpl %29
	movs r1, #0
	mvns r1, r1
	adds r0, r6, #0
	bl sub_8039206
	b %30
29
	lsls r0, r4, #0x18
	bpl %30
	movs r1, #1
	adds r0, r6, #0
	bl sub_8039206
30
	lsls r0, r4, #0x1f
	bpl %31
	adds r0, r6, #0
	bl sub_80391C8
31
	bl sub_800EF2A
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq %26
	ldrb r0, [r5, #0xc]
	cmp r0, #3
	beq %33
	cmp r0, #4
	bne %32
	movs r0, #0x10
	bl SetNextGlobalFunction
32
	adds r0, r6, #0
	bl sub_8038E44
	ldr r0, _08039998
	ldr r4, _08039994
	adds r1, r6, r0
	ldr r0, _0803999C
	movs r2, #0x77
	mvns r2, r2
	adds r5, r1, #0
	adds r0, r6, r0
	adds r3, r4, #0
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r0, #0xe5
	lsls r0, r0, #2
	movs r3, #0x13
	lsls r3, r3, #7
	adds r1, r6, r0
	add r3, sp
	movs r2, #0x77
	mvns r2, r2
	str r1, [r3, #0x44]
	adds r0, r5, #0
	adds r3, r4, #0
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r0, #0x8b
	lsls r0, r0, #2
	movs r3, #0x13
	lsls r3, r3, #7
	adds r1, r6, r0
	add r3, sp
	movs r2, #0x77
	mvns r2, r2
	ldr r0, [r3, #0x44]
	adds r5, r1, #0
	adds r3, r4, #0
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r2, #0x77
	mvns r2, r2
	adds r1, r7, #0
	adds r0, r5, #0
	adds r3, r4, #0
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r1, #0
	adds r0, r7, #0
	bl sub_8014436
	movs r2, #0x77
	adds r1, r6, #0
	subs r1, #0x70
	mvns r2, r2
	adds r3, r4, #0
	adds r0, r6, #0
	adds r0, #0x80
	bl __vecmap1ci__FPvT1iPFPvi_v
	ldr r3, _080399A0
	add sp, r3
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
33
	movs r0, #2
	bl SetNextGlobalFunction
	b %32
