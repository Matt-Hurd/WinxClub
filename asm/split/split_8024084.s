	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003448
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_080414B8
	IMPORT gUnknown_0805104C
	IMPORT sub_8000324
	IMPORT sub_800065C
	IMPORT sub_8000D5A
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_8023FE4
	IMPORT __16_ll_mulss
	IMPORT __16_ll_sdiv
	IMPORT sub_8040034
	IMPORT sub_80401C0
	IMPORT sub_80401E4
	IMPORT sub_804025C
	IMPORT sub_8040594
	IMPORT sub_80406A4

	thumb_func_start sub_8024084
sub_8024084
	push {r0, r4, r5, r6, r7, lr}
	sub sp, #8
	movs r4, #0
1
	ldr r1, _0802446C
	lsls r0, r4, #4
	ldr r1, [r1]
	adds r1, #0xa0
	ldrb r1, [r1, #0xe]
	cmp r0, r1
	bhs %2
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b %3
2
	movs r0, #0
3
	movs r2, #0x23
	lsls r2, r2, #6
	adds r1, r2, #0
	cmp r0, #0x10
	bhs %4
	movs r1, #0x8b
	lsls r1, r1, #4
	adds r1, r0, r1
4
	subs r0, r2, r1
	movs r1, #0x8b
	lsls r1, r1, #4
	adds r0, r0, r1
	lsls r6, r0, #0x10
	ldr r1, [sp, #8]
	lsls r0, r4, #2
	adds r5, r0, r1
	adds r7, r5, #0
	lsrs r6, r6, #0x10
	adds r7, #0x80
	ldr r1, [r7, #8]
	ldr r0, _08024470
	str r1, [sp, #4]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #4]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	beq %5
	adds r1, r6, #0
	ldr r0, [r7, #8]
	bl sub_800065C
5
	ldr r1, _0802446C
	ldr r7, [r5, #0x78]
	ldr r0, [r1]
	ldr r1, _08024474
	adds r0, #0xa0
	ldrb r0, [r0, #0xe]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	ldrh r6, [r1, r0]
	ldr r0, _08024470
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r7, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	beq %6
	adds r1, r6, #0
	ldr r0, [r5, #0x78]
	bl sub_800065C
6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #4
	blo %1
	ldr r0, _0802446C
	ldr r1, _08024474
	ldr r0, [r0]
	adds r1, #0xa
	adds r0, #0xa0
	ldrb r0, [r0, #0xe]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	ldrh r4, [r1, r0]
	ldr r6, [sp, #8]
	ldr r0, _08024470
	adds r6, #0xc0
	ldr r5, [r6, #0xc]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r5, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r4
	beq %7
	adds r1, r4, #0
	ldr r0, [r6, #0xc]
	bl sub_800065C
7
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802416A
sub_802416A
	push {r0, r4, r5, r6, r7, lr}
	movs r4, #0
8
	ldr r1, _0802446C
	lsls r0, r4, #4
	ldr r1, [r1]
	adds r1, #0xa0
	ldrb r1, [r1, #0xd]
	cmp r0, r1
	bhs %9
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b %10
9
	movs r0, #0
10
	movs r2, #0x23
	lsls r2, r2, #6
	adds r1, r2, #0
	cmp r0, #0x10
	bhs %11
	movs r1, #0x8b
	lsls r1, r1, #4
	adds r1, r0, r1
11
	subs r0, r2, r1
	movs r1, #0x8b
	lsls r1, r1, #4
	adds r0, r0, r1
	lsls r5, r0, #0x10
	ldr r1, [sp]
	lsrs r5, r5, #0x10
	lsls r0, r4, #2
	adds r7, r0, r1
	ldr r0, _08024470
	ldr r6, [r7, #0x60]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	beq %12
	adds r1, r5, #0
	ldr r0, [r7, #0x60]
	bl sub_800065C
12
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #6
	blo %8
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80241DA
sub_80241DA
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	movs r7, #0
	cmp r0, #0
	sub sp, #0x14
	beq %14
	ldr r1, _08024478
	ldr r1, [r1]
	ldr r2, [r1, #8]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1f
	cmp r2, r0
	blo %13
	movs r1, #1
	str r7, [r4]
13
	ldrb r0, [r4, #4]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	ldr r2, [r0]
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x1f
	cmp r2, r1
	beq %14
	bl sub_80401E4
14
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq %15
	cmp r0, #3
	bne %19
15
	movs r3, #0xd
	ldrsb r0, [r4, r3]
	lsls r5, r0, #0x10
	lsrs r5, r5, #0x10
	adds r0, r5, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r5
	lsrs r2, r5, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #4]
	lsls r0, r0, #0x12
	ldr r1, _0802447C
	lsrs r0, r0, #0x11
	ldrsh r0, [r1, r0]
	movs r1, #0x11
	lsls r0, r0, #2
	lsls r1, r1, #0x14
	bl __16_ll_mulss
	add r2, pc, #0x234
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r6, r0, #0x10
	movs r0, #0xf0
	subs r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x10]
	adds r0, r6, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	movs r5, #0
	asrs r0, r0, #0x10
	str r0, [sp, #0xc]
16
	lsls r0, r5, #5
	adds r1, r0, #0
	adds r1, #0x20
	str r1, [sp, #8]
	cmp r1, r6
	ble %17
	ldr r0, [sp, #0xc]
	add r3, sp, #0
	strh r0, [r3]
	movs r7, #0
	strh r7, [r3, #2]
	lsls r0, r5, #2
	adds r7, r0, r4
	adds r7, #0xc0
	ldr r0, [r7, #0x1c]
	mov r1, sp
	bl sub_8040034
	ldr r0, [sp, #0x10]
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0xa0
	strh r0, [r3, #2]
	ldr r0, [r7, #0x3c]
	mov r1, sp
	bl sub_8040034
	b %18
17
	add r3, sp, #0
	strh r0, [r3]
	movs r7, #0
	strh r7, [r3, #2]
	lsls r0, r5, #2
	adds r7, r0, r4
	adds r7, #0xc0
	ldr r0, [r7, #0x1c]
	mov r1, sp
	bl sub_8040034
	ldr r1, [sp, #8]
	movs r0, #0xf0
	subs r0, r0, r1
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0xa0
	strh r0, [r3, #2]
	ldr r0, [r7, #0x3c]
	mov r1, sp
	bl sub_8040034
18
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo %16
	ldrb r1, [r4, #0xc]
	ldrb r0, [r4, #0xd]
	cmp r1, #1
	bne %20
	adds r0, #2
	strb r0, [r4, #0xd]
	b %21
19
	b %47
20
	adds r0, #0xfe
	strb r0, [r4, #0xd]
21
	movs r3, #0xd
	ldrsb r0, [r4, r3]
	cmp r0, #0
	bgt %35
	cmp r1, #3
	bne %35
	movs r0, #0
	ldr r7, _08024488
	strb r0, [r4, #0xc]
	movs r5, #0
22
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r6, r0, #0
	adds r6, #0xc0
	ldr r1, [r6, #0x1c]
	cmp r1, #0
	beq %23
	adds r1, r0, #0
	adds r1, #0xdc
	ldr r0, [r7]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r6, #0x1c]
23
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #0x10
	blo %22
	movs r5, #0
24
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq %25
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %25
	movs r1, #1
	bl sub_80401E4
25
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo %24
	movs r5, #0
26
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq %27
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %27
	movs r1, #1
	bl sub_80401E4
27
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo %26
	movs r5, #0
28
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x60]
	cmp r0, #0
	beq %29
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %29
	movs r1, #1
	bl sub_80401E4
29
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo %28
	movs r5, #0
30
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x78]
	cmp r0, #0
	beq %31
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %31
	movs r1, #1
	bl sub_80401E4
31
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo %30
	movs r5, #0
32
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #8]
	cmp r0, #0
	beq %33
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %33
	movs r1, #1
	bl sub_80401E4
33
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo %32
	movs r5, #0
34
	lsls r0, r5, #2
	b %36
35
	b %48
36
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq %37
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %37
	movs r1, #1
	bl sub_80401E4
37
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo %34
	movs r5, #0
38
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq %39
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %39
	movs r1, #1
	bl sub_80401E4
39
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo %38
	ldr r6, _0802446C
	movs r5, #0
40
	ldr r0, [r6]
	adds r0, #0xa0
	ldrb r0, [r0, #0xf]
	bl sub_80406A4
	cmp r1, r5
	bls %41
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	movs r1, #1
	bl sub_80401E4
41
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo %40
	adds r5, r4, #0
	adds r5, #0xc0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq %42
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %42
	movs r1, #1
	bl sub_80401E4
42
	ldr r0, [r5, #8]
	cmp r0, #0
	beq %44
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %44
	movs r1, #1
	b %43
	ALIGN
_0802446C DCDU gPlayerEntity
_08024470 DCDU gUnknown_03003EA0
_08024474 DCDU gUnknown_0805104C
_08024478 DCDU gUnknown_03003E98
_0802447C DCDU gUnknown_080414B8
_08024480 DCDU 0x00010000
_08024484 DCDU 0x00000000
_08024488 DCDU gUnknown_03003448
43
	bl sub_80401E4
44
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq %45
	adds r0, r4, #0
	bl sub_802416A
45
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq %46
	adds r0, r4, #0
	bl sub_8024084
46
	ldr r0, [r4, #8]
	cmp r0, #0
	beq %47
	adds r0, r4, #0
	bl sub_8023FE4
47
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
48
	cmp r0, #0x5a
	blt %47
	movs r0, #2
	strb r0, [r4, #0xc]
	b %47

	non_word_aligned_thumb_func_start sub_80244C6
sub_80244C6
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r5, #0
	sub sp, #4
49
	ldr r1, _08024788
	lsls r0, r5, #1
	ldr r1, [r1]
	adds r0, r0, r5
	adds r1, #0xa0
	ldrb r1, [r1, #0xc]
	lsls r0, r0, #1
	cmp r0, r1
	bhs %50
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b %51
50
	movs r0, #0
51
	ldr r1, _0802478C
	cmp r0, #6
	bhs %52
	subs r7, r1, #6
	adds r1, r0, r7
52
	lsls r7, r1, #0x10
	lsrs r7, r7, #0x10
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r1, [r6, #0x28]
	ldr r0, _08024790
	str r1, [sp]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	beq %53
	adds r1, r7, #0
	ldr r0, [r6, #0x28]
	bl sub_800065C
53
	ldr r1, _08024788
	ldr r0, [r1]
	adds r0, #0xb0
	ldrb r0, [r0, #4]
	cmp r0, r5
	bls %54
	ldr r0, [r6, #0x28]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %54
	movs r1, #1
	bl sub_80401E4
54
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo %49
	ldr r0, [sp, #8]
	cmp r0, #0
	beq %58
	ldr r0, _08024794
	ldr r5, _08024790
	ldr r0, [r0]
	ldr r7, _08024798
	ldr r0, [r0, #8]
	adds r0, #0x78
	str r0, [r4]
	movs r0, #0
	strb r0, [r4, #4]
	b %56
55
	ldrb r0, [r4, #4]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #4]
	cmp r0, #8
	bhs %57
56
	ldrb r0, [r4, #4]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r6, [r0, #0x28]
	ldr r0, [r5]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	bne %55
57
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq %58
	adds r0, #0xff
	strb r0, [r4, #4]
58
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802459E
sub_802459E
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0xc0
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, [r0, #0x1c]
	cmp r1, #0
	beq %68
	cmp r0, #0
	bne %68
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	movs r6, #0
59
	ldr r0, _0802479C
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r6, #2
	adds r7, r1, r4
	adds r7, #0xc0
	str r0, [r7, #0x1c]
	ldr r1, _080247A0
	bl sub_800065C
	movs r0, #0x1f
	mvns r0, r0
	add r3, sp, #0
	strh r0, [r3, #4]
	strh r0, [r3, #6]
	ldr r0, [r7, #0x1c]
	add r1, sp, #4
	bl sub_8040034
	movs r1, #0x12
	ldr r0, [r7, #0x1c]
	bl sub_80401C0
	movs r1, #1
	cmp r6, #8
	ldr r5, [r7, #0x1c]
	bhs %60
	movs r1, #0
60
	ldrh r2, [r5, #0x28]
	movs r3, #1
	lsls r3, r3, #0xd
	bics r2, r3
	lsls r1, r1, #0xd
	orrs r1, r2
	strh r1, [r5, #0x28]
	adds r0, r5, #0
	bl sub_8000324
	ldr r0, [r5]
	lsls r0, r0, #0x1e
	bmi %61
	adds r0, r5, #0
	bl sub_804025C
61
	ldr r0, [r5]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r7, #0x1c]
	movs r1, #1
	bl sub_80401E4
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #0x10
	blo %59
	movs r5, #0
62
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq %63
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %63
	movs r1, #0
	bl sub_80401E4
63
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo %62
	movs r5, #0
64
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq %65
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %65
	movs r1, #0
	bl sub_80401E4
65
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo %64
	movs r5, #0
66
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x60]
	cmp r0, #0
	beq %67
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %67
	movs r1, #0
	bl sub_80401E4
67
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	b %69
68
	b %82
69
	cmp r5, #6
	blo %66
	movs r5, #0
70
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x78]
	cmp r0, #0
	beq %71
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %71
	movs r1, #0
	bl sub_80401E4
71
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo %70
	movs r5, #0
72
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #8]
	cmp r0, #0
	beq %73
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %73
	movs r1, #0
	bl sub_80401E4
73
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo %72
	movs r5, #0
74
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq %75
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %75
	movs r1, #0
	bl sub_80401E4
75
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo %74
	movs r5, #0
76
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq %77
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %77
	movs r1, #0
	bl sub_80401E4
77
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo %76
	movs r5, #0
78
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq %79
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %79
	movs r1, #0
	bl sub_80401E4
79
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo %78
	ldr r0, [sp, #8]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq %80
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %80
	movs r1, #0
	bl sub_80401E4
80
	ldr r0, [sp, #8]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq %81
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %81
	movs r1, #0
	bl sub_80401E4
81
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
82
	cmp r0, #0
	beq %81
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x59
	strb r0, [r4, #0xd]
	b %81
	ALIGN
_08024788 DCDU gPlayerEntity
_0802478C DCDU 0x000008A4
_08024790 DCDU gUnknown_03003EA0
_08024794 DCDU gUnknown_03003E98
_08024798 DCDU 0x0000089E
_0802479C DCDU gUnknown_03003448
_080247A0 DCDU 0x00000892
	END
