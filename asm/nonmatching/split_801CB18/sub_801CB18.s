	thumb_func_start sub_801CB18
sub_801CB18
	adds r3, r0, #0
	adds r3, #0xff
	adds r3, #0x81
	push {r4, r5, r6, r7}
	ldr r0, [r3, #0x30]
	lsls r4, r1, #1
	ldrh r5, [r0, r4]
	adds r4, r1, r2
	adds r6, r4, #0
	subs r4, #1
	cmp r4, r1
	bls %2
1
	ldr r0, [r3, #0x30]
	lsls r2, r1, #1
	adds r7, r0, r2
	ldrh r7, [r7, #2]
	adds r1, #1
	cmp r4, r1
	strh r7, [r0, r2]
	bhi %1
2
	ldr r0, [r3, #0x30]
	lsls r1, r6, #1
	adds r0, r0, r1
	subs r0, #0x20
	strh r5, [r0, #0x1e]
	pop {r4, r5, r6, r7}
	bx lr

