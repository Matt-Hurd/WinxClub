	thumb_func_start sub_80384D8
sub_80384D8
	push {r3, r4, r5, lr}
	ldr r4, _08038524
	movs r5, #0x49
	ldr r0, [r4]
	lsls r5, r5, #6
	adds r0, r5, r0
	bl sub_8028BE4
	cmp r0, #0
	beq %3
	ldr r0, [r4]
	adds r0, r5, r0
	bl sub_80268AC
3
	pop {r3, r4, r5}
	pop {r3}
	bx r3

