	thumb_func_start sub_8005220
	ldr r2, [r0, #8]
	lsls r2, r2, #0x1f
	bpl %15
	subs r1, #0xc
	ldr r2, [r1, #8]
	ldr r3, [r0, #0xc]
	lsrs r2, r2, #8
	adds r2, #7
	lsrs r2, r2, #3
	lsls r2, r2, #3
	adds r2, #0xc
	subs r2, r3, r2
	str r2, [r0, #0xc]
	ldm r1!, {r2, r3}
	subs r1, #8
	str r2, [r3]
	ldm r1!, {r1, r2}
	str r2, [r1, #4]
	ldr r1, [r0, #8]
	lsls r2, r1, #0x1f
	subs r1, #2
	lsrs r1, r1, #1
	lsrs r2, r2, #0x1f
	lsls r1, r1, #1
	orrs r1, r2
	str r1, [r0, #8]
15
	bx lr
	thumb_func_end sub_8005220
