	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT __VTABLE__305dword_803E350
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_800116A
	IMPORT sub_80011D8
	IMPORT sub_80012F0
	IMPORT sub_800CD58
	IMPORT sub_8028C2E
	IMPORT sub_802E418
	IMPORT sub_802E4AA
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT sub_803FF24
	IMPORT sub_8040148
	IMPORT sub_8040594

	thumb_func_start sub_8037E48
sub_8037E48
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0x48
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
	ldr r0, _0803818C
	movs r1, #0x45
	str r0, [r4]
	movs r0, #0
	strb r0, [r1, r4]
	adds r0, r4, #0
	b %1

	thumb_func_start sub_8037E74
sub_8037E74
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0803818C
	adds r5, r1, #0
	str r0, [r4]
	ldr r1, [r4, #0x14]
	ldr r2, [r1]
	lsls r0, r2, #0x14
	lsrs r3, r0, #0x1f
	beq %3
	asrs r0, r0, #0x1f
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x14
	bics r2, r3
	orrs r0, r2
	str r0, [r1]
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

	non_word_aligned_thumb_func_start sub_8037EB2
sub_8037EB2
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	sub sp, #0xc
	str r1, [r4, #0x10]
	adds r0, r1, #0
	ldr r1, [r1, #0x2c]
	adds r5, r3, #0
	str r1, [r4, #0x14]
	ldr r0, [r0, #0x30]
	str r0, [r4, #0x18]
	ldrb r3, [r1, #5]
	movs r0, #0xff
	ldr r6, [r4, #0x34]
	lsls r0, r0, #0xb
	bics r6, r0
	lsls r3, r3, #0xb
	orrs r3, r6
	str r3, [r4, #0x34]
	adds r1, #0x2c
	ldr r6, [r1]
	ldr r1, [r1, #4]
	str r1, [r4, #0x20]
	str r6, [r4, #0x1c]
	movs r6, #1
	str r6, [r4, #0x24]
	cmn r5, r6
	bne %5
	ldr r1, [r4, #0x10]
	ldr r3, [r4, #0x34]
	ldr r1, [r1, #0x7c]
	lsrs r3, r3, #8
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
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
	orrs r1, r2
	lsls r2, r1, #6
	lsrs r3, r2, #0x1c
	movs r6, #1
	lsls r6, r6, #0x10
	adds r2, r4, #0
	adds r2, #0x40
	lsrs r5, r6, #5
	movs r7, #0
	cmp r3, #0
	str r1, [r4, #0x34]
	beq %7
	cmp r3, #1
	beq %12
	cmp r3, #2
	bne %15
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x18
	beq %16
	cmp r3, #1
	beq %17
	cmp r3, #2
	beq %20
	cmp r3, #3
	bne %21
	ldr r3, _08038190
	str r3, [r4, #0x40]
	str r6, [r4, #0x3c]
	b %21
7
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x18
	beq %10
	cmp r3, #1
	beq %8
	cmp r3, #2
	beq %9
	cmp r3, #3
	bne %11
	ldr r3, _08038194
	str r3, [r4, #0x3c]
	ldr r3, _08038198
	str r3, [r4, #0x40]
	b %11
8
	movs r3, #0x33
	lsls r3, r3, #0x10
	str r3, [r4, #0x40]
	str r6, [r4, #0x3c]
	b %11
9
	ldr r3, _0803819C
	str r3, [r4, #0x3c]
	movs r3, #0xb
	lsls r3, r3, #0x10
	str r3, [r4, #0x40]
	b %11
10
	movs r3, #5
	lsls r3, r3, #0x13
	str r3, [r4, #0x3c]
	movs r3, #9
	lsls r3, r3, #0x10
	str r3, [r4, #0x40]
11
	adds r3, r1, #0
	subs r1, r1, r5
	ands r1, r0
	bics r3, r0
	orrs r3, r1
	adds r0, r3, #0
	str r0, [r4, #0x34]
	movs r0, #0xff
	adds r0, #0xdf
	str r0, [r4, #0x38]
	strb r7, [r2, #4]
	movs r0, #3
	strb r0, [r2, #5]
	b %15
12
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x18
	beq %18
	cmp r3, #1
	beq %13
	cmp r3, #2
	beq %14
	cmp r3, #3
	bne %19
	ldr r3, _080381A0
	str r3, [r4, #0x40]
	adds r3, r1, #0
	adds r1, r1, r5
	ands r1, r0
	bics r3, r0
	orrs r3, r1
	adds r0, r3, #0
	str r7, [r4, #0x3c]
	str r0, [r4, #0x34]
	b %19
13
	movs r3, #0x15
	lsls r3, r3, #0x11
	str r3, [r4, #0x40]
	adds r3, r1, #0
	subs r1, r1, r5
	ands r1, r0
	bics r3, r0
	orrs r3, r1
	adds r0, r3, #0
	str r6, [r4, #0x3c]
	str r0, [r4, #0x34]
	b %19
14
	ldr r3, _080381A4
	str r3, [r4, #0x3c]
	movs r3, #3
	lsls r3, r3, #0x10
	str r3, [r4, #0x40]
	adds r3, r1, #0
	subs r1, r1, r5
	ands r1, r0
	bics r3, r0
	orrs r3, r1
	adds r0, r3, #0
	str r0, [r4, #0x34]
	b %19
15
	b %27
16
	b %25
17
	b %23
18
	movs r3, #0x2d
	lsls r3, r3, #0x10
	str r3, [r4, #0x3c]
	adds r3, r1, #0
	subs r1, r1, r5
	ands r1, r0
	bics r3, r0
	orrs r3, r1
	adds r0, r3, #0
	str r6, [r4, #0x40]
	str r0, [r4, #0x34]
19
	movs r0, #0xff
	adds r0, #0xdf
	str r0, [r4, #0x38]
	strb r7, [r2, #4]
	b %22
20
	b %24
21
	b %26
22
	movs r0, #3
	strb r0, [r2, #5]
	b %27
23
	movs r3, #1
	lsls r3, r3, #0x11
	str r3, [r4, #0x3c]
	movs r3, #5
	lsls r3, r3, #0x13
	str r3, [r4, #0x40]
	b %26
24
	ldr r3, _08038190
	str r3, [r4, #0x3c]
	ldr r3, _080381A8
	str r3, [r4, #0x40]
	b %26
25
	movs r3, #0x2b
	lsls r3, r3, #0x10
	str r3, [r4, #0x3c]
	ldr r3, _080381AC
	str r3, [r4, #0x40]
26
	adds r3, r1, #0
	subs r1, r1, r5
	ands r1, r0
	bics r3, r0
	orrs r3, r1
	adds r0, r3, #0
	str r0, [r4, #0x34]
	ldr r0, _080381B0
	str r0, [r4, #0x38]
	strb r7, [r2, #4]
	movs r0, #3
	strb r0, [r2, #5]
27
	ldr r0, [r4, #0x14]
	ldr r7, _080381B4
	ldr r2, [r0]
	lsls r1, r2, #0x14
	asrs r1, r1, #0x1f
	adds r1, #1
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x14
	bics r2, r5
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r7]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	movs r2, #2
	ldr r1, [r0]
	movs r6, #1
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x40]
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
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bmi %28
	adds r1, r5, #0
	ldr r0, [r7]
	bl sub_80012F0
28
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0
	adds r0, r6, #0
	ldr r5, [r4, #4]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	movs r3, #3
	lsls r3, r3, #0xa
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
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
	lsls r2, r1, #0x16
	bmi %29
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
29
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r4, [r4, #4]
	movs r6, #1
	ldr r0, [r4]
	lsls r0, r0, #0x1f
	bmi %31
	adds r1, r4, #0
	ldr r0, [r7]
	bl sub_80011D8
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi %30
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq %30
	ldr r0, _080381B8
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_800CD58
30
	ldr r0, [r4]
	orrs r0, r6
	str r0, [r4]
	lsls r1, r0, #0x1e
	bpl %31
	movs r2, #0xff
	adds r2, #1
	orrs r0, r2
	str r0, [r4]
31
	ldr r0, _080381BC
	ldr r1, [r0]
	movs r0, #0x49
	lsls r0, r0, #6
	adds r0, r0, r1
	bl sub_8028C2E
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0803818C DCDU __VTABLE__305dword_803E350
_08038190 DCDU 0xFFD50000
_08038194 DCDU 0xFFFF0000
_08038198 DCDU 0xFFE10000
_0803819C DCDU 0xFFD80000
_080381A0 DCDU 0xFFDC0000
_080381A4 DCDU 0xFFD40000
_080381A8 DCDU 0xFFFE0000
_080381AC DCDU 0xFFFD0000
_080381B0 DCDU 0x000002E6
_080381B4 DCDU gUnknown_03003EB8
_080381B8 DCDU gUnknown_03003EA0
_080381BC DCDU gUnknown_0300345C
	END
