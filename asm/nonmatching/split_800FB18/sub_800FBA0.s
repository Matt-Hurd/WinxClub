	thumb_func_start sub_800FBA0
	push {r3, lr}
	adds r1, r0, #0
	bne %3
2
	add sp, #4
	pop {r3}
	bx r3
3
	ldr r0, _0800FD3C
	movs r3, #0
	movs r2, #0x48
	ldr r0, [r0]
	bl sub_800529A
	ldr r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	b %2
	thumb_func_end sub_800FBA0

