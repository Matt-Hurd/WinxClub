	non_word_aligned_thumb_func_start sub_8036E66
	adds r1, r0, #0
	ldr r0, _08037100
	push {r4, r5}
	ldr r0, [r0]
	ldr r5, [r1, #0x58]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r2, [r0, #4]
	ldr r4, [r0]
	ldr r3, [r1, #0x5c]
	subs r0, r4, r5
	subs r1, r2, r3
	cmp r4, r5
	bge %14
	cmp r2, r3
	bge %10
	cmp r0, #0
	bge %6
	NEGS r0, r0
6
	cmp r1, #0
	bge %7
	NEGS r1, r1
7
	cmp r0, r1
	ble %9
	movs r0, #2
8
	pop {r4, r5}
	bx lr
9
	movs r0, #3
	b %8
10
	cmp r0, #0
	bge %11
	NEGS r0, r0
11
	cmp r1, #0
	bge %12
	NEGS r1, r1
12
	cmp r0, r1
	ble %13
	movs r0, #2
	b %8
13
	movs r0, #1
	b %8
14
	cmp r2, r3
	bge %18
	cmp r0, #0
	bge %15
	NEGS r0, r0
15
	cmp r1, #0
	bge %16
	NEGS r1, r1
16
	cmp r0, r1
	ble %17
	movs r0, #0
	b %8
17
	movs r0, #3
	b %8
18
	cmp r0, #0
	bge %19
	NEGS r0, r0
19
	cmp r1, #0
	bge %20
	NEGS r1, r1
20
	cmp r0, r1
	ble %21
	movs r0, #0
	b %8
21
	movs r0, #1
	b %8
	thumb_func_end sub_8036E66

