	non_word_aligned_thumb_func_start sub_8000FCE
sub_8000FCE
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #4
	bl nullsub_3
	movs r0, #0x67
	lsls r0, r0, #6
	adds r5, r4, r0
	ldr r0, [r5, #0x24]
	movs r7, #0
	cmp r0, #0
	beq %15
	bl __da__FPv
	str r7, [r5, #0x24]
15
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq %18
	adds r6, r4, #0
	adds r6, #0x60
	ldrh r0, [r6, #0x1a]
	str r0, [r5, #0x20]
	bl GetEWRAMStart
	adds r1, r0, #0
	ldr r0, [r4, #0x54]
	lsls r0, r0, #1
	adds r3, r7, #0
	movs r2, #0
	bl sub_803DA9C
	str r0, [r5, #0x24]
	ldr r1, [r4, #0x54]
	movs r0, #0
	subs r1, #1
	beq %17
16
	ldrh r1, [r6, #0x1a]
	ldr r2, [r5, #0x24]
	lsls r3, r0, #1
	adds r1, r1, r0
	adds r1, #1
	strh r1, [r2, r3]
	ldr r1, [r4, #0x54]
	adds r0, #1
	subs r1, #1
	cmp r1, r0
	bhi %16
17
	ldr r2, [r4, #0x54]
	ldr r1, [r5, #0x24]
	movs r0, #0
	lsls r2, r2, #1
	adds r1, r1, r2
	mvns r0, r0
	subs r1, #0x20
	strh r0, [r1, #0x1e]
18
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
