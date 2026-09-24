	non_word_aligned_thumb_func_start sub_803B342
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #1
	sub sp, #0xc
	bl sub_800E53C
	movs r0, #3
	bl maybeInitTransitionLevelScreen
	add r0, pc, #0x160
	bl maybeLoadOrRenderBgImage
	ldr r0, _0803B4C8
	ldr r0, [r0]
	bl sub_80050FA
	movs r1, #1
	adds r0, r4, #0
	bl sub_8014B02
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x2c]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x18]
	adds r2, r2, r1
	movs r1, #0
	bl __call_via_r2
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x28]
	adds r2, r2, r1
	movs r1, #0
	bl __call_via_r2
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	movs r2, #0x14
	movs r1, #0x3c
	bl __call_via_r3
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r3, r2, r1
	movs r2, #0x78
	movs r1, #0x78
	bl __call_via_r3
	movs r2, #0
	str r2, [sp]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x20]
	movs r3, #0
	adds r5, r2, r1
	movs r2, #0xff
	movs r1, #4
	bl __call_via_r5
	adds r0, r4, #0
	bl sub_8013B76
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	movs r3, #0xff
	movs r2, #0
	movs r1, #0
	adds r0, r4, #0
	bl sub_80138E2
	movs r1, #0
	movs r2, #1
	str r2, [sp, #8]
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #6
	movs r2, #4
	movs r3, #3
	adds r0, r4, #0
	bl sub_8013C40
	bl FadeToImage
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_803B342

