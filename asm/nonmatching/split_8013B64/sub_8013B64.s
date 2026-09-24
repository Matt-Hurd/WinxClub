	thumb_func_start sub_8013B64
	push {r3, lr}
	ldr r2, [r0]
	ldr r3, [r2, #0x4c]
	adds r2, r3, r2
	bl __call_via_r2
	add sp, #4
	pop {r3}
	bx r3
	thumb_func_end sub_8013B64

