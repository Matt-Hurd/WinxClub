	non_word_aligned_thumb_func_start sub_801333E
sub_801333E
	push {r4, r5, r6, lr}
	ldr r5, _08013430
	adds r4, r0, #0
	ldr r0, [r5]
	movs r6, #0
	cmp r0, #0
	sub sp, #8
	beq %21
	adds r3, r6, #0
	movs r1, #0x1c
	ldr r2, _08013434
	bl __vec_dtor__FPvUiPFPvi_vPFPv_v
21
	bl GetEWRAMStart
	adds r1, r0, #0
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, #4
	adds r3, r6, #0
	movs r2, #0
	bl sub_803DA9C
	movs r2, #0
	str r2, [sp]
	movs r2, #0x1c
	movs r3, #1
	adds r1, r4, #0
	bl __vec_ctor_p__FPvUiT2bPFPv_v
	str r0, [r5]
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3

