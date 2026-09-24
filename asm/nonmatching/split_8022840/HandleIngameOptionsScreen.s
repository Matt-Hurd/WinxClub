	non_word_aligned_thumb_func_start HandleIngameOptionsScreen
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x140
	add r4, sp, #0x14
	ldr r5, _08022F70
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
	str r0, [sp, #0x338]
	bl sub_80143E0
	movs r0, #0xbb
	lsls r0, r0, #2
	adds r1, r4, r0
	adds r0, r4, #0
	adds r0, #0xff
	adds r3, r5, #0
	movs r2, #0x78
	adds r0, #0x85
	bl __vecmap1c__FPvT1iPFPv_v
	adds r0, r4, #0
	bl sub_8022A24
	add r1, sp, #0xd4
	str r1, [sp, #0x334]
	add r5, sp, #0x194
	add r6, sp, #0x174
24
	ldr r0, _08022F74
	movs r2, #0
	ldr r0, [r0]
	adds r3, r2, #0
	ldr r1, [r0, #0x14]
	lsls r4, r1, #0x1c
	bmi %25
	ldrh r3, [r0, #8]
25
	lsls r4, r3, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x1c
	bmi %26
	ldrh r2, [r0, #4]
26
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x10]
	ldrh r0, [r6, #0x1c]
	ldrh r1, [r6, #0x1e]
	str r1, [sp, #4]
	ldr r1, [sp, #0x334]
	ldr r1, [r1, #0x38]
	str r1, [sp, #8]
	ldr r1, [sp, #0x334]
	ldr r1, [r1, #0x3c]
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1f
	adds r0, r1, r0
	lsls r7, r0, #0x10
	ldr r0, _08022F78
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
	beq %27
	adds r1, r7, #0
	ldr r0, [sp, #8]
	bl sub_800065C
27
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x17
	ldr r1, [sp, #4]
	lsrs r0, r0, #0x1f
	adds r0, r0, r1
	lsls r7, r0, #0x10
	ldr r0, _08022F78
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
	beq %28
	adds r1, r7, #0
	ldr r0, [sp, #0xc]
	bl sub_800065C
28
	lsls r0, r4, #0x16
	bpl %29
	movs r0, #2
	strb r0, [r5]
	b %34
29
	lsls r0, r4, #0x17
	bpl %30
	movs r0, #1
	strb r0, [r5]
	b %34
30
	lsls r0, r4, #0x1e
	bpl %31
	movs r0, #3
	strb r0, [r5]
	b %34
31
	lsls r0, r4, #0x1d
	bpl %32
	movs r0, #3
	strb r0, [r5]
	b %34
32
	lsls r0, r4, #0x19
	bpl %33
	movs r1, #0
	mvns r1, r1
	add r0, sp, #0x14
	bl sub_80229B2
	b %34
33
	lsls r0, r4, #0x18
	bpl %34
	movs r1, #1
	add r0, sp, #0x14
	bl sub_80229B2
34
	lsls r0, r4, #0x1a
	bpl %35
	movs r1, #0
	mvns r1, r1
	add r0, sp, #0x14
	bl sub_80228D2
	b %36
35
	lsls r0, r4, #0x1b
	bpl %36
	movs r1, #1
	add r0, sp, #0x14
	bl sub_80228D2
36
	bl sub_800EF2A
	ldrb r0, [r5]
	cmp r0, #0
	beq %24
	movs r0, #0x2f
	lsls r0, r0, #4
	add r4, sp, #0x14
	adds r0, r4, r0
	ldr r1, _08022F7C
	ldrb r2, [r0, #9]
	ldr r1, [r1]
	strb r2, [r1]
	ldrb r2, [r0, #0xa]
	strb r2, [r1, #1]
	ldrb r0, [r0, #0xb]
	strb r0, [r1, #2]
	bl sub_80235E4
	ldrh r2, [r6, #0x1a]
	ldr r1, _08022F80
	ldrb r0, [r5]
	ldrb r5, [r1, r2]
	ldrh r2, [r6, #0x18]
	ldr r6, _08022F84
	cmp r0, #1
	ldrb r7, [r1, r2]
	beq %38
	cmp r0, #2
	beq %37
	cmp r0, #3
	beq %39
	cmp r0, #6
	bne %40
	movs r0, #0xb
	bl SetNextGlobalFunction
	b %40
37
	ldr r0, [r6]
	adds r0, #0x40
	bl sub_8028C2E
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl SetNextGlobalFunction
	b %41
38
	ldr r0, [r6]
	adds r0, #0x40
	bl sub_8028C2E
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	bl SetNextGlobalFunction
	b %41
39
	movs r0, #0x11
	bl SetNextGlobalFunction
40
	movs r2, #0xff
	movs r1, #4
	ldr r0, [r6]
	bl sub_8028A7C
41
	adds r0, r4, #0
	bl sub_8022840
	ldr r5, _08022F88
	adds r1, r4, #0
	adds r1, #0xff
	movs r2, #0x77
	movs r0, #0x9d
	lsls r0, r0, #2
	mvns r2, r2
	adds r1, #0xd
	adds r3, r5, #0
	adds r0, r4, r0
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r1, #0
	ldr r0, [sp, #0x338]
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
	add sp, #0x140
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08022F68 DCDU 0x00000CF3
_08022F6C DCDU gUnknown_03003448
_08022F70 DCDU sub_80143E0
_08022F74 DCDU gUnknown_03003444
_08022F78 DCDU gUnknown_03003EA0
_08022F7C DCDU gUnknown_03003D30
_08022F80 DCDU gUnknown_080506E8
_08022F84 DCDU gUnknown_0300345C
_08022F88 DCDU sub_8014436
	thumb_func_end HandleIngameOptionsScreen

