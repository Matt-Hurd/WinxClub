	thumb_func_start sub_8037CC0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_802E47A
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq %1
	ldr r0, _08037E3C
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
1
	pop {r4}
	pop {r3}
	bx r3
	thumb_func_end sub_8037CC0

