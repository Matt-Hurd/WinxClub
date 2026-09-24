	thumb_func_start sub_800C0EC
sub_800C0EC
	push {r4, r5, r6, r7}
	movs r3, #0
	subs r4, r2, #1
	beq %45
	movs r7, #0x1d
	lsls r7, r7, #5
	subs r6, r2, #1
44
	adds r4, r1, r3
	adds r5, r4, #0
	adds r4, #1
	lsls r5, r5, #1
	adds r5, r5, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r5, r5, r7
	adds r3, #1
	cmp r3, r6
	strh r4, [r5]
	blo %44
45
	movs r3, #0xf
	lsls r3, r3, #6
	adds r3, r0, r3
	adds r5, r1, r2
	lsls r5, r5, #1
	adds r0, r5, r0
	movs r5, #7
	ldrb r4, [r3]
	lsls r5, r5, #7
	adds r0, r0, r5
	strh r4, [r0, #0x1e]
	strb r1, [r3]
	ldrb r0, [r3, #1]
	subs r0, r0, r2
	strb r0, [r3, #1]
	pop {r4, r5, r6, r7}
	bx lr

