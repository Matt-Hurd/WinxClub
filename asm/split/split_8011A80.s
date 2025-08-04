	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003520
	IMPORT gUnknown_03003530
	IMPORT gUnknown_03003670
	IMPORT gUnknown_030037A0
	IMPORT gUnknown_03003BC8
	IMPORT sub_80115EC
	IMPORT sub_80116D4
	IMPORT sub_801197C
	IMPORT sub_80123E4
	IMPORT __call_via_r1
	IMPORT __call_via_r2
	IMPORT Div
	IMPORT sub_80409E4
	IMPORT sub_8040C38
	IMPORT sub_8040C78

	thumb_func_start sub_8011A80
sub_8011A80
	ldr r1, _08011D18
	push {r4, r5, r6}
	ldrh r0, [r1, #0x10]
	lsls r2, r0, #0x1f
	bpl %3
	ldr r2, _08011D1C
	ldr r3, _08011D20
	str r2, [r3, #4]
	mov r8, r8
	mov r8, r8
	movs r2, #0x11
	lsls r2, r2, #6
	adds r4, r3, #0
	strh r2, [r4, #6]
	ldr r4, _08011D18
	lsls r2, r0, #0x1e
	adds r4, #0x20
	cmp r2, #0
	ldr r5, _08011D24
	ldr r6, _08011D28
	bge %1
	str r6, [r5, #0x3c]
	str r4, [r1, #4]
	b %2
1
	str r4, [r5, #0x3c]
	str r6, [r1, #4]
2
	ldr r2, _08011D2C
	strh r2, [r3, #6]
	movs r2, #2
	eors r0, r2
	strh r0, [r1, #0x10]
3
	pop {r4, r5, r6}
	bx lr

	non_word_aligned_thumb_func_start sub_8011AC2
sub_8011AC2
	push {r4, r5, r6, lr}
	ldr r5, _08011D30
	ldr r6, _08011D18
	adds r4, r0, #0
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	subs r6, #0x24
	cmp r0, #0
	beq %4
	adds r1, r0, #0
	movs r0, #1
	ldr r2, [r6, #4]
	bl __call_via_r2
4
	ldrb r0, [r4, #2]
	ldr r2, [r6]
	lsls r1, r0, #2
	movs r0, #1
	bl __call_via_r2
	str r0, [r5, #0x20]
	ldrb r0, [r4, #3]
	ldrb r2, [r4, #2]
	lsls r0, r0, #2
	adds r1, r0, r4
	adds r1, #4
	movs r0, #0
	cmp r2, #0
	bls %6
5
	ldr r2, [r5, #0x20]
	lsls r3, r0, #2
	str r1, [r2, r3]
	ldr r2, [r1]
	adds r0, #1
	adds r2, #0x7f
	lsrs r2, r2, #2
	lsls r2, r2, #2
	adds r1, r1, r2
	ldrb r2, [r4, #2]
	cmp r2, r0
	bhi %5
6
	ldr r1, _08011D30
	movs r0, #0
	adds r1, #0x68
	strb r0, [r1, #7]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8011B22
sub_8011B22
	ldr r1, _08011D30
	str r0, [r1, #0x2c]
	bx lr

	thumb_func_start sub_8011B28
sub_8011B28
	cmp r0, #6
	bhs %13
	add r3, pc, #0x4
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
7
	DCB 0x02
8
	DCB 0x05
9
	DCB 0x13
10
	DCB 0x08
11
	DCB 0x0D
12
	DCB 0x10
loc_8011b3a
	ldr r0, _08011D30
	ldrh r0, [r0, #0xc]
	bx lr
loc_8011b40
	ldr r0, _08011D30
	ldrb r0, [r0, #7]
	bx lr
loc_8011b46
	ldr r1, _08011D30
	ldr r0, [r1, #0x18]
	ldrb r1, [r1, #7]
	ldrb r0, [r0, r1]
	bx lr
loc_8011b50
	ldr r0, _08011D30
	ldrb r0, [r0, #0xb]
	bx lr
loc_8011b56
	ldr r0, _08011D30
	ldrb r0, [r0, #0xa]
	bx lr
13
	movs r0, #0
	mvns r0, r0
	bx lr

	non_word_aligned_thumb_func_start sub_8011B62
sub_8011B62
	push {r4, lr}
	cmp r0, #8
	bhs %22
	add r3, pc, #0x4
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
14
	DCB 0x03
15
	DCB 0x08
16
	DCB 0x0D
17
	DCB 0x05
18
	DCB 0x24
19
	DCB 0x05
20
	DCB 0x32
21
	DCB 0x3F
loc_8011b78
	ldr r0, _08011D30
	strh r1, [r0, #0xc]
22
	pop {r4}
	pop {r3}
	bx r3
loc_8011b82
	adds r0, r1, #0
	ldr r1, _08011D30
	adds r0, #0xff
	strb r0, [r1, #7]
	b %22
loc_8011b8c
	ldr r0, _08011D18
	adds r0, #0x10
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	beq %24
	movs r3, #0x4c
	muls r0, r3
	ldr r3, _08011D34
	adds r0, r0, r3
	movs r2, #1
23
	subs r0, #0x4c
	strh r2, [r0, #4]
	cmp r0, r3
	bhi %23
24
	lsrs r0, r1, #0x10
	ldr r2, _08011D30
	adds r0, #0xff
	strb r0, [r2, #7]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_8040C38
	b %22
loc_8011bba
	cmp r1, #0xff
	bls %25
	movs r1, #0xff
25
	ldr r0, _08011D38
	ldr r4, _08011D30
	muls r0, r1
	strb r1, [r4, #0xb]
	lsrs r1, r0, #0x17
	ldr r0, _08011D18
	ldrh r0, [r0, #0x18]
	bl Div
	strh r0, [r4, #0xe]
	b %22
loc_8011bd6
	ldr r0, _08011D34
	cmp r1, #0
	beq %22
	movs r3, #2
26
	lsls r2, r1, #0x1f
	bpl %27
	ldrh r2, [r0, #4]
	orrs r2, r3
	strh r2, [r0, #4]
27
	adds r0, #0x4c
	lsrs r1, r1, #1
	bne %26
	b %22
loc_8011bf0
	ldr r0, _08011D34
	cmp r1, #0
	beq %22
	movs r3, #2
28
	lsls r2, r1, #0x1f
	bpl %29
	ldrh r2, [r0, #4]
	bics r2, r3
	strh r2, [r0, #4]
29
	adds r0, #0x4c
	lsrs r1, r1, #1
	bne %28
	b %22
30
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08011D30
	adds r5, r1, #0
	lsls r1, r1, #0x17
	movs r7, #0
	adds r0, #0x68
	cmp r1, #0
	blt %31
	strb r7, [r0, #7]
	str r4, [r0]
31
	ldr r6, _08011D30
	ldrh r1, [r6]
	lsls r1, r1, #0x1f
	bpl %33
	lsls r1, r5, #0x17
	bpl %32
	ldrh r1, [r6, #0xc]
	strh r1, [r0, #4]
	ldrb r1, [r6, #7]
	strb r1, [r0, #6]
	ldrb r1, [r6, #0xb]
	strb r1, [r0, #7]
	ldrb r1, [r6, #4]
	strb r1, [r0, #8]
	ldrb r1, [r6, #0xa]
	strb r1, [r0, #9]
32
	bl sub_80116D4
33
	ldr r6, _08011D30
	movs r0, #0
	strb r7, [r6, #3]
	strh r0, [r6, #0x10]
	strb r0, [r6, #0xa]
	ldrb r0, [r4, #5]
	ldr r3, _08011D38
	strb r0, [r6, #0xb]
	ldrb r0, [r4, #4]
	strb r0, [r6, #4]
	ldrb r0, [r4]
	strb r0, [r6, #2]
	ldrb r0, [r4, #5]
	muls r0, r3
	lsrs r1, r0, #0x17
	ldr r0, _08011D18
	ldrh r0, [r0, #0x18]
	bl Div
	strh r0, [r6, #0xe]
	movs r0, #0xff
	strb r0, [r6, #7]
	adds r0, r4, #0
	adds r0, #8
	str r0, [r6, #0x18]
	ldrb r0, [r4, #1]
	adds r0, #0xff
	strb r0, [r6, #8]
	ldrb r0, [r4, #2]
	strb r0, [r6, #9]
	ldrb r0, [r4]
	lsls r3, r0, #2
	adds r0, r3, r0
	adds r0, #7
	lsrs r0, r0, #3
	strb r0, [r6, #6]
	ldr r0, [r6, #0x24]
	ldr r6, _08011D18
	subs r6, #0x24
	cmp r0, #0
	beq %34
	adds r1, r0, #0
	movs r0, #2
	ldr r2, [r6, #4]
	bl __call_via_r2
34
	ldrb r0, [r4, #3]
	ldr r2, [r6]
	lsls r1, r0, #2
	movs r0, #2
	bl __call_via_r2
	ldr r6, _08011D30
	str r0, [r6, #0x24]
	ldrb r1, [r4, #1]
	ldr r2, [r6, #0x18]
	adds r1, #3
	lsrs r1, r1, #2
	lsls r1, r1, #2
	adds r1, r2, r1
	str r1, [r0]
	ldrb r1, [r4, #3]
	movs r0, #1
	cmp r1, #1
	bls %36
35
	ldr r1, [r6, #0x24]
	lsls r2, r0, #2
	adds r3, r1, r2
	subs r3, #0x40
	ldr r3, [r3, #0x3c]
	adds r0, #1
	ldr r7, [r3]
	lsls r7, r7, #2
	adds r3, r3, r7
	adds r3, #4
	str r3, [r1, r2]
	ldrb r1, [r4, #3]
	cmp r1, r0
	bhi %35
36
	movs r0, #0
	bl sub_8040C38
	ldrb r0, [r4]
	bl sub_80115EC
	ldr r1, _08011D18
	movs r0, #0
	adds r1, #0x10
	ldrb r2, [r1, #0xf]
	cmp r2, #0
	bls %38
	ldr r4, _08011D34
	movs r1, #1
37
	movs r3, #0x4c
	muls r3, r0
	adds r3, r3, r4
	adds r0, #1
	cmp r2, r0
	strh r1, [r3, #4]
	bhi %37
38
	bl sub_801197C
	strh r5, [r6]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08011D18 DCDU gUnknown_03003520
_08011D1C DCDU 0x84400004
_08011D20 DCDU REG_DMA1DAD
_08011D24 DCDU REG_SOUNDCNT
_08011D28 DCDU gUnknown_03003670
_08011D2C DCDU 0x0000B660
_08011D30 DCDU gUnknown_03003BC8
_08011D34 DCDU gUnknown_030037A0
_08011D38 DCDU 0x00333333

	thumb_func_start sub_8011D3C
sub_8011D3C
	adds r1, r0, #0
	ldr r0, _0801209C
	lsls r2, r1, #0x18
	ldr r0, [r0, #0x1c]
	lsrs r2, r2, #0x16
	adds r2, r0, r2
	ldr r2, [r2, #4]
	lsrs r1, r1, #8
	adds r0, r2, r0
	movs r2, #1
	lsls r1, r1, #8
	orrs r1, r2
	b %30

	non_word_aligned_thumb_func_start sub_8011D56
sub_8011D56
	ldr r1, _0801209C
	push {r3, r4, r5}
	ldrh r0, [r1]
	lsls r2, r0, #0x1f
	bpl %41
	movs r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldr r1, _080120A0
	ldrb r0, [r1, #0xf]
	cmp r0, #0
	beq %40
	ldr r4, _080120A4
39
	subs r0, #1
	movs r3, #0x4c
	muls r3, r0
	adds r3, r3, r4
	adds r3, #4
	ldrh r5, [r3]
	orrs r5, r2
	strh r5, [r3]
	cmp r0, #0
	bne %39
40
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	bne %41
	str r0, [sp]
	ldr r0, _080120A8
	mov r1, sp
	str r1, [r0]
	ldr r1, _080120A0
	adds r1, #0x10
	str r1, [r0, #4]
	ldr r1, _080120AC
	str r1, [r0, #8]
	ldr r2, [r0, #8]
	movs r2, #0
	str r2, [sp]
	mov r2, sp
	str r2, [r0]
	ldr r2, _080120B0
	str r2, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [r0, #8]
41
	pop {r3, r4, r5}
	bx lr

	non_word_aligned_thumb_func_start sub_8011DB2
sub_8011DB2
	ldr r2, _0801209C
	push {r4}
	ldrh r0, [r2]
	lsls r1, r0, #0x1e
	bpl %43
	movs r1, #2
	bics r0, r1
	strh r0, [r2]
	ldr r0, _080120A0
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	beq %43
	ldr r2, _080120A4
42
	subs r0, #1
	movs r3, #0x4c
	muls r3, r0
	adds r3, r3, r2
	adds r3, #4
	ldrh r4, [r3]
	bics r4, r1
	strh r4, [r3]
	cmp r0, #0
	bne %42
43
	pop {r4}
	bx lr

	thumb_func_start sub_8011DE4
sub_8011DE4
	ldr r3, _0801209C
	push {r4}
	movs r2, #0
	strh r2, [r3, #0x12]
	strh r0, [r3, #0x16]
	ldr r0, _080120A0
	ldr r1, _080120A4
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	beq %46
	movs r3, #0x10
44
	ldrh r2, [r1, #4]
	lsls r4, r2, #0x1f
	bmi %45
	orrs r2, r3
	strh r2, [r1, #4]
45
	subs r0, #1
	adds r1, #0x4c
	cmp r0, #0
	bne %44
46
	pop {r4}
	bx lr

	thumb_func_start sub_8011E10
sub_8011E10
	ldr r1, _0801209C
	movs r0, #1
	ldrh r1, [r1]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	cmp r1, #1
	beq %47
	movs r0, #0
47
	bx lr

	non_word_aligned_thumb_func_start sub_8011E22
sub_8011E22
	ldr r0, _0801209C
	ldrh r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	cmp r1, #1
	bne %48
	ldrh r0, [r0, #0x12]
	cmp r0, #0
	beq %48
	movs r0, #1
	bx lr
48
	movs r0, #0
	bx lr

	thumb_func_start sub_8011E3C
sub_8011E3C
	ldr r0, _0801209C
	movs r1, #2
	ldrh r0, [r0]
	ands r0, r1
	bx lr

	non_word_aligned_thumb_func_start sub_8011E46
sub_8011E46
	ldr r0, _0801209C
	movs r1, #0xff
	ldrh r0, [r0]
	adds r1, #1
	ands r0, r1
	bx lr

	non_word_aligned_thumb_func_start sub_8011E52
sub_8011E52
	ldr r1, _0801209C
	cmp r0, #0
	strh r0, [r1, #0x12]
	ldrh r2, [r1, #0x16]
	strh r2, [r1, #0x14]
	ble %49
	movs r0, #0
	strh r0, [r1, #0x16]
49
	bx lr

	thumb_func_start sub_8011E64
sub_8011E64
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	ldrh r5, [r2, #4]
	ldrh r4, [r2, #6]
	ldrh r0, [r2]
	sub sp, #8
	adds r6, r1, #0
	str r0, [sp]
	ldrh r0, [r2, #4]
	adds r7, r2, #0
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrh r0, [r1, #6]
	cmp r5, r4
	beq %50
	str r1, [sp, #4]
	ldrh r1, [r1, #4]
	ldr r2, [sp]
	subs r2, r2, r1
	mov ip, r2
	lsls r2, r4, #2
	adds r2, r2, r6
	ldrh r3, [r2, #4]
	ldrh r2, [r2, #6]
	subs r1, r3, r1
	subs r0, r2, r0
	mov r2, ip
	muls r0, r2
	bl Div
	ldr r1, [sp, #4]
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	strh r0, [r7, #2]
	b %51
50
	strh r0, [r7, #2]
51
	lsls r1, r4, #2
	adds r1, r1, r6
	ldr r0, [sp]
	ldrh r1, [r1, #4]
	adds r0, #1
	cmp r1, r0
	bhi %55
	ldrb r1, [r6, #1]
	adds r5, r4, #0
	adds r4, #1
	cmp r1, #0xff
	beq %52
	ldr r2, [sp, #8]
	lsls r2, r2, #0x1d
	bmi %52
	cmp r1, r4
	bhs %52
	adds r4, r1, #0
	adds r5, r1, #0
	lsls r0, r1, #2
	adds r0, r0, r6
	ldrh r0, [r0, #4]
	b %55
52
	ldrb r2, [r6, #2]
	cmp r2, #0xff
	beq %54
	ldrb r1, [r6, #3]
	cmp r1, r4
	bhs %54
	adds r5, r2, #0
	cmp r1, r2
	beq %53
	adds r2, r5, #1
53
	adds r4, r2, #0
	lsls r0, r5, #2
	adds r0, r0, r6
	ldrh r0, [r0, #4]
	b %55
54
	ldrb r1, [r6]
	cmp r1, r4
	bhi %55
	subs r4, #1
	subs r0, #1
55
	strh r5, [r7, #4]
	strh r4, [r7, #6]
	strh r0, [r7]
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8011F0E
sub_8011F0E
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0801209C
	ldrh r0, [r7]
	lsls r1, r0, #0x1d
	bmi %68
	movs r1, #4
	ldr r5, _080120A0
	orrs r0, r1
	ldr r4, _080120A0
	subs r5, #0x10
	adds r6, r5, #0
	strh r0, [r7]
	movs r1, #0xb
	ands r0, r1
	adds r6, #0x10
	subs r4, #0x34
	cmp r0, #1
	bne %72
	ldr r5, [r5, #0xc]
	cmp r5, #0
	beq %62
56
	ldrh r0, [r7, #0x10]
	cmp r0, #0
	bne %71
	ldrh r0, [r7, #0xe]
	movs r3, #0x4c
	ldr r4, _080120A4
	strh r0, [r7, #0x10]
	ldrb r0, [r6, #0xf]
	muls r0, r3
	adds r0, r0, r4
	cmp r0, r4
	bls %60
57
	ldrh r0, [r4, #4]
	lsls r1, r0, #0x1f
	bmi %59
	ldr r1, [r4, #8]
	cmp r1, #0
	beq %59
	ldrb r2, [r1, #0x14]
	cmp r2, #0
	beq %59
	lsls r2, r0, #0x1d
	bpl %58
	ldr r2, [r4, #0x1c]
	ldr r3, [r1, #0x10]
	subs r2, r2, r3
	ldr r3, _080120B4
	str r2, [r4, #0x1c]
	cmp r2, r3
	bls %58
	movs r0, #1
	strh r0, [r4, #4]
	b %59
58
	movs r2, #0x10
	orrs r0, r2
	adds r2, r4, #0
	adds r1, #0x14
	adds r2, #0x20
	strh r0, [r4, #4]
	bl sub_8011E64
59
	ldrb r0, [r6, #0xf]
	movs r3, #0x4c
	ldr r1, _080120A4
	muls r0, r3
	adds r0, r0, r1
	adds r4, #0x4c
	cmp r0, r4
	bhi %57
60
	ldrb r0, [r7, #3]
	cmp r0, #0
	bne %69
	movs r3, #0x12
	ldrsh r1, [r7, r3]
	cmp r1, #0
	beq %67
	ldrh r0, [r7, #0x16]
	ldr r2, _080120A4
	adds r0, r0, r1
	cmp r1, #0
	ble %61
	ldrh r1, [r7, #0x14]
	cmp r1, r0
	bgt %61
	strh r1, [r7, #0x16]
	movs r0, #0
	strh r0, [r7, #0x12]
	b %64
61
	cmp r0, #0
	bgt %63
	bl sub_8011D56
	ldrh r0, [r7, #0x14]
	strh r0, [r7, #0x16]
	movs r0, #0
	strh r0, [r7, #0x12]
62
	b %78
63
	strh r0, [r7, #0x16]
64
	ldrb r0, [r6, #0xf]
	cmp r0, #0
	beq %67
	movs r3, #0x10
65
	ldrh r1, [r2, #4]
	lsls r4, r1, #0x1f
	bmi %66
	orrs r1, r3
	strh r1, [r2, #4]
66
	subs r0, #1
	adds r2, #0x4c
	cmp r0, #0
	bne %65
67
	bl sub_8040C78
	b %70
68
	b %79
69
	bl sub_80409E4
70
	ldrb r0, [r7, #3]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r7, #3]
	ldrb r1, [r7, #4]
	cmp r0, r1
	blo %71
	movs r0, #0
	strb r0, [r7, #3]
71
	ldrh r0, [r7, #0x10]
	adds r4, r5, #0
	cmp r0, r5
	b %73
72
	b %75
73
	bhi %74
	adds r4, r0, #0
74
	subs r5, r5, r4
	subs r0, r0, r4
	strh r0, [r7, #0x10]
	bl sub_80123E4
	adds r0, r4, #0
	ldr r4, _080120A0
	subs r4, #0x34
	ldr r1, [r4, #8]
	bl __call_via_r1
	cmp r5, #0
	bne %56
	b %78
75
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	beq %76
	bl sub_80123E4
	ldr r0, [r5, #0xc]
	ldr r1, [r4, #8]
	bl __call_via_r1
76
	ldrh r0, [r7]
	lsls r0, r0, #0x1c
	bpl %78
	ldr r6, _0801209C
	adds r6, #0x68
	ldrb r4, [r6, #7]
	cmp r4, #0
	beq %77
	movs r1, #5
	ldr r0, [r6]
	bl %30
	ldrb r0, [r6, #6]
	adds r0, #0xff
	strb r0, [r7, #7]
	ldr r0, _080120B8
	strb r4, [r7, #0xb]
	muls r0, r4
	lsrs r1, r0, #0x17
	ldrh r0, [r5, #0x18]
	bl Div
	strh r0, [r7, #0xe]
	ldrb r0, [r6, #8]
	strb r0, [r7, #4]
	ldrb r0, [r6, #9]
	strb r0, [r7, #0xa]
	ldrh r0, [r6, #4]
	bl sub_8040C38
	b %78
77
	bl sub_80116D4
78
	ldrh r0, [r7]
	movs r1, #4
	bics r0, r1
	strh r0, [r7]
79
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801209C DCDU gUnknown_03003BC8
_080120A0 DCDU gUnknown_03003530
_080120A4 DCDU gUnknown_030037A0
_080120A8 DCDU REG_DMA3
_080120AC DCDU 0x8500004C
_080120B0 DCDU gUnknown_03003670
_080120B4 DCDU 0x0000FFFF
_080120B8 DCDU 0x00333333
	END
