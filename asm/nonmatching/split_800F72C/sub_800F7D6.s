	non_word_aligned_thumb_func_start sub_800F7D6
	push {r4, r5, r6, r7, lr}
	ldr r2, [r0, #4]
	sub sp, #0xc
	adds r4, r0, #0
	adds r4, #0x80
	str r2, [sp, #8]
	adds r5, r0, #0
	ldr r0, [r4]
	adds r7, r1, #0
	movs r6, #0
	cmp r0, r1
	bhs %7
	subs r6, r7, r0
	adds r7, r0, #0
7
	ldr r0, _0800FA3C
	ldr r0, [r0]
	ldr r1, [r4, #8]
	bl sub_803DAC0
	str r0, [sp, #4]
	ldr r1, [r5, #0x6c]
	movs r2, #1
	lsls r2, r2, #9
	adds r1, r1, r2
	str r0, [r1, #0x20]
	cmp r7, #0
	beq %8
	ldrh r3, [r4, #4]
	str r7, [sp]
	ldr r0, [r5, #8]
	movs r2, #1
	lsls r2, r0
	ldr r0, [r5, #0x6c]
	ldr r1, [sp, #8]
	subs r2, #1
	bl sub_80130DC
	strh r0, [r4, #4]
	ldr r0, [r4]
	subs r0, r0, r7
	str r0, [r4]
	b %9
8
	movs r0, #4
	str r0, [r5, #0x5c]
	ldr r1, [r5, #8]
	movs r0, #1
	lsls r0, r1
	str r0, [r4]
9
	movs r2, #1
	ldr r1, [r5, #0x6c]
	lsls r2, r2, #9
	adds r1, r1, r2
	ldr r0, [r4, #8]
	ldr r1, [r1, #0x20]
	ldr r2, [sp, #4]
	subs r1, r1, r2
	adds r0, r0, r1
	str r0, [r4, #8]
	cmp r6, #0
	ble %11
	movs r0, #0
10
	ldrh r1, [r4, #4]
	ldr r3, [r5, #8]
	movs r2, #1
	lsls r2, r3
	subs r2, #1
	ands r1, r2
	lsrs r1, r1, #1
	ldr r2, [sp, #8]
	lsls r1, r1, #1
	strh r0, [r2, r1]
	ldrh r1, [r4, #4]
	subs r6, #2
	adds r1, #2
	strh r1, [r4, #4]
	cmp r6, #0
	bgt %10
11
	adds r0, r7, #0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_800F7D6

