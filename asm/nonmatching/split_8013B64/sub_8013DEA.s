	non_word_aligned_thumb_func_start sub_8013DEA
sub_8013DEA
	push {r3, r4, r5, r6, r7, lr}
	movs r6, #3
	movs r5, #0
	cmp r0, #3
	bhs %36
	adds r5, r0, #0
	adds r0, #1
	lsls r6, r0, #0x18
	lsrs r6, r6, #0x18
36
	cmp r5, r6
	bhs %40
	ldr r7, _08013FF0
37
	lsls r0, r5, #2
	ldr r4, [r7, r0]
	cmp r4, #0
	beq %39
38
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r4, [r4, #4]
	cmp r4, #0
	bne %38
39
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, r6
	blo %37
40
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

