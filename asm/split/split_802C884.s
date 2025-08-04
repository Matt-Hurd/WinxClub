	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_030032A0
	IMPORT gUnknown_030032B0
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003D20
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT __VTABLE__312dword_803E578
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_80011D8
	IMPORT sub_80012F0
	IMPORT sub_8001338
	IMPORT sub_800CD58
	IMPORT sub_8023A70
	IMPORT sub_80268AC
	IMPORT sub_8028BE4
	IMPORT sub_8028C2E
	IMPORT sub_802E418
	IMPORT sub_802E47A
	IMPORT sub_802E4AA
	IMPORT sub_802E5D2
	IMPORT __call_via_r1
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT sub_803FF24
	IMPORT sub_8040148
	IMPORT sub_8040594


	thumb_func_start sub_802C884
sub_802C884
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
	ldr r0, _0802CC68
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x3c]
	str r0, [r4, #0x40]
	adds r0, r4, #0
	b %1

	thumb_func_start sub_802C8B0
sub_802C8B0
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802CC68
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq %3
	adds r0, r4, #0
	bl sub_803DA18
3
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802C8D2
sub_802C8D2
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	sub sp, #0xc
	str r1, [r4, #0x10]
	adds r0, r3, #0
	ldr r3, [r1, #0x2c]
	movs r7, #0xff
	str r3, [r4, #0x14]
	ldr r5, [r1, #0x30]
	lsls r7, r7, #0xb
	str r5, [r4, #0x18]
	ldrb r5, [r3, #5]
	ldr r6, [r4, #0x34]
	adds r3, #0x2c
	bics r6, r7
	lsls r5, r5, #0xb
	orrs r5, r6
	str r5, [r4, #0x34]
	ldr r6, [r3]
	ldr r3, [r3, #4]
	str r3, [r4, #0x20]
	str r6, [r4, #0x1c]
	adds r3, r0, #1
	bne %4
	ldr r0, [r1, #0x7c]
	ldr r1, [r4, #0x34]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #0x34]
	b %5
4
	ldr r1, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	str r0, [r4, #0x34]
5
	movs r1, #0xf
	ldr r0, [r4, #0x34]
	lsls r1, r1, #0x16
	bics r0, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #6
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	ldr r2, _0802CC6C
	lsls r1, r0, #1
	ldrh r1, [r2, r1]
	cmp r0, #8
	str r1, [r4, #0x38]
	bhs %6
	add r3, pc, #0xC
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
6
	b %23
	ALIGN
7
	DCB 0x09, 0x00
8
	DCB 0x75, 0x00
9
	DCB 0xD6, 0x00
10
	DCB 0x41, 0x01
11
	DCB 0xB2, 0x01
12
	DCB 0x1D, 0x02
13
	DCB 0x7E, 0x02
14
	DCB 0xDF, 0x02
loc_802c960
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq %17
	cmp r1, #1
	beq %15
	cmp r1, #2
	beq %16
	cmp r1, #3
	bne %18
	movs r2, #5
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %18
15
	movs r2, #0x17
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %18
16
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %18
17
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
18
	movs r0, #2
	movs r1, #0x44
	strb r0, [r1, r4]
	ldr r0, _0802CC74
	ldrb r0, [r0]
	cmp r0, #0
	beq %23
	ldr r0, _0802CC78
	movs r1, #0
	ldr r0, [r0]
	mvns r1, r1
	adds r0, #0xac
	bl sub_8023A70
	b %23
loc_802ca38
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq %21
	cmp r1, #1
	beq %19
	cmp r1, #2
	beq %20
	cmp r1, #3
	bne %22
	movs r2, #0x1d
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %22
19
	movs r2, #7
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %22
20
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x14
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0xf
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %22
21
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x14
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0x11
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
22
	movs r0, #2
	movs r1, #0x44
	strb r0, [r1, r4]
23
	b %47
loc_802cafa
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq %27
	cmp r1, #1
	beq %24
	cmp r1, #2
	beq %25
	cmp r1, #3
	bne %26
	movs r2, #0x15
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0x11
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %26
24
	movs r2, #5
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x12
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #7
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %26
25
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x13
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0xf
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
26
	b %28
27
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0xf
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
28
	movs r0, #3
	movs r1, #0x44
	strb r0, [r1, r4]
	b %47
loc_802cbd0
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq %32
	cmp r1, #1
	beq %29
	cmp r1, #2
	beq %30
	cmp r1, #3
	bne %31
	movs r2, #3
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x12
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #5
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %31
29
	movs r2, #0x19
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %31
30
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x15
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0x19
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802CC70
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
31
	b %33
	ALIGN
_0802CC68 DCDU __VTABLE__312dword_803E578
_0802CC6C DCDU gUnknown_030032A0
_0802CC70 DCDU 0xFFFE0000
_0802CC74 DCDU gUnknown_03003D20
_0802CC78 DCDU gPlayerEntity
32
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x15
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0x19
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
33
	movs r0, #4
	movs r1, #0x44
	strb r0, [r1, r4]
	b %47
loc_802ccb2
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq %37
	cmp r1, #1
	beq %34
	cmp r1, #2
	beq %35
	cmp r1, #3
	bne %36
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x12
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0x11
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %36
34
	movs r2, #1
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #0x15
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %36
35
	movs r2, #0xf
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #3
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
36
	b %38
37
	movs r2, #0xf
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #3
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
38
	movs r0, #2
	movs r1, #0x44
	strb r0, [r1, r4]
	b %47
loc_802cd88
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq %41
	cmp r1, #1
	beq %39
	cmp r1, #2
	beq %40
	cmp r1, #3
	bne %42
	movs r2, #5
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %42
39
	movs r2, #0x17
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %42
40
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %42
41
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
42
	movs r0, #1
	movs r1, #0x44
	strb r0, [r1, r4]
	b %47
loc_802ce4a
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq %45
	cmp r1, #1
	beq %43
	cmp r1, #2
	beq %44
	cmp r1, #3
	bne %46
	movs r2, #5
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %46
43
	movs r2, #0x17
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %46
44
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %46
45
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
46
	movs r0, #4
	movs r1, #0x44
	strb r0, [r1, r4]
47
	b %52
loc_802cf0c
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq %50
	cmp r1, #1
	beq %48
	cmp r1, #2
	beq %49
	cmp r1, #3
	bne %51
	movs r2, #5
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8
	movs r2, #0xff
	str r1, [r4, #0x28]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %51
48
	movs r2, #0x17
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x28]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %51
49
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	subs r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, _0802D0B8
	movs r2, #0xff
	str r1, [r4, #0x24]
	adds r1, r0, #0
	lsls r2, r2, #0xb
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	b %51
50
	movs r2, #7
	ldr r1, [r4, #0x3c]
	lsls r2, r2, #0x11
	adds r1, r1, r2
	str r1, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	movs r2, #9
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r4, #0x40]
	movs r1, #1
	lsls r1, r1, #0x11
	str r1, [r4, #0x24]
	movs r2, #0xff
	lsls r2, r2, #0xb
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
51
	movs r0, #2
	movs r1, #0x44
	strb r0, [r1, r4]
52
	ldr r7, _0802D0BC
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
	ldr r0, [r4, #4]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bmi %53
	adds r1, r5, #0
	ldr r0, [r7]
	bl sub_80012F0
53
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
	bmi %54
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
54
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r5, [r4, #4]
	movs r6, #1
	ldr r0, [r5]
	lsls r0, r0, #0x1f
	bmi %57
	adds r1, r5, #0
	ldr r0, [r7]
	bl sub_80011D8
	ldr r0, [r5]
	lsls r0, r0, #0x16
	bmi %56
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq %56
	ldr r0, _0802D0C0
	adds r1, r5, #0
	ldr r0, [r0]
	b %55
	ALIGN
_0802D0B8 DCDU 0xFFFE0000
_0802D0BC DCDU gUnknown_03003EB8
_0802D0C0 DCDU gUnknown_03003EA0
55
	bl sub_800CD58
56
	ldr r0, [r5]
	orrs r0, r6
	str r0, [r5]
	lsls r1, r0, #0x1e
	bpl %57
	movs r2, #0xff
	adds r2, #1
	orrs r0, r2
	str r0, [r5]
57
	ldr r0, [r4, #0x34]
	ldr r1, _0802D2D8
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	lsls r0, r0, #1
	ldrsh r0, [r1, r0]
	cmp r0, #0
	blt %58
	ldr r1, _0802D2DC
	lsls r0, r0, #0x18
	ldr r1, [r1]
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_8028C2E
58
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_802D100
sub_802D100
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	adds r5, r4, #0
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	adds r5, #0x1c
	cmp r0, #0
	sub sp, #0xc
	beq %62
	adds r6, r4, #4
	movs r7, #0
	cmp r0, #1
	beq %64
	cmp r0, #2
	bne %61
	ldr r0, _0802D2E0
	ldr r5, [r4, #4]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	mvns r1, r7
	cmp r2, #0
	beq %59
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
59
	lsls r0, r1, #0x10
	ldr r1, [r4, #0x38]
	lsrs r0, r0, #0x10
	adds r1, #2
	cmp r0, r1
	ldr r0, [r4, #4]
	beq %65
	movs r2, #0
	bl sub_80007A0
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bpl %60
	ldr r0, _0802D2E4
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8001338
60
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r7
	str r0, [r5]
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %61
	bl sub_8000914
61
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
62
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	beq %63
	ldr r0, [r4, #0x14]
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r0, [r5, #4]
	str r1, [r5]
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
	b %61
63
	ldr r1, [r4, #0x38]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r0, [r5]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, [r4, #0x34]
	movs r1, #7
	lsls r1, r1, #8
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
	b %61
64
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
	beq %66
	cmp r0, #0
	beq %61
	ldr r0, _0802D2E4
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r4, #4]
	b %61
65
	b %67
66
	adds r1, r5, #0
	bl sub_803FF24
	b %61
67
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %61
	cmp r0, #0
	beq %61
	ldr r0, _0802D2E4
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r4, #4]
	b %61

	thumb_func_start sub_802D23C
sub_802D23C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_802E47A
	ldr r0, [r4, #0x34]
	ldr r1, _0802D2D8
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	lsls r0, r0, #1
	ldrsh r1, [r1, r0]
	cmp r1, #0
	blt %68
	ldr r5, _0802D2DC
	lsls r1, r1, #0x18
	ldr r0, [r5]
	lsrs r4, r1, #0x13
	adds r0, r4, r0
	bl sub_8028BE4
	cmp r0, #0
	beq %68
	ldr r0, [r5]
	adds r0, r4, r0
	bl sub_80268AC
68
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802D274
sub_802D274
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #2
	bpl %69
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
	ldr r0, [r4, #0x34]
	ldr r5, [r4, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r4, #0x5a
	muls r4, r0
	adds r0, r4, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r4
	lsrs r2, r4, #1
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
69
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802D2D0
sub_802D2D0
	adds r0, #0x40
	ldrb r0, [r0, #4]
	bx lr
	ALIGN
_0802D2D8 DCDU gUnknown_030032B0
_0802D2DC DCDU gUnknown_0300345C
_0802D2E0 DCDU gUnknown_03003EA0
_0802D2E4 DCDU gUnknown_03003EB8
	END
