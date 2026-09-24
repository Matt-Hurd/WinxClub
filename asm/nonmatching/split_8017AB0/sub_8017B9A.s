	non_word_aligned_thumb_func_start sub_8017B9A
	push {r0, r4, r5, r6, r7, lr}
	movs r6, #0
	movs r5, #0
	movs r2, #0
	sub sp, #8
4
	ldr r1, [sp, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	movs r1, #5
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq %7
	movs r3, #4
5
	movs r7, #1
	ldr r1, [r0]
	lsls r7, r7, #0x19
	adds r5, #0x1c
	cmp r1, r7
	blo %6
	movs r7, #0x81
	lsls r7, r7, #0x12
	cmp r1, r7
	bhs %6
	ldrh r1, [r1, #2]
	adds r5, r1, r5
	lsls r1, r5, #0x1e
	beq %6
	lsls r1, r5, #0x1e
	lsrs r1, r1, #0x1e
	subs r1, r3, r1
	adds r5, r1, r5
6
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne %5
7
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0x40
	blo %4
	movs r7, #0
	cmp r5, #0
	beq %8
	bl GetEWRAMStart
	adds r1, r0, #0
	lsrs r0, r5, #2
	lsls r0, r0, #2
	adds r3, r7, #0
	movs r2, #0
	bl sub_803DA9C
	ldr r1, [sp, #8]
	adds r4, r0, #0
	str r0, [r1, #4]
8
	movs r0, #0
	str r0, [sp]
9
	ldr r0, [sp]
	ldr r1, [sp, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #5
	lsls r1, r1, #7
	str r0, [sp, #4]
	adds r0, r0, r1
	ldr r5, [r0, #0x18]
	cmp r5, #0
	beq %13
10
	movs r2, #0x1c
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_803F3E8
	adds r0, r6, #0
	adds r6, r4, #0
	cmp r0, #0
	str r0, [r4, #0x18]
	beq %11
	str r6, [r0, #0x14]
11
	movs r0, #1
	ldr r1, [r5]
	lsls r0, r0, #0x19
	adds r4, #0x1c
	cmp r1, r0
	blo %12
	movs r0, #0x81
	lsls r0, r0, #0x12
	cmp r1, r0
	bhs %12
	ldrh r7, [r1, #2]
	adds r2, r7, #0
	adds r0, r4, #0
	bl sub_803F3E8
	str r4, [r6]
	adds r4, r4, r7
	lsls r0, r4, #0x1e
	beq %12
	lsls r0, r4, #0x1e
	lsrs r0, r0, #0x1e
	movs r1, #4
	subs r0, r1, r0
	adds r4, r0, r4
12
	ldr r5, [r5, #0x14]
	cmp r5, #0
	bne %10
13
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq %14
	bl __da__FPv
	ldr r1, [sp, #4]
	movs r0, #0
	str r0, [r1, #0x18]
14
	ldr r0, [sp]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	cmp r0, #0x40
	blo %9
	cmp r6, #0
	beq %15
	movs r0, #0
	str r0, [r6, #0x14]
15
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_8017B9A

