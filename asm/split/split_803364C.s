	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_0300334A
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300346C
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_08051072
	IMPORT gUnknown_08051076
	IMPORT gUnknown_0805107A
	IMPORT gUnknown_0805107E
	IMPORT gUnknown_08051082
	IMPORT gUnknown_08051086
	IMPORT sub_80003F4
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_80050FA
	IMPORT GetEWRAMStart
	IMPORT sub_800BE0E
	IMPORT sub_800C1CA
	IMPORT DefaultScriptGroups__1C
	IMPORT DefaultScriptGroups__18
	IMPORT DefaultScriptGroups__20
	IMPORT DefaultScriptGroups__10
	IMPORT sub_8023AA2
	IMPORT sub_8032A90
	IMPORT sub_8033512
	IMPORT sub_803357C
	IMPORT sub_8033C58
	IMPORT __call_via_r1
	IMPORT __call_via_r2
	IMPORT __call_via_r5
	IMPORT __call_via_r6
	IMPORT sub_803DA80
	IMPORT sub_803FC14
	IMPORT sub_803FF24


	thumb_func_start WinxClub__38
WinxClub__38
	push {lr}
	ldr r1, [r0, #0x58]
	ldr r3, [r0, #0x5c]
	sub sp, #0xc
	movs r2, #1
	lsls r2, r2, #0x14
	subs r2, r3, r2
	str r1, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r0, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	add sp, #0xc
	pop {r3}
	bx r3

	thumb_func_start sub_803366C
sub_803366C
	push {r4}
	ldr r2, [r0, #0x58]
	cmp r2, #0
	ble %1
	ldr r0, [r0, #0x5c]
	cmp r0, #0
	ble %1
	ldr r1, _08033A5C
	movs r3, #3
	ldr r1, [r1]
	lsls r3, r3, #0x10
	ldr r4, [r1, #0x14]
	subs r4, r4, r3
	cmp r2, r4
	bge %1
	ldr r1, [r1, #0x18]
	subs r1, r1, r3
	cmp r0, r1
	blt %3
1
	movs r0, #0
2
	pop {r4}
	bx lr
3
	movs r0, #1
	b %2

	thumb_func_start WinxClub__10
WinxClub__10
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r6, #0x80
	adds r4, r0, #0
	ldr r0, [r6, #0x20]
	sub sp, #0xc
	cmp r0, #0
	beq %8
	adds r5, r4, #0
	adds r5, #0xa8
	ldr r0, [r4, #0x78]
	adds r7, r4, #0
	adds r7, #0xc0
	cmp r0, #0
	str r5, [sp, #8]
	beq %6
	movs r3, #3
	lsls r3, r3, #0x10
	cmp r0, r3
	blt %4
	ldr r2, [r4, #0x58]
	cmp r2, #0
	ble %4
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	ble %4
	ldr r1, _08033A5C
	ldr r1, [r1]
	ldr r5, [r1, #0x14]
	subs r5, r5, r3
	cmp r2, r5
	bge %4
	ldr r1, [r1, #0x18]
	subs r1, r1, r3
	cmp r0, r1
	blt %6
4
	movs r3, #0
	str r3, [r4, #0x70]
	str r3, [r4, #0x78]
	ldr r0, [r7, #0x3c]
	lsls r1, r0, #0x1c
	bpl %5
	movs r2, #1
	ldr r1, [r6, #0x14]
	lsls r2, r2, #0xb
	bics r1, r2
	str r1, [r6, #0x14]
	movs r1, #8
	bics r0, r1
	str r0, [r7, #0x3c]
	str r3, [r4, #0x58]
	str r3, [r4, #0x5c]
	str r3, [sp]
	str r3, [sp, #4]
	ldr r0, [r4, #0x2c]
	mov r1, sp
	adds r5, r3, #0
	bl sub_803FF24
	str r5, [sp]
	str r5, [sp, #4]
	ldr r0, [r4, #0x30]
	mov r1, sp
	bl sub_803FF24
	b %6
5
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	movs r3, #0x16
	movs r1, #6
	str r1, [r6, #0x1c]
	ldr r1, _08033A60
	muls r0, r3
	adds r0, r0, r1
	ldrh r0, [r0, #4]
	movs r3, #0
	mvns r3, r3
	strh r0, [r4, #0xe]
	adds r1, r0, #1
	strh r1, [r4, #0xa]
	adds r0, #2
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	ldr r5, [sp, #8]
	movs r2, #1
	ldr r0, [r5]
	ldr r1, [r0, #4]
	adds r5, r1, r0
	adds r1, r4, #0
	ldr r0, [sp, #8]
	bl __call_via_r5
6
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	beq %7
	cmp r0, #4
	bne %9
7
	adds r0, r4, #0
	bl DefaultScriptGroups__10
8
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
9
	cmp r0, #6
	bne %8
	ldr r0, _08033A64
	ldr r5, [r4, #0x2c]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq %10
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
10
	lsls r0, r1, #0x10
	ldr r1, [r4, #0x7c]
	lsrs r0, r0, #0x10
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1, #8]
	cmp r0, r1
	beq %11
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
11
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %12
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
12
	ldr r5, [r4, #0x2c]
	ldrh r0, [r5, #0x28]
	lsls r0, r0, #0x13
	lsrs r2, r0, #0x1f
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, #2
	bne %13
	ldr r1, [r6]
	lsls r1, r1, #0x1d
	bpl %13
	movs r1, #1
	b %14
13
	movs r1, #0
14
	cmp r2, r1
	beq %21
	cmp r0, #2
	bne %15
	ldr r0, [r6]
	lsls r0, r0, #0x1d
	bpl %15
	movs r1, #1
	b %16
15
	movs r1, #0
16
	ldrh r2, [r5, #0x28]
	movs r3, #1
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r1, r1, #0xc
	orrs r1, r2
	strh r1, [r5, #0x28]
	adds r0, r5, #0
	bl sub_80003F4
	ldr r0, [r5]
	lsls r1, r0, #0x1e
	bmi %20
	ldr r1, [r5, #0x3c]
	cmp r1, #0
	blt %17
	movs r2, #0xf
	ldr r1, [r5, #0x34]
	lsls r2, r2, #0x14
	cmp r1, r2
	bge %17
	ldr r1, [r5, #0x40]
	cmp r1, #0
	blt %17
	movs r2, #5
	ldr r1, [r5, #0x38]
	lsls r2, r2, #0x15
	cmp r1, r2
	blt %18
17
	lsls r0, r0, #0x16
	bmi %20
	ldr r0, _08033A64
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_800C1CA
	movs r1, #1
	ldr r0, [r5]
	lsls r1, r1, #9
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	str r0, [r5]
	b %20
18
	lsls r0, r0, #0x16
	bpl %19
	ldr r0, _08033A64
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_800BE0E
	movs r1, #1
	ldr r0, [r5]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5]
19
	ldr r0, [r5, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r5, #0x28]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	lsrs r0, r0, #0x17
	orrs r0, r1
	strh r0, [r5, #0x28]
	ldr r0, [r5, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r5, #0x26]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r5, #0x26]
	ldr r0, [r5]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r5]
20
	ldr r0, [r5]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r5]
21
	ldr r0, [r7, #0x3c]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #3
	beq %22
	cmp r0, #2
	bne %23
22
	ldr r0, [r6, #0x24]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_8033512
	b %24
23
	ldr r0, [r6, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, sp
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_8033512
24
	ldr r0, [r7, #0x3c]
	movs r1, #0x3f
	adds r2, r0, #0
	lsls r1, r1, #6
	adds r0, #0x40
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	lsls r2, r0, #0x14
	lsrs r2, r2, #0x1a
	str r0, [r7, #0x3c]
	bne %31
	ldr r2, [r4, #0x38]
	cmp r2, #0
	bne %31
	ldr r2, [r6, #0x24]
	adds r2, #0x80
	ldr r2, [r2, #0x1c]
	cmp r2, #0xf
	beq %25
	cmp r2, #0x10
	bne %26
25
	adds r0, r4, #0
	bl sub_803357C
	b %31
26
	ldr r2, _08033A68
	bics r0, r1
	ldr r2, [r2]
	ldr r1, _08033A6C
	adds r2, #0xb0
	ldrb r5, [r2, #7]
	str r0, [r7, #0x3c]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #3
	ldr r0, [r1]
	bne %28
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x58
	bl sub_803DA80
	adds r6, r0, #0
	beq %27
	adds r0, r6, #0
	bl sub_8032A90
27
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x38]
	movs r3, #0
	ldr r1, [r0]
	mvns r3, r3
	ldr r2, [r1, #4]
	adds r6, r2, r1
	adds r2, r5, #0
	adds r1, r4, #0
	bl __call_via_r6
	b %30
28
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x58
	bl sub_803DA80
	adds r6, r0, #0
	beq %29
	adds r0, r6, #0
	bl sub_8033C58
29
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r1, [r7, #0x3c]
	ldr r0, [r4, #0x38]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	lsls r1, r1, #2
	adds r2, r1, r5
	ldr r1, [r0]
	ldr r3, [r1, #4]
	adds r5, r3, r1
	movs r3, #0
	mvns r3, r3
	adds r1, r4, #0
	bl __call_via_r5
30
	ldr r0, _08033A68
	movs r1, #0xae
	ldr r0, [r0]
	ldrb r1, [r1, r0]
	NEGS r1, r1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, #0xac
	bl sub_8023AA2
31
	ldr r5, [sp, #8]
	ldr r0, [r5, #4]
	cmp r0, #0
	bne %32
	b %8
32
	ldr r5, [sp, #8]
	ldr r0, [r4, #0x7c]
	ldr r1, [r5, #0x34]
	lsls r0, r0, #4
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x1c
	orrs r0, r1
	str r0, [r5, #0x34]
	ldr r1, [r5, #0x14]
	adds r1, #0x2c
	ldr r2, [r1]
	ldr r1, [r1, #4]
	str r1, [r5, #0x20]
	str r2, [r5, #0x1c]
	ldr r0, [r5, #0x14]
	movs r2, #0xff
	ldr r1, [r5, #0x34]
	ldrb r0, [r0, #5]
	lsls r2, r2, #0xb
	bics r1, r2
	lsls r0, r0, #0xb
	orrs r0, r1
	lsls r1, r0, #0x18
	str r0, [r5, #0x34]
	ldr r0, _08033A70
	lsrs r1, r1, #0x18
	ldr r2, _08033A74
	ldrsb r0, [r0, r1]
	ldrsb r1, [r2, r1]
	ldr r2, [r5, #0x1c]
	lsls r0, r0, #0x10
	adds r0, r2, r0
	ldr r2, [r5, #0x20]
	lsls r1, r1, #0x10
	adds r1, r2, r1
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, sp
	bl sub_803FF24
	ldr r0, [r5, #0x34]
	ldr r2, _08033A7C
	lsls r1, r0, #0x18
	ldr r0, _08033A78
	lsrs r1, r1, #0x18
	ldrsb r0, [r0, r1]
	ldrsb r1, [r2, r1]
	ldr r2, [r5, #0x1c]
	lsls r0, r0, #0x10
	adds r0, r2, r0
	ldr r2, [r5, #0x20]
	lsls r1, r1, #0x10
	adds r1, r2, r1
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [r5, #0x3c]
	mov r1, sp
	bl sub_803FF24
	b %33
	ALIGN
_08033A5C DCDU gUnknown_03003458
_08033A60 DCDU gUnknown_0300334A
_08033A64 DCDU gUnknown_03003EA0
_08033A68 DCDU gPlayerEntity
_08033A6C DCDU gUnknown_0300346C
_08033A70 DCDU gUnknown_0805107A
_08033A74 DCDU gUnknown_0805107E
_08033A78 DCDU gUnknown_08051082
_08033A7C DCDU gUnknown_08051086
33
	ldr r1, [r5, #0x34]
	ldr r0, _08033C44
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	ldrb r0, [r0, r2]
	cmp r0, #0
	beq %34
	lsls r0, r1, #0xd
	lsrs r0, r0, #0x18
	adds r0, #1
	b %35
34
	lsls r0, r1, #0xd
	lsrs r0, r0, #0x18
	subs r0, #1
35
	ldr r3, _08033C48
	ldrb r2, [r3, r2]
	cmp r2, #0
	beq %36
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	adds r1, #1
	b %37
36
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	subs r1, #1
37
	ldr r2, [r5, #4]
	movs r4, #3
	ldrb r3, [r2, #5]
	lsls r4, r4, #0xa
	cmp r3, r0
	beq %38
	ldrh r3, [r2, #0x2a]
	lsls r6, r0, #0x18
	lsrs r6, r6, #0x1e
	lsls r6, r6, #0xa
	bics r3, r4
	orrs r3, r6
	strh r3, [r2, #0x2a]
	strb r0, [r2, #5]
	ldr r0, [r2]
	lsls r3, r0, #0x16
	bmi %38
	movs r3, #0x80
	orrs r0, r3
	str r0, [r2]
38
	ldr r0, [r5, #0x3c]
	ldrb r2, [r0, #5]
	cmp r2, r1
	beq %39
	ldrh r2, [r0, #0x2a]
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	bics r2, r4
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %39
	movs r3, #0x80
	orrs r1, r3
	str r1, [r0]
39
	ldr r0, [sp, #8]
	ldr r0, [r0]
	ldr r1, [r0, #8]
	adds r1, r1, r0
	ldr r0, [sp, #8]
	bl __call_via_r1
	b %8

	non_word_aligned_thumb_func_start WinxClub__3C
WinxClub__3C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08033C4C
	adds r5, r4, #0
	ldr r0, [r0]
	adds r5, #0xf0
	ldr r1, [r0, #8]
	movs r0, #3
	bics r0, r1
	cmp r0, #0
	sub sp, #0xc
	bne %44
	movs r3, #0xf
	ldrsb r0, [r5, r3]
	ldrb r1, [r5, #0xe]
	adds r1, r1, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strb r1, [r5, #0xe]
	bpl %40
	movs r1, #0
	strb r1, [r5, #0xe]
	NEGS r0, r0
	strb r0, [r5, #0xf]
	b %41
40
	cmp r1, #4
	ble %41
	movs r1, #4
	strb r1, [r5, #0xe]
	NEGS r0, r0
	strb r0, [r5, #0xf]
41
	movs r3, #0xe
	ldrsb r0, [r5, r3]
	lsrs r1, r0, #0x1f
	adds r0, r1, r0
	asrs r6, r0, #1
	adds r6, #1
	cmp r6, #3
	bls %42
	movs r6, #3
	b %43
42
	cmp r6, #1
	bhs %43
	movs r6, #1
43
	ldr r0, _08033C50
	ldr r7, [r4, #0x30]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r7, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	ldr r1, _08033C54
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, r1
	cmp r0, r1
	beq %44
	ldr r0, [r4, #0x30]
	bl sub_800065C
44
	movs r3, #0xe
	ldrsb r0, [r5, r3]
	movs r1, #1
	lsls r1, r1, #0x14
	adds r0, #4
	lsls r0, r0, #0x10
	adds r0, r0, r1
	ldr r1, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	movs r5, #0
	adds r2, r2, r0
	cmp r1, #0
	blt %46
	cmp r2, #0
	blt %46
	ldr r1, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	str r1, [sp, #4]
	subs r0, r2, r0
	str r0, [sp, #8]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq %45
	adds r1, r4, #0
	adds r1, #0x58
	bl sub_803FF24
45
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
46
	str r5, [r4, #0x58]
	str r5, [r4, #0x5c]
	str r5, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	str r5, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [r4, #0x30]
	add r1, sp, #4
	bl sub_803FF24
	b %45

	non_word_aligned_thumb_func_start WinxClub__18
WinxClub__18
	push {r4, lr}
	adds r4, r0, #0
	bl DefaultScriptGroups__18
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r1, [r0]
	ldr r2, [r1, #0xc]
	adds r1, r2, r1
	bl __call_via_r1
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start WinxClub__1C
WinxClub__1C
	push {r4, lr}
	adds r4, r0, #0
	bl DefaultScriptGroups__1C
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r1, [r0]
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl __call_via_r1
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start WinxClub__20
WinxClub__20
	push {r4, lr}
	adds r4, r0, #0
	bl DefaultScriptGroups__20
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r2, r2, r1
	ldr r1, [r4, #0x2c]
	bl __call_via_r2
	pop {r4}
	pop {r3}
	bx r3
	ALIGN
_08033C44 DCDU gUnknown_08051072
_08033C48 DCDU gUnknown_08051076
_08033C4C DCDU gUnknown_03003E98
_08033C50 DCDU gUnknown_03003EA0
_08033C54 DCDU 0x000011EF
	END
