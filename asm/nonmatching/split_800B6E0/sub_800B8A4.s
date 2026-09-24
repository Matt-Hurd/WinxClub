	thumb_func_start sub_800B8A4
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0800BBA0
	adds r5, r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_8000CCE
	ldr r0, _0800BB98
	ldr r1, _0800BB9C
	str r0, [r4]
	movs r0, #0
	str r0, [r1]
	cmp r5, #0
	beq %12
	adds r0, r4, #0
	bl sub_803DA18
12
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_800B8A4

