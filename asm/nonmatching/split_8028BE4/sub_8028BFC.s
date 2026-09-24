	thumb_func_start sub_8028BFC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _08028C78
	ldr r0, [r0]
	cmp r0, #0
	beq %5
	movs r4, #0
3
	lsls r0, r4, #5
	adds r5, r0, r6
	ldr r0, [r5, #8]
	bl sub_80121C4
	cmp r0, #0
	beq %4
	adds r0, r5, #4
	bl sub_8012334
4
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r4, #0x98
	blo %3
5
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	thumb_func_end sub_8028BFC

