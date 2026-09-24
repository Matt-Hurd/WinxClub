	non_word_aligned_thumb_func_start HandleMainMenuOptionsScreen
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x198
	add r6, sp, #4
	adds r1, r6, #0
	ldr r4, _080235D0
	adds r1, #0xf8
	adds r7, r1, #0
	adds r0, r6, #0
	movs r2, #0x78
	adds r3, r4, #0
	adds r0, #8
	bl __vecmap1c__FPvT1iPFPv_v
	adds r0, r7, #0
	bl sub_80143E0
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r1, r6, r0
	adds r0, r6, #0
	adds r0, #0xff
	adds r3, r4, #0
	movs r2, #0x78
	adds r0, #0x75
	bl __vecmap1c__FPvT1iPFPv_v
	adds r0, r6, #0
	bl sub_80231B0
	adds r4, r6, #0
	adds r4, #0xff
	movs r0, #0x35
	lsls r0, r0, #4
	adds r4, #0x71
	adds r5, r6, r0
69
	ldr r0, _080235D4
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsls r3, r2, #0x1c
	bmi %70
	ldrh r1, [r0, #6]
70
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r2, #0x1c
	lsls r1, r0, #0x1e
	bpl %71
	movs r0, #3
	strb r0, [r4]
	b %77
71
	lsls r1, r0, #0x19
	bpl %72
	movs r1, #0
	mvns r1, r1
	adds r0, r6, #0
	bl sub_80230DC
	b %77
72
	lsls r1, r0, #0x18
	bpl %73
	movs r1, #1
	adds r0, r6, #0
	bl sub_80230DC
	b %77
73
	ldrb r1, [r5, #8]
	cmp r1, #3
	bhs %74
	lsls r2, r0, #0x1a
	bpl %74
	movs r1, #0
	mvns r1, r1
	adds r0, r6, #0
	bl sub_8022FFC
	b %77
74
	cmp r1, #3
	bhs %75
	lsls r2, r0, #0x1b
	bpl %75
	movs r1, #1
	adds r0, r6, #0
	bl sub_8022FFC
	b %77
75
	cmp r1, #3
	bhs %76
	lsls r2, r0, #0x1f
	bpl %76
	movs r0, #3
	strb r0, [r4]
	b %77
76
	cmp r1, #3
	bne %77
	lsls r0, r0, #0x1f
	bpl %77
	movs r0, #5
	strb r0, [r4]
77
	bl sub_800EF2A
	ldrb r0, [r4]
	cmp r0, #0
	beq %69
	ldr r0, _080235D8
	ldrb r1, [r5, #9]
	ldr r0, [r0]
	strb r1, [r0]
	ldrb r1, [r5, #0xa]
	strb r1, [r0, #1]
	ldrb r1, [r5, #0xb]
	strb r1, [r0, #2]
	bl sub_80235E4
	ldr r0, _080235DC
	ldr r0, [r0]
	bl sub_8028C2E
	ldrb r0, [r4]
	cmp r0, #3
	beq %78
	cmp r0, #5
	bne %79
	movs r0, #0xa
	bl SetNextGlobalFunction
	b %79
78
	movs r0, #2
	bl SetNextGlobalFunction
79
	adds r0, r6, #0
	bl sub_8022F8C
	ldr r4, _080235E0
	movs r2, #0x77
	adds r1, r6, #0
	movs r0, #0xb7
	lsls r0, r0, #2
	adds r1, #0xfc
	mvns r2, r2
	adds r3, r4, #0
	adds r0, r6, r0
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
	add sp, #0x1fc
	add sp, #0x198
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end HandleMainMenuOptionsScreen
