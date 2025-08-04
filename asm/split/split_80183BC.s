	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __16_ll_mulss
	IMPORT __16_ll_sdiv
	IMPORT __16_ll_shift_l
	IMPORT __16_ll_srdv
	IMPORT __16__rt_sdiv
	IMPORT Div
	IMPORT sub_8004C44
	IMPORT sub_803F3B4
	IMPORT sub_80404D8

	thumb_func_start sub_80183BC
sub_80183BC
	push {r4}
	movs r4, #1
	lsls r4, r4, #0xf
	lsls r2, r4, #0xf
	movs r1, #0
	cmp r0, r2
	blo %1
	subs r0, r0, r2
	lsrs r1, r2, #0xe
1
	movs r3, #1
	lsls r3, r3, #0xe
	adds r2, r1, r3
	lsls r2, r2, #0xe
	cmp r2, r0
	bhi %2
	subs r0, r0, r2
	orrs r1, r4
2
	movs r4, #1
	lsls r4, r4, #0xd
	adds r2, r1, r4
	lsls r2, r2, #0xd
	cmp r2, r0
	bhi %3
	subs r0, r0, r2
	orrs r1, r3
3
	movs r3, #1
	lsls r3, r3, #0xc
	adds r2, r1, r3
	lsls r2, r2, #0xc
	cmp r2, r0
	bhi %4
	subs r0, r0, r2
	orrs r1, r4
4
	movs r4, #1
	lsls r4, r4, #0xb
	adds r2, r1, r4
	lsls r2, r2, #0xb
	cmp r2, r0
	bhi %5
	subs r0, r0, r2
	orrs r1, r3
5
	movs r3, #1
	lsls r3, r3, #0xa
	adds r2, r1, r3
	lsls r2, r2, #0xa
	cmp r2, r0
	bhi %6
	subs r0, r0, r2
	orrs r1, r4
6
	movs r4, #1
	lsls r4, r4, #9
	adds r2, r1, r4
	lsls r2, r2, #9
	cmp r2, r0
	bhi %7
	subs r0, r0, r2
	orrs r1, r3
7
	adds r2, r1, #0
	adds r2, #0xff
	adds r2, #1
	lsls r2, r2, #8
	cmp r2, r0
	bhi %8
	subs r0, r0, r2
	orrs r1, r4
8
	adds r2, r1, #0
	adds r2, #0x80
	lsls r2, r2, #7
	cmp r2, r0
	bhi %9
	subs r0, r0, r2
	movs r2, #0xff
	adds r2, #1
	orrs r1, r2
9
	adds r2, r1, #0
	adds r2, #0x40
	lsls r2, r2, #6
	cmp r2, r0
	bhi %10
	subs r0, r0, r2
	movs r2, #0x80
	orrs r1, r2
10
	adds r2, r1, #0
	adds r2, #0x20
	lsls r2, r2, #5
	cmp r2, r0
	bhi %11
	subs r0, r0, r2
	movs r2, #0x40
	orrs r1, r2
11
	adds r2, r1, #0
	adds r2, #0x10
	lsls r2, r2, #4
	cmp r2, r0
	bhi %12
	subs r0, r0, r2
	movs r2, #0x20
	orrs r1, r2
12
	adds r2, r1, #0
	adds r2, #8
	lsls r2, r2, #3
	cmp r2, r0
	bhi %13
	subs r0, r0, r2
	movs r2, #0x10
	orrs r1, r2
13
	adds r2, r1, #4
	lsls r2, r2, #2
	cmp r2, r0
	bhi %14
	subs r0, r0, r2
	movs r2, #8
	orrs r1, r2
14
	adds r2, r1, #2
	lsls r2, r2, #1
	cmp r2, r0
	bhi %15
	subs r0, r0, r2
	movs r2, #4
	orrs r1, r2
15
	adds r2, r1, #1
	cmp r0, r2
	blo %16
	movs r0, #2
	orrs r1, r0
16
	lsrs r0, r1, #1
	pop {r4}
	bx lr

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

	thumb_func_start sub_8018540
sub_8018540
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

	thumb_func_start sub_8018620
