	thumb_func_start sub_800F7A8
sub_800F7A8
	push {r4, lr}
	ldr r1, [r0]
	adds r4, r0, #0
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl __call_via_r1
	movs r1, #0x84
	ldrh r1, [r1, r4]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	cmp r1, r0
	bhs %6
	subs r0, r0, r1
5
	pop {r4}
	pop {r3}
	bx r3
6
	ldr r3, [r4, #8]
	movs r2, #1
	lsls r2, r3
	subs r1, r2, r1
	adds r0, r1, r0
	b %5

