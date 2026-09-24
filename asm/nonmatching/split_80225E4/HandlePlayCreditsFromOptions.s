	non_word_aligned_thumb_func_start HandlePlayCreditsFromOptions
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0xf8
	mov r6, sp
	add r1, sp, #0xf8
	add r0, sp, #8
	ldr r3, _08022830
	movs r2, #0x78
	bl __vecmap1c__FPvT1iPFPv_v
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #1
	str r0, [sp, #0x2f0]
	bl sub_80143E0
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #0x79
	adds r5, r0, #0
	bl sub_80143E0
	adds r0, r5, #0
	adds r0, #0x78
	str r0, [sp, #0x2ec]
	bl sub_80143E0
	movs r0, #0x4d
	lsls r0, r0, #3
	adds r0, r6, r0
	str r0, [sp, #0x2e8]
	bl sub_80143E0
	movs r0, #0x17
	lsls r0, r0, #5
	adds r0, r6, r0
	bl sub_80046F8
	adds r0, r6, #0
	bl sub_80225E4
	ldr r7, _08022828
	adds r4, r6, #0
	adds r4, #0xf0
3
	ldr r0, _08022834
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi %4
	ldrh r1, [r0, #6]
4
	lsls r0, r1, #0x1e
	bpl %5
	ldr r0, [r7]
	bl sub_8028C2E
	movs r0, #3
	strb r0, [r4, #0xa]
5
	adds r0, r6, #0
	bl sub_8022306
	bl sub_800EF2A
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq %3
	movs r0, #8
	bl SetNextGlobalFunction
	movs r1, #0
	adds r0, r5, #0
	bl sub_8014864
	movs r2, #0
	movs r1, #2
	ldr r0, [r7]
	bl sub_8028A7C
	bl FadeToBlack
	ldr r4, _08022838
	mov r1, sp
	ldr r0, [r4]
	bl sub_8000DE6
	adds r1, r6, #4
	ldr r0, [r4]
	bl sub_8000DE6
	movs r1, #0
	ldr r0, [sp, #0x2e8]
	bl sub_8014436
	movs r1, #0
	ldr r0, [sp, #0x2ec]
	bl sub_8014436
	movs r1, #0
	adds r0, r5, #0
	bl sub_8014436
	movs r1, #0
	ldr r0, [sp, #0x2f0]
	bl sub_8014436
	movs r2, #0x77
	adds r1, r6, #0
	subs r1, #0x70
	mvns r2, r2
	adds r0, r6, #0
	adds r0, #0x80
	ldr r3, _0802283C
	bl __vecmap1ci__FPvT1iPFPvi_v
	add sp, #0x1fc
	add sp, #0xf8
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end HandlePlayCreditsFromOptions
