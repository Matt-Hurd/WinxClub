	thumb_func_start sub_801228C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_80123B4
	cmp r0, #0
	beq %21
	ldr r1, [r0, #4]
	str r1, [r4]
	lsls r1, r1, #0x1f
	bmi %21
	ldr r1, _0801232C
	ldr r2, _0801232C
	ldr r3, [r4, #0x18]
	subs r1, #0x10
	subs r2, #0x18
	cmp r3, #0
	beq %19
	ldr r5, [r0, #0x14]
	cmp r3, r5
	beq %20
	str r3, [r0, #0x14]
	ldrh r1, [r1, #0x1a]
	muls r3, r1
	lsrs r1, r3, #8
	str r1, [r0, #0x44]
	b %20
19
	ldr r6, [r4, #4]
	ldr r5, [r2]
	lsls r3, r6, #1
	adds r3, r3, r6
	lsls r3, r3, #2
	adds r3, r5, r3
	ldr r3, [r3, #8]
	ldr r5, [r0, #0x14]
	cmp r3, r5
	beq %20
	str r3, [r4, #0x18]
	str r3, [r0, #0x14]
	ldrh r1, [r1, #0x1a]
	muls r3, r1
	lsrs r1, r3, #8
	str r1, [r0, #0x44]
20
	ldr r1, [r4, #0x10]
	ldr r2, [r2, #4]
	muls r1, r2
	lsrs r1, r1, #8
	str r1, [r0, #0x38]
21
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	thumb_func_end sub_801228C

