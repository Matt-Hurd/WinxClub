	thumb_func_start sub_8031830
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08031B28
	movs r2, #0xff
	movs r1, #4
	ldr r0, [r0]
	bl sub_8028A7C
	bl FadeToBlack
	ldrb r2, [r4, #4]
	ldr r0, _08031B2C
	ldr r1, [r0]
	lsls r3, r2, #1
	adds r5, r3, r1
	movs r3, #0xb
	lsls r3, r3, #7
	adds r3, r5, r3
	ldrh r5, [r3, #0x18]
	lsls r2, r2, #2
	adds r1, r2, r1
	lsrs r5, r5, #1
	lsls r5, r5, #1
	strh r5, [r3, #0x18]
	movs r2, #9
	lsls r2, r2, #7
	movs r3, #0
	adds r1, r1, r2
	str r3, [r1, #0x18]
	ldrb r1, [r4, #4]
	ldr r0, [r0]
	bl sub_8017620
	ldr r5, _08031B30
	adds r1, r4, #0
	adds r1, #8
	ldr r0, [r5]
	bl sub_8000DE6
	adds r1, r4, #0
	adds r1, #0xc
	ldr r0, [r5]
	bl sub_8000DE6
	ldr r4, _08031B34
	ldr r0, [r4]
	bl sub_800B72A
	cmp r0, #0
	beq %2
1
	bl sub_800EF2A
	ldr r0, [r4]
	bl sub_800B72A
	cmp r0, #0
	bne %1
2
	movs r0, #1
	bl sub_800E53C
	movs r0, #0
	bl maybeInitTransitionLevelScreen
	ldr r0, _08031B38
	ldrb r0, [r0]
	bl SetNextGlobalFunction
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_8031830

