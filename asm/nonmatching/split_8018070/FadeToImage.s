	thumb_func_start FadeToImage
	push {r4, lr}
	sub sp, #0x18
	add r4, sp, #0xc
	adds r0, r4, #0
	bl sub_8004716
	movs r2, #0
	str r2, [sp, #8]
	movs r1, #1
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0x3f
	movs r3, #2
	adds r0, r4, #0
	str r1, [sp, #4]
	bl sub_803D680
	adds r0, r4, #0
	bl sub_803D97C
	cmp r0, #0
	bne %2
1
	adds r0, r4, #0
	bl sub_803D834
	adds r0, r4, #0
	bl sub_800474E
	bl sub_800EF2A
	adds r0, r4, #0
	bl sub_803D97C
	cmp r0, #0
	beq %1
2
	add sp, #0x18
	pop {r4}
	pop {r3}
	bx r3
	thumb_func_end FadeToImage

