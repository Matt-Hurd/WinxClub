	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_0300329A
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003D20
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT __VTABLE__316dword_803E658
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_80012F0
	IMPORT sub_8001338
	IMPORT sub_8001432
	IMPORT sub_8023A70
	IMPORT sub_8028C2E
	IMPORT sub_802E418
	IMPORT sub_802E4AA
	IMPORT sub_802E4EE
	IMPORT __call_via_r1
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT sub_803FF24
	IMPORT sub_8040148
	IMPORT sub_80401E4
	IMPORT sub_8040594


	thumb_func_start sub_802BFB4
sub_802BFB4
	adds r0, #0x30
	ldrb r0, [r0, #0xc]
	bx lr
	ALIGN

	thumb_func_start sub_802BFBC
sub_802BFBC
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0x4c
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	pop {r4}
	pop {r3}
	bx r3
2
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _0802C3BC
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x3c]
	str r0, [r4, #0x40]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	b %1

	non_word_aligned_thumb_func_start sub_802BFEA
sub_802BFEA
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802C3BC
	adds r5, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq %3
	ldr r0, _0802C3C0
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
3
	movs r1, #0
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq %4
	adds r0, r4, #0
	bl sub_803DA18
4
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802C022
sub_802C022
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [r0, #0x10]
	adds r5, r3, #0
	ldr r3, [r1, #0x2c]
	adds r4, r0, #0
	str r3, [r0, #0x14]
	ldr r0, [r1, #0x30]
	str r0, [r4, #0x18]
	ldrb r6, [r3, #5]
	movs r0, #0xff
	ldr r7, [r4, #0x34]
	lsls r0, r0, #0xb
	bics r7, r0
	lsls r6, r6, #0xb
	orrs r6, r7
	str r6, [r4, #0x34]
	adds r3, #0x2c
	ldr r7, [r3]
	ldr r3, [r3, #4]
	str r3, [r4, #0x20]
	str r7, [r4, #0x1c]
	adds r3, r5, #1
	bne %5
	ldr r1, [r1, #0x7c]
	ldr r3, [r4, #0x34]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsrs r3, r3, #8
	lsls r3, r3, #8
	orrs r1, r3
	str r1, [r4, #0x34]
	b %6
5
	ldr r1, [r4, #0x34]
	lsls r3, r5, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r3, r3, #0x18
	orrs r1, r3
	str r1, [r4, #0x34]
6
	movs r3, #0xf
	ldr r1, [r4, #0x34]
	lsls r3, r3, #0x16
	lsls r2, r2, #0x1c
	lsrs r2, r2, #6
	bics r1, r3
	orrs r2, r1
	lsls r1, r2, #6
	lsrs r3, r1, #0x1c
	ldr r5, _0802C3C4
	lsls r3, r3, #1
	str r2, [r4, #0x34]
	ldrh r3, [r5, r3]
	lsrs r7, r1, #0x1c
	ldr r1, _0802C3C8
	str r3, [r4, #0x38]
	ldrb r1, [r1]
	movs r3, #1
	movs r5, #7
	adds r6, r4, #0
	adds r6, #0x40
	lsls r5, r5, #0x11
	lsls r3, r3, #0xb
	cmp r7, #0
	mov ip, r1
	beq %7
	cmp r7, #1
	beq %13
	cmp r7, #2
	bne %12
	movs r7, #9
	ldr r1, [r4, #0x44]
	lsls r7, r7, #0x10
	adds r1, r1, r7
	lsls r7, r2, #0x18
	lsrs r7, r7, #0x18
	str r1, [r4, #0x44]
	beq %15
	cmp r7, #1
	beq %16
	cmp r7, #2
	beq %17
	cmp r7, #3
	bne %18
	subs r1, r1, r5
	str r1, [r4, #0x44]
	ldr r1, _0802C3CC
	str r1, [r4, #0x28]
	adds r1, r2, #0
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b %18
7
	movs r7, #9
	ldr r1, [r4, #0x44]
	lsls r7, r7, #0x10
	adds r1, r1, r7
	adds r7, r1, #0
	str r1, [r4, #0x44]
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	beq %10
	cmp r1, #1
	beq %8
	cmp r1, #2
	beq %9
	cmp r1, #3
	bne %11
	subs r1, r7, r5
	str r1, [r4, #0x44]
	ldr r1, _0802C3CC
	str r1, [r4, #0x28]
	adds r1, r2, #0
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b %11
8
	adds r1, r7, r5
	str r1, [r4, #0x44]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b %11
9
	ldr r1, [r4, #0x40]
	subs r1, r1, r5
	str r1, [r4, #0x40]
	ldr r1, _0802C3CC
	str r1, [r4, #0x24]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b %11
10
	ldr r1, [r4, #0x40]
	adds r1, r1, r5
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
11
	movs r0, #3
	mov r1, ip
	cmp r1, #0
	strb r0, [r6, #8]
	beq %12
	subs r1, r0, #5
	ldr r0, _0802C3D0
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023A70
12
	b %28
13
	b %14
14
	movs r7, #9
	ldr r1, [r4, #0x44]
	lsls r7, r7, #0x10
	adds r1, r1, r7
	lsls r7, r2, #0x18
	lsrs r7, r7, #0x18
	str r1, [r4, #0x44]
	beq %22
	cmp r7, #1
	beq %20
	cmp r7, #2
	beq %21
	cmp r7, #3
	bne %23
	subs r1, r1, r5
	str r1, [r4, #0x44]
	ldr r1, _0802C3CC
	b %19
15
	b %26
16
	b %24
17
	b %25
18
	b %27
19
	str r1, [r4, #0x28]
	adds r1, r2, #0
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b %23
20
	adds r1, r1, r5
	str r1, [r4, #0x44]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b %23
21
	ldr r1, [r4, #0x40]
	subs r1, r1, r5
	str r1, [r4, #0x40]
	ldr r1, _0802C3CC
	str r1, [r4, #0x24]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b %23
22
	ldr r1, [r4, #0x40]
	adds r1, r1, r5
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
23
	movs r0, #2
	mov r1, ip
	cmp r1, #0
	strb r0, [r6, #8]
	beq %28
	NEGS r1, r0
	ldr r0, _0802C3D0
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023A70
	b %28
24
	adds r1, r1, r5
	str r1, [r4, #0x44]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b %27
25
	ldr r1, [r4, #0x40]
	subs r1, r1, r5
	str r1, [r4, #0x40]
	ldr r1, _0802C3CC
	str r1, [r4, #0x24]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
	b %27
26
	ldr r1, [r4, #0x40]
	adds r1, r1, r5
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	adds r1, r2, #0
	subs r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	adds r0, r1, #0
	str r0, [r4, #0x34]
27
	movs r0, #3
	strb r0, [r6, #8]
28
	ldr r5, _0802C3C0
	ldr r0, [r5]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x44]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #4]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r6, [r4, #4]
	ldr r0, [r6]
	lsls r0, r0, #0x1c
	bmi %29
	adds r1, r6, #0
	ldr r0, [r5]
	bl sub_80012F0
29
	ldr r0, [r6]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r6]
	ldr r0, [r4, #0x34]
	movs r7, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r7, r0
	adds r0, r7, #0
	ldr r6, [r4, #4]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r7
	lsrs r2, r7, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	movs r3, #3
	lsls r3, r3, #0xa
	strh r1, [r6, #0x24]
	ldr r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r6]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x34]
	ldrh r2, [r0, #0x2a]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	movs r6, #0x80
	lsls r2, r1, #0x16
	cmp r2, #0
	blt %30
	orrs r1, r6
	str r1, [r0]
30
	ldr r0, [r4, #4]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
	ldr r0, [r5]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x38]
	adds r1, #3
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x44]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #0x3c]
	add r1, sp, #4
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r7, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r7, r0
	adds r0, r7, #0
	ldr r5, [r4, #0x3c]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r7
	lsrs r2, r7, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #0xd
	b %31
	ALIGN
_0802C3BC DCDU __VTABLE__316dword_803E658
_0802C3C0 DCDU gUnknown_03003EB8
_0802C3C4 DCDU gUnknown_0300329A
_0802C3C8 DCDU gUnknown_03003D20
_0802C3CC DCDU 0xFFFE0000
_0802C3D0 DCDU gPlayerEntity
31
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r2, r3
	lsrs r1, r1, #0x18
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %32
	orrs r1, r6
	str r1, [r0]
32
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
	ldr r0, _0802C6C4
	ldr r0, [r0]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x34
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028C2E
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802C41E
sub_802C41E
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x3c]
	sub sp, #0xc
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %33
	movs r1, #0
	bl sub_80401E4
	b %34
33
	movs r1, #1
	bl sub_80401E4
34
	ldr r0, [r4, #0x34]
	adds r5, r4, #0
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	adds r5, #0x1c
	cmp r0, #0
	beq %40
	adds r6, r4, #0
	adds r6, #0x3c
	adds r7, r4, #4
	cmp r0, #1
	beq %42
	cmp r0, #2
	bne %39
	ldr r0, _0802C6C8
	ldr r5, [r4, #4]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq %35
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
35
	lsls r0, r1, #0x10
	ldr r1, [r4, #0x38]
	lsrs r0, r0, #0x10
	adds r1, #2
	cmp r0, r1
	ldr r0, [r4, #4]
	beq %45
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %36
	bl sub_8000914
36
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	adds r1, #5
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %37
	bl sub_8000914
37
	ldr r4, [r4, #4]
	movs r5, #0
	ldr r0, [r4]
	lsls r0, r0, #0x1c
	bpl %38
	ldr r0, _0802C6CC
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_8001338
38
	ldr r0, [r4]
	movs r1, #8
	bics r0, r1
	orrs r0, r5
	str r0, [r4]
39
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
40
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	beq %43
	ldr r0, [r4, #0x14]
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r0, [r5, #4]
	str r1, [r5]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x44]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x44]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #0x3c]
	add r1, sp, #4
	bl sub_803FF24
41
	b %39
42
	b %47
43
	ldr r1, [r4, #0x38]
	adds r1, #4
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #4]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %44
	bl sub_8000914
44
	ldr r0, [r5]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, [r4, #0x34]
	movs r1, #7
	lsls r1, r1, #8
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	b %46
45
	b %50
46
	str r0, [r4, #0x34]
	b %39
47
	ldr r0, [r5]
	ldr r1, [r4, #0x24]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1f
	beq %49
	cmp r0, #0
	beq %48
	ldr r0, _0802C6CC
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r5, #0
	str r5, [r4, #4]
48
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq %39
	ldr r0, _0802C6CC
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r5, #0
	str r5, [r4, #0x3c]
	b %39
49
	adds r1, r5, #0
	bl sub_803FF24
	adds r1, r5, #0
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	b %39
50
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %41
	cmp r0, #0
	beq %51
	ldr r0, _0802C6CC
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r5, #0
	str r5, [r4, #4]
51
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq %41
	ldr r0, _0802C6CC
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r5, #0
	str r5, [r4, #0x3c]
	b %39

	non_word_aligned_thumb_func_start sub_802C5FA
sub_802C5FA
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_802E4EE
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq %53
	ldr r6, _0802C6C8
	ldr r5, [r4, #4]
	ldr r0, [r6]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq %52
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
52
	ldr r0, [r4, #0x30]
	lsls r1, r1, #0x13
	lsrs r0, r0, #0xd
	lsls r0, r0, #0xd
	lsrs r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #0x30]
	ldr r5, [r4, #4]
	ldr r0, [r6]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	movs r2, #0x1f
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x48]
	lsls r2, r2, #0xd
	subs r0, r1, r0
	asrs r0, r0, #2
	ldr r1, [r4, #0x30]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0xe
	bics r1, r2
	orrs r1, r0
	str r1, [r4, #0x30]
	ldr r0, [r4, #4]
	movs r3, #0x3f
	ldrb r2, [r0, #3]
	lsls r3, r3, #0x12
	bics r1, r3
	lsls r2, r2, #0x1a
	lsrs r2, r2, #8
	orrs r1, r2
	str r1, [r4, #0x30]
	ldr r2, [r0]
	movs r3, #1
	lsls r3, r3, #0x1c
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1f
	bics r1, r3
	lsls r2, r2, #0x1c
	orrs r2, r1
	str r2, [r4, #0x30]
	ldr r1, [r0]
	lsrs r3, r3, #4
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x18
	bics r2, r3
	orrs r1, r2
	str r1, [r4, #0x30]
	ldr r0, [r0]
	lsls r2, r3, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #6
	bics r1, r2
	orrs r0, r1
	lsls r1, r2, #4
	orrs r0, r1
	str r0, [r4, #0x30]
	ldr r1, [r4, #0x3c]
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq %53
	lsrs r2, r3, #0xe
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _0802C6CC
	ldr r0, [r0]
	bl sub_8001432
53
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	ALIGN
_0802C6C4 DCDU gUnknown_0300345C
_0802C6C8 DCDU gUnknown_03003EA0
_0802C6CC DCDU gUnknown_03003EB8
	END
