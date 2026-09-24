	thumb_func_start sub_8016E20
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	ldr r3, [r5]
	ldrh r5, [r5, #0x10]
	ldr r2, [r1]
	ldr r1, _0801710C
	ldrh r7, [r2, #8]
	ldr r4, _08017110
	lsls r5, r5, #0x1a
	lsrs r5, r5, #0x1a
	movs r6, #0
	ldrh r3, [r3, #4]
	ldr r4, [r4]
	cmp r7, r1
	beq %15
	lsls r0, r7, #2
	movs r1, #3
	lsls r1, r1, #9
	adds r0, r0, r4
	adds r0, r0, r1
	ldr r2, [r0, #0x1c]
	adds r1, r3, #0
	str r2, [sp]
	adds r2, r5, #0
	adds r3, r6, #0
	adds r0, r4, #0
	bl sub_8017884
14
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
15
	ldrh r2, [r2, #6]
	cmp r2, r1
	beq %16
	ldr r0, [r4, #0x10]
	lsls r1, r2, #2
	ldr r0, [r0, #0x14]
	ldr r2, [r0, r1]
	adds r1, r3, #0
	str r2, [sp]
	adds r2, r5, #0
	adds r3, r6, #0
	adds r0, r4, #0
	bl sub_8017884
	b %14
16
	adds r1, r3, #0
	adds r3, r6, #0
	str r0, [sp]
	adds r2, r5, #0
	adds r0, r4, #0
	bl sub_8017884
	b %14
	thumb_func_end sub_8016E20

