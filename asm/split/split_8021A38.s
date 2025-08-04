	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003468
	IMPORT gUnknown_03003D20
	IMPORT gUnknown_03003E88
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EB8
	IMPORT ModifyPlayerHealth
	IMPORT sub_800065C
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_80050FA
	IMPORT GetEWRAMStart
	IMPORT sub_80177D8
	IMPORT sub_801CA1E
	IMPORT DefaultScriptGroups__1C
	IMPORT DefaultScriptGroups__18
	IMPORT DefaultScriptGroups__20
	IMPORT DefaultScriptGroups__TakeDamage
	IMPORT sub_801F450
	IMPORT sub_8020A74
	IMPORT sub_8020AB6
	IMPORT sub_8023A70
	IMPORT sub_8023AA2
	IMPORT sub_8028C2E
	IMPORT sub_80384FA
	IMPORT __call_via_r1
	IMPORT __call_via_r2
	IMPORT sub_803DA18
	IMPORT sub_803DA80
	IMPORT sub_803DA9C
	IMPORT sub_803F2CC
	IMPORT sub_803F6E0
	IMPORT sub_803F898
	IMPORT sub_803FF24
	IMPORT sub_80401C0
	IMPORT sub_80401E4


	thumb_func_start sub_8021A38
sub_8021A38
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl DefaultScriptGroups__18
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r1, [r0]
	ldr r2, [r1, #0xc]
	adds r1, r2, r1
	bl __call_via_r1
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r1, [r0]
	ldr r2, [r1, #0xc]
	adds r1, r2, r1
	bl __call_via_r1
	movs r5, #0
	movs r7, #0
1
	lsls r0, r5, #2
	adds r0, r0, r6
	adds r0, #0xff
	adds r0, #0x41
	ldr r4, [r0, #0x10]
	cmp r4, #0
	beq %3
2
	adds r0, r4, #0
	ldr r4, [r4, #0x18]
	bl sub_803DA18
	cmp r4, #0
	bne %2
3
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r5, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r6
	adds r0, #0xff
	adds r0, #0x41
	str r7, [r0, #0x10]
	cmp r5, #0x41
	blo %1
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8021A98
sub_8021A98
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl DefaultScriptGroups__1C
	adds r5, r4, #0
	adds r5, #0xff
	adds r5, #1
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq %4
	ldr r0, _08021E74
	adds r1, r5, #0
	adds r1, #0x24
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r5, #0x24]
4
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r1, [r0]
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl __call_via_r1
	adds r0, r4, #0
	adds r0, #0xa0
	ldr r1, [r0]
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl __call_via_r1
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8021ADE
sub_8021ADE
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl DefaultScriptGroups__20
	ldr r0, _08021E74
	ldr r0, [r0]
	bl sub_800116A
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #1
	str r0, [r1, #0x24]
	ldr r2, [r0]
	movs r3, #2
	orrs r2, r3
	lsls r3, r3, #7
	bics r2, r3
	str r2, [r0]
	ldr r0, [r1, #0x24]
	movs r1, #0x20
	bl sub_80401C0
	adds r5, r4, #0
	adds r5, #0x80
	ldr r0, [r5, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf6
	beq %5
	cmp r0, #0xed
	bne %7
5
	ldr r0, [r4, #0x30]
	ldrh r1, [r0, #0x26]
	lsls r2, r1, #0x14
	lsrs r2, r2, #0x1e
	beq %6
	movs r2, #3
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #0
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
6
	ldr r0, [r4, #0x2c]
	ldrb r2, [r0, #5]
	ldr r0, [r4, #0x30]
	ldrb r3, [r0, #5]
	subs r2, #1
	adds r1, r2, #0
	cmp r2, r3
	beq %7
	bl sub_80401C0
7
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r2, r2, r1
	ldr r1, [r4, #0x2c]
	bl __call_via_r2
	adds r0, r4, #0
	adds r0, #0xa0
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r2, r2, r1
	ldr r1, [r4, #0x2c]
	bl __call_via_r2
	ldr r0, [r5, #0x1c]
	cmp r0, #0xf
	beq %8
	cmp r0, #0x10
	beq %8
	adds r0, r4, #0
	bl sub_8020AB6
8
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8021B84
sub_8021B84
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _08021E78
	sub sp, #0xc
	ldr r6, [r0]
	add r0, pc, #0x2EC
	str r0, [sp, #8]
	movs r0, #0x84
	ldr r0, [r0, r5]
	lsls r0, r0, #4
	lsrs r7, r0, #0x14
	bne %11
	movs r1, #5
	lsls r1, r1, #7
	movs r4, #1
	movs r2, #0xb
	lsls r2, r2, #7
	b %10
9
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #4
	bhs %17
10
	lsls r0, r4, #2
	adds r0, r0, r6
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne %9
	lsls r0, r4, #1
	adds r0, r0, r6
	adds r0, r0, r2
	ldrh r0, [r0, #0x18]
	lsls r0, r0, #0x1f
	bmi %9
	b %17
11
	movs r4, #4
	b %13
12
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #0x40
	bhs %14
13
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne %12
14
	ldr r0, _08021E90
	ldr r0, [r0]
	bl sub_80050FA
	lsrs r1, r7, #2
	str r1, [sp, #4]
	bl GetEWRAMStart
	ldr r1, [sp, #4]
	cmp r1, #0
	beq %15
	ldr r1, [sp, #4]
	movs r3, #0
	lsls r1, r1, #2
	mov ip, r1
	movs r2, #0
	adds r1, r0, #0
	mov r0, ip
	bl sub_803DA9C
	b %16
15
	movs r3, #0
	movs r2, #0
	adds r1, r0, #0
	movs r0, #4
	bl sub_803DA80
16
	lsls r1, r4, #2
	adds r1, r1, r6
	str r0, [r1, #0x18]
	movs r0, #0
	bl sub_80050FA
	lsls r0, r4, #1
	movs r1, #0xff
	adds r1, #0x99
	adds r0, r0, r6
	strh r7, [r1, r0]
	movs r2, #0xff
	adds r2, #0x19
	movs r1, #0
	strh r1, [r2, r0]
	movs r2, #1
	lsls r2, r2, #9
	adds r0, r0, r2
	strh r1, [r0, #0x18]
17
	lsls r1, r4, #1
	movs r2, #0xb
	lsls r2, r2, #7
	adds r1, r1, r6
	adds r1, r1, r2
	movs r0, #1
	strh r0, [r1, #0x18]
	lsls r1, r4, #2
	subs r2, #0xff
	subs r2, #1
	adds r1, r1, r6
	ldr r0, [sp, #8]
	adds r1, r1, r2
	str r0, [r1, #0x18]
	movs r0, #0x61
	lsls r0, r0, #4
	adds r0, r6, r0
	ldrb r1, [r0, #8]
	adds r1, #1
	strb r1, [r0, #8]
	movs r1, #0xff
	ldr r0, [r5, #0x7c]
	lsls r1, r1, #0x10
	bics r0, r1
	lsls r1, r4, #0x10
	orrs r0, r1
	str r0, [r5, #0x7c]
	ldr r0, _08021E94
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80177D8
	ldr r0, [r5, #0x58]
	ldr r2, [r5, #0x5c]
	movs r1, #1
	lsls r1, r1, #0x14
	subs r1, r2, r1
	str r1, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [r5, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	ldr r0, _08021E74
	ldr r0, [r0]
	bl sub_800116A
	adds r4, r5, #0
	adds r4, #0xff
	adds r4, #1
	str r0, [r4, #0x24]
	ldr r0, [r5, #0x2c]
	bl sub_803F898
	adds r1, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_800065C
	ldr r0, [r4, #0x24]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r5, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r1, r0, #0x1f
	ldr r0, [r4, #0x24]
	bl sub_803F2CC
	movs r1, #0x20
	ldr r0, [r4, #0x24]
	bl sub_80401C0
	ldr r0, [r5, #0x2c]
	adds r1, r0, #0
	adds r1, #0x2c
	ldr r0, [r4, #0x24]
	bl sub_803FF24
	movs r1, #1
	ldr r0, [r4, #0x24]
	bl sub_80401E4
	adds r5, #0x58
	ldm r5!, {r0, r1}
	adds r4, #0x34
	stm r4!, {r0, r1}
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8021CFC
sub_8021CFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r6, #0
	str r6, [sp, #0xc]
	adds r5, #0x80
	adds r4, r0, #0
	ldr r0, [r5, #0x1c]
	movs r7, #1
	lsls r7, r7, #0x14
	cmp r0, #5
	bne %24
	ldr r0, [r5, #0x14]
	lsls r0, r0, #0xe
	bpl %18
	str r6, [r4, #0x78]
18
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r0, #0x3c]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne %23
	movs r5, #0
	ldr r0, [r4, #0x2c]
	bl sub_803F6E0
	ldr r1, [sp, #0x10]
	ldr r1, [r1, #0x3c]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x1b
	cmp r0, r1
	ldr r0, [r4, #0x2c]
	bls %19
	bl sub_803F6E0
	movs r1, #0xa
	subs r0, r1, r0
	b %20
19
	bl sub_803F6E0
	subs r0, #1
20
	cmp r0, #1
	ble %21
	cmp r0, #0xa
	bge %21
	subs r5, r0, #1
21
	lsls r6, r0, #0x11
	ldr r0, [r4, #0x30]
	movs r1, #0
	ldr r2, [r0, #0x44]
	mvns r1, r1
	cmp r2, #0
	beq %22
	ldr r1, [r2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x18
22
	cmp r1, r5
	bls %23
	bl sub_803F898
	ldr r1, _08021E98
	adds r1, r5, r1
	cmp r0, r1
	beq %23
	ldr r0, [r4, #0x30]
	bl sub_800065C
23
	adds r0, r6, r7
	ldr r1, [r4, #0x58]
	ldr r6, [sp, #0xc]
	ldr r2, [r4, #0x5c]
	subs r1, r1, r6
	str r1, [sp, #4]
	subs r0, r2, r0
	str r0, [sp, #8]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	b %35
24
	ldr r1, _08021E9C
	ldrb r1, [r1]
	cmp r1, #0
	beq %33
	movs r1, #0x25
	lsls r1, r1, #4
	adds r5, r4, r1
	cmp r0, #0xf
	bne %26
	ldrb r0, [r5, #4]
	adds r0, #0xff
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r5, #4]
	bpl %25
	strb r6, [r5, #4]
25
	movs r3, #4
	ldrsb r0, [r5, r3]
	ldr r1, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	lsls r0, r0, #0x10
	adds r0, r0, r7
	subs r0, r2, r0
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	b %35
26
	cmp r0, #0x10
	bne %27
	ldr r0, [r4, #0x58]
	ldr r1, [r4, #0x5c]
	str r0, [sp, #4]
	subs r1, r1, r7
	str r1, [sp, #8]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	b %35
27
	ldr r0, _08021EA0
	ldr r0, [r0]
	ldr r1, [r0, #8]
	movs r0, #3
	bics r0, r1
	bne %32
	movs r3, #5
	ldrsb r0, [r5, r3]
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strb r1, [r5, #4]
	bpl %28
	strb r6, [r5, #4]
	NEGS r0, r0
	strb r0, [r5, #5]
	b %29
28
	cmp r1, #4
	ble %29
	movs r1, #4
	strb r1, [r5, #4]
	NEGS r0, r0
	strb r0, [r5, #5]
29
	movs r3, #4
	ldrsb r0, [r5, r3]
	lsrs r1, r0, #0x1f
	adds r0, r1, r0
	asrs r6, r0, #1
	adds r6, #1
	cmp r6, #3
	bls %30
	movs r6, #3
	b %31
30
	cmp r6, #1
	bhs %31
	movs r6, #1
31
	ldr r0, [r4, #0x30]
	bl sub_803F898
	ldr r1, _08021E98
	adds r1, r6, r1
	cmp r0, r1
	beq %32
	ldr r0, [r4, #0x30]
	bl sub_800065C
32
	movs r3, #4
	ldrsb r0, [r5, r3]
	ldr r1, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	adds r0, #4
	lsls r0, r0, #0x10
	adds r0, r0, r7
	subs r0, r2, r0
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	b %35
33
	b %34
	ALIGN
_08021E74 DCDU gUnknown_03003EB8
_08021E78 DCDU gUnknown_03003454
_08021E7C DCDU 0x79616C50
_08021E80 DCDU 0x53207265
_08021E84 DCDU 0x70697263
_08021E88 DCDU 0x72472074
_08021E8C DCDU 0x0070756F
_08021E90 DCDU gUnknown_03003468
_08021E94 DCDU gUnknown_03003E88
_08021E98 DCDU 0x000011EF
_08021E9C DCDU gUnknown_03003D20
_08021EA0 DCDU gUnknown_03003E98
34
	ldr r0, [r4, #0x58]
	ldr r1, [r4, #0x5c]
	str r0, [sp, #4]
	subs r1, r1, r7
	str r1, [sp, #8]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	ldr r0, [r4, #0x30]
	bl sub_803F898
	ldr r1, _08022198
	cmp r0, r1
	beq %35
	ldr r0, [r5, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf6
	beq %35
	cmp r0, #0xed
	beq %35
	ldr r0, [r4, #0x30]
	bl sub_800065C
35
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq %36
	adds r1, r4, #0
	adds r1, #0x58
	bl sub_803FF24
36
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8021EEC
sub_8021EEC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802219C
	ldrb r0, [r0]
	cmp r0, #0
	beq %37
	movs r0, #0x35
	strh r0, [r4, #0x1e]
	movs r0, #0x36
	strh r0, [r4, #0x1a]
	movs r0, #0x37
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	b %38
37
	movs r0, #0x4e
	strh r0, [r4, #0x1e]
	movs r0, #0x4f
	strh r0, [r4, #0x1a]
	movs r0, #0x50
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
38
	ldr r0, _080221A0
	ldr r1, [r0]
	movs r0, #0x57
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
	movs r0, #0x25
	lsls r0, r0, #4
	adds r0, r4, r0
	ldrb r1, [r0, #4]
	adds r1, #4
	strb r1, [r0, #4]
	movs r0, #0xf
	movs r1, #0x9c
	str r0, [r1, r4]
	adds r0, r4, #0
	bl DefaultScriptGroups__TakeDamage
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8021F42
sub_8021F42
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x80
	adds r5, r1, #0
	ldr r1, [r0, #0x1c]
	adds r6, r3, #0
	cmp r1, #0xf
	sub sp, #0xc
	beq %39
	cmp r1, #0x10
	bne %41
39
	movs r0, #0
40
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
41
	ldr r0, [r0, #0xc]
	lsls r0, r0, #1
	lsrs r0, r0, #0x14
	beq %42
	adds r0, r4, #0
	bl DefaultScriptGroups__TakeDamage
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	b %40
42
	adds r0, r4, #0
	adds r0, #0xa0
	adds r7, r0, #0
	ldr r2, [r0, #4]
	adds r7, #0x60
	cmp r2, #0
	beq %46
	ldr r0, [r0, #0x34]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne %46
	adds r0, r4, #0
	bl DefaultScriptGroups__TakeDamage
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	ldr r0, _0802219C
	ldrb r0, [r0]
	cmp r0, #0
	beq %44
	lsrs r0, r6, #1
	lsls r0, r0, #0x18
	movs r1, #0
	mvns r1, r1
	asrs r0, r0, #0x18
	cmp r0, #0
	ble %43
	NEGS r1, r0
43
	ldr r5, _080221A4
	lsls r1, r1, #0x18
	ldr r0, [r5]
	asrs r1, r1, #0x18
	adds r0, #0xac
	bl sub_8023A70
	movs r0, #1
	b %40
44
	ldr r0, [r7, #0x3c]
	movs r2, #7
	lsls r1, r0, #0xc
	lsrs r1, r1, #0x1d
	adds r3, r1, r6
	lsls r2, r2, #0x11
	cmp r3, #5
	blo %45
	bics r0, r2
	str r0, [r7, #0x3c]
	movs r3, #5
	subs r6, r3, r1
	movs r0, #0
	lsls r1, r3, #6
	strh r0, [r1, r4]
	b %47
45
	lsls r1, r6, #0x11
	adds r1, r0, r1
	ands r1, r2
	bics r0, r2
	orrs r0, r1
	str r0, [r7, #0x3c]
	movs r0, #1
	b %40
46
	ldr r0, [r4, #0x68]
	cmp r0, #0
	bne %47
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	bne %47
	cmp r1, #0xb
	beq %47
	movs r2, #3
	lsls r2, r2, #0xf
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_801F450
47
	movs r0, #0x97
	ldrsb r0, [r0, r5]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	cmp r0, #9
	bhs %60
	add r3, pc, #0x8
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
48
	DCB 0x05
49
	DCB 0x05
50
	DCB 0x2A
51
	DCB 0x2A
52
	DCB 0x9F
53
	DCB 0x9A
54
	DCB 0x62
55
	DCB 0x62
56
	DCB 0xA3, 0x00
loc_802203e
	NEGS r0, r6
	ldr r5, _080221A4
	lsls r1, r0, #0x18
	ldr r0, [r5]
	asrs r1, r1, #0x18
	adds r0, #0xac
	bl ModifyPlayerHealth
	lsrs r0, r6, #1
	NEGS r0, r0
	lsls r1, r0, #0x18
	ldr r0, [r5]
	asrs r1, r1, #0x18
	adds r0, #0xac
	bl sub_8023A70
	ldr r0, [r5]
	movs r1, #4
	adds r0, #0xac
	bl sub_8023AA2
	ldr r0, [r5]
	adds r0, #0xa0
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	beq %57
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl __call_via_r1
	b %67
57
	adds r0, r4, #0
	bl sub_8021EEC
	b %67
loc_8022088
	movs r1, #0xac
	ldr r1, [r1, r5]
	lsls r1, r1, #5
	lsrs r1, r1, #0x17
	str r1, [sp, #8]
	subs r1, #0x37
	cmp r1, #2
	bhi %65
	cmp r0, #2
	bne %58
	adds r0, r4, #0
	bl sub_8020A74
	adds r7, #0x34
	ldm r7!, {r0, r1}
	str r0, [r4, #0x58]
	str r1, [r4, #0x5c]
	adds r0, r4, #0
	bl sub_8020AB6
	ldr r1, [sp, #8]
	cmp r1, #0x39
	bne %67
	ldr r0, [r4, #0x58]
	ldr r1, [r4, #0x5c]
	movs r2, #5
	lsls r2, r2, #0x13
	subs r1, r1, r2
	str r0, [sp]
	ldr r0, _080221A8
	str r1, [sp, #4]
	ldr r0, [r0]
	mov r1, sp
	bl sub_801CA1E
	b %67
58
	adds r0, r4, #0
	bl sub_8020A74
	movs r0, #0
59
	lsls r1, r0, #2
	adds r1, r1, r5
	ldr r1, [r1, #0x38]
	cmp r1, #0
	beq %61
	ldr r1, [r1, #0x34]
	lsls r1, r1, #0xb
	lsrs r1, r1, #0x1f
	beq %61
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq %67
	movs r0, #0
	b %62
60
	b %69
61
	adds r0, #1
	cmp r0, #5
	blo %59
	b %67
62
	lsls r1, r0, #2
	adds r1, r1, r5
	ldr r1, [r1, #0x38]
	cmp r1, #0
	beq %63
	ldr r1, [r1, #0x34]
	lsls r1, r1, #0xb
	lsrs r1, r1, #0x1f
	beq %63
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x38]
	b %64
63
	adds r0, #1
	cmp r0, #5
	blo %62
	movs r0, #0
64
	bl sub_80384FA
	b %67
65
	NEGS r0, r6
	ldr r5, _080221A4
	lsls r1, r0, #0x18
	ldr r0, [r5]
	asrs r1, r1, #0x18
	adds r0, #0xac
	bl ModifyPlayerHealth
	ldr r0, _0802219C
	ldrb r0, [r0]
	cmp r0, #0
	beq %66
	lsrs r0, r6, #1
	NEGS r0, r0
	lsls r1, r0, #0x18
	ldr r0, [r5]
	asrs r1, r1, #0x18
	adds r0, #0xac
	bl sub_8023A70
66
	ldr r0, [r5]
	adds r0, #0xa0
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	beq %68
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl __call_via_r1
67
	b %70
68
	adds r0, r4, #0
	bl sub_8021EEC
	b %70
loc_8022172
	adds r0, r4, #0
	bl DefaultScriptGroups__TakeDamage
	b %70
loc_802217a
	movs r0, #0
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	b %70
69
	adds r0, r4, #0
	bl DefaultScriptGroups__TakeDamage
70
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	movs r0, #1
	b %40
	ALIGN
_08022198 DCDU 0x000011EF
_0802219C DCDU gUnknown_03003D20
_080221A0 DCDU gUnknown_0300345C
_080221A4 DCDU gPlayerEntity
_080221A8 DCDU gUnknown_03003458
	END
