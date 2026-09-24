	thumb_func_start sub_803F904
	push {r4}
	cmp r3, #0xff
	bne %1
	ldrb r3, [r0, #9]
1
	ldr r0, [r0, #4]
	lsls r2, r2, #4
	adds r0, r0, r2
	ldrh r4, [r0, #4]
	ldr r2, [r0, #8]
	ldr r0, [r0, #0xc]
	lsls r1, r4
	adds r1, r2, r1
	lsls r2, r3, #2
	ldr r1, [r1, r2]
	pop {r4}
	adds r0, r0, r1
	bx lr
	ALIGN
	thumb_func_end sub_803F904

