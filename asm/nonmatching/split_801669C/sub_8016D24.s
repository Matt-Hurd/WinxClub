	thumb_func_start sub_8016D24
	ldr r0, _08016D64
	push {r3, lr}
	ldr r0, [r0]
	ldr r1, [r1]
	movs r2, #0x84
	ldrb r2, [r2, r0]
	cmp r2, #7
	bhs %47
	movs r2, #0xb0
	ldrb r2, [r2, r0]
	adds r0, #0xa0
	strb r2, [r0, #0xd]
	movs r2, #0
	strb r2, [r0, #0xe]
47
	ldrh r1, [r1, #4]
	movs r0, #1
	cmp r1, #0
	bne %48
	movs r0, #0
48
	adds r1, r0, #0
	ldr r0, _08016D8C
	ldr r0, [r0]
	bl sub_80247A4
	add sp, #4
	pop {r3}
	bx r3
	thumb_func_end sub_8016D24
