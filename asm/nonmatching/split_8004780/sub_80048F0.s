	thumb_func_start sub_80048F0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r0, #8]
	adds r6, r1, #0
	cmp r0, #0
	bne %15
14
	pop {r4, r5, r6}
	pop {r3}
	bx r3
15
	ldr r0, [r4, #4]
	ldr r1, [r4]
	adds r0, #2
	subs r5, r0, r1
	adds r5, #2
	cmp r6, #0
	beq %16
	subs r2, r5, #2
	adds r0, r6, #0
	bl __16__rt_memcpy
	ldrh r0, [r4, #8]
	adds r1, r6, r5
	subs r1, #0x20
	strh r0, [r1, #0x1e]
16
	adds r0, r5, #0
	b %14
	thumb_func_end sub_80048F0

