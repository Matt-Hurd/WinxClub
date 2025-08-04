	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_030032C0
	IMPORT gUnknown_030032E8
	IMPORT gUnknown_03003304
	IMPORT gUnknown_03003328
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003D20
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT __VTABLE__372dword_803ED28
	IMPORT sub_800065C
	IMPORT sub_8000D5A
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_80012F0
	IMPORT sub_8023A70
	IMPORT sub_8028C2E
	IMPORT sub_802E418
	IMPORT sub_802E4AA
	IMPORT __call_via_r1
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT sub_803FF24
	IMPORT sub_8040148
	IMPORT sub_80401E4
	IMPORT sub_8040594


	thumb_func_start sub_802D2E8
sub_802D2E8
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
	ldr r0, _0802D6C0
	movs r1, #0x1e
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x48]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	bics r0, r1
	lsls r1, r1, #4
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #0xf
	lsls r1, r1, #0xf
	bics r0, r1
	str r0, [r4, #0x48]
	adds r0, r4, #0
	b %1

	non_word_aligned_thumb_func_start sub_802D32E
sub_802D32E
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802D6C0
	adds r5, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0x48]
	lsls r0, r0, #0x16
	bpl %3
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq %3
	ldr r0, _0802D6C4
	adds r1, r4, #0
	adds r1, #0x44
	ldr r0, [r0]
	bl sub_8000DE6
