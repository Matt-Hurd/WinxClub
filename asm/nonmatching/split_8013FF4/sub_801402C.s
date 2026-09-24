	thumb_func_start sub_801402C
sub_801402C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080142CC
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_801352C
	cmp r5, #0
	beq %3
	adds r0, r4, #0
	bl sub_803DA18
3
	pop {r3, r4, r5}
	pop {r3}
	bx r3