sub_8018620
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	adds r1, r0, #0
	bl __16_ll_mulss
	add r6, pc, #0x344
	ldm r6!, {r2, r3}
	subs r6, #8
	bl __16_ll_sdiv
	adds r5, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #0
	bl __16_ll_mulss
	ldm r6!, {r2, r3}
	bl __16_ll_sdiv
	adds r0, r5, r0
	bl sub_8004C44
	lsls r5, r0, #8
	ldr r0, [r4]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	bl __16_ll_shift_l
	str r1, [sp]
	adds r2, r0, #0
	adds r0, r5, #0
	asrs r1, r5, #0x1f
	adds r6, r1, #0
	ldr r3, [sp]
	bl __16_ll_srdv
	str r0, [r4]
	ldr r0, [r4, #4]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	bl __16_ll_shift_l
	adds r2, r0, #0
	adds r0, r5, #0
	adds r3, r1, #0
	adds r1, r6, #0
	bl __16_ll_srdv
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8018688
sub_8018688
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	adds r6, r1, #0
	adds r1, r0, #0
	muls r1, r0
	ldr r0, [r4, #4]
	adds r2, r0, #0
	muls r0, r2
	adds r1, r1, r0
	ldr r0, [r4, #8]
	adds r2, r0, #0
	muls r2, r0
	adds r0, r1, r2
	bl sub_8004C44
	adds r5, r0, #0
	ldr r0, [r4]
	lsls r0, r0, #8
	adds r1, r5, #0
	bl Div
	str r0, [sp]
	ldr r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r5, #0
	bl Div
	adds r7, r0, #0
	ldr r0, [r4, #8]
	lsls r0, r0, #8
	adds r1, r5, #0
	bl Div
	ldr r1, [sp]
	str r0, [r6, #8]
	stm r6!, {r1, r7}
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_80186D8
sub_80186D8
	push {r4, r5, r6, r7, lr}
	ldr r3, [r0, #4]
	ldr r7, [r1, #8]
	adds r6, r3, #0
	ldr r4, [r0, #8]
	muls r6, r7
	ldr r5, [r1, #4]
	mov ip, r7
	adds r7, r4, #0
	muls r7, r5
	subs r6, r6, r7
	ldr r0, [r0]
	mov lr, r6
	ldr r1, [r1]
	adds r6, r0, #0
	mov r7, ip
	muls r4, r1
	muls r6, r7
	subs r4, r6, r4
	muls r1, r3
	muls r0, r5
	subs r0, r0, r1
	str r0, [r2, #8]
	str r4, [r2, #4]
	mov r6, lr
	str r6, [r2]
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8018712
sub_8018712
	push {r3, lr}
	ldr r1, [r0]
	adds r2, r1, #0
	muls r2, r1
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	adds r3, r1, #0
	muls r1, r3
	adds r1, r2, r1
	adds r2, r0, #0
	muls r0, r2
	adds r0, r1, r0
	bl sub_8004C44
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_8018734
sub_8018734
	push {r3, lr}
	ldr r1, [r0]
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x18
	adds r1, r2, r1
	asrs r1, r1, #8
	adds r2, r1, #0
	muls r2, r1
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	asrs r3, r1, #0x1f
	lsrs r3, r3, #0x18
	adds r1, r3, r1
	asrs r1, r1, #8
	adds r3, r1, #0
	muls r3, r1
	adds r1, r2, r3
	asrs r2, r0, #0x1f
	lsrs r2, r2, #0x18
	adds r0, r2, r0
	asrs r0, r0, #8
	adds r2, r0, #0
	muls r2, r0
	adds r0, r1, r2
	bl sub_8004C44
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801876E
sub_801876E
	push {lr}
	ldr r2, [r0]
	ldr r3, [r1]
	sub sp, #0xc
	subs r2, r2, r3
	str r2, [sp]
	ldr r2, [r0, #4]
	ldr r3, [r1, #4]
	subs r2, r2, r3
	str r2, [sp, #4]
	ldr r0, [r0, #8]
	ldr r1, [r1, #8]
	subs r0, r0, r1
	ldr r1, [sp]
	str r0, [sp, #8]
	adds r0, r1, #0
	muls r1, r0
	adds r0, r2, #0
	muls r0, r2
	adds r0, r1, r0
	bl sub_8004C44
	add sp, #0xc
	pop {r3}
	bx r3

	thumb_func_start sub_80187A0
sub_80187A0
	push {r3, lr}
	ldr r2, [r0]
	ldr r3, [r1]
	ldr r0, [r0, #4]
	ldr r1, [r1, #4]
	subs r2, r2, r3
	subs r0, r0, r1
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	lsrs r3, r3, #0x10
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	adds r2, r3, r2
	asrs r2, r2, #0x10
	adds r1, r2, #0
	muls r2, r1
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r0
	adds r0, r2, r1
	bl sub_8004C44
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80187D2
sub_80187D2
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	ldr r1, [r2]
	adds r7, r2, #0
	ldr r2, [r5]
	sub sp, #0xc
	subs r1, r1, r2
	str r1, [r3]
	ldr r1, [r7, #4]
	ldr r2, [r5, #4]
	adds r4, r3, #0
	subs r1, r1, r2
	adds r2, r3, #4
	str r2, [sp, #8]
	str r1, [r3, #4]
	ldr r1, [r7, #8]
	ldr r2, [r5, #8]
	subs r1, r1, r2
	str r1, [r4, #8]
	adds r1, r4, #0
	bl sub_803F3B4
	adds r6, r0, #0
	adds r1, r4, #0
	adds r0, r5, #0
	bl sub_803F3B4
	subs r6, r6, r0
	cmp r6, #0
	ble %52
	adds r1, r4, #0
	adds r0, r4, #0
	bl sub_803F3B4
	str r0, [sp, #4]
	cmp r6, r0
	bge %51
	adds r0, r6, #0
	asrs r1, r6, #0x1f
	movs r2, #8
	bl __16_ll_shift_l
	adds r2, r0, #0
	ldr r0, [sp, #4]
	adds r3, r1, #0
	asrs r1, r0, #0x1f
	bl __16_ll_srdv
	ldr r1, [r4]
	muls r1, r0
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x18
	adds r1, r2, r1
	ldr r2, [r4, #4]
	asrs r1, r1, #8
	muls r2, r0
	asrs r0, r2, #0x1f
	lsrs r0, r0, #0x18
	adds r0, r0, r2
	asrs r0, r0, #8
	str r0, [r4, #4]
	str r1, [r4]
	ldr r2, [r5]
	adds r1, r1, r2
	str r1, [r4]
	ldr r1, [r5, #4]
	ldr r2, [sp, #8]
	adds r0, r0, r1
	str r0, [r2]
	movs r0, #1
50
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
51
	ldr r0, [sp, #4]
	cmp r6, r0
	bne %53
	ldm r7!, {r0, r1}
	stm r4!, {r0, r1}
	movs r0, #1
	b %50
52
	cmp r6, #0
	bne %53
	ldm r5!, {r0, r1}
	stm r4!, {r0, r1}
	movs r0, #1
	b %50
53
	movs r0, #0
	b %50

	thumb_func_start sub_8018884
sub_8018884
	push {r4, r5, r6, r7, lr}
	adds r4, r3, #0
	ldr r3, [r0]
	ldr r0, [r0, #4]
	sub sp, #0x34
	asrs r3, r3, #8
	asrs r0, r0, #8
	str r0, [sp, #0x2c]
	str r3, [sp, #0x28]
	ldr r0, [r1]
	ldr r1, [r1, #4]
	asrs r0, r0, #8
	asrs r1, r1, #8
	str r1, [sp, #0x20]
	str r0, [sp, #0x1c]
	ldr r0, [r2]
	ldr r1, [r2, #4]
	asrs r0, r0, #8
	asrs r1, r1, #8
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x10]
	subs r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x20]
	add r6, sp, #4
	subs r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x24]
	add r7, sp, #0x1c
	subs r0, r0, r1
	str r0, [sp, #0xc]
	add r0, sp, #0x28
	adds r1, r6, #0
	bl sub_803F3B4
	adds r5, r0, #0
	adds r1, r6, #0
	adds r0, r7, #0
	bl sub_803F3B4
	subs r6, r5, r0
	cmp r6, #0
	ble %56
	add r0, sp, #4
	adds r1, r0, #0
	bl sub_803F3B4
	adds r5, r0, #0
	cmp r6, r0
	bge %55
	adds r0, r6, #0
	asrs r1, r6, #0x1f
	movs r2, #8
	bl __16_ll_shift_l
	adds r2, r0, #0
	adds r3, r1, #0
	adds r0, r5, #0
	asrs r1, r5, #0x1f
	bl __16_ll_srdv
	ldr r1, [sp, #4]
	muls r1, r0
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x18
	adds r1, r2, r1
	ldr r2, [sp, #8]
	asrs r1, r1, #8
	muls r2, r0
	asrs r0, r2, #0x1f
	lsrs r0, r0, #0x18
	adds r0, r0, r2
	asrs r0, r0, #8
	str r0, [sp, #8]
	adds r0, r1, #0
	str r1, [sp, #4]
	ldr r1, [sp, #0x1c]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x20]
	adds r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	lsls r0, r0, #8
	str r0, [r4]
	ldr r0, [sp, #8]
	lsls r0, r0, #8
	str r0, [r4, #4]
	movs r0, #1
54
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
55
	cmp r6, r5
	bne %57
	ldr r0, [sp, #0x10]
	lsls r0, r0, #8
	str r0, [r4]
	ldr r0, [sp, #0x14]
	lsls r0, r0, #8
	str r0, [r4, #4]
	movs r0, #1
	b %54
56
	cmp r6, #0
	bne %57
	ldr r0, [sp, #0x1c]
	lsls r0, r0, #8
	str r0, [r4]
	ldr r0, [sp, #0x20]
	lsls r0, r0, #8
	str r0, [r4, #4]
	movs r0, #1
	b %54
57
	movs r0, #0
	b %54
	ALIGN
_08018974 DCDU 0x00010000
_08018978 DCDU 0x00000000
	END
