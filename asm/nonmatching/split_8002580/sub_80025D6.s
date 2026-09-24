	non_word_aligned_thumb_func_start sub_80025D6
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r4, #0
	movs r7, #0
3
	lsls r0, r4, #2
	adds r5, r0, r6
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq %4
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r7, [r5, #0xc]
4
	adds r4, #1
	cmp r4, #4
	blt %3
	movs r0, #1
	lsls r0, r0, #0xb
	adds r4, r6, r0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq %5
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r7, [r4, #0x20]
5
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_80025D6

