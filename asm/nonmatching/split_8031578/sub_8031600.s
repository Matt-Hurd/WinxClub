	thumb_func_start sub_8031600
sub_8031600
	push {r4, r5, r6}
	add r5, sp, #0xc
	ldr r6, [r0, #0xc]
	ldm r5!, {r4, r5}
	lsls r1, r1, #4
	str r2, [r6, r1]
	ldr r2, [r0, #0xc]
	adds r2, r2, r1
	str r3, [r2, #4]
	ldr r2, [r0, #0xc]
	adds r2, r2, r1
	str r4, [r2, #8]
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	str r5, [r0, #0xc]
	pop {r4, r5, r6}
	bx lr

