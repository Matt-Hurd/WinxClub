	thumb_func_start sub_8016CE0
	push {r3, lr}
	ldr r0, [r1]
	movs r3, #4
	ldrsh r0, [r0, r3]
	ldr r1, _08016D68
	ldr r1, [r1]
	cmp r0, #0
	blt %46
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_8028C2E
45
	add sp, #4
	pop {r3}
	bx r3
46
	NEGS r0, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_80268AC
	b %45
	thumb_func_end sub_8016CE0

