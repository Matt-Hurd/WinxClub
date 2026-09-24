	non_word_aligned_thumb_func_start sub_8033512
	push {r4, r5, r6, r7}
	ldr r2, [r1]
	ldr r3, [r0, #0x58]
	ldr r1, [r1, #4]
	subs r2, r2, r3
	ldr r3, [r0, #0x5c]
	NEGS r4, r2
	subs r3, r1, r3
	cmp r2, #0
	blt %12
	adds r4, r2, #0
12
	NEGS r5, r3
	cmp r3, #0
	blt %13
	adds r5, r3, #0
13
	movs r1, #0xf
	lsls r1, r1, #0x18
	ldr r7, [r0, #0x7c]
	mvns r1, r1
	movs r6, #1
	lsls r6, r6, #0x19
	ands r1, r7
	cmp r4, r5
	ble %16
	cmp r2, #0
	ble %15
	str r1, [r0, #0x7c]
14
	pop {r4, r5, r6, r7}
	bx lr
15
	adds r1, r1, r6
	str r1, [r0, #0x7c]
	b %14
16
	cmp r5, r4
	ble %18
	cmp r3, #0
	ble %17
	movs r2, #1
	lsls r2, r2, #0x18
	adds r1, r1, r2
	str r1, [r0, #0x7c]
	b %14
17
	movs r2, #3
	lsls r2, r2, #0x18
	adds r1, r1, r2
	str r1, [r0, #0x7c]
	b %14
18
	cmp r2, #0
	ble %19
	str r1, [r0, #0x7c]
	b %14
19
	adds r1, r1, r6
	str r1, [r0, #0x7c]
	b %14
	thumb_func_end sub_8033512

