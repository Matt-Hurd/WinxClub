	thumb_func_start MaybeHandleBootIntoGame
	push {r4, lr}
	movs r0, #1
	bl sub_800E53C
	movs r0, #0
	bl maybeInitTransitionLevelScreen
	ldr r3, _08028D50
	movs r0, #0x10
	ldr r2, [r3]
	ldr r1, _08028D58
	bics r2, r0
	ldr r0, _08028D54
	str r2, [r3]
	ldr r0, [r0]
	movs r4, #0
	strb r4, [r1]
	movs r1, #0x10
	bics r2, r1
	str r2, [r3]
	bl gameExit
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r0, #0xff
	adds r3, r4, #0
	movs r2, #0
	adds r0, #0x95
	bl sub_803DA80
	adds r4, r0, #0
	beq %1
	adds r0, r4, #0
	bl sub_8023D0C
1
	ldr r0, _08028D5C
	movs r1, #0
	str r4, [r0]
	adds r0, r4, #0
	bl sub_80247A4
	bl sub_800EF2A
	bl FadeToImage
	movs r0, #0x12
	bl SetNextGlobalFunction
	pop {r4}
	pop {r3}
	bx r3
	thumb_func_end MaybeHandleBootIntoGame
