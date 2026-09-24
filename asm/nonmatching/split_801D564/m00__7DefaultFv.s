	thumb_func_start m00__7DefaultFv
m00__7DefaultFv
__dt__7DefaultFv
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0801D92C
	adds r7, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #8
	lsrs r1, r0, #0x18
	beq %8
	ldr r1, _0801D954
	lsrs r6, r0, #0x18
	ldr r5, [r1]
	lsls r0, r6, #1
	adds r1, r0, r5
	movs r0, #0xb
	lsls r0, r0, #7
	adds r0, r1, r0
	ldrh r1, [r0, #0x18]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	strh r1, [r0, #0x18]
	adds r1, r6, #0
	adds r0, r5, #0
	bl sub_8017862
	lsls r1, r6, #2
	movs r2, #9
	lsls r2, r2, #7
	adds r1, r1, r5
	movs r0, #0
	adds r1, r1, r2
	str r0, [r1, #0x18]
8
	adds r0, r4, #0
	bl m1C__7DefaultFv
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq %10
9
	ldr r0, [r4, #0x28]
	ldr r1, [r0, #0x18]
	str r1, [r4, #0x28]
	bl sub_803DA18
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne %9
10
	movs r1, #0
	adds r0, r4, #0
	bl sub_8017450
	cmp r7, #0
	beq %11
	adds r0, r4, #0
	bl sub_803DA18
11
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

