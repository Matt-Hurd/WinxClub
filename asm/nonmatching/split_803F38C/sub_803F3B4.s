	thumb_func_start sub_803F3B4
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r0]
	ldr r0, [r5]
	bl __16_ll_mulss
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r1, [r4, #4]
	ldr r0, [r5, #4]
	bl __16_ll_mulss
	add r2, pc, #0x10
	adds r0, r0, r6
	adcs r1, r7
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_803F3B4
