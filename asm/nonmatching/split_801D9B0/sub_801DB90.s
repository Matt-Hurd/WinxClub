	thumb_func_start sub_801DB90
sub_801DB90
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, [r1]
	adds r4, r0, #0
	ldrh r0, [r5, #4]
	ldr r3, [r4, #0x58]
	movs r6, #0
	mvns r6, r6
	asrs r1, r3, #0x10
	cmp r0, r1
	beq %24
	lsls r1, r0, #0x10
	b %25
24
	movs r1, #0
25
	ldrh r0, [r5, #6]
	ldr r2, [r4, #0x5c]
	asrs r7, r2, #0x10
	cmp r0, r7
	beq %26
	lsls r0, r0, #0x10
	b %27
26
	movs r0, #0
27
	ldrh r5, [r5, #8]
	movs r7, #0
	cmp r5, #2
	bne %34
	cmp r1, #0
	beq %34
	cmp r0, #0
	beq %34
	adds r5, r7, #0
	cmp r3, r1
	blt %28
	movs r5, #2
28
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	movs r6, #1
	cmp r2, r0
	blt %29
	movs r6, #3
29
	lsls r6, r6, #0x18
	asrs r6, r6, #0x18
	cmp r1, r0
	ble %31
	cmp r2, r0
	bge %30
	subs r2, r0, r2
	b %33
30
	subs r2, r2, r0
	b %33
31
	cmp r3, r1
	bge %32
	subs r2, r1, r3
	b %33
32
	subs r2, r3, r1
33
	add r0, pc, #0xEC
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	add r2, pc, #0xEC
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	b %50
34
	cmp r5, #3
	bne %41
	cmp r1, #0
	beq %41
	cmp r0, #0
	beq %41
	movs r6, #1
	cmp r2, r0
	blt %35
	movs r6, #3
35
	lsls r5, r6, #0x18
	asrs r5, r5, #0x18
	adds r6, r7, #0
	cmp r3, r1
	blt %36
	movs r6, #2
36
	lsls r6, r6, #0x18
	asrs r6, r6, #0x18
	cmp r1, r0
	ble %38
	cmp r2, r0
	bge %37
	subs r2, r0, r2
	b %40
37
	subs r2, r2, r0
	b %40
38
	cmp r3, r1
	bge %39
	subs r2, r1, r3
	b %40
39
	subs r2, r3, r1
40
	add r0, pc, #0x9C
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	add r2, pc, #0x9C
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	b %50
41
	cmp r1, #0
	beq %44
	cmp r5, #1
	bne %44
	cmp r0, #0
	beq %44
	movs r1, #1
	cmp r2, r0
	blt %42
	movs r1, #3
42
	lsls r5, r1, #0x18
	asrs r5, r5, #0x18
	cmp r2, r0
	bge %43
	subs r0, r0, r2
	b %50
43
	subs r0, r2, r0
	b %50
44
	cmp r1, #0
	beq %47
	adds r0, r7, #0
	cmp r3, r1
	blt %45
	movs r0, #2
45
	lsls r5, r0, #0x18
	asrs r5, r5, #0x18
	cmp r3, r1
	bge %46
	subs r0, r1, r3
	b %50
46
	subs r0, r3, r1
	b %50
47
	cmp r0, #0
	beq %52
	movs r1, #1
	cmp r2, r0
	blt %48
	movs r1, #3
48
	lsls r5, r1, #0x18
	asrs r5, r5, #0x18
	cmp r2, r0
	bge %49
	subs r0, r0, r2
	b %50
49
	subs r0, r2, r0
50
	cmp r0, #0
	ble %52
	movs r2, #0xf
	ldr r1, [r4, #0x7c]
	lsls r2, r2, #0x18
	bics r1, r2
	lsls r2, r5, #0x1c
	lsrs r2, r2, #4
	orrs r1, r2
	str r1, [r4, #0x7c]
	movs r1, #0x98
	strb r6, [r1, r4]
	str r0, [r4, #0x78]
	adds r4, #0x80
	str r7, [r4, #0x1c]
51
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
52
	str r7, [r4, #0x78]
	b %51
