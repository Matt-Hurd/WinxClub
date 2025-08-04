	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0300327E
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003468
	IMPORT gUnknown_0300346C
	IMPORT gUnknown_03003478
	IMPORT gUnknown_030034F8
	IMPORT gUnknown_03003E88
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EA0
	IMPORT sub_80003F4
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_80050FA
	IMPORT GetEWRAMStart
	IMPORT sub_800BE0E
	IMPORT sub_800C1CA
	IMPORT sub_8017884
	IMPORT sub_80179BE
	IMPORT sub_80187A0
	IMPORT DefaultScriptGroups__20
	IMPORT DefaultScriptGroups__10
	IMPORT sub_801F65C
	IMPORT sub_8023FE4
	IMPORT sub_80268AC
	IMPORT sub_8028BE4
	IMPORT sub_8028C2E
	IMPORT sub_802936C
	IMPORT sub_802BA4C
	IMPORT sub_802BFBC
	IMPORT sub_802C884
	IMPORT sub_802D2E8
	IMPORT sub_802DFF4
	IMPORT sub_8031D00
	IMPORT sub_803772C
	IMPORT sub_803AB80
	IMPORT sub_803AE68
	IMPORT __call_via_r1
	IMPORT __call_via_r6
	IMPORT __call_via_r7
	IMPORT rand
	IMPORT sub_803DA80
	IMPORT sub_803DA9C
	IMPORT sub_803EF1C
	IMPORT sub_803F72C
	IMPORT sub_803FC14
	IMPORT sub_803FF24


	thumb_func_start sub_80296E0
