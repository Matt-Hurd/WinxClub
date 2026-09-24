	thumb_func_start sub_802D23C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_802E47A
	ldr r0, [r4, #0x34]
	ldr r1, _0802D2D8
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	lsls r0, r0, #1
	ldrsh r1, [r1, r0]
	cmp r1, #0
	blt %68
	ldr r5, _0802D2DC
	lsls r1, r1, #0x18
	ldr r0, [r5]
	lsrs r4, r1, #0x13
	adds r0, r4, r0
	bl sub_8028BE4
	cmp r0, #0
	beq %68
	ldr r0, [r5]
	adds r0, r4, r0
	bl sub_80268AC
68
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_802D23C

