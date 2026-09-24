	thumb_func_start sub_80184BC
sub_80184BC
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r1, r0, #0
	adds r6, r0, #0
	adds r0, r4, #0
	movs r5, #0
	cmp r1, #0
	bge %17
	NEGS r1, r1
17
	cmp r0, #0
	bge %18
	NEGS r0, r0
18
	cmp r1, r0
	bge %19
	adds r2, r1, #0
	adds r1, r0, #0
	adds r0, r2, #0
	movs r5, #1
19
	cmp r0, #0
	beq %22
	lsls r3, r1, #4
	subs r1, r3, r1
	lsls r1, r1, #1
	bl __16__rt_sdiv
	cmp r0, #0
	bne %20
	movs r0, #0x5a
	b %23
20
	movs r1, #0xd7
	lsls r1, r1, #3
	cmp r0, #0x52
	blt %21
	bl __16__rt_sdiv
	b %23
21
	adds r0, #8
	bl __16__rt_sdiv
	b %23
22
	movs r0, #0
23
	cmp r5, #0
	beq %24
	movs r1, #0x5a
	subs r0, r1, r0
24
	lsls r1, r6, #0x10
	bpl %26
	lsls r1, r4, #0x10
	bpl %25
	adds r0, #0xb4
	b %27
25
	movs r1, #0xb4
	subs r0, r1, r0
	b %27
26
	lsls r1, r4, #0x10
	bpl %27
	movs r1, #0xff
	adds r1, #0x69
	subs r0, r1, r0
27
	lsls r0, r0, #8
	bl sub_80404D8
	pop {r4, r5, r6}
	pop {r3}
	adds r0, r1, #0
	bx r3