sub_80296E0
	ldr r1, [r0, #0x7c]
	lsls r1, r1, #1
	lsrs r1, r1, #0x1d
	lsls r2, r1, #2
	adds r2, r2, r0
	ldr r2, [r2, #0x38]
	cmp r2, #0
	bne %4
	adds r1, #1
	cmp r1, #5
	bne %1
	movs r1, #0
1
	lsls r2, r1, #2
	adds r2, r2, r0
	ldr r2, [r2, #0x38]
	cmp r2, #0
	bne %4
	adds r1, #1
	cmp r1, #5
	bne %2
	movs r1, #0
2
	lsls r2, r1, #2
	adds r2, r2, r0
	ldr r2, [r2, #0x38]
	cmp r2, #0
	bne %4
	adds r1, #1
	cmp r1, #5
	bne %3
	movs r1, #0
3
	lsls r1, r1, #2
	adds r0, r1, r0
	ldr r0, [r0, #0x38]
	cmp r0, #0
	bne %4
	movs r0, #1
	bx lr
4
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start Monster__10
Monster__10
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r0, #0
	adds r5, #0x80
	ldr r0, [r5, #0x2c]
	sub sp, #0x1c
	lsls r0, r0, #0xe
	bmi %11
	adds r0, r4, #0
	bl DefaultScriptGroups__10
	movs r6, #0
	ldr r1, [r5, #0x1c]
	mvns r6, r6
	movs r7, #0
	cmp r1, #0xe
	ldr r0, _08029B28
	bne %12
	ldr r7, [r4, #0x2c]
	ldr r0, [r0]
	ldr r1, [r7, #0x44]
	cmp r1, #0
	beq %5
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r7, #0x44]
	subs r0, r1, r0
	asrs r6, r0, #3
5
	ldr r0, [r4, #0x7c]
	lsls r1, r6, #0x10
	lsls r2, r0, #4
	lsrs r2, r2, #0x1c
	lsls r2, r2, #1
	adds r2, r2, r4
	ldrh r2, [r2, #0x18]
	lsrs r1, r1, #0x10
	cmp r1, r2
	beq %6
	ldr r1, _08029B2C
	lsls r0, r0, #8
	lsrs r0, r0, #0x18
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r1, r0, r1
	movs r0, #0xb
	lsls r0, r0, #7
	adds r0, r1, r0
	ldrh r1, [r0, #0x18]
	movs r2, #2
	orrs r1, r2
	strh r1, [r0, #0x18]
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0, #0x18]
	ldr r0, [r4, #0x2c]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %6
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
6
	ldr r6, [r4, #0x2c]
	ldrh r0, [r6, #0x28]
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #4
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	lsrs r1, r1, #0x1c
	cmp r1, #2
	bne %7
	ldr r2, [r5]
	lsls r2, r2, #0x1d
	bpl %7
	movs r2, #1
	b %8
7
	movs r2, #0
8
	cmp r0, r2
	beq %18
	cmp r1, #2
	bne %9
	ldr r0, [r5]
	lsls r0, r0, #0x1d
	bpl %9
	movs r1, #1
	b %10
9
	movs r1, #0
10
	ldrh r2, [r6, #0x28]
	movs r3, #1
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r1, r1, #0xc
	orrs r1, r2
	strh r1, [r6, #0x28]
	adds r0, r6, #0
	bl sub_80003F4
	ldr r0, [r6]
	movs r7, #0x80
	lsls r1, r0, #0x1e
	cmp r1, #0
	blt %17
	ldr r1, [r6, #0x3c]
	cmp r1, #0
	blt %14
	movs r2, #0xf
	lsls r2, r2, #0x14
	ldr r1, [r6, #0x34]
	b %13
11
	b %19
12
	b %20
13
	cmp r1, r2
	bge %14
	ldr r1, [r6, #0x40]
	cmp r1, #0
	blt %14
	movs r2, #5
	ldr r1, [r6, #0x38]
	lsls r2, r2, #0x15
	cmp r1, r2
	blt %15
14
	lsls r0, r0, #0x16
	bmi %17
	ldr r0, _08029B28
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_800C1CA
	movs r1, #1
	ldr r0, [r6]
	lsls r1, r1, #9
	orrs r0, r1
	orrs r0, r7
	str r0, [r6]
	b %17
15
	lsls r0, r0, #0x16
	bpl %16
	ldr r0, _08029B28
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_800BE0E
	movs r1, #1
	ldr r0, [r6]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r6]
16
	ldr r0, [r6, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r6, #0x28]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	lsrs r0, r0, #0x17
	orrs r0, r1
	strh r0, [r6, #0x28]
	ldr r0, [r6, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r6, #0x26]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r6, #0x26]
	ldr r0, [r6]
	orrs r0, r7
	str r0, [r6]
17
	ldr r0, [r6]
	orrs r0, r7
	str r0, [r6]
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %18
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
18
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %19
	ldr r1, _08029B2C
	movs r2, #2
	ldr r0, [r1]
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #8
	lsrs r1, r1, #0x18
	lsls r1, r1, #1
	adds r1, r1, r0
	movs r0, #0xb
	lsls r0, r0, #7
	adds r1, r1, r0
	ldrh r0, [r1, #0x18]
	bics r0, r2
	strh r0, [r1, #0x18]
	movs r0, #4
	str r0, [r5, #0x1c]
19
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
20
	cmp r1, #0x10
	bne %25
	ldr r6, [r4, #0x30]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, _08029B30
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq %19
	ldr r0, [r4, #0x30]
	bl sub_800065C
	ldr r0, [r5, #0x10]
	lsls r0, r0, #3
	lsrs r1, r0, #0x17
	beq %21
	ldr r6, _08029B34
	lsls r0, r0, #1
	lsrs r0, r0, #0x18
	ldr r1, [r6]
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028BE4
	cmp r0, #0
	beq %21
	ldr r0, [r6]
	ldr r1, [r5, #0x10]
	lsls r1, r1, #4
	lsrs r1, r1, #0x18
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
21
	ldr r1, _08029B38
	ldr r0, [r5, #0x10]
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x14
	beq %19
	ldr r0, _08029B2C
	movs r6, #4
	ldr r2, [r0]
	add r0, pc, #0x1DC
	str r0, [sp, #8]
	str r2, [sp, #4]
	b %23
22
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #0x40
	bhs %24
23
	ldr r2, [sp, #4]
	lsls r0, r6, #2
	adds r0, r0, r2
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne %22
24
	ldr r0, _08029B58
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r0, #0xfd
	movs r3, #0
	movs r2, #0
	lsls r0, r0, #5
	bl sub_803DA9C
	ldr r2, [sp, #4]
	lsls r1, r6, #2
	adds r1, r1, r2
	adds r7, r1, #0
	str r0, [r1, #0x18]
	movs r0, #0
	bl sub_80050FA
	ldr r2, [sp, #4]
	lsls r0, r6, #1
	adds r0, r0, r2
	movs r2, #0xff
	movs r1, #0xfd
	lsls r1, r1, #5
	adds r2, #0x99
	strh r1, [r2, r0]
	movs r1, #0xff
	adds r1, #0x19
	movs r3, #0
	strh r3, [r1, r0]
	movs r1, #1
	lsls r1, r1, #9
	adds r1, r0, r1
	strh r3, [r1, #0x18]
	movs r1, #0xb
	lsls r1, r1, #7
	adds r0, r0, r1
	strh r3, [r0, #0x18]
	movs r2, #9
	lsls r2, r2, #7
	ldr r0, [sp, #8]
	adds r1, r7, r2
	str r0, [r1, #0x18]
	movs r0, #0x61
	ldr r2, [sp, #4]
	lsls r0, r0, #4
	adds r0, r2, r0
	b %26
25
	b %27
26
	ldrb r1, [r0, #8]
	movs r3, #1
	adds r1, #1
	strb r1, [r0, #8]
	str r4, [sp]
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x14
	ldr r0, _08029B2C
	adds r2, r6, #0
	ldr r0, [r0]
	bl sub_8017884
	ldr r1, _08029B5C
	ldr r0, [r5, #0x2c]
	ands r0, r1
	str r0, [r5, #0x2c]
	b %19
27
	cmp r1, #9
	beq %29
28
	bl maybeCall60IfActive
29
	ldr r1, [r5, #0x2c]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r4
	adds r1, #0x80
	ldr r1, [r1, #0x38]
	lsls r1, r1, #0x1f
	bpl %28
	ldr r1, [r4, #0x2c]
	str r1, [sp, #8]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x28]
	ldr r1, [sp, #8]
	ldr r1, [r1, #0x44]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [sp, #8]
	ldr r1, [r1, #0x48]
	subs r0, r1, r0
	asrs r1, r0, #2
	ldr r0, [r5, #0x2c]
	lsls r2, r0, #0x1d
	lsrs r2, r2, #0x1a
	adds r2, r2, r4
	adds r2, #0x80
	ldr r2, [r2, #0x3c]
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1b
	cmp r1, r2
	blo %28
	lsls r1, r0, #0xf
	bpl %28
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #1
	lsrs r1, r1, #0x1d
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r1, [r1, #0x38]
	cmp r1, #0
	beq %31
30
	bl %117
31
	lsls r1, r0, #5
	lsrs r1, r1, #0x17
	subs r1, #0x27
	cmp r1, #0x17
	bhs %32
	add r3, pc, #0xC
	adds r3, r3, r1
	ldrh r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
32
	b %30
	ALIGN
33
	DCB 0x18, 0x00
34
	DCB 0x7D, 0x00
35
	DCB 0xC0, 0x00
36
	DCB 0xC0, 0x00
37
	DCB 0x87, 0x07
38
	DCB 0x87, 0x07
39
	DCB 0x87, 0x07
40
	DCB 0x46, 0x01
41
	DCB 0x87, 0x07
42
	DCB 0x87, 0x07
43
	DCB 0x87, 0x07
44
	DCB 0xB5, 0x03
45
	DCB 0x87, 0x07
46
	DCB 0x03, 0x01
47
	DCB 0x89, 0x01
48
	DCB 0xE3, 0x02
49
	DCB 0x87, 0x07
50
	DCB 0x87, 0x07
51
	DCB 0x87, 0x07
52
	DCB 0xF8, 0x03
53
	DCB 0x88, 0x04
54
	DCB 0x13, 0x05
55
	DCB 0x6F, 0x06
loc_8029ab2
	ldr r0, _08029B60
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r7, r0, #0
	beq %56
	adds r0, r7, #0
	bl sub_8031D00
56
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #0
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _08029B64
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]

	thumb_func_start sub_8029B18
sub_8029B18
	ldr r1, [r4, #0x7c]
	movs r0, #7
	lsls r0, r0, #0x1c
	adds r2, r1, #0
	bics r1, r0
	adds r2, r2, r3
	b %57
	ALIGN
_08029B28 DCDU gUnknown_03003EA0
_08029B2C DCDU gUnknown_03003454
_08029B30 DCDU 0x00000F42
_08029B34 DCDU gUnknown_0300345C
_08029B38 DCDU 0xE00FFFFF
_08029B3C DCDU 0x6D656E45
_08029B40 DCDU 0x65442079
_08029B44 DCDU 0x20687461
_08029B48 DCDU 0x69726353
_08029B4C DCDU 0x47207470
_08029B50 DCDU 0x70756F72
_08029B54 DCDU 0x00000000
_08029B58 DCDU gUnknown_03003468
_08029B5C DCDU 0xFFFF000F
_08029B60 DCDU gUnknown_0300346C
_08029B64 DCDU gUnknown_03003458
57
	ands r2, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %32
	bics r1, r0
	str r1, [r4, #0x7c]
	b %30
loc_8029b7c
	ldr r0, _08029F5C
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x4c
	bl sub_803DA80
	adds r7, r0, #0
	beq %58
	adds r0, r7, #0
	bl sub_802D2E8
58
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _08029F60
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %60
	bics r1, r0
	str r1, [r4, #0x7c]
	b %60
loc_8029c02
	ldr r0, _08029F5C
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq %59
	adds r0, r7, #0
	bl sub_802C884
59
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #1
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _08029F60
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %60
	bics r1, r0
	str r1, [r4, #0x7c]
60
	b %63
loc_8029c88
	ldr r0, _08029F5C
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r7, r0, #0
	beq %61
	adds r0, r7, #0
	bl sub_8031D00
61
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #1
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _08029F60
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %63
	bics r1, r0
	str r1, [r4, #0x7c]
	b %63
loc_8029d0e
	ldr r0, _08029F5C
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x44
	bl sub_803DA80
	adds r7, r0, #0
	beq %62
	adds r0, r7, #0
	bl sub_803772C
62
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #0
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _08029F60
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %63
	bics r1, r0
	str r1, [r4, #0x7c]
63
	b %69
loc_8029d94
	lsls r0, r0, #0x1d
	bne %65
	ldr r0, _08029F5C
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r7, r0, #0
	beq %64
	adds r0, r7, #0
	bl sub_8031D00
64
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #2
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _08029F60
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %69
	bics r1, r0
	str r1, [r4, #0x7c]
	b %69
65
	adds r0, r4, #0
	bl sub_80296E0
	cmp r0, #0
	beq %69
	ldr r0, _08029F5C
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r6, r0, #0
	beq %66
	adds r0, r6, #0
	bl sub_8031D00
66
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #3
	adds r1, r4, #0
	adds r3, r7, #0
	bl __call_via_r6
	ldr r0, _08029F60
	ldr r0, [r0]
	bl sub_803EF1C
	adds r1, r4, #0
	adds r1, #0x90
	str r1, [sp, #0x18]
	ldrb r0, [r1, #0xa]
	movs r2, #7
	lsls r2, r2, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	adds r1, r0, #0
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x1c
	adds r1, r1, r2
	movs r2, #7
	lsls r2, r2, #0x1c
	ands r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %67
	bics r0, r2
	str r0, [r4, #0x7c]
67
	ldr r0, _08029F5C
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r6, r0, #0
	beq %68
	adds r0, r6, #0
	bl sub_8031D00
68
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r3, #1
	b %70
69
	b %76
70
	movs r2, #3
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _08029F60
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x18]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %71
	bics r0, r2
	str r0, [r4, #0x7c]
71
	ldr r0, _08029F5C
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r6, r0, #0
	beq %72
	adds r0, r6, #0
	bl sub_8031D00
	b %72
	ALIGN
_08029F5C DCDU gUnknown_0300346C
_08029F60 DCDU gUnknown_03003458
72
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #2
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802A370
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x18]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %73
	bics r0, r2
	str r0, [r4, #0x7c]
73
	ldr r0, _0802A374
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r6, r0, #0
	beq %74
	adds r0, r6, #0
	bl sub_8031D00
74
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #3
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802A370
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x18]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %76
	bics r0, r2
	str r0, [r4, #0x7c]
	b %76
loc_802a048
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	beq %77
	cmp r0, #1
	beq %79
	cmp r0, #2
	bne %76
	ldr r0, _0802A374
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq %75
	adds r0, r7, #0
	bl sub_802C884
75
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802A370
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %76
	bics r1, r0
	str r1, [r4, #0x7c]
76
	b %83
77
	ldr r0, _0802A374
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x54
	bl sub_803DA80
	adds r7, r0, #0
	beq %78
	adds r0, r7, #0
	bl sub_8031D00
78
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #4
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802A370
	ldr r0, [r0]
	bl sub_803EF1C
	b %80
79
	b %81
80
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %83
	bics r1, r0
	str r1, [r4, #0x7c]
	b %83
81
	ldr r0, _0802A374
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq %82
	adds r0, r7, #0
	bl sub_802C884
82
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #2
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802A370
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %83
	bics r1, r0
	str r1, [r4, #0x7c]
83
	b %86
loc_802a1ec
	ldr r0, _0802A374
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x4c
	bl sub_803DA80
	adds r7, r0, #0
	beq %84
	adds r0, r7, #0
	bl sub_802D2E8
84
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #4
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802A370
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %86
	bics r1, r0
	str r1, [r4, #0x7c]
	b %86
loc_802a272
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	beq %87
	cmp r0, #1
	bne %86
	ldr r0, _0802A374
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r7, r0, #0
	beq %85
	adds r0, r7, #0
	bl sub_802DFF4
85
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802A370
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %86
	bics r1, r0
	str r1, [r4, #0x7c]
86
	b %91
87
	ldr r0, _0802A374
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x4c
	bl sub_803DA80
	adds r7, r0, #0
	beq %88
	adds r0, r7, #0
	bl sub_802BFBC
88
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #2
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802A370
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	bics r1, r0
	b %89
	ALIGN
_0802A370 DCDU gUnknown_03003458
_0802A374 DCDU gUnknown_0300346C
89
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r2, r2, r3
	ands r2, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %91
	bics r1, r0
	str r1, [r4, #0x7c]
	b %91
loc_802a392
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	beq %92
	cmp r0, #1
	bne %91
	ldr r0, _0802A758
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x44
	bl sub_803DA80
	adds r7, r0, #0
	beq %90
	adds r0, r7, #0
	bl sub_803AE68
90
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #0
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802A75C
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %91
	bics r1, r0
	str r1, [r4, #0x7c]
91
	b %95
92
	ldr r0, _0802A758
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq %93
	adds r0, r7, #0
	bl sub_802C884
93
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #5
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802A75C
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %95
	bics r1, r0
	str r1, [r4, #0x7c]
	b %95
loc_802a4a8
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	beq %96
	cmp r0, #1
	bne %95
	ldr r0, _0802A758
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq %94
	adds r0, r7, #0
	bl sub_802C884
94
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #6
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802A75C
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %95
	bics r1, r0
	str r1, [r4, #0x7c]
95
	b %100
96
	adds r0, r4, #0
	bl sub_80296E0
	cmp r0, #0
	beq %100
	ldr r0, _0802A758
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq %97
	adds r0, r6, #0
	bl sub_802BA4C
97
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #3
	adds r1, r4, #0
	adds r3, r7, #0
	bl __call_via_r6
	ldr r0, _0802A75C
	ldr r0, [r0]
	bl sub_803EF1C
	adds r1, r4, #0
	adds r1, #0x90
	str r1, [sp, #0x14]
	ldrb r0, [r1, #0xa]
	movs r2, #7
	lsls r2, r2, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	adds r1, r0, #0
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x1c
	adds r1, r1, r2
	movs r2, #7
	lsls r2, r2, #0x1c
	ands r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %98
	bics r0, r2
	str r0, [r4, #0x7c]
98
	ldr r0, _0802A758
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq %99
	adds r0, r6, #0
	bl sub_802BA4C
99
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #1
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802A75C
	ldr r0, [r0]
	bl sub_803EF1C
	b %101
100
	b %109
101
	ldr r1, [sp, #0x14]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %102
	bics r0, r2
	str r0, [r4, #0x7c]
102
	ldr r0, _0802A758
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq %103
	adds r0, r6, #0
	bl sub_802BA4C
103
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #2
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802A75C
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x14]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %104
	bics r0, r2
	str r0, [r4, #0x7c]
104
	ldr r0, _0802A758
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq %105
	adds r0, r6, #0
	bl sub_802BA4C
105
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #3
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802A75C
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x14]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %109
	bics r0, r2
	str r0, [r4, #0x7c]
	b %109
	ALIGN
_0802A758 DCDU gUnknown_0300346C
_0802A75C DCDU gUnknown_03003458
loc_802a760
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	beq %110
	cmp r0, #1
	beq %111
	cmp r0, #2
	bne %109
	adds r0, r4, #0
	bl sub_80296E0
	cmp r0, #0
	beq %109
	ldr r0, _0802AB58
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq %106
	adds r0, r6, #0
	bl sub_803AB80
106
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #0
	adds r1, r4, #0
	adds r3, r7, #0
	bl __call_via_r6
	ldr r0, _0802AB5C
	ldr r0, [r0]
	bl sub_803EF1C
	adds r1, r4, #0
	adds r1, #0x90
	str r1, [sp, #0xc]
	ldrb r0, [r1, #0xa]
	movs r2, #7
	lsls r2, r2, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	adds r1, r0, #0
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x1c
	adds r1, r1, r2
	movs r2, #7
	lsls r2, r2, #0x1c
	ands r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %107
	bics r0, r2
	str r0, [r4, #0x7c]
107
	ldr r0, _0802AB58
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq %108
	adds r0, r6, #0
	bl sub_803AB80
108
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	b %112
109
	b %117
110
	b %119
111
	b %121
112
	ldr r0, [r4, #0x7c]
	movs r3, #1
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #1
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802AB5C
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0xc]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %113
	bics r0, r2
	str r0, [r4, #0x7c]
113
	ldr r0, _0802AB58
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq %114
	adds r0, r6, #0
	bl sub_803AB80
114
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #2
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #2
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802AB5C
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0xc]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %115
	bics r0, r2
	str r0, [r4, #0x7c]
115
	ldr r0, _0802AB58
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq %116
	adds r0, r6, #0
	bl sub_803AB80
116
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #3
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #3
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802AB5C
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0xc]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %117
	bics r0, r2
	str r0, [r4, #0x7c]
117
	movs r1, #1
	ldr r0, [r5, #0x2c]
	lsls r1, r1, #0x10
	bics r0, r1
	str r0, [r5, #0x2c]
118
	bl %19
119
	ldr r0, _0802AB58
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r7, r0, #0
	beq %120
	adds r0, r7, #0
	bl sub_802C884
120
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r7, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #7
	adds r1, r4, #0
	adds r3, r6, #0
	bl __call_via_r7
	ldr r0, _0802AB5C
	ldr r0, [r0]
	bl sub_803EF1C
	adds r0, r4, #0
	adds r0, #0x90
	ldrb r1, [r0, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, [r4, #0x7c]
	movs r0, #7
	adds r2, r1, #0
	lsls r0, r0, #0x1c
	adds r2, r2, r3
	ands r2, r0
	bics r1, r0
	orrs r1, r2
	lsls r2, r1, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r1, [r4, #0x7c]
	bne %117
	bics r1, r0
	str r1, [r4, #0x7c]
	b %117
121
	adds r0, r4, #0
	bl sub_80296E0
	cmp r0, #0
	beq %117
	ldr r0, _0802AB58
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq %122
	adds r0, r6, #0
	bl sub_802BA4C
122
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #4
	adds r1, r4, #0
	adds r3, r7, #0
	bl __call_via_r6
	ldr r0, _0802AB5C
	ldr r0, [r0]
	bl sub_803EF1C
	adds r1, r4, #0
	adds r1, #0x90
	str r1, [sp, #0x10]
	ldrb r0, [r1, #0xa]
	movs r2, #7
	lsls r2, r2, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	adds r1, r0, #0
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x1c
	adds r1, r1, r2
	movs r2, #7
	lsls r2, r2, #0x1c
	ands r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %123
	bics r0, r2
	str r0, [r4, #0x7c]
123
	ldr r0, _0802AB58
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq %124
	adds r0, r6, #0
	bl sub_802BA4C
124
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #1
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #4
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802AB5C
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x10]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %125
	bics r0, r2
	str r0, [r4, #0x7c]
125
	ldr r0, _0802AB58
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	b %126
	ALIGN
_0802AB58 DCDU gUnknown_0300346C
_0802AB5C DCDU gUnknown_03003458
126
	beq %127
	adds r0, r6, #0
	bl sub_802BA4C
127
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #2
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #4
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802AF70
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x10]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	bne %128
	bics r0, r2
	str r0, [r4, #0x7c]
128
	ldr r0, _0802AF74
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x40
	bl sub_803DA80
	adds r6, r0, #0
	beq %129
	adds r0, r6, #0
	bl sub_802BA4C
129
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	movs r3, #3
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r7, r2, r1
	movs r2, #4
	adds r1, r4, #0
	bl __call_via_r7
	ldr r0, _0802AF70
	ldr r0, [r0]
	bl sub_803EF1C
	ldr r1, [sp, #0x10]
	movs r2, #7
	ldrb r0, [r1, #0xa]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x7c]
	lsls r2, r2, #0x1c
	adds r1, r0, #0
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #1
	lsrs r1, r1, #0x1d
	cmp r1, #5
	str r0, [r4, #0x7c]
	beq %130
	b %117
130
	bics r0, r2
	str r0, [r4, #0x7c]
	b %117

	non_word_aligned_thumb_func_start maybeCall60IfActive
maybeCall60IfActive
	ldr r0, [r5, #0x1c]
	cmp r0, #0xf
	bne %132
131
	b %118
132
	ldr r1, _0802AF78
	movs r0, #4
	ldr r1, [r1]
	ands r1, r0
	bne %131
	ldr r0, [r5, #0x34]
	lsls r0, r0, #0x11
	bpl %131
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x60]
	adds r1, r2, r1
	bl __call_via_r1
	b %118

	thumb_func_start sub_802AC74
sub_802AC74
	push {r4, r5, r6, r7}
	ldr r2, [r1]
	ldr r3, [r0, #0x58]
	ldr r1, [r1, #4]
	subs r2, r2, r3
	ldr r3, [r0, #0x5c]
	NEGS r4, r2
	subs r3, r1, r3
	cmp r2, #0
	blt %133
	adds r4, r2, #0
133
	NEGS r5, r3
	cmp r3, #0
	blt %134
	adds r5, r3, #0
134
	movs r1, #0xf
	lsls r1, r1, #0x18
	ldr r7, [r0, #0x7c]
	mvns r1, r1
	movs r6, #1
	lsls r6, r6, #0x19
	ands r1, r7
	cmp r4, r5
	ble %137
	cmp r2, #0
	ble %136
	str r1, [r0, #0x7c]
135
	pop {r4, r5, r6, r7}
	bx lr
136
	adds r1, r1, r6
	str r1, [r0, #0x7c]
	b %135
137
	cmp r5, r4
	ble %139
	cmp r3, #0
	ble %138
	movs r2, #1
	lsls r2, r2, #0x18
	adds r1, r1, r2
	str r1, [r0, #0x7c]
	b %135
138
	movs r2, #3
	lsls r2, r2, #0x18
	adds r1, r1, r2
	str r1, [r0, #0x7c]
	b %135
139
	cmp r2, #0
	ble %140
	str r1, [r0, #0x7c]
	b %135
140
	adds r1, r1, r6
	str r1, [r0, #0x7c]
	b %135

	non_word_aligned_thumb_func_start HostileCreature__60
HostileCreature__60
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, [r4, #0x7c]
	movs r7, #0
	movs r6, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x18
	beq %142
	adds r5, r4, #0
	adds r5, #0x80
	ldr r0, [r5, #0x1c]
	cmp r0, #4
	bne %142
	ldr r0, [r5, #0x34]
	lsls r0, r0, #0x16
	lsrs r2, r0, #0x1e
	beq %141
	adds r0, r4, #0
	ldr r1, _0802AF70
	adds r0, #0x58
	cmp r2, #1
	ldr r1, [r1]
	beq %150
	cmp r2, #2
	bne %142
	ldr r1, [r1, #0x20]
	adds r1, #0x58
	ldr r2, [r1]
	str r2, [sp]
	ldr r1, [r1, #4]
	str r1, [sp, #4]
	mov r1, sp
	bl sub_80187A0
	cmp r0, #0x3c
	bhs %151
	movs r6, #1
	b %159
141
	bl rand
	ldr r1, [r5, #0x30]
	lsls r0, r0, #0x19
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1b
	lsrs r0, r0, #0x19
	cmp r1, r0
	ble %143
	movs r1, #3
	ldr r0, [r5, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	str r0, [r5, #0x34]
142
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
143
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #2
	ble %144
	movs r0, #0
	b %145
144
	adds r0, #0xff
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
145
	ldr r1, [r5, #0x34]
	lsls r2, r1, #0x12
	lsrs r2, r2, #0x1c
	adds r0, r2, r0
	bpl %146
	adds r0, #0xc
	b %147
146
	cmp r0, #0xc
	blt %147
	subs r0, #0xc
147
	movs r3, #0xf
	lsls r3, r3, #0xa
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x12
	bics r1, r3
	orrs r0, r1
	str r0, [r5, #0x34]
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	beq %142
	lsrs r2, r1, #0x18
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x1c
	ldr r1, _0802AF7C
	cmp r2, #0xff
	ldrb r5, [r1, r0]
	bne %148
	ldr r0, _0802AF80
	ldr r0, [r0]
	ldrb r2, [r0, #0x14]
148
	ldr r0, _0802AF84
	movs r1, #6
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x1c
	strh r1, [r0]
	movs r1, #6
	strh r1, [r0, #2]
	strb r5, [r0, #4]
	movs r1, #0x18
	strb r1, [r0, #5]
	ldr r1, [r4, #0x7c]
	movs r3, #2
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0802AF80
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
149
	b %142
150
	ldr r1, [r1, #0x20]
	adds r1, #0x58
	ldr r2, [r1]
	str r2, [sp]
	ldr r1, [r1, #4]
	str r1, [sp, #4]
	mov r1, sp
	bl sub_80187A0
	cmp r0, #0x32
	bls %152
	movs r0, #1
	str r0, [sp, #8]
	b %155
151
	b %158
152
	bl rand
	ldr r1, [r5, #0x30]
	lsls r0, r0, #0x19
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	lsrs r0, r0, #0x19
	cmp r1, r0
	ble %153
	movs r7, #1
	b %155
153
	cmp r0, #0x75
	ble %154
	movs r1, #3
	ldr r0, [r5, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	subs r1, #0xff
	subs r1, #1
	adds r0, r0, r1
	str r0, [r5, #0x34]
	b %155
154
	movs r0, #1
	str r0, [sp, #8]
155
	ldr r0, [sp, #8]
	cmp r0, #0
	beq %159
	ldr r0, _0802AF70
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_802AC74
	ldr r0, [r4, #0x7c]
	ldr r2, [r5, #0x34]
	lsls r1, r0, #4
	lsrs r1, r1, #0x1c
	lsls r3, r1, #1
	adds r1, r3, r1
	movs r3, #0xf
	lsls r3, r3, #0xa
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x12
	bics r2, r3
	orrs r1, r2
	lsls r0, r0, #8
	lsrs r2, r0, #0x18
	str r1, [r5, #0x34]
	beq %149
	lsrs r2, r0, #0x18
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x1c
	ldr r1, _0802AF7C
	cmp r2, #0xff
	ldrb r5, [r1, r0]
	bne %156
	ldr r0, _0802AF80
	ldr r0, [r0]
	ldrb r2, [r0, #0x14]
156
	ldr r0, _0802AF84
	movs r1, #6
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x1c
	strh r1, [r0]
	movs r1, #6
	strh r1, [r0, #2]
	strb r5, [r0, #4]
	movs r1, #0x18
	strb r1, [r0, #5]
	ldr r1, [r4, #0x7c]
	movs r3, #2
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0802AF80
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
157
	b %142
158
	bl rand
	ldr r1, [r5, #0x30]
	lsls r0, r0, #0x19
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	lsrs r0, r0, #0x19
	cmp r1, r0
	ble %160
	movs r7, #1
159
	b %162
160
	cmp r0, #0x75
	ble %161
	movs r1, #3
	ldr r0, [r5, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	str r0, [r5, #0x34]
	b %162
161
	movs r6, #1
162
	cmp r6, #0
	beq %167
	ldr r1, _0802AF70
	ldr r0, [r1]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_802AC74
	ldr r1, [r4, #0x7c]
	lsls r0, r1, #4
	lsrs r0, r0, #0x1c
	adds r0, #2
	bpl %163
	adds r0, #4
	b %164
163
	cmp r0, #4
	blt %164
	subs r0, #4
164
	movs r2, #0xf
	lsls r2, r2, #0x18
	lsls r0, r0, #0x1c
	lsrs r0, r0, #4
	bics r1, r2
	orrs r0, r1
	lsls r1, r0, #4
	lsrs r1, r1, #0x1c
	lsls r3, r1, #1
	adds r1, r3, r1
	str r0, [r4, #0x7c]
	ldr r2, [r5, #0x34]
	movs r3, #0xf
	lsls r3, r3, #0xa
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x12
	bics r2, r3
	orrs r1, r2
	lsls r0, r0, #8
	lsrs r2, r0, #0x18
	str r1, [r5, #0x34]
	beq %157
	lsrs r2, r0, #0x18
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x1c
	ldr r1, _0802AF7C
	cmp r2, #0xff
	ldrb r5, [r1, r0]
	bne %165
	ldr r0, _0802AF80
	ldr r0, [r0]
	ldrb r2, [r0, #0x14]
165
	ldr r0, _0802AF84
	movs r1, #6
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x1c
	strh r1, [r0]
	movs r1, #6
	strh r1, [r0, #2]
	strb r5, [r0, #4]
	movs r1, #0x18
	strb r1, [r0, #5]
	ldr r1, [r4, #0x7c]
	movs r3, #2
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0802AF80
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
166
	b %142
	ALIGN
_0802AF70 DCDU gUnknown_03003458
_0802AF74 DCDU gUnknown_0300346C
_0802AF78 DCDU gUnknown_03003478
_0802AF7C DCDU gUnknown_0300327E
_0802AF80 DCDU gUnknown_03003454
_0802AF84 DCDU gUnknown_03003E88
167
	cmp r7, #0
	beq %157
	ldr r1, _0802B268
	ldr r0, [r1]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_802AC74
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #8
	lsrs r1, r0, #0x18
	beq %166
	lsrs r2, r0, #0x18
	cmp r2, #0xff
	bne %168
	ldr r0, _0802B26C
	ldr r0, [r0]
	ldrb r2, [r0, #0x14]
168
	ldr r0, _0802B270
	movs r1, #6
	ldr r0, [r0]
	bl sub_803F72C
	movs r1, #0x21
	strh r1, [r0]
	movs r1, #6
	strh r1, [r0, #2]
	movs r1, #1
	strb r1, [r0, #4]
	movs r1, #0
	strb r1, [r0, #5]
	ldr r1, [r4, #0x7c]
	movs r3, #2
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0802B26C
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
	b %142

	non_word_aligned_thumb_func_start HostileCreature__3C
HostileCreature__3C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x80
	adds r4, r0, #0
	ldr r0, [r0, #0x58]
	ldr r1, [r5, #0x24]
	ldr r2, [r4, #0x5c]
	sub sp, #0xc
	subs r1, r2, r1
	str r1, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq %169
	adds r1, r4, #0
	adds r1, #0x58
	bl sub_803FF24
169
	ldr r0, [r5, #0x14]
	lsls r0, r0, #0xe
	bpl %170
	ldr r0, [r4, #0x7c]
	movs r2, #0xf
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r2, r2, #0xa
	ldr r1, [r5, #0x34]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x12
	bics r1, r2
	orrs r0, r1
	str r0, [r5, #0x34]
170
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start HostileCreature__DamagePlayer
HostileCreature__DamagePlayer
	adds r0, #0x80
	ldr r1, [r0, #0x2c]
	movs r2, #8
	orrs r1, r2
	str r1, [r0, #0x2c]
	bx lr

	non_word_aligned_thumb_func_start HostileCreature__PlayerIframe
HostileCreature__PlayerIframe
	adds r0, #0x80
	ldr r0, [r0, #0x2c]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start HostileCreature__20
HostileCreature__20
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl DefaultScriptGroups__20
	ldr r1, _0802B274
	movs r0, #0x10
	ldr r1, [r1]
	ands r1, r0
	beq %171
	ldr r0, _0802B278
	ldr r0, [r0]
	bl sub_8023FE4
171
	adds r5, r4, #0
	adds r5, #0x80
	ldr r1, [r5, #0x24]
	ldr r0, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	str r0, [sp, #4]
	subs r1, r2, r1
	str r1, [sp, #8]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	ldr r0, [r5, #0x1c]
	cmp r0, #0xf
	beq %172
	cmp r0, #0x10
	beq %172
	adds r0, r4, #0
	bl sub_802936C
172
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802B0A0
sub_802B0A0
	bx lr

	non_word_aligned_thumb_func_start HostileCreature__54
HostileCreature__54
	ldr r0, _0802B27C
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0, #8]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne %173
	movs r0, #0
173
	ldr r1, _0802B280
	adds r0, #0x42
	lsls r0, r0, #0x18
	ldr r1, [r1]
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_8028C2E
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802B0CA
sub_802B0CA
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801F65C
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0, #0xc]
	ldr r2, _0802B284
	ands r1, r2
	movs r2, #1
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r0, #0xc]
	ldr r1, [r0, #0x1c]
	cmp r1, #9
	bne %174
	ldr r1, [r0, #0x2c]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r4
	adds r1, #0x80
	ldr r1, [r1, #0x38]
	lsls r1, r1, #0x1f
	bmi %174
	ldr r1, _0802B268
	movs r2, #0x29
	ldr r1, [r1]
	lsls r2, r2, #5
	adds r1, r1, r2
	ldrb r2, [r1, #2]
	adds r2, #0xff
	strb r2, [r1, #2]
174
	movs r1, #0xf
	str r1, [r0, #0x1c]
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start HostileScriptGroups__58
HostileScriptGroups__58
	push {r4, r5, r6, lr}
	ldr r6, _0802B268
	adds r4, r0, #0
	ldr r0, [r6]
	sub sp, #8
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x58
	bl sub_80187A0
	adds r5, r4, #0
	adds r5, #0x80
	ldr r1, [r5, #0x2c]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r4
	adds r1, #0x80
	ldr r1, [r1, #0x38]
	lsls r2, r1, #0x14
	lsrs r2, r2, #0x18
	cmp r2, r0
	bhi %175
	lsls r0, r1, #9
	bpl %177
175
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x50]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x54]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r4
	adds r0, #0x80
	ldr r1, [r0, #0x38]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1d
	cmp r1, #1
	bne %176
	movs r2, #7
	ldr r1, [r5, #0x14]
	lsls r2, r2, #0xc
	bics r1, r2
	str r1, [r5, #0x14]
	ldr r1, [r0, #0x3c]
	lsls r1, r1, #0x18
	lsrs r1, r1, #8
	str r1, [r4, #0x78]
	ldr r1, [r4, #0x70]
	asrs r2, r1, #1
	str r1, [r4, #0x74]
	adds r1, r1, r2
	str r1, [r4, #0x70]
176
	ldr r0, [r0, #0x38]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x16
	strh r0, [r4, #0x16]
	adds r1, r0, #1
	strh r1, [r4, #0x12]
	adds r0, #2
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x10]
	movs r0, #9
	str r0, [r5, #0x1c]
	ldr r0, [r6]
	movs r1, #0x29
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0, #2]
	adds r4, #0x90
	adds r1, #1
	strb r1, [r0, #2]
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
177
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start HostileBaseObject__5C
HostileBaseObject__5C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802B268
	sub sp, #0xc
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	add r1, sp, #4
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r0, #0x58
	bl sub_80187A0
	adds r5, r4, #0
	adds r5, #0x80
	ldr r1, [r5, #0x1c]
	cmp r1, #9
	beq %178
	ldr r1, [r4, #0x2c]
	ldr r1, [r1]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1f
	bne %178
	ldr r1, [r5, #0x2c]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r4
	adds r1, #0x80
	ldr r1, [r1, #0x38]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x18
	cmp r1, r0
	bhs %178
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x50]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x54]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r1, [r5, #0x2c]
	lsls r0, r1, #0x1d
	lsrs r0, r0, #0x1a
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x38]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x16
	strh r0, [r4, #0x16]
	adds r2, r0, #1
	strh r2, [r4, #0x12]
	adds r0, #2
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x10]
	movs r0, #1
	lsls r0, r0, #0x10
	orrs r0, r1
	str r0, [r5, #0x2c]
	movs r0, #9
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x14]
	movs r1, #1
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r5, #0x14]
178
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	bx r3
	ALIGN
_0802B268 DCDU gUnknown_03003458
_0802B26C DCDU gUnknown_03003454
_0802B270 DCDU gUnknown_03003E88
_0802B274 DCDU gUnknown_03003478
_0802B278 DCDU gUnknown_030034F8
_0802B27C DCDU gUnknown_03003E98
_0802B280 DCDU gUnknown_0300345C
_0802B284 DCDU 0x8007FFFF
	END