3
	ldr r1, [r4, #0x14]
	ldr r2, [r1]
	lsls r0, r2, #0x14
	lsrs r3, r0, #0x1f
	beq %4
	asrs r0, r0, #0x1f
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x14
	bics r2, r3
	orrs r0, r2
	str r0, [r1]
4
	movs r1, #0
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq %5
	adds r0, r4, #0
	bl sub_803DA18
5
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802D384
sub_802D384
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
	movs r3, #1
	str r3, [r4, #0x24]
	movs r3, #0
	str r3, [r4, #0x28]
	adds r3, r0, #1
	bne %6
	ldr r0, [r1, #0x7c]
	ldr r1, [r4, #0x34]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #0x34]
	b %7
6
	ldr r1, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	str r0, [r4, #0x34]
7
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
	ldr r3, _0802D6C8
	lsls r1, r0, #1
	ldrh r1, [r3, r1]
	cmp r0, #5
	str r1, [r4, #0x38]
	bhs %8
	add r3, pc, #0x8
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
8
	b %34
9
	DCB 0x05, 0x00
10
	DCB 0x05, 0x00
11
	DCB 0x05, 0x00
12
	DCB 0xAE, 0x00
13
	DCB 0x39, 0x01
loc_802d412
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq %17
	cmp r1, #1
	beq %14
	cmp r1, #2
	beq %15
	cmp r1, #3
	bne %16
	movs r3, #0xff
	adds r1, r0, #0
	movs r5, #1
	lsls r5, r5, #0xb
	lsls r3, r3, #0xb
	adds r0, r0, r5
	ands r0, r3
	bics r1, r3
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802D6CC
	lsls r0, r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r5, #5
	str r1, [r4, #0x3c]
	b %16
14
	movs r3, #0xff
	adds r1, r0, #0
	movs r5, #1
	lsls r5, r5, #0xb
	lsls r3, r3, #0xb
	subs r0, r0, r5
	ands r0, r3
	bics r1, r3
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802D6CC
	lsls r0, r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	movs r1, #0
	str r1, [r4, #0x3c]
	b %16
15
	movs r3, #0xff
	adds r1, r0, #0
	movs r5, #1
	lsls r5, r5, #0xb
	lsls r3, r3, #0xb
	subs r0, r0, r5
	ands r0, r3
	bics r1, r3
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802D6CC
	lsls r0, r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x11
	str r0, [r4, #0x40]
16
	b %18
17
	movs r3, #0xff
	adds r1, r0, #0
	movs r5, #1
	lsls r5, r5, #0xb
	lsls r3, r3, #0xb
	subs r0, r0, r5
	ands r0, r3
	bics r1, r3
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802D6CC
	lsls r0, r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #9
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
18
	ldr r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	beq %21
	cmp r0, #1
	beq %22
	cmp r0, #2
	bne %19
	movs r1, #0x1f
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xa
	bics r0, r1
	movs r1, #7
	lsls r1, r1, #0xa
	adds r0, r0, r1
	movs r5, #0xc
	mvns r5, r5
	str r0, [r4, #0x48]
19
	ldr r0, _0802D6D0
	adds r2, #0x3a
	lsls r1, r2, #0x18
	ldr r0, [r0]
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
	ldr r0, _0802D6D4
	ldrb r0, [r0]
	cmp r0, #0
	beq %20
	ldr r0, _0802D6D8
	adds r1, r5, #0
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023A70
20
	movs r1, #0xf
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #5
	lsls r1, r1, #0x10
	adds r0, r0, r1
	movs r1, #1
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r4, #0x48]
	b %34
21
	movs r1, #0x1f
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xa
	bics r0, r1
	movs r1, #9
	lsls r1, r1, #0xb
	adds r0, r0, r1
	movs r5, #0x15
	mvns r5, r5
	str r0, [r4, #0x48]
	b %19
22
	movs r1, #0x1f
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xa
	bics r0, r1
	movs r1, #7
	lsls r1, r1, #0xb
	adds r0, r0, r1
	movs r5, #0x11
	mvns r5, r5
	str r0, [r4, #0x48]
	b %19
loc_802d564
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq %26
	cmp r1, #1
	beq %23
	cmp r1, #2
	beq %24
	cmp r1, #3
	bne %25
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802D6DC
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	movs r1, #0
	str r1, [r4, #0x3c]
	b %25
23
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802D6DC
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	movs r1, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r1, #0x11
	str r1, [r4, #0x3c]
	b %25
24
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802D6DC
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #7
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
25
	b %27
26
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802D6DC
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
27
	ldr r0, [r4, #0x14]
	movs r3, #1
	ldr r2, [r0]
	lsls r3, r3, #0xb
	lsls r1, r2, #0x14
	asrs r1, r1, #0x1f
	adds r1, #1
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x14
	bics r2, r3
	orrs r1, r2
	str r1, [r0]
	movs r1, #0xf
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #7
	lsls r1, r1, #0xf
	adds r0, r0, r1
	lsrs r1, r3, #2
	bics r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0xa
	bics r0, r1
	adds r0, r0, r3
	str r0, [r4, #0x48]
	b %34
loc_802d67a
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq %31
	cmp r1, #1
	beq %28
	cmp r1, #2
	beq %30
	cmp r1, #3
	bne %29
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802D6E0
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	movs r1, #0
	str r1, [r4, #0x3c]
	b %29
	ALIGN
_0802D6C0 DCDU __VTABLE__372dword_803ED28
_0802D6C4 DCDU gUnknown_03003EB8
_0802D6C8 DCDU gUnknown_03003328
_0802D6CC DCDU gUnknown_030032C0
_0802D6D0 DCDU gUnknown_0300345C
_0802D6D4 DCDU gUnknown_03003D20
_0802D6D8 DCDU gPlayerEntity
_0802D6DC DCDU gUnknown_030032E8
_0802D6E0 DCDU gUnknown_03003304
28
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DAB4
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	movs r1, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r1, #0x10
	str r1, [r4, #0x3c]
29
	b %33
30
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DAB4
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	b %33
31
	b %32
32
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DAB4
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
33
	ldr r0, [r4, #0x14]
	movs r3, #1
	ldr r2, [r0]
	lsls r3, r3, #0xb
	lsls r1, r2, #0x14
	asrs r1, r1, #0x1f
	adds r1, #1
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x14
	bics r2, r3
	orrs r1, r2
	str r1, [r0]
	movs r1, #0xf
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #9
	lsls r1, r1, #0xf
	adds r0, r0, r1
	lsrs r1, r3, #2
	bics r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0xa
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	str r0, [r4, #0x48]
34
	ldr r7, _0802DAB8
	ldr r0, [r7]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	bl sub_800065C
	ldr r0, [r4, #4]
	movs r2, #2
	ldr r1, [r0]
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
	bmi %35
	adds r1, r5, #0
	ldr r0, [r7]
	bl sub_80012F0
35
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
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r1, [r4, #0x34]
	ldr r0, [r4, #4]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	ldrh r2, [r0, #0x2a]
	lsls r3, r1, #0x18
	movs r5, #3
	lsls r5, r5, #0xa
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	bics r2, r5
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %36
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
36
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
	ldr r0, [r4, #0x48]
	lsls r0, r0, #0x16
	bpl %38
	ldr r0, [r7]
	bl sub_800116A
	str r0, [r4, #0x44]
	ldr r1, [r4, #0x38]
	ldr r2, [r4, #0x48]
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1c
	adds r1, r1, r2
	bl sub_800065C
	ldr r0, [r4, #0x44]
	movs r2, #2
	ldr r1, [r0]
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
	ldr r0, [r4, #0x44]
	add r1, sp, #4
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #0x44]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r7, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r7, r0
	adds r0, r7, #0
	ldr r6, [r4, #0x44]
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
	strh r1, [r6, #0x24]
	ldr r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r6]
	ldr r1, [r4, #0x34]
	ldr r0, [r4, #0x44]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	adds r1, #1
	ldrh r2, [r0, #0x2a]
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	bics r2, r5
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %37
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
37
	movs r1, #1
	ldr r0, [r4, #0x44]
	bl sub_80401E4
38
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_802D920
sub_802D920
	push {r4, r5, r6, lr}
	ldr r1, [r0]
	adds r4, r0, #0
	ldr r2, [r1, #0x18]
	sub sp, #8
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [r4, #0x48]
	lsls r0, r0, #0x16
	bpl %40
	ldr r0, [r4, #0x44]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %39
	movs r1, #0
	bl sub_80401E4
	b %40
39
	movs r1, #1
	bl sub_80401E4
40
	ldr r1, [r4, #0x48]
	lsls r0, r1, #0x1f
	bmi %50
	movs r0, #0xff
	adds r2, r1, #0
	adds r0, #0xe1
	adds r1, #0x20
	ands r1, r0
	bics r2, r0
	orrs r1, r2
	lsls r2, r1, #0x17
	lsrs r2, r2, #0x1c
	movs r5, #0
	cmp r2, #8
	str r1, [r4, #0x48]
	bls %41
	bics r1, r0
	adds r0, r1, #0
	adds r0, #0x20
	adds r1, r0, #0
	movs r2, #0x1e
	adds r0, #2
	ands r0, r2
	bics r1, r2
	orrs r1, r0
	lsls r0, r1, #0x1b
	str r1, [r4, #0x48]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, r1
	bhs %48
	ldr r1, [r4, #0x38]
	adds r1, r1, r0
	ldr r0, [r4, #4]
	bl sub_800065C
	ldr r0, [r4, #0x48]
	lsls r1, r0, #0x16
	bpl %41
	lsls r2, r0, #0xd
	ldr r1, [r4, #0x38]
	lsrs r2, r2, #0x1c
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r4, #0x44]
	bl sub_800065C
41
	ldr r0, [r4, #4]
	cmp r0, #0
	beq %50
	ldr r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	cmp r0, #5
	bhs %42
	add r3, pc, #0x8
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
42
	b %53
43
	DCB 0x1B, 0x00
44
	DCB 0x1B, 0x00
45
	DCB 0x1B, 0x00
46
	DCB 0x95, 0x00
47
	DCB 0x05, 0x01
48
	ldr r6, _0802DAB8
	adds r1, r4, #4
	ldr r0, [r6]
	bl sub_8000DE6
	ldr r0, [r4, #0x48]
	lsls r0, r0, #0x16
	bpl %49
	adds r1, r4, #0
	adds r1, #0x44
	ldr r0, [r6]
	bl sub_8000DE6
49
	str r5, [r4, #4]
	ldr r0, [r4, #0x48]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0x48]
50
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3
loc_802da02
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq %54
	cmp r1, #1
	beq %51
	cmp r1, #2
	beq %52
	cmp r1, #3
	bne %53
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802DABC
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	movs r1, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r1, #0x10
	str r1, [r4, #0x3c]
	b %53
51
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802DABC
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	str r5, [r4, #0x3c]
	b %53
52
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802DABC
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x11
	str r0, [r4, #0x40]
53
	b %57
	ALIGN
_0802DAB4 DCDU gUnknown_03003304
_0802DAB8 DCDU gUnknown_03003EB8
_0802DABC DCDU gUnknown_030032C0
54
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802DDCC
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #9
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	b %57
loc_802daf6
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq %58
	cmp r1, #1
	beq %55
	cmp r1, #2
	beq %56
	cmp r1, #3
	bne %57
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD0
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	str r5, [r4, #0x3c]
	b %57
55
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD0
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	movs r1, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r1, #0x11
	str r1, [r4, #0x3c]
	b %57
56
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD0
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #7
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
57
	b %61
58
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD0
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	b %61
loc_802dbd6
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq %62
	cmp r1, #1
	beq %59
	cmp r1, #2
	beq %60
	cmp r1, #3
	bne %61
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD4
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	str r5, [r4, #0x3c]
	b %61
59
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD4
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	movs r1, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r1, #0x10
	str r1, [r4, #0x3c]
	b %61
60
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD4
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
61
	b %63
62
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD4
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
63
	ldr r1, [r4, #0x14]
	adds r1, #0x2c
	ldr r2, [r1]
	ldr r1, [r1, #4]
	str r1, [r4, #0x20]
	str r2, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	adds r0, r2, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x40]
	adds r1, r1, r2
	ldr r2, [r4, #0x24]
	adds r0, r0, r2
	ldr r2, [r4, #0x28]
	str r0, [sp]
	adds r1, r1, r2
	str r1, [sp, #4]
	ldr r0, [r4, #4]
	mov r1, sp
	bl sub_803FF24
	ldr r0, [r4, #0x48]
	lsls r0, r0, #0x16
	bmi %64
	b %50
64
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	adds r1, r1, r2
	ldr r2, [r4, #0x24]
	adds r0, r0, r2
	ldr r2, [r4, #0x28]
	str r0, [sp]
	adds r1, r1, r2
	str r1, [sp, #4]
	ldr r0, [r4, #0x44]
	mov r1, sp
	bl sub_803FF24
	b %50

	thumb_func_start sub_802DD08
sub_802DD08
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	movs r1, #0
	movs r2, #0
	stm r0!, {r1, r2}
	movs r6, #1
	lsls r6, r6, #0x1d
	ldr r5, [r4, #4]
	lsrs r7, r6, #4
	cmp r5, #0
	beq %65
	ldr r0, _0802DDD8
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r5, #0x10]
	lsrs r3, r6, #1
	subs r0, r1, r0
	ldr r1, [r4, #0x2c]
	asrs r0, r0, #3
	lsls r0, r0, #0x13
	lsrs r1, r1, #0xd
	lsls r1, r1, #0xd
	lsrs r0, r0, #0x13
	orrs r1, r0
	adds r2, r1, #0
	str r2, [r4, #0x2c]
	ldr r0, [r4, #4]
	bics r2, r3
	ldr r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x1c
	orrs r2, r1
	str r2, [r4, #0x2c]
	ldr r1, [r0]
	lsls r2, r2, #1
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x1f
	lsrs r2, r2, #1
	orrs r2, r1
	str r2, [r4, #0x2c]
	ldr r1, [r0]
	bics r2, r7
	lsls r1, r1, #0x1f
	lsrs r1, r1, #6
	orrs r1, r2
	orrs r1, r6
	str r1, [r4, #0x2c]
	ldrb r0, [r0, #5]
	cmp r0, #0x42
	bhi %65
	lsls r0, r3, #2
	orrs r0, r1
	str r0, [r4, #0x2c]
65
	ldr r5, [r4, #0x44]
	cmp r5, #0
	beq %66
	ldr r0, _0802DDD8
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r5, #0x10]
	movs r3, #1
	subs r0, r1, r0
	ldr r1, [r4, #0x30]
	asrs r0, r0, #3
	lsls r0, r0, #0x13
	lsrs r1, r1, #0xd
	lsls r1, r1, #0xd
	lsrs r0, r0, #0x13
	orrs r1, r0
	adds r2, r1, #0
	str r2, [r4, #0x30]
	ldr r0, [r4, #0x44]
	lsls r3, r3, #0x1c
	ldr r1, [r0]
	bics r2, r3
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x1c
	orrs r1, r2
	str r1, [r4, #0x30]
	ldr r0, [r0]
	bics r1, r7
	lsls r0, r0, #0x1f
	lsrs r0, r0, #6
	orrs r0, r1
	orrs r0, r6
	str r0, [r4, #0x30]
66
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0802DDCC DCDU gUnknown_030032C0
_0802DDD0 DCDU gUnknown_030032E8
_0802DDD4 DCDU gUnknown_03003304
_0802DDD8 DCDU gUnknown_03003EA0
	END
