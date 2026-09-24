	thumb_func_start sub_80163D4
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	ldrb r0, [r0]
	cmp r0, #0x19
	beq %3
	cmp r0, #0x1a
	beq %4
	cmp r0, #0x1b
	bne %2
	adds r5, r4, #0
	adds r5, #0xf0
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq %2
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %1
	movs r1, #0
	bl sub_80401E4
1
	movs r0, #4
	strb r0, [r5, #8]
	movs r0, #0
	adds r4, #0xe0
	strh r0, [r4, #0x1a]
	ldr r0, _080164A0
	ldr r0, [r0]
	adds r0, #0xff
	adds r0, #1
	bl sub_8028C2E
2
	pop {r3, r4, r5}
	pop {r3}
	bx r3
3
	adds r0, r4, #0
	bl sub_80162D6
	b %2
4
	adds r0, r4, #0
	bl sub_8016176
	b %2
	thumb_func_end sub_80163D4

