	thumb_func_start sub_8000F4C
sub_8000F4C
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0x67
	lsls r0, r0, #6
	adds r4, r7, r0
	ldr r0, [r4, #0x1c]
	movs r6, #0
	adds r5, r2, #0
	cmp r0, #0
	sub sp, #4
	beq %11
	bl __da__FPv
	str r6, [r4, #0x1c]
11
	cmp r5, #0
	beq %14
	movs r3, #0
	str r3, [r4, #0x18]
	bl GetEWRAMStart
	adds r1, r0, #0
	lsls r6, r5, #1
	movs r3, #0
	movs r2, #0
	adds r0, r6, #0
	bl sub_803DA9C
	str r0, [r4, #0x1c]
	movs r0, #0
	subs r1, r5, #1
	beq %13
	subs r3, r5, #1
12
	adds r1, r0, #1
	ldr r2, [r4, #0x1c]
	lsls r0, r0, #1
	strh r1, [r2, r0]
	adds r0, r1, #0
	cmp r1, r3
	blo %12
13
	ldr r1, [r4, #0x1c]
	movs r0, #0
	mvns r0, r0
	adds r1, r1, r6
	subs r1, #0x20
	strh r0, [r1, #0x1e]
14
	adds r1, r5, #0
	adds r0, r7, #4
	adds r4, r0, #0
	bl sub_8000CC6
	adds r0, r4, #0
	ldr r1, [sp, #0x10]
	bl sub_8000CCA
	adds r0, r4, #0
	ldr r1, [sp, #8]
	bl sub_8000C7C
	adds r0, r4, #0
	bl sub_800B9B6
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

