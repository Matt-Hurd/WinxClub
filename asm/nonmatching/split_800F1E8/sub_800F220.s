	thumb_func_start sub_800F220
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	bl __16__rt_memclr_w
	movs r0, #0x11
	lsls r0, r0, #0xb
	str r0, [r4]
	movs r0, #0
	movs r3, #1
	movs r2, #0
3
	lsls r1, r0, #2
	adds r1, r1, r4
	str r2, [r1, #0x18]
	adds r0, #1
	cmp r0, #1
	str r3, [r1, #4]
	blo %3
	movs r0, #0
4
	lsls r1, r0, #2
	adds r1, r1, r4
	str r2, [r1, #0x10]
	str r3, [r1, #8]
	adds r1, r4, r0
	adds r1, #0x70
	adds r0, #1
	cmp r0, #2
	strb r2, [r1, #0xc]
	blo %4
	str r2, [r4, #0x34]
	pop {r4}
	pop {r3}
	bx r3
	ALIGN
	thumb_func_end sub_800F220

