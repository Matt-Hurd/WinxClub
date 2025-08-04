	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003450
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003478
	IMPORT sub_8001B80
	IMPORT sub_801B332
	IMPORT sub_801BEB6
	IMPORT sub_801C210
	IMPORT sub_801C352
	IMPORT sub_801F4F0
	IMPORT sub_801F65C
	IMPORT sub_801F6DE
	IMPORT sub_802222C
	IMPORT sub_80293D0
	IMPORT __call_via_r1
	IMPORT __call_via_r4
	IMPORT __call_via_r6
	IMPORT __call_via_r7
	IMPORT __16__rt_sdiv
	IMPORT sub_803F1AC
	IMPORT sub_803F23C
	IMPORT sub_803FD5C
	IMPORT sub_803FF24

	thumb_func_start sub_801C4A4
sub_801C4A4
	push {r4, r5, r6, r7, lr}
	mov lr, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r4, [r1, #0x20]
	sub sp, #0x14
	ldr r1, [r4, #0x7c]
	movs r2, #5
	lsls r2, r2, #8
	movs r5, #0
	str r1, [sp, #0x10]
	lsrs r1, r1, #0x1f
	mvns r5, r5
	adds r6, r0, r2
	cmp r1, #0
	beq %13
	ldr r2, [r6, #0x1c]
	movs r1, #0
	lsls r2, r2, #0x18
	str r2, [sp, #0xc]
	lsrs r2, r2, #0x19
	beq %14
1
	lsls r2, r1, #2
	adds r2, r2, r0
	ldr r5, [r2, #0x20]
	ldr r3, [r5, #0x2c]
	ldr r2, [r3]
	mov ip, r3
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x1f
	bne %15
	movs r2, #0x8c
	ldr r2, [r2, r5]
	lsls r2, r2, #0x13
	lsrs r2, r2, #0x1f
	beq %15
	cmp lr, r1
	beq %15
	ldr r2, [r4, #0x34]
	movs r6, #0
2
	lsls r3, r6, #2
	adds r3, r3, r5
	ldr r3, [r3, #0x38]
	cmp r3, #0
	beq %3
	ldr r3, [r3, #4]
	cmp r3, r2
	beq %4
3
	adds r6, #1
	cmp r6, #5
	blo %2
	movs r6, #0
	mvns r6, r6
4
	adds r3, r6, #1
	beq %18
	lsls r3, r6, #2
	adds r3, r3, r5
	ldr r3, [r3, #0x38]
	ldr r3, [r3, #4]
	cmp r2, r3
	bne %15
	movs r0, #0x97
	ldrb r0, [r0, r4]
	cmp r0, #4
	beq %5
	cmp r0, #6
	bne %6
5
	movs r1, #1
	b %7
6
	movs r1, #0
7
	movs r0, #0x97
	ldrb r0, [r0, r5]
	cmp r0, #4
	beq %8
	cmp r0, #6
	bne %9
8
	movs r0, #1
	b %10
9
	movs r0, #0
10
	adds r0, r1, r0
	cmp r0, #1
	beq %12
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x34]
	movs r7, #0
	adds r4, r2, r1
	movs r2, #1
	adds r1, r5, #0
	adds r3, r7, #0
	bl __call_via_r4
	lsls r0, r6, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x38]
	movs r2, #1
	ldr r1, [r0, #0x34]
	lsls r2, r2, #0x14
	bics r1, r2
	str r1, [r0, #0x34]
	str r7, [r0, #0xc]
11
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
12
	lsls r0, r6, #2
	adds r6, r0, r5
	ldr r0, [r6, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #0x1c]
	adds r1, r2, r1
	bl __call_via_r1
	adds r3, r0, #0
	ldr r0, [r4]
	movs r2, #1
	ldr r1, [r0, #0x34]
	adds r7, r1, r0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __call_via_r7
	cmp r0, #0
	ldr r0, [r6, #0x38]
	beq %17
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r1, r2, r1
	bl __call_via_r1
	b %16
13
	b %29
14
	b %28
15
	b %27
16
	b %11
17
	movs r2, #1
	ldr r1, [r0, #0x34]
	lsls r2, r2, #0x14
	bics r1, r2
	str r1, [r0, #0x34]
	movs r6, #0
	str r6, [r0, #0xc]
	b %11
18
	ldr r3, [r5, #0x30]
	cmp r2, r3
	beq %19
	cmp r2, ip
	bne %27
19
	movs r0, #0x97
	ldrb r0, [r0, r4]
	cmp r0, #4
	beq %20
	cmp r0, #6
	bne %21
20
	movs r1, #1
	b %22
21
	movs r1, #0
22
	movs r0, #0x97
	ldrb r0, [r0, r5]
	cmp r0, #4
	beq %23
	cmp r0, #6
	bne %24
23
	movs r0, #1
	b %25
24
	movs r0, #0
25
	adds r0, r1, r0
	cmp r0, #1
	beq %26
	ldr r1, [r4]
	movs r6, #0
	ldr r2, [r1, #0x34]
	adds r3, r6, #0
	adds r7, r2, r1
	movs r2, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl __call_via_r7
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x34]
	adds r3, r6, #0
	adds r7, r2, r1
	movs r2, #0
	adds r1, r4, #0
	bl __call_via_r7
	b %11
26
	ldr r1, [r4]
	movs r6, #1
	ldr r2, [r1, #0x34]
	adds r3, r6, #0
	adds r7, r2, r1
	movs r2, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl __call_via_r7
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x34]
	adds r3, r6, #0
	adds r7, r2, r1
	movs r2, #0
	adds r1, r4, #0
	bl __call_via_r7
	b %11
27
	ldr r2, [sp, #0xc]
	adds r1, #1
	lsrs r2, r2, #0x19
	cmp r2, r1
	bls %28
	b %1
28
	ldr r1, [sp, #0x10]
	lsls r0, r1, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r6, #0
	str r6, [r4, #0x34]
	b %11
29
	movs r1, #0
30
	lsls r2, r1, #2
	adds r2, r2, r4
	ldr r2, [r2, #0x38]
	cmp r2, #0
	beq %31
	ldr r2, [r2, #0x34]
	lsls r2, r2, #0xb
	lsrs r2, r2, #0x1f
	bne %32
31
	adds r1, #1
	cmp r1, #5
	blo %30
	adds r1, r5, #0
32
	adds r3, r1, #1
	beq %16
	lsls r1, r1, #2
	adds r7, r1, r4
	ldr r1, [r7, #0x38]
	ldr r2, [r1, #0xc]
	ldr r3, [r6, #0x1c]
	mov ip, r1
	lsls r3, r3, #0x18
	str r3, [sp, #8]
	movs r1, #0
	lsrs r3, r3, #0x19
	beq %45
33
	lsls r3, r1, #2
	adds r3, r3, r0
	ldr r5, [r3, #0x20]
	ldr r3, [r5, #0x2c]
	str r3, [sp, #4]
	ldr r3, [r3]
	lsls r3, r3, #0x16
	lsrs r3, r3, #0x1f
	bne %47
	movs r3, #0x8c
	ldr r3, [r3, r5]
	lsls r3, r3, #0x13
	lsrs r3, r3, #0x1f
	beq %47
	cmp lr, r1
	beq %47
	movs r6, #0
34
	lsls r3, r6, #2
	adds r3, r3, r5
	ldr r3, [r3, #0x38]
	cmp r3, #0
	beq %35
	ldr r3, [r3, #4]
	cmp r3, r2
	beq %36
35
	adds r6, #1
	cmp r6, #5
	blo %34
	movs r6, #0
	mvns r6, r6
36
	adds r3, r6, #1
	beq %37
	lsls r3, r6, #2
	adds r3, r3, r5
	ldr r3, [r3, #0x38]
	ldr r3, [r3, #4]
	cmp r3, r2
	bne %47
	mov r0, ip
	ldr r0, [r0]
	ldr r1, [r0, #0x20]
	adds r1, r1, r0
	mov r0, ip
	bl __call_via_r1
	lsls r0, r6, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r1, r2, r1
	bl __call_via_r1
	b %11
37
	ldr r3, [r5, #0x30]
	cmp r3, r2
	beq %38
	ldr r3, [sp, #4]
	cmp r3, r2
	bne %47
38
	movs r0, #0x97
	ldrb r0, [r0, r4]
	cmp r0, #4
	beq %39
	cmp r0, #6
	bne %40
39
	movs r1, #1
	b %41
40
	movs r1, #0
41
	movs r0, #0x97
	ldrb r0, [r0, r5]
	cmp r0, #4
	beq %42
	cmp r0, #6
	bne %43
42
	movs r0, #1
	b %44
43
	movs r0, #0
44
	adds r0, r1, r0
	cmp r0, #1
	beq %48
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x34]
	movs r6, #0
	adds r3, r2, r1
	adds r1, r4, #0
	adds r4, r3, #0
	movs r2, #1
	adds r3, r6, #0
	bl __call_via_r4
	cmp r0, #0
	ldr r0, [r7, #0x38]
	beq %46
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r1, r2, r1
	bl __call_via_r1
	b %11
45
	b %51
46
	movs r2, #1
	ldr r1, [r0, #0x34]
	lsls r2, r2, #0x14
	bics r1, r2
	str r1, [r0, #0x34]
	str r6, [r0, #0xc]
	b %11
47
	b %50
48
	mov r0, ip
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	adds r1, r1, r0
	mov r0, ip
	bl __call_via_r1
	adds r3, r0, #0
	ldr r0, [r5]
	movs r2, #1
	ldr r1, [r0, #0x34]
	adds r6, r1, r0
	adds r1, r4, #0
	adds r0, r5, #0
	bl __call_via_r6
	cmp r0, #0
	ldr r0, [r7, #0x38]
	beq %49
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r1, r2, r1
	bl __call_via_r1
	b %11
49
	movs r2, #1
	ldr r1, [r0, #0x34]
	lsls r2, r2, #0x14
	bics r1, r2
	str r1, [r0, #0x34]
	movs r6, #0
	str r6, [r0, #0xc]
	b %11
50
	ldr r3, [sp, #8]
	adds r1, #1
	lsrs r3, r3, #0x19
	cmp r3, r1
	bls %51
	b %33
51
	mov r0, ip
	ldr r1, [r0, #0x34]
	movs r2, #1
	lsls r2, r2, #0x14
	bics r1, r2
	str r1, [r0, #0x34]
	movs r6, #0
	str r6, [r0, #0xc]
	b %11

	non_word_aligned_thumb_func_start MaybeTickAllGameObjs
MaybeTickAllGameObjs
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x29
	lsls r0, r0, #5
	adds r4, r5, r0
	ldrb r1, [r4]
	subs r0, #0x20
	adds r6, r5, r0
	movs r2, #1
	lsls r2, r2, #9
	cmp r1, #0
	ldr r0, [r6, #0x1c]
	sub sp, #0x1c
	beq %52
	lsls r1, r0, #0x16
	bmi %53
	orrs r0, r2
	str r0, [r6, #0x1c]
	movs r1, #1
	adds r0, r5, #0
	bl sub_803F1AC
	b %53
52
	lsls r1, r0, #0x16
	bpl %53
	bics r0, r2
	str r0, [r6, #0x1c]
	movs r1, #0
	adds r0, r5, #0
	bl sub_803F1AC
53
	ldrb r0, [r4, #1]
	movs r1, #1
	lsls r1, r1, #0xa
	cmp r0, #0
	ldr r0, [r6, #0x1c]
	beq %54
	lsls r2, r0, #0x15
	bmi %55
	orrs r0, r1
	str r0, [r6, #0x1c]
	movs r1, #1
	adds r0, r5, #0
	bl sub_803F23C
	b %55
54
	lsls r2, r0, #0x15
	bpl %55
	bics r0, r1
	str r0, [r6, #0x1c]
	movs r1, #0
	adds r0, r5, #0
	bl sub_803F23C
55
	ldrb r0, [r4, #2]
	movs r1, #1
	lsls r1, r1, #0xb
	cmp r0, #0
	ldr r0, [r6, #0x1c]
	beq %56
	lsls r2, r0, #0x14
	bmi %57
	orrs r0, r1
	str r0, [r6, #0x1c]
	b %57
56
	lsls r2, r0, #0x14
	bpl %57
	bics r0, r1
	str r0, [r6, #0x1c]
57
	ldr r0, [r6, #0x1c]
	movs r7, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	beq %62
58
	lsls r0, r7, #2
	adds r0, r0, r5
	ldr r4, [r0, #0x20]
	cmp r7, #0
	beq %59
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1f
	beq %59
	movs r0, #0x94
	ldr r0, [r0, r4]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1f
	bne %59
	ldr r0, _0801CB08
	movs r1, #3
	ldr r0, [r0]
	lsls r1, r1, #9
	adds r0, #4
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq %66
59
	ldrh r0, [r4, #4]
	cmp r0, #0x10
	beq %67
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0xc]
	adds r1, r2, r1
	bl __call_via_r1
	adds r1, r7, #0
	adds r0, r5, #0
	bl sub_801C4A4
	adds r2, r4, #0
	adds r2, #0x80
	str r2, [sp, #0x18]
	ldr r1, [r2, #4]
	movs r3, #0xff
	lsls r0, r1, #0x18
	lsls r3, r3, #8
	bics r1, r3
	lsrs r0, r0, #0x10
	orrs r0, r1
	str r0, [r2, #4]
	ldr r0, _0801CB0C
	ldr r0, [r0]
	ldr r1, [r4, #0x58]
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x10
	adds r1, r2, r1
	movs r2, #0x13
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [sp, #0x14]
	ldr r0, [r0, #0x20]
	asrs r1, r1, #0x10
	ldr r2, [r0, #0x54]
	ldr r2, [r2, #4]
	lsls r3, r2, #5
	lsrs r3, r3, #0x1d
	asrs r1, r3
	str r1, [sp, #4]
	ldr r1, [r4, #0x5c]
	lsls r2, r2, #2
	asrs r3, r1, #0x1f
	lsrs r3, r3, #0x10
	adds r1, r3, r1
	asrs r1, r1, #0x10
	lsrs r2, r2, #0x1d
	asrs r1, r2
	str r1, [sp, #8]
	ldr r0, [r0, #0x50]
	str r0, [sp, #0x10]
	ldr r0, [r0]
	str r0, [sp, #0xc]
	lsls r0, r0, #0x1f
	bpl %60
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #4]
	ldrh r0, [r0, #0xc]
	bl __16__rt_sdiv
	str r1, [sp, #4]
60
	ldr r0, [sp, #0xc]
	lsls r0, r0, #0x1e
	bpl %61
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #8]
	ldrh r0, [r0, #0xe]
	bl __16__rt_sdiv
	str r1, [sp, #8]
61
	movs r2, #1
	movs r1, #0
	ldr r0, [sp, #0x10]
	bl sub_8001B80
	ldr r1, [r0]
	movs r2, #0xff
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	adds r2, #1
	cmp r1, r2
	ldr r0, [r0, #0x10]
	bhi %64
	ldr r1, [sp, #4]
	ldr r2, [sp, #0x14]
	adds r0, r0, r1
	ldr r1, [sp, #8]
	ldr r2, [r2, #0x20]
	b %63
62
	b %72
63
	ldr r2, [r2, #0x50]
	ldrh r2, [r2, #0xc]
	muls r1, r2
	ldrb r0, [r0, r1]
	b %65
64
	ldr r1, [sp, #4]
	ldr r2, [sp, #0x14]
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [sp, #8]
	ldr r2, [r2, #0x20]
	ldr r2, [r2, #0x50]
	ldrh r2, [r2, #0xc]
	muls r1, r2
	lsls r1, r1, #1
	ldrh r0, [r0, r1]
65
	ldr r2, [sp, #0x18]
	lsls r0, r0, #0x18
	ldr r1, [r2, #4]
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	b %68
66
	b %70
67
	b %69
68
	orrs r0, r1
	str r0, [r2, #4]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x14]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl __call_via_r1
	adds r0, r4, #0
	bl sub_801F4F0
	adds r0, r4, #0
	bl sub_801F6DE
	b %71
69
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0xc]
	adds r1, r2, r1
	bl __call_via_r1
	adds r0, r4, #0
	bl sub_801F4F0
	adds r0, r4, #0
	bl sub_801F6DE
	b %71
70
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #8
	lsrs r0, r0, #0x18
	beq %71
	ldr r1, _0801CB10
	movs r0, #8
	ldr r1, [r1]
	ands r1, r0
	beq %71
	adds r0, r4, #0
	bl sub_801F65C
71
	ldr r0, [r6, #0x1c]
	adds r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, r7
	bls %72
	b %58
72
	adds r0, r5, #0
	bl sub_801C352
	adds r0, r5, #0
	bl sub_801C210
	adds r0, r5, #0
	bl sub_801BEB6
	ldr r0, [r5, #0x20]
	bl sub_802222C
	adds r0, r5, #0
	bl sub_801B332
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801CA1E
sub_801CA1E
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	movs r0, #5
	lsls r0, r0, #8
	adds r0, r2, r0
	ldm r1!, {r6, r7}
	ldr r0, [r0, #0x1c]
	movs r1, #0
	lsls r3, r0, #0x18
	lsrs r0, r3, #0x19
	sub sp, #0xc
	beq %75
73
	lsls r0, r1, #2
	adds r4, r0, r2
	ldr r0, [r4, #0x20]
	ldrh r5, [r0, #4]
	cmp r5, #0xa
	bne %76
	movs r5, #0xac
	ldr r5, [r5, r0]
	lsls r5, r5, #5
	lsrs r5, r5, #0x17
	cmp r5, #0x2c
	bne %76
	movs r1, #0x2c
	bl sub_80293D0
	ldr r0, [r4, #0x20]
	ldr r2, _0801CB14
	adds r0, #0x80
	ldr r1, [r0, #0x2c]
	movs r3, #0
	ands r1, r2
	movs r2, #0x33
	lsls r2, r2, #6
	adds r1, r1, r2
	str r1, [r0, #0x2c]
	str r3, [r0, #0x1c]
	movs r2, #0
	ldr r0, _0801CB0C
	str r2, [sp]
	ldr r0, [r0]
	movs r1, #0
	bl sub_803FD5C
	ldr r5, [r4, #0x20]
	cmp r6, #0
	str r6, [r5, #0x58]
	str r7, [r5, #0x5c]
	bne %74
	cmp r7, #0
	bne %74
	str r6, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	str r6, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #0x30]
	add r1, sp, #4
	bl sub_803FF24
74
	ldr r0, [r4, #0x20]
	movs r2, #1
	adds r0, #0x80
	ldr r1, [r0, #0x14]
	lsls r2, r2, #0xb
	bics r1, r2
	orrs r1, r2
	str r1, [r0, #0x14]
75
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
76
	adds r1, #1
	lsrs r0, r3, #0x19
	cmp r0, r1
	bhi %73
	b %75

	thumb_func_start sub_801CAC0
sub_801CAC0
	movs r2, #5
	lsls r2, r2, #8
	adds r2, r0, r2
	push {r4, r5, r6}
	ldr r3, [r2, #0x1c]
	movs r1, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x19
	beq %79
	movs r3, #1
	lsls r3, r3, #0xb
	movs r4, #0
77
	lsls r5, r1, #2
	adds r5, r5, r0
	ldr r5, [r5, #0x20]
	ldrh r6, [r5, #4]
	cmp r6, #0xa
	bne %78
	adds r5, #0x80
	ldr r6, [r5, #0x2c]
	lsls r6, r6, #5
	lsrs r6, r6, #0x17
	cmp r6, #0x2c
	bne %78
	ldr r6, [r5, #0x14]
	bics r6, r3
	orrs r6, r4
	str r6, [r5, #0x14]
78
	ldr r5, [r2, #0x1c]
	adds r1, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x19
	cmp r5, r1
	bhi %77
79
	pop {r4, r5, r6}
	bx lr
	ALIGN
_0801CB08 DCDU gUnknown_03003454
_0801CB0C DCDU gUnknown_03003450
_0801CB10 DCDU gUnknown_03003478
_0801CB14 DCDU 0xFFFF000F
	END
