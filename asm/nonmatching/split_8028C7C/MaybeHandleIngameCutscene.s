	thumb_func_start MaybeHandleIngameCutscene
	push {r4, lr}
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r0, #0xff
	movs r3, #0
	movs r2, #0
	adds r0, #0x95
	bl sub_803DA80
	adds r4, r0, #0
	beq %1
	adds r0, r4, #0
	bl sub_8023D0C
1
	ldr r0, _08028CDC
	ldr r1, _08028CE0
	str r4, [r0]
	ldr r1, [r1]
	movs r0, #0x10
	ands r1, r0
	beq %2
	movs r1, #1
	b %3
2
	movs r1, #0
3
	adds r0, r4, #0
	bl sub_80247A4
	ldr r4, _08028CE4
	ldr r0, [r4]
	bl sub_801CCA8
	ldr r0, [r4]
	bl sub_801B56C
	bl sub_800EF2A
	ldr r0, [r4]
	bl MaybeTickAllGameObjs
	bl FadeToImage
	movs r0, #0x12
	bl SetNextGlobalFunction
	pop {r4}
	pop {r3}
	bx r3
	thumb_func_end MaybeHandleIngameCutscene
