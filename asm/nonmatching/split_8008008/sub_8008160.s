	thumb_func_start sub_8008160
sub_8008160
	ldr r0, _080081C4
	ldr r1, [r0]
	ldr r0, [r0, #4]
	cmp r1, #0
	beq %11
	adds r1, r0, #0
	b %12
11
	movs r1, #0
12
	ldr r2, _080081C8
	ldrh r2, [r2, #8]
	movs r3, #1
	lsls r3, r3, #0x10
	subs r2, r3, r2
	lsls r2, r2, #6
	subs r0, r0, r2
	adds r0, r0, r1
	bx lr

