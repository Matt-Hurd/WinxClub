	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EA4
	IMPORT __VTABLE__346dword_803EC68
	IMPORT __VTABLE__364dword_803ECE0
	IMPORT sub_800075E
	IMPORT sub_8002580
	IMPORT sub_8002614
	IMPORT sub_800D912
	IMPORT sub_800DEF8
	IMPORT __call_via_r1
	IMPORT __16_ll_shift_l
	IMPORT __16_ll_srdv
	IMPORT __16__rt_memclr_w
	IMPORT __16__rt_memset
	IMPORT __vecmap1c__FPvT1iPFPv_v
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT sub_804036C

	thumb_func_start sub_8001A60
sub_8001A60
	push {r3, lr}
	cmp r0, #0
	bne %1
	movs r0, #0x2c
	bl __nw__FUi
	cmp r0, #0
	beq %2
1
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	strb r1, [r0, #0x10]
	str r1, [r0, #0x14]
	strb r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	movs r2, #0x20
	strb r1, [r2, r0]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
2
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_8001A90
sub_8001A90
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bne %4
	ldr r0, _08001E7C
	bl __nw__FUi
	adds r4, r0, #0
	bne %4
	adds r0, r4, #0
3
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
4
	ldr r0, _08001E80
	str r0, [r4]
	ldr r0, _08001E84
	str r4, [r0]
	ldr r0, _08001E88
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x14
	bl sub_8002580
	movs r0, #0x4d
	lsls r0, r0, #5
	adds r1, r4, r0
	subs r0, #0xff
	subs r0, #0x61
	adds r0, r4, r0
	movs r2, #0x58
	adds r6, r0, #0
	ldr r3, _08001E8C
	bl __vecmap1c__FPvT1iPFPv_v
	ldr r0, _08001E90
	movs r1, #0xff
	adds r5, r4, r0
	adds r0, #0x14
	adds r7, r4, r0
	adds r1, #0x61
	adds r0, r6, #0
	bl __16__rt_memclr_w
	movs r0, #0x13
	lsls r0, r0, #7
	adds r0, r4, r0
	movs r6, #0
	str r6, [r0, #0x20]
	str r6, [r0, #0x24]
	str r6, [r5]
	str r6, [r5, #4]
	str r6, [r5, #8]
	movs r0, #0x27
	lsls r0, r0, #6
	str r6, [r5, #0xc]
	adds r5, r4, r0
	str r6, [r5, #0xc]
	strb r6, [r7]
	strb r6, [r7, #1]
	str r6, [r5, #0x14]
	str r6, [r5, #0x18]
	ldr r0, [r5, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r5, #0x3c]
	ldr r0, _08001E94
	str r6, [r4, #8]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	adds r0, r4, r0
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	movs r0, #5
	lsls r0, r0, #9
	adds r0, r4, r0
	str r6, [r0]
	ldr r0, _08001E98
	movs r2, #4
	movs r1, #0xff
	adds r0, r4, r0
	bl __16__rt_memset
	str r6, [r4, #4]
	str r6, [r4, #0xc]
	str r6, [r4, #0x10]
	ldr r0, [r5, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x1a
	bics r0, r1
	str r0, [r5, #0x3c]
	adds r0, r4, #0
	b %3

	non_word_aligned_thumb_func_start sub_8001B4A
sub_8001B4A
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08001E88
	adds r5, r1, #0
	movs r1, #1
	str r0, [r4]
	adds r0, r4, #0
	bl sub_800D912
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0x14
	bl sub_8002614
	ldr r0, _08001E80
	ldr r1, _08001E84
	str r0, [r4]
	movs r0, #0
	str r0, [r1]
	cmp r5, #0
	beq %5
	adds r0, r4, #0
	bl sub_803DA18
5
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8001B80
sub_8001B80
	push {r4, r5, r6}
	ldr r5, [r0, #8]
	movs r4, #0
	movs r3, #0
	cmp r5, #0
	bls %10
	ldr r0, [r0, #0x20]
6
	lsls r6, r3, #2
	ldr r6, [r0, r6]
	ldr r6, [r6]
	lsls r6, r6, #0x1c
	lsrs r6, r6, #0x1c
	cmp r6, r2
	bne %9
	cmp r4, r1
	bne %8
	lsls r1, r3, #2
	ldr r0, [r0, r1]
7
	pop {r4, r5, r6}
	bx lr
8
	adds r4, #1
9
	adds r3, #1
	cmp r5, r3
	bhi %6
10
	movs r0, #0
	b %7

	thumb_func_start sub_8001BB4
sub_8001BB4
	push {r4, r5, r6, lr}
	ldr r0, [r1, #8]
	adds r6, r2, #0
	adds r4, r1, #0
	cmp r0, #0
	beq %11
	ldr r1, [r6, #4]
	cmp r1, #0
	beq %11
	adds r0, r4, #0
	bl __call_via_r1
11
	ldr r2, [r4, #8]
	movs r1, #0
	movs r0, #0
	movs r3, #0
	cmp r2, #0
	bls %15
	ldr r4, [r4, #0x20]
12
	lsls r5, r0, #2
	ldr r5, [r4, r5]
	ldr r5, [r5]
	lsls r5, r5, #0x1c
	lsrs r5, r5, #0x1c
	cmp r5, #2
	bne %14
	cmp r1, #0
	bne %13
	lsls r0, r0, #2
	ldr r3, [r4, r0]
	b %15
13
	adds r1, #1
14
	adds r0, #1
	cmp r2, r0
	bhi %12
15
	adds r4, r3, #0
	beq %17
	ldr r0, [r6, #4]
	cmp r0, #0
	beq %17
	ldr r0, [r4, #4]
	movs r5, #0
	cmp r0, #0
	bls %17
16
	ldr r0, [r4, #0x10]
	ldr r1, [r6, #8]
	bl __call_via_r1
	ldr r0, [r4, #4]
	adds r5, #1
	cmp r0, r5
	bhi %16
17
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8001C22
sub_8001C22
	push {r0, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r7, [sp, #0x38]
	movs r0, #0x13
	lsls r0, r0, #7
	adds r5, r7, r0
	ldr r6, [r5, #0x20]
	adds r0, #0x40
	adds r6, #0x38
	adds r4, r7, r0
	ldr r0, [r4, #0xc]
	ldr r1, [r0]
	lsls r1, r1, #0x1e
	bpl %18
	ldr r0, [r0, #0x34]
	ldr r1, [r6]
	subs r0, r0, r1
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x18
	adds r0, r1, r0
	asrs r0, r0, #8
	str r0, [sp, #0x14]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x38]
	ldr r1, [r6, #4]
	subs r0, r0, r1
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x18
	adds r0, r1, r0
	asrs r0, r0, #8
	str r0, [sp, #0x18]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x3c]
	ldr r1, [r6]
	subs r0, r0, r1
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x18
	adds r0, r1, r0
	asrs r0, r0, #8
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x40]
	ldr r1, [r6, #4]
	subs r0, r0, r1
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x18
	adds r0, r1, r0
	asrs r0, r0, #8
	str r0, [sp, #0x20]
	b %19
18
	add r1, sp, #0x14
	bl sub_800075E
	ldr r0, [sp, #0x14]
	lsls r0, r0, #8
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	lsls r0, r0, #8
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	lsls r0, r0, #8
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	lsls r0, r0, #8
	str r0, [sp, #0x20]
19
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	adds r0, r0, r1
	ldr r1, [sp, #0x18]
	movs r3, #1
	adds r1, r1, r2
	ldr r2, [r4, #0x3c]
	lsls r3, r3, #0x19
	bics r2, r3
	str r2, [r4, #0x3c]
	ldr r2, [r4]
	ldr r7, [sp, #0x38]
	movs r3, #0x9d
	lsls r3, r3, #4
	asrs r1, r1, #1
	subs r2, r1, r2
	adds r7, r7, r3
	asrs r0, r0, #1
	cmp r2, #0
	bge %22
	movs r3, #1
	ldrsb r1, [r7, r3]
	ldr r3, _08001E9C
	asrs r2, r1
	adds r1, r2, #0
	cmp r2, r3
	bge %20
	lsls r1, r3, #8
	str r1, [sp, #0x10]
	ldr r1, [r4, #0x3c]
	movs r2, #1
	lsls r2, r2, #0x19
	orrs r1, r2
	str r1, [r4, #0x3c]
	b %25
20
	movs r2, #0xff
	mvns r2, r2
	cmp r1, r2
	ble %21
	movs r1, #0
	str r1, [sp, #0x10]
	b %25
21
	lsls r1, r1, #8
	str r1, [sp, #0x10]
	ldr r1, [r4, #0x3c]
	movs r2, #1
	lsls r2, r2, #0x19
	orrs r1, r2
	str r1, [r4, #0x3c]
	b %25
22
	ldr r2, [r4, #8]
	subs r1, r1, r2
	cmp r1, #0
	ble %25
	movs r3, #1
	ldrsb r2, [r7, r3]
	asrs r1, r2
	movs r2, #7
	lsls r2, r2, #8
	cmp r1, r2
	ble %23
	lsls r1, r2, #8
	str r1, [sp, #0x10]
	ldr r1, [r4, #0x3c]
	lsls r2, r3, #0x19
	orrs r1, r2
	str r1, [r4, #0x3c]
	b %25
23
	movs r2, #0xff
	adds r2, #1
	cmp r1, r2
	bge %24
	movs r1, #0
	str r1, [sp, #0x10]
	b %25
24
	lsls r1, r1, #8
	str r1, [sp, #0x10]
	ldr r1, [r4, #0x3c]
	movs r2, #1
	lsls r2, r2, #0x19
	orrs r1, r2
	str r1, [r4, #0x3c]
25
	ldr r1, [r5, #0x3c]
	subs r1, r0, r1
	bpl %28
	movs r3, #0
	ldrsb r2, [r7, r3]
	asrs r1, r2
	adds r0, r1, #0
	ldr r1, _08001E9C
	cmp r0, r1
	bge %26
	lsls r1, r1, #8
	str r1, [sp, #0xc]
	ldr r0, [r4, #0x3c]
	movs r2, #1
	lsls r2, r2, #0x19
	orrs r0, r2
	str r0, [r4, #0x3c]
	b %31
26
	movs r2, #0xff
	mvns r2, r2
	cmp r0, r2
	ble %27
	movs r0, #0
	str r0, [sp, #0xc]
	b %31
27
	lsls r0, r0, #8
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x3c]
	movs r2, #1
	lsls r2, r2, #0x19
	orrs r0, r2
	str r0, [r4, #0x3c]
	b %31
28
	ldr r1, [r4, #4]
	subs r0, r0, r1
	cmp r0, #0
	ble %31
	movs r3, #0
	ldrsb r1, [r7, r3]
	movs r2, #7
	lsls r2, r2, #8
	asrs r0, r1
	cmp r0, r2
	ble %29
	lsls r1, r2, #8
	str r1, [sp, #0xc]
	ldr r0, [r4, #0x3c]
	movs r2, #1
	lsls r2, r2, #0x19
	orrs r0, r2
	str r0, [r4, #0x3c]
	b %31
29
	movs r2, #0xff
	adds r2, #1
	cmp r0, r2
	bge %30
	movs r0, #0
	str r0, [sp, #0xc]
	b %31
30
	lsls r0, r0, #8
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x3c]
	movs r2, #1
	lsls r2, r2, #0x19
	orrs r0, r2
	str r0, [r4, #0x3c]
31
	ldr r0, [r5, #0x38]
	str r0, [sp, #0x34]
	cmp r0, #0
	beq %33
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne %32
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq %33
32
	ldr r0, [sp, #0xc]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	bl __16_ll_shift_l
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	str r1, [sp, #8]
	add r3, sp, #4
	ldm r3!, {r2, r3}
	asrs r1, r0, #0x1f
	bl __16_ll_srdv
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	bl __16_ll_shift_l
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r5, #0x38]
	add r3, sp, #4
	ldm r3!, {r2, r3}
	asrs r1, r0, #0x1f
	bl __16_ll_srdv
	str r0, [sp, #0x10]
33
	ldr r0, [r5, #0x20]
	ldr r0, [r0, #0x50]
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	bmi %37
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq %34
	str r0, [sp, #8]
	b %35
34
	movs r3, #0
	ldrsb r0, [r7, r3]
	movs r1, #1
	lsls r1, r0
	lsls r0, r1, #0x10
	str r0, [sp, #8]
35
	ldr r0, [r6]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	ldr r1, [r5, #0x30]
	cmp r0, r1
	blt %38
	movs r2, #1
	ldr r0, [r4, #0x3c]
	lsls r2, r2, #0x19
	orrs r0, r2
	str r0, [r4, #0x3c]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [sp, #0xc]
	bl __16_ll_shift_l
	str r0, [sp]
	ldr r0, [sp, #8]
	str r1, [sp, #4]
	asrs r1, r0, #0x1f
	str r1, [sp, #0x2c]
	add r3, sp, #0
	str r0, [sp, #0x30]
	ldm r3!, {r2, r3}
	bl __16_ll_srdv
	b %36
	ALIGN
_08001E7C DCDU 0x00000A08
_08001E80 DCDU __VTABLE__364dword_803ECE0
_08001E84 DCDU gUnknown_03003EA4
_08001E88 DCDU __VTABLE__346dword_803EC68
_08001E8C DCDU sub_804036C
_08001E90 DCDU 0x000009BC
_08001E94 DCDU 0x000009DC
_08001E98 DCDU 0x00000A04
_08001E9C DCDU 0xFFFFF900
36
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	add r2, pc, #0x27C
	ldm r2!, {r2, r3}
	bl __16_ll_srdv
	ldr r1, [sp, #0xc]
	NEGS r0, r0
	cmp r0, r1
	ble %37
	str r0, [sp, #0xc]
37
	b %39
38
	ldr r1, [r5, #0x28]
	cmp r0, r1
	bgt %39
	movs r2, #1
	ldr r0, [r4, #0x3c]
	lsls r2, r2, #0x19
	orrs r0, r2
	str r0, [r4, #0x3c]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [sp, #0xc]
	bl __16_ll_shift_l
	str r0, [sp]
	ldr r0, [sp, #8]
	str r1, [sp, #4]
	asrs r1, r0, #0x1f
	str r1, [sp, #0x24]
	add r3, sp, #0
	str r0, [sp, #0x28]
	ldm r3!, {r2, r3}
	bl __16_ll_srdv
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	add r2, pc, #0x230
	ldr r1, [sp, #0x24]
	ldm r2!, {r2, r3}
	bl __16_ll_srdv
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bge %39
	str r0, [sp, #0xc]
39
	ldr r0, [r5, #0x20]
	ldr r0, [r0, #0x50]
	ldr r0, [r0]
	lsls r0, r0, #0x1e
	bmi %43
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq %40
	adds r7, r0, #0
	b %41
40
	movs r3, #1
	ldrsb r0, [r7, r3]
	movs r1, #1
	lsls r1, r0
	lsls r7, r1, #0x10
41
	ldr r0, [r6, #4]
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	ldr r1, [r5, #0x34]
	cmp r0, r1
	blt %42
	movs r2, #1
	ldr r0, [r4, #0x3c]
	lsls r2, r2, #0x19
	orrs r0, r2
	str r0, [r4, #0x3c]
	ldr r0, [r6, #4]
	subs r0, r1, r0
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [sp, #0x10]
	bl __16_ll_shift_l
	str r0, [sp]
	str r1, [sp, #4]
	asrs r1, r7, #0x1f
	adds r0, r7, #0
	add r3, sp, #0
	adds r7, r1, #0
	adds r6, r0, #0
	ldm r3!, {r2, r3}
	bl __16_ll_srdv
	str r0, [sp, #0x10]
	add r2, pc, #0x1C8
	adds r0, r6, #0
	adds r1, r7, #0
	ldm r2!, {r2, r3}
	bl __16_ll_srdv
	ldr r1, [sp, #0x10]
	NEGS r0, r0
	cmp r0, r1
	ble %43
	str r0, [sp, #0x10]
	b %43
42
	ldr r1, [r5, #0x2c]
	cmp r0, r1
	bgt %43
	movs r2, #1
	ldr r0, [r4, #0x3c]
	lsls r2, r2, #0x19
	orrs r0, r2
	str r0, [r4, #0x3c]
	ldr r0, [r6, #4]
	subs r0, r1, r0
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [sp, #0x10]
	bl __16_ll_shift_l
	str r0, [sp]
	str r1, [sp, #4]
	asrs r1, r7, #0x1f
	adds r0, r7, #0
	add r3, sp, #0
	adds r7, r1, #0
	adds r6, r0, #0
	ldm r3!, {r2, r3}
	bl __16_ll_srdv
	str r0, [sp, #0x10]
	add r2, pc, #0x17C
	adds r0, r6, #0
	adds r1, r7, #0
	ldm r2!, {r2, r3}
	bl __16_ll_srdv
	ldr r1, [sp, #0x10]
	cmp r0, r1
	bge %43
	str r0, [sp, #0x10]
43
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq %46
	ldr r1, [sp, #0xc]
	cmp r1, #0
	bne %44
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq %45
44
	movs r1, #1
	lsls r1, r1, #0xe
	subs r0, r0, r1
	lsls r1, r1, #2
	cmp r0, r1
	str r0, [r5, #0x38]
	bge %46
	str r1, [r5, #0x38]
	b %46
45
	movs r0, #0
	str r0, [r5, #0x38]
46
	ldr r0, [r4, #0x3c]
	add r1, sp, #0xc
	lsls r0, r0, #6
	bpl %48
	movs r2, #0
	ldr r0, [sp, #0x38]
	bl sub_800DEF8
47
	add sp, #0x3c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
48
	movs r2, #1
	ldr r0, [sp, #0x38]
	bl sub_800DEF8
	b %47
	END
