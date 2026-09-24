	thumb_func_start sub_800F1E8
sub_800F1E8
	push {r4}
	movs r1, #0x11
	lsls r1, r1, #0xb
	str r1, [r0]
	movs r1, #0
	movs r4, #1
	movs r3, #0
1
	lsls r2, r1, #2
	adds r2, r2, r0
	str r3, [r2, #0x18]
	adds r1, #1
	cmp r1, #1
	str r4, [r2, #4]
	blo %1
	movs r1, #0
2
	lsls r2, r1, #2
	adds r2, r2, r0
	str r3, [r2, #0x10]
	str r4, [r2, #8]
	adds r2, r0, r1
	adds r2, #0x70
	adds r1, #1
	cmp r1, #2
	strb r3, [r2, #0xc]
	blo %2
	str r3, [r0, #0x34]
	pop {r4}
	bx lr

