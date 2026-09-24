	non_word_aligned_thumb_func_start sub_8012126
sub_8012126
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r2, #0
	adds r4, r1, #0
	adds r0, r2, #0
	bl sub_801234C
	cmp r0, #0
	beq %5
	movs r2, #0
	str r2, [r0, #0x10]
	str r4, [r0, #0x18]
	str r5, [r0, #0xc]
	ldr r5, _0801232C
	lsls r3, r6, #1
	subs r5, #0x18
	ldr r1, [r5]
	adds r3, r3, r6
	lsls r3, r3, #2
	ldr r6, [r1, r3]
	adds r6, r6, r1
	str r6, [r0, #8]
	str r2, [r0, #0x40]
	str r6, [r0, #0x48]
	adds r1, r1, r3
	ldr r3, [r1, #4]
	str r2, [r0, #0x30]
	adds r3, r3, r6
	str r3, [r0, #0x3c]
	ldr r1, [r1, #8]
	ldr r3, _0801232C
	str r1, [r0, #0x14]
	subs r3, #0x10
	ldrh r3, [r3, #0x1a]
	muls r1, r3
	lsrs r1, r1, #8
	str r1, [r0, #0x44]
	ldr r1, [r5, #4]
	muls r1, r4
	lsrs r1, r1, #8
	str r1, [r0, #0x38]
	str r2, [r0, #4]
5
	pop {r4, r5, r6}
	pop {r3}
	bx r3

