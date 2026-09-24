	thumb_func_start sub_800BBF4
	push {r4, r5, r6, r7}
	movs r2, #0xf
	lsls r2, r2, #6
	adds r2, r0, r2
	movs r3, #0
	cmp r1, #0
	ldrb r7, [r2]
	bls %2
	movs r6, #0x1d
	lsls r6, r6, #5
1
	ldrb r4, [r2]
	adds r3, #1
	lsls r5, r4, #1
	adds r5, r5, r0
	adds r5, r5, r6
	ldrh r5, [r5]
	lsls r4, r4, #1
	adds r4, r4, r0
	strb r5, [r2]
	ldr r5, _0800BFF4
	adds r4, r4, r6
	strh r5, [r4]
	cmp r3, r1
	blo %1
2
	ldrb r0, [r2, #1]
	adds r0, r0, r1
	strb r0, [r2, #1]
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_800BBF4

