	non_word_aligned_thumb_func_start sub_8004F12
sub_8004F12
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0800503C
	adds r5, r1, #0
	movs r2, #0
	str r0, [r4]
	ldr r0, [r4, #4]
	movs r1, #0
	bl sub_803D9A8
	ldr r0, _08005034
	movs r1, #0
	stm r4!, {r0, r1}
	ldr r0, _08005038
	subs r4, #8
	cmp r5, #0
	str r1, [r0]
	beq %11
	adds r0, r4, #0
	bl sub_803DA18
11
	pop {r3, r4, r5}
	pop {r3}
	bx r3

