	thumb_func_start Boss__04
Boss__04
	push {r3, lr}
	ldr r2, [r1]
	ldrb r3, [r2]
	cmp r3, #0x21
	beq %5
	cmp r3, #0x28
	bne %6
	adds r1, r0, #0
	adds r1, #0xe0
	ldrb r3, [r1, #5]
	ldrh r2, [r2, #4]
	adds r0, r3, r0
	adds r0, #0xe0
	strb r2, [r0]
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
4
	add sp, #4
	pop {r3}
	bx r3
5
	bl sub_80294EE
	b %4
6
	bl sub_8029290
	b %4

