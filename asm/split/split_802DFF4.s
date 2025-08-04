	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003332
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT __VTABLE__376dword_803EDA0
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_800116A
	IMPORT sub_80011D8
	IMPORT sub_80012F0
	IMPORT sub_8001338
	IMPORT sub_800CD58
	IMPORT sub_80268AC
	IMPORT sub_8028BE4
	IMPORT sub_8028C2E
	IMPORT sub_802E418
	IMPORT sub_802E4AA
	IMPORT __call_via_r1
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT sub_803FF24

	thumb_func_start sub_802DFF4
sub_802DFF4
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0x40
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
	ldr r0, _0802E370
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r1, [r0, #0xc]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0
	strb r1, [r0, #0xf]
	adds r0, r4, #0
	b %1

	non_word_aligned_thumb_func_start sub_802E02A
sub_802E02A
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802E370
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

	thumb_func_start sub_802E04C
sub_802E04C
	push {r3, r4, r5, r6, r7, lr}
	str r1, [r0, #0x10]
	adds r4, r0, #0
	ldr r0, [r1, #0x2c]
	movs r5, #0xff
	str r0, [r4, #0x14]
	ldrb r1, [r0, #5]
	ldr r3, [r4, #0x34]
	lsls r5, r5, #0xb
	adds r1, #0xff
	lsls r1, r1, #0x18
	lsrs r1, r1, #0xd
	bics r3, r5
	orrs r1, r3
	str r1, [r4, #0x34]
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	adds r6, r4, #0
	str r0, [r4, #0x20]
	str r1, [r4, #0x1c]
	adds r0, r1, #0
	movs r1, #1
	lsls r1, r1, #0x10
	subs r0, r0, r1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r1, #3
	lsls r1, r1, #0x10
	adds r0, r0, r1
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x34]
	movs r1, #0xf
	lsls r1, r1, #0x16
	bics r0, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #6
	orrs r0, r1
	lsls r1, r0, #6
	lsrs r1, r1, #0x1c
	ldr r2, _0802E374
	lsls r1, r1, #1
	str r0, [r4, #0x34]
	ldrh r1, [r2, r1]
	adds r6, #0x1c
	adds r5, r4, #0
	str r1, [r4, #0x38]
	movs r1, #7
	lsls r1, r1, #8
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #0x34]
	adds r5, #0x30
	ldrb r0, [r5, #0xc]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	strb r0, [r5, #0xc]
	ldr r0, _0802E378
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	movs r2, #2
	ldr r1, [r0]
	movs r7, #1
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #4]
	adds r1, r6, #0
	bl sub_803FF24
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x34]
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
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
	bmi %4
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
4
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r6, [r4, #4]
	ldr r0, [r6]
	lsls r0, r0, #0x1f
	bmi %6
	ldr r0, _0802E378
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_80011D8
	ldr r0, [r6]
	lsls r0, r0, #0x16
	bmi %5
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq %5
	ldr r0, _0802E37C
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_800CD58
5
	ldr r0, [r6]
	orrs r0, r7
	str r0, [r6]
	lsls r1, r0, #0x1e
	bpl %6
	movs r2, #0xff
	adds r2, #1
	orrs r0, r2
	str r0, [r6]
6
	ldr r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	cmp r0, #5
	bhs %13
	add r3, pc, #0x8
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
7
	DCB 0x03
8
	DCB 0x08
9
	DCB 0x0C
10
	DCB 0x10
11
	DCB 0x27, 0x00
loc_802e16e
	movs r0, #3
	strb r0, [r5, #0xd]
	movs r0, #2
	strb r0, [r5, #0xe]
	b %13
loc_802e178
	movs r0, #0
	strb r0, [r5, #0xd]
	strb r7, [r5, #0xe]
	b %13
loc_802e180
	movs r0, #2
	strb r0, [r5, #0xd]
	strb r7, [r5, #0xe]
	b %13
loc_802e188
	movs r0, #2
	strb r0, [r5, #0xd]
	movs r1, #0
	strb r1, [r5, #0xe]
	movs r0, #0x78
	strb r0, [r5, #0xf]
	str r1, [r4, #0x28]
	str r7, [r4, #0x24]
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bmi %12
	ldr r0, _0802E378
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80012F0
12
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r5]
	b %13
loc_802e1b6
	movs r0, #0
	strb r0, [r5, #0xd]
	strb r0, [r5, #0xe]
13
	ldr r0, _0802E380
	ldr r0, [r0]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x3d
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028C2E
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802E1D6
sub_802E1D6
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r0, #0
	ldr r0, [r0, #0x14]
	adds r6, #0x1c
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	sub sp, #0xc
	str r0, [r6, #4]
	str r1, [r6]
	movs r1, #1
	ldr r0, [r4, #0x1c]
	lsls r1, r1, #0x10
	subs r0, r0, r1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r1, #3
	lsls r1, r1, #0x10
	adds r0, r0, r1
	str r0, [r4, #0x20]
	ldr r1, [r4, #0x34]
	adds r5, r4, #0
	movs r7, #7
	lsls r0, r1, #0x15
	lsrs r0, r0, #0x1d
	lsls r7, r7, #8
	adds r5, #0x30
	cmp r0, #0
	beq %16
	cmp r0, #1
	beq %18
	cmp r0, #2
	bne %17
	ldr r0, _0802E37C
	ldr r5, [r4, #4]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq %14
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
14
	lsls r0, r1, #0x10
	ldr r1, [r4, #0x38]
	lsrs r0, r0, #0x10
	adds r1, #2
	cmp r0, r1
	ldr r0, [r4, #4]
	beq %21
	movs r2, #0
	bl sub_80007A0
	ldr r5, [r4, #4]
	movs r7, #0
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bpl %15
	ldr r0, _0802E378
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8001338
15
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r7
	str r0, [r5]
	b %17
16
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %17
	ldr r1, [r4, #0x38]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r0, [r4, #0x34]
	movs r1, #1
	bics r0, r7
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
	ldrb r0, [r5, #0xc]
	orrs r0, r1
	strb r0, [r5, #0xc]
17
	b %24
18
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq %20
	adds r0, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r5, #0xf]
	bne %19
	movs r0, #1
	lsls r0, r0, #0x13
	bics r1, r0
	str r1, [r4, #0x34]
19
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x24]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x28]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
20
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0xc
	bmi %24
	movs r1, #1
	lsls r1, r1, #9
	bics r0, r7
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrb r1, [r5, #0xc]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	lsrs r1, r1, #1
	lsls r1, r1, #1
	strb r1, [r5, #0xc]
	ldr r5, _0802E380
	adds r0, #0x3d
	ldr r1, [r5]
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028BE4
	cmp r0, #0
	beq %24
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x3d
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
	b %24
21
	b %22
22
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %24
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl __call_via_r1
23
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
24
	adds r1, r6, #0
	ldr r0, [r4, #4]
	bl sub_803FF24
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #4]
	ldrb r0, [r0, #5]
	ldrb r3, [r2, #5]
	subs r0, #1
	adds r1, r0, #0
	cmp r0, r3
	beq %23
	ldrh r0, [r2, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r0, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r0, r3
	strh r0, [r2, #0x2a]
	strb r1, [r2, #5]
	ldr r0, [r2]
	lsls r1, r0, #0x16
	bmi %23
	movs r1, #0x80
	orrs r0, r1
	str r0, [r2]
	b %23
	ALIGN
_0802E370 DCDU __VTABLE__376dword_803EDA0
_0802E374 DCDU gUnknown_03003332
_0802E378 DCDU gUnknown_03003EB8
_0802E37C DCDU gUnknown_03003EA0
_0802E380 DCDU gUnknown_0300345C
	END
