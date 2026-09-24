	thumb_func_start sub_8017DD4
	push {r3, lr}
	add r0, pc, #0x54
	bl maybeLoadOrRenderBgImage
	bl FadeToImage
	add sp, #4
	pop {r3}
	bx r3
	thumb_func_end sub_8017DD4

