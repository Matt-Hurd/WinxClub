	thumb_func_start sub_802F0B8
	push {r3, lr}
	subs r1, r0, #4
	ldr r0, _0802F114
	movs r3, #0
	movs r2, #0x90
	ldr r0, [r0]
	bl sub_800529A
	ldr r0, [r0]
	add sp, #4
	pop {r3}
	lsls r0, r0, #4
	lsrs r0, r0, #2
	bx r3
	thumb_func_end sub_802F0B8

