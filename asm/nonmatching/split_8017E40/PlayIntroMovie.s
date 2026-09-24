	thumb_func_start PlayIntroMovie
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r0, sp, #8
	bl sub_80046F8
	bl FadeToBlack
	movs r0, #0
	bl sub_800E53C
	ldr r0, _0801803C
	ldr r0, [r0]
	bl sub_8017B9A
	ldr r0, _08018040
	movs r1, #3
	ldr r0, [r0]
	bl sub_800B058
	ldr r0, _08018044
	movs r2, #5
	ldr r0, [r0]
	lsls r2, r2, #0x18
	movs r6, #0
	cmp r0, #0
	beq %1
	movs r0, #0
	ldr r2, _08018048
	str r0, [sp, #4]
	adds r1, r2, #0
	subs r1, #0x20
	add r0, sp, #4
	bl CpuSet
	b %2
1
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _0801804C
	add r1, sp, #4
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08018050
	str r1, [r0, #8]
	ldr r0, [r0, #8]
2
	add r0, pc, #0x1B8
	bl maybeLoadOrRenderBgImage
	bl FadeToImage
	ldr r4, _0801805C
	ldrb r0, [r4, #1]
	cmp r0, #0xff
	bne %3
	ldr r1, _08018060
	ldrb r0, [r4]
	ldr r1, [r1]
	strb r0, [r1, #3]
	ldr r1, _08018064
	ldr r1, [r1]
	strb r0, [r1, #9]
3
	ldr r5, _08018068
	ldr r0, [r5]
	bl __da__FPv
	movs r1, #0
	movs r0, #0
	bl PlayMovie
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r0, #0x31
	adds r3, r6, #0
	movs r2, #0
	lsls r0, r0, #0xc
	bl sub_803DA9C
	movs r1, #0x31
	lsls r1, r1, #0xc
	bl SomehowInitEWRAMLinkedList
	str r0, [r5]
	movs r0, #3
	bl maybeInitTransitionLevelScreen
	ldr r0, _0801803C
	ldr r0, [r0]
	bl sub_8017CA0
	ldrb r0, [r4, #1]
	cmp r0, #0xff
	beq %5
	movs r0, #0xc
	bl SetNextGlobalFunction
4
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r3}
	bx r3
5
	movs r0, #2
	bl SetNextGlobalFunction
	b %4
	thumb_func_end PlayIntroMovie

