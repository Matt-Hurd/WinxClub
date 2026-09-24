	thumb_func_start sub_8020A74
sub_8020A74
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r4, #0xa0
	adds r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq %137
	adds r0, r4, #0
	bl sub_802E3C6
	ldr r0, [r4]
	ldr r1, [r0, #0x10]
	adds r1, r1, r0
	adds r0, r4, #0
	bl __call_via_r1
137
	ldr r0, [r4]
	movs r3, #0
	ldr r1, [r0, #4]
	mvns r3, r3
	adds r6, r1, r0
	adds r1, r5, #0
	movs r2, #4
	adds r0, r4, #0
	bl __call_via_r6
	movs r0, #0
	adds r5, #0xff
	adds r5, #0x41
	strh r0, [r5, #2]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

