	thumb_func_start sub_8018540
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	add r7, sp, #0x28
	ldm r7!, {r4, r5, r6, r7}
	subs r6, r4, r6
	subs r3, r2, r0
	mov ip, r3
	cmp r3, #0
	mov lr, r6
	bge %28
	adds r3, r2, #0
	adds r2, r0, #0
	b %29
28
	adds r3, r0, #0
29
	mov r6, lr
	cmp r6, #0
	ble %32
	ldr r6, [sp, #0x30]
	cmp r2, r6
	blt %30
	cmp r4, r3
	bge %34
30
	movs r0, #0
31
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
32
	cmp r2, r4
	blt %33
	ldr r6, [sp, #0x30]
	cmp r6, r3
	bge %34
33
	movs r0, #0
	b %31
34
	ldr r2, [sp, #0x10]
	subs r6, r5, r7
	subs r2, r2, r1
	str r2, [sp]
	cmp r2, #0
	bge %35
	adds r3, r1, #0
	ldr r2, [sp, #0x10]
	b %36
35
	ldr r3, [sp, #0x10]
	adds r2, r1, #0
36
	cmp r6, #0
	ble %38
	cmp r3, r7
	blt %37
	cmp r5, r2
	bge %40
37
	movs r0, #0
	b %31
38
	cmp r3, r5
	blt %39
	cmp r7, r2
	bge %40
39
	movs r0, #0
	b %31
40
	subs r0, r0, r4
	subs r1, r1, r5
	adds r2, r6, #0
	mov r3, lr
	muls r3, r1
	muls r2, r0
	subs r2, r2, r3
	ldr r3, [sp]
	mov r4, lr
	muls r3, r4
	mov r4, ip
	muls r4, r6
	subs r3, r3, r4
	cmp r3, #0
	ble %42
	cmp r2, #0
	blt %41
	cmp r2, r3
	ble %44
41
	movs r0, #0
	b %31
42
	cmp r2, #0
	bgt %43
	cmp r2, r3
	bge %44
43
	movs r0, #0
	b %31
44
	ldr r2, [sp]
	mov r4, ip
	muls r4, r1
	muls r2, r0
	subs r0, r4, r2
	cmp r3, #0
	ble %46
	cmp r0, #0
	blt %45
	cmp r0, r3
	ble %48
45
	movs r0, #0
	b %31
46
	cmp r0, #0
	bgt %47
	cmp r0, r3
	bge %48
47
	movs r0, #0
	b %31
48
	cmp r3, #0
	bne %49
	movs r0, #2
	b %31
49
	movs r0, #1
	b %31
	ALIGN
	thumb_func_end sub_8018540

