	non_word_aligned_thumb_func_start sub_8000EF6
sub_8000EF6
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0800104C
	adds r7, r1, #0
	str r0, [r4]
	movs r0, #0x67
	lsls r0, r0, #6
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	beq %7
	adds r0, r4, #0
	bl sub_8000E6C
7
	ldr r0, [r5, #0x1c]
	movs r6, #0
	cmp r0, #0
	beq %8
	bl __da__FPv
	str r6, [r5, #0x1c]
8
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq %9
	bl __da__FPv
	str r6, [r5, #0x24]
9
	movs r1, #0
	adds r0, r4, #4
	bl sub_800B8A4
	ldr r0, _08001044
	cmp r7, #0
	str r0, [r4]
	ldr r0, _08001048
	str r6, [r0]
	beq %10
	adds r0, r4, #0
	bl sub_803DA18
10
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

