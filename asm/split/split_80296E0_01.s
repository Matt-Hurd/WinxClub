	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT DefaultScriptGroups__10
	IMPORT GetEWRAMStart
	IMPORT __call_via_r7
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003468
	IMPORT gUnknown_0300346C
	IMPORT gUnknown_03003EA0
	IMPORT maybeCall60IfActive
	IMPORT sub_80003F4
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_80050FA
	IMPORT sub_800BE0E
	IMPORT sub_800C1CA
	IMPORT sub_8017884
	IMPORT sub_80268AC
	IMPORT sub_8028BE4
	IMPORT sub_8031D00
	IMPORT sub_803DA80
	IMPORT sub_803DA9C
	IMPORT sub_803EF1C
	IMPORT sub_803FC14

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

	ALIGN
_08029B28 DCDU gUnknown_03003EA0
_08029B2C DCDU gUnknown_03003454
_08029B30 DCDU 0x00000F42
_08029B34 DCDU gUnknown_0300345C
_08029B38 DCDU 0xE00FFFFF
_08029B58 DCDU gUnknown_03003468
_08029B5C DCDU 0xFFFF000F
_08029B60 DCDU gUnknown_0300346C
_08029B64 DCDU gUnknown_03003458

	END
