	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03002D28
	IMPORT gUnknown_03002D2C
	IMPORT gUnknown_03002D48
	IMPORT gUnknown_03002D74
	IMPORT gUnknown_03002DAC
	IMPORT gUnknown_03002DE4
	IMPORT gUnknown_030034FC
	IMPORT gUnknown_03003670
	IMPORT gUnknown_030037A0
	IMPORT gUnknown_03003BC8
	IMPORT __call_via_r2
	IMPORT CpuSet
	IMPORT Div

	thumb_func_start sub_80114B0
sub_80114B0
	push {r3, r4}
	ldr r3, _08011730
	ldr r2, _0801172C
	mov r4, sp
	str r2, [r3, #8]
	movs r2, #0
	str r2, [sp]
	ldr r2, _08011734
	str r4, [r2]
	ldr r4, _08011730
	adds r4, #0x24
	str r4, [r2, #4]
	ldr r4, _08011738
	str r4, [r2, #8]
	ldr r4, [r2, #8]
	movs r4, #0
	str r4, [sp]
	mov r4, sp
	str r4, [r2]
	ldr r4, _0801173C
	str r4, [r2, #4]
	ldr r4, _08011740
	str r4, [r2, #8]
	ldr r4, [r2, #8]
	movs r4, #0
	str r4, [sp]
	mov r4, sp
	str r4, [r2]
	ldr r4, _08011730
	adds r4, #0x1c
	str r4, [r2, #4]
	ldr r4, _08011744
	str r4, [r2, #8]
	ldr r2, [r2, #8]
	stm r3!, {r0, r1}
	pop {r3, r4}
	bx lr

	non_word_aligned_thumb_func_start sub_80114FA
sub_80114FA
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _08011730
	adds r1, r0, #0
	adds r7, #0x24
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq %7
	movs r0, #0x1f
	ldrb r0, [r0, r7]
	movs r4, #1
	lsls r4, r4, #9
	cmp r0, #2
	bls %1
	lsls r4, r0, #8
1
	cmp r1, #0
	bne %2
	lsrs r1, r4, #5
2
	lsls r0, r4, #4
	bl Div
	subs r1, r4, r0
	lsrs r5, r1, #1
	adds r6, r5, r0
	subs r4, #1
	bmi %7
	subs r0, r6, r5
	str r0, [sp]
3
	cmp r4, r5
	bge %4
	ldr r0, [r7, #0x14]
	movs r1, #0x80
	strb r1, [r0, r4]
	b %6
4
	cmp r4, r6
	blt %5
	ldr r0, [r7, #0x14]
	movs r1, #0x7f
	strb r1, [r0, r4]
	b %6
5
	subs r0, r4, r5
	lsls r0, r0, #8
	ldr r1, [sp]
	bl Div
	ldr r1, [r7, #0x14]
	adds r0, #0x80
	strb r0, [r1, r4]
6
	subs r4, #1
	bpl %3
7
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8011562
sub_8011562
	ldr r0, _08011748
	movs r1, #0
	strh r1, [r0, #4]
	ldr r2, _08011730
	adds r2, #0x24
	ldrh r0, [r2, #0x10]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	strh r0, [r2, #0x10]
	ldr r0, _0801172C
	subs r2, #0x24
	str r0, [r2, #8]
	ldr r0, _0801174C
	str r1, [r0]
	ldr r0, _08011750
	ldr r1, [r0, #4]
	cmp r1, #0
	bge %8
	ldr r1, _08011754
	str r1, [r0, #4]
	mov r8, r8
	mov r8, r8
	movs r1, #0x11
	lsls r1, r1, #6
	strh r1, [r0, #6]
8
	bx lr

	non_word_aligned_thumb_func_start sub_8011596
sub_8011596
	push {r4, r5, r6, r7}
	ldr r5, _08011730
	adds r5, #0x34
	ldrb r2, [r5, #0xf]
	cmp r0, #0xe
	bls %9
	movs r0, #0xe
	b %11
9
	ldr r3, _08011730
	ldrb r1, [r5, #0xe]
	adds r3, #0x24
	cmp r1, r0
	bls %11
	ldrh r6, [r3, #0x12]
	adds r1, r2, r0
	cmp r6, r1
	bls %11
	ldr r7, _08011758
	movs r4, #1
10
	movs r3, #0x4c
	muls r3, r1
	adds r3, r3, r7
	adds r1, #1
	cmp r6, r1
	strh r4, [r3, #4]
	bhi %10
11
	ldr r3, _08011730
	movs r1, #0xe
	subs r1, r1, r2
	adds r3, #0x24
	cmp r1, r0
	bhs %12
	adds r0, r1, #0
12
	strb r0, [r5, #0xe]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	strh r0, [r3, #0x12]
	bne %13
	pop {r4, r5, r6, r7}
	b sub_8011562
13
	pop {r4, r5, r6, r7}
	bx lr

	thumb_func_start sub_80115EC
sub_80115EC
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _08011730
	adds r4, r0, #0
	adds r6, #0x24
	adds r5, r6, #0
	adds r5, #0x10
	ldrb r1, [r5, #0xf]
	adds r0, r5, #0
	ldrb r2, [r0, #0xe]
	ldr r7, _08011758
	cmp r1, r4
	bls %16
	cmp r2, #0
	beq %14
	movs r3, #0x4c
	muls r1, r3
	ldr r0, _08011734
	adds r1, r1, r7
	str r1, [r0]
	adds r1, r4, #0
	muls r1, r3
	adds r1, r1, r7
	str r1, [r0, #4]
	ldrb r1, [r5, #0xe]
	movs r2, #0x21
	muls r1, r3
	lsrs r1, r1, #2
	lsls r2, r2, #0x1a
	orrs r1, r2
	str r1, [r0, #8]
	ldr r0, [r0, #8]
14
	ldrb r0, [r5, #0xe]
	ldrh r2, [r6, #0x12]
	adds r0, r0, r4
	cmp r2, r0
	bls %21
	movs r1, #1
15
	movs r3, #0x4c
	muls r3, r0
	adds r3, r3, r7
	adds r0, #1
	cmp r2, r0
	strh r1, [r3, #4]
	bhi %15
	b %21
16
	cmp r1, r4
	bhs %21
	cmp r4, #7
	bls %17
	movs r4, #7
17
	movs r0, #0xe
	subs r0, r0, r4
	cmp r2, r0
	bhs %18
	adds r0, r2, #0
18
	movs r3, #0x4c
	adds r1, r1, r0
	adds r2, r4, r0
	muls r1, r3
	adds r1, r1, r7
	muls r2, r3
	adds r2, r2, r7
	muls r3, r0
	beq %20
19
	subs r1, #4
	ldr r7, [r1]
	subs r2, #4
	str r7, [r2]
	subs r3, #4
	bne %19
20
	bl sub_8011596
21
	strb r4, [r5, #0xf]
	ldrb r0, [r5, #0xe]
	adds r0, r0, r4
	strh r0, [r6, #0x12]
	cmp r4, #0
	beq %26
	ldr r0, [r6, #8]
	ldr r1, [r6, #0x14]
	movs r2, #1
	subs r0, r0, r1
	lsls r0, r0, #1
	lsls r2, r2, #9
	cmp r4, #2
	bls %22
	lsls r2, r4, #8
22
	adds r4, r2, #0
	cmp r0, r2
	beq %24
	ldr r5, _08011730
	cmp r1, #0
	beq %23
	movs r0, #0
	ldr r2, [r5, #4]
	bl __call_via_r2
23
	adds r1, r4, #0
	movs r0, #0
	ldr r2, [r5]
	bl __call_via_r2
	lsrs r1, r4, #1
	str r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #8]
24
	ldrh r0, [r6, #0x1c]
	bl sub_80114FA
25
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
26
	ldr r1, _0801173C
	movs r0, #0
	strh r0, [r1]
	b %25

	thumb_func_start sub_80116D4
sub_80116D4
	ldr r2, _08011730
	push {r3, r4, r5, lr}
	adds r2, #0x34
	ldrb r0, [r2, #0xf]
	cmp r0, #0
	beq %28
	ldr r4, _08011758
	movs r1, #1
27
	subs r0, #1
	movs r3, #0x4c
	muls r3, r0
	adds r3, r3, r4
	strh r1, [r3, #4]
	cmp r0, #0
	bne %27
28
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	bne %29
	bl sub_8011562
29
	movs r0, #0
	bl sub_80115EC
	ldr r5, _0801173C
	movs r4, #0
	strh r4, [r5, #0x10]
	ldrh r0, [r5, #0x12]
	cmp r0, #0
	beq %30
	ldrh r0, [r5, #0x14]
	strh r0, [r5, #0x16]
	strh r4, [r5, #0x12]
30
	ldr r1, [r5, #0x24]
	cmp r1, #0
	beq %31
	ldr r2, _08011730
	movs r0, #2
	ldr r2, [r2, #4]
	bl __call_via_r2
	str r4, [r5, #0x24]
31
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_0801172C DCDU gUnknown_03002D28
_08011730 DCDU gUnknown_030034FC
_08011734 DCDU REG_DMA3
_08011738 DCDU 0x85000008
_0801173C DCDU gUnknown_03003BC8
_08011740 DCDU 0x8500001A
_08011744 DCDU 0x85000002
_08011748 DCDU REG_SOUNDCNT
_0801174C DCDU REG_TM0CNT
_08011750 DCDU REG_DMA1DAD
_08011754 DCDU 0x84400004
_08011758 DCDU gUnknown_030037A0

	thumb_func_start sub_801175C
sub_801175C
	push {r3, r4, r5, lr}
	bl sub_8011562
	bl sub_80116D4
	ldr r5, _08011A10
	ldr r4, _08011A14
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq %32
	adds r1, r0, #0
	movs r0, #2
	ldr r2, [r4, #4]
	bl __call_via_r2
32
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq %33
	adds r1, r0, #0
	movs r0, #1
	ldr r2, [r4, #4]
	bl __call_via_r2
33
	ldr r0, _08011A14
	adds r0, #0x24
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq %34
	adds r1, r0, #0
	movs r0, #0
	ldr r2, [r4, #4]
	bl __call_via_r2
34
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_80117A4
sub_80117A4
	ldr r0, _08011A14
	adds r0, #0x24
	ldrh r0, [r0, #0x10]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_80117B0
sub_80117B0
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _08011A18
	adds r4, r0, #0
	cmp r0, r2
	bls %35
	adds r4, r2, #0
35
	ldr r1, _08011A14
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08011A1C
	adds r1, #0x24
	strh r0, [r1, #0x18]
	cmp r4, r3
	beq %37
	ldr r3, _08011A20
	cmp r4, r3
	beq %38
	ldr r3, _08011A24
	cmp r4, r3
	beq %39
	cmp r4, r2
	bne %36
	movs r2, #0xe7
	lsls r2, r2, #2
	strh r2, [r1, #0x1a]
	movs r2, #0xff
	adds r2, #0x31
	str r2, [r1, #0xc]
36
	ldr r1, _08011A14
	adds r1, #0x24
	ldrh r1, [r1, #0x10]
	lsls r1, r1, #0x1f
	bpl %46
	ldr r6, _08011A10
	ldr r5, _08011A14
	ldrh r1, [r6]
	adds r5, #0x34
	ldr r7, _08011A28
	lsls r1, r1, #0x1f
	cmp r1, #0
	bge %42
	ldrb r1, [r6, #0xb]
	ldr r3, _08011A2C
	adds r4, r7, #0
	muls r1, r3
	lsrs r1, r1, #0x17
	bl Div
	strh r0, [r6, #0xe]
	movs r0, #0
	strh r0, [r6, #0x10]
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq %42
	movs r2, #8
	b %40
37
	ldr r2, _08011A30
	strh r2, [r1, #0x1a]
	movs r2, #0x60
	str r2, [r1, #0xc]
	b %36
38
	ldr r2, _08011A34
	strh r2, [r1, #0x1a]
	movs r2, #0xb0
	str r2, [r1, #0xc]
	b %36
39
	ldr r2, _08011A38
	strh r2, [r1, #0x1a]
	movs r2, #0xe0
	str r2, [r1, #0xc]
	b %36
40
	ldrh r1, [r4, #4]
	lsls r3, r1, #0x1f
	bmi %41
	orrs r1, r2
	strh r1, [r4, #4]
41
	subs r0, #1
	adds r4, #0x4c
	cmp r0, #0
	bne %40
42
	ldrb r1, [r5, #0xf]
	movs r3, #0x4c
	ldrb r2, [r5, #0xe]
	ldr r0, _08011A14
	muls r1, r3
	adds r1, r1, r7
	adds r0, #0x24
	cmp r2, #0
	beq %45
	ldrh r4, [r0, #0x1a]
43
	ldr r3, [r1, #4]
	lsls r3, r3, #0x1f
	bmi %44
	ldr r3, [r1, #0x14]
	muls r3, r4
	lsrs r3, r3, #8
	str r3, [r1, #0x44]
44
	subs r2, #1
	adds r1, #0x4c
	cmp r2, #0
	bne %43
45
	ldrh r1, [r0, #0x18]
	movs r0, #1
	lsls r0, r0, #0x18
	bl Div
	movs r1, #1
	lsls r1, r1, #0x10
	subs r0, r1, r0
	lsls r1, r1, #7
	orrs r0, r1
	ldr r1, _08011A3C
	str r0, [r1]
46
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8011898
sub_8011898
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _08011A40
	ldrh r2, [r0, #8]
	movs r1, #0
	strh r1, [r0, #8]
	ldr r1, _08011A14
	adds r1, #0x24
	ldrh r4, [r1, #0x10]
	lsls r0, r4, #0x1f
	bpl %50
	ldr r0, _08011A44
	ldr r3, [r0, #0x10]
	cmp r3, #0
	bge %47
	ldr r3, _08011A48
	str r3, [r0, #0x10]
	movs r3, #0x11
	lsls r3, r3, #6
	strh r3, [r0, #0x12]
47
	ldr r0, _08011A4C
	ldr r3, _08011A50
	strh r0, [r3, #2]
	ldr r0, _08011A54
	ldr r3, _08011A14
	str r0, [r3, #8]
	ldrh r0, [r1, #0x12]
	cmp r0, #0
	beq %50
	ldr r5, _08011A28
48
	subs r0, #1
	movs r3, #0x4c
	muls r3, r0
	adds r6, r3, r5
	ldrh r3, [r6, #4]
	lsls r7, r3, #0x1f
	bmi %49
	movs r7, #0x10
	orrs r3, r7
	strh r3, [r6, #4]
49
	cmp r0, #0
	bne %48
50
	ldr r0, _08011A58
	ldr r3, _08011A14
	str r0, [r3, #0x10]
	ldr r0, _08011A5C
	str r0, [r3, #0x14]
	ldr r0, _08011A60
	str r0, [r3, #0x18]
	ldr r0, _08011A64
	str r0, [r3, #0xc]
	ldr r0, _08011A40
	strh r2, [r0, #8]
	movs r0, #0
	orrs r0, r4
	strh r0, [r1, #0x10]
	ldrh r0, [r1, #0x1c]
	bl sub_80114FA
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8011912
sub_8011912
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	adds r4, r2, #0
	bl sub_8011562
	movs r0, #0xd
	ldr r2, _08011A28
	movs r1, #1
51
	movs r3, #0x4c
	muls r3, r0
	adds r3, r3, r2
	strh r1, [r3, #4]
	subs r0, #1
	bpl %51
	movs r0, #1
	ldr r1, _08011A50
	lsls r0, r0, #9
	strh r0, [r1, #8]
	ldr r0, _08011A14
	adds r0, #0x24
	strh r4, [r0, #0x1c]
	adds r0, r5, #0
	bl sub_8011898
	adds r0, r6, #0
	bl sub_80117B0
	movs r0, #4
	bl sub_80115EC
	movs r0, #0
	bl sub_80115EC
	movs r0, #0xff
	ldr r1, _08011A14
	adds r0, #1
	adds r1, #0x1c
	str r0, [r1, #4]
	ldr r1, _08011A10
	strh r0, [r1, #0x16]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801196A
sub_801196A
	ldr r1, _08011A14
	push {r3, lr}
	adds r1, #0x24
	strh r0, [r1, #0x1c]
	bl sub_80114FA
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_801197C
sub_801197C
	push {r3, r4, r5, lr}
	ldr r4, _08011A14
	adds r4, #0x24
	ldrh r0, [r4, #0x10]
	lsls r0, r0, #0x1f
	bmi %53
	movs r0, #0
	ldr r1, _08011A14
	str r0, [sp]
	mov r0, sp
	ldr r2, _08011A68
	adds r1, #0x44
	bl CpuSet
	movs r0, #0
	ldr r5, _08011A6C
	str r0, [sp]
	mov r0, sp
	ldr r2, _08011A68
	adds r1, r5, #0
	bl CpuSet
	ldr r0, _08011A14
	movs r2, #1
	adds r0, #0x44
	str r0, [r4, #4]
	ldrh r0, [r4, #0x10]
	ldr r3, _08011A70
	adds r1, r4, #0
	orrs r0, r2
	strh r0, [r4, #0x10]
	ldrb r0, [r3]
	movs r2, #8
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0
	subs r4, r3, #3
52
	lsls r2, r0, #2
	adds r0, #1
	lsls r0, r0, #0x18
	ldr r2, [r5, r2]
	lsrs r0, r0, #0x18
	cmp r0, #8
	str r2, [r4, #0x20]
	blo %52
	ldr r0, _08011A74
	adds r5, #0x20
	str r5, [r0]
	ldr r2, _08011A78
	str r2, [r0, #4]
	ldr r2, _08011A7C
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldrh r1, [r1, #0x18]
	lsls r0, r2, #0x16
	bl Div
	movs r1, #1
	lsls r1, r1, #0x10
	subs r0, r1, r0
	lsls r1, r1, #7
	orrs r0, r1
	ldr r1, _08011A3C
	str r0, [r1]
	movs r0, #0x80
	strh r0, [r4, #4]
	ldr r0, _08011A4C
	strh r0, [r4, #2]
	ldr r0, _08011A54
	ldr r1, _08011A14
	str r0, [r1, #8]
53
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_08011A10 DCDU gUnknown_03003BC8
_08011A14 DCDU gUnknown_030034FC
_08011A18 DCDU 0x000046ED
_08011A1C DCDU 0x00001666
_08011A20 DCDU 0x00002910
_08011A24 DCDU 0x00003442
_08011A28 DCDU gUnknown_030037A0
_08011A2C DCDU 0x00333333
_08011A30 DCDU 0x00000B6E
_08011A34 DCDU 0x0000063C
_08011A38 DCDU 0x000004E6
_08011A3C DCDU REG_TM0CNT
_08011A40 DCDU REG_IE
_08011A44 DCDU REG_DMA1DAD
_08011A48 DCDU 0x84400004
_08011A4C DCDU 0x00000B0C
_08011A50 DCDU REG_SOUNDCNT
_08011A54 DCDU gUnknown_03002D2C
_08011A58 DCDU gUnknown_03002DE4
_08011A5C DCDU gUnknown_03002D74
_08011A60 DCDU gUnknown_03002DAC
_08011A64 DCDU gUnknown_03002D48
_08011A68 DCDU 0x0500004C
_08011A6C DCDU gUnknown_03003670
_08011A70 DCDU 0x04000083
_08011A74 DCDU REG_DMA1
_08011A78 DCDU REG_FIFO
_08011A7C DCDU 0xB6400004
	END
