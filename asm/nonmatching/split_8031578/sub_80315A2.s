	non_word_aligned_thumb_func_start sub_80315A2
sub_80315A2
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08031668
	adds r5, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0xc]
	bl __da__FPv
	ldr r0, _08031660
	movs r1, #0
	str r0, [r4]
	ldr r0, _08031664
	str r1, [r4, #0xc]
	str r1, [r0]
	cmp r5, #0
	beq %3
	adds r0, r4, #0
	bl sub_803DA18
3
	pop {r3, r4, r5}
	pop {r3}
	bx r3

