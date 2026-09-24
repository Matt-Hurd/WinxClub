	non_word_aligned_thumb_func_start sub_80164E6
sub_80164E6
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r0, #8]
	movs r4, #0
	cmp r0, #0
	bls %5
3
	ldr r0, [r5, #0x14]
	lsls r1, r4, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	beq %4
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
4
	adds r4, #1
	ldrb r0, [r5, #8]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r0, r4
	bhi %3
5
	ldr r0, [r5, #0x14]
	bl __da__FPv
	movs r0, #0
	strb r0, [r5, #8]
	str r0, [r5, #0x14]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

