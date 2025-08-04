	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300346C
	IMPORT gUnknown_03003478
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_8001338
	IMPORT sub_8001432
	IMPORT sub_80050FA
	IMPORT GetEWRAMStart
	IMPORT sub_80179BE
	IMPORT sub_80187A0
	IMPORT DefaultScriptGroups__10
	IMPORT DefaultScriptGroups__TakeDamage
	IMPORT HostileCreature__20
	IMPORT sub_8037E48
	IMPORT __call_via_r1
	IMPORT __call_via_r6
	IMPORT sub_803DA80
	IMPORT sub_803F0A8
	IMPORT sub_803F2CC
	IMPORT sub_803FC14

	thumb_func_start ScannerScriptGroup__60
ScannerScriptGroup__60
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r0, #0
	adds r6, #0x80
	ldr r0, [r6, #0x2c]
	adds r5, r4, #0
	lsls r0, r0, #5
	lsrs r1, r0, #0x17
	adds r5, #0xc0
	ldr r0, [r5, #0x30]
	cmp r1, #0x38
	bne %5
	lsls r1, r0, #0xf
	bmi %5
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	lsls r0, r0, #3
	adds r1, r0, r4
	adds r1, #0xe0
	adds r0, r4, #0
	adds r0, #0x58
	bl sub_80187A0
	cmp r0, #5
	bhs %4
	movs r0, #0
1
	lsls r1, r0, #2
	adds r1, r1, r4
	ldr r1, [r1, #0x38]
	cmp r1, #0
	bne %2
	adds r0, #1
	cmp r0, #5
	blo %1
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x5c]
	adds r1, r2, r1
	bl __call_via_r1
2
	ldr r1, [r5, #0x30]
	movs r2, #0x20
	lsls r0, r1, #0x1a
	asrs r0, r0, #0x1f
	adds r0, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1a
	bics r1, r2
	orrs r0, r1
	str r0, [r5, #0x30]
3
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
4
	ldr r0, [r6, #0x1c]
	cmp r0, #4
	bne %3
	ldr r1, [r4, #0x7c]
	lsls r0, r1, #8
	lsrs r2, r0, #0x18
	beq %3
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsrs r0, r0, #0x18
	movs r2, #4
	bl sub_803F0A8
	ldr r1, [r4, #0x7c]
	movs r3, #2
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0803A8FC
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
	b %3
5
	ldr r7, _0803A900
	adds r1, r0, #0
	subs r0, #0x40
	mvns r2, r7
	ands r0, r2
	ands r1, r7
	orrs r0, r1
	str r0, [r5, #0x30]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x17
	bne %8
6
	lsls r1, r0, #2
	adds r1, r1, r4
	ldr r1, [r1, #0x38]
	cmp r1, #0
	bne %7
	adds r0, #1
	cmp r0, #5
	blo %6
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x5c]
	adds r1, r2, r1
	bl __call_via_r1
7
	ldr r0, [r5, #0x30]
	movs r1, #0x2d
	lsls r1, r1, #8
	ands r0, r7
	adds r0, r0, r1
	str r0, [r5, #0x30]
	b %3
8
	ldr r0, [r6, #0x1c]
	cmp r0, #4
	bne %3
	ldr r1, [r4, #0x7c]
	lsls r0, r1, #8
	lsrs r2, r0, #0x18
	beq %3
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsrs r0, r0, #0x18
	movs r2, #0x10
	bl sub_803F0A8
	ldr r1, [r4, #0x7c]
	movs r3, #2
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0803A8FC
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
	b %3

	non_word_aligned_thumb_func_start ScannerScriptGroup__38
ScannerScriptGroup__38
	adds r2, r0, #0
	adds r2, #0x80
	push {r4, r5, r6}
	ldr r1, [r2, #0x2c]
	lsls r1, r1, #5
	lsrs r1, r1, #0x17
	cmp r1, #0x38
	beq %11
	ldr r1, [r0, #0x30]
	movs r3, #3
	ldrh r4, [r1, #0x2a]
	lsls r3, r3, #0xa
	movs r5, #0x7f
	bics r4, r3
	movs r3, #1
	lsls r3, r3, #0xa
	orrs r4, r3
	strh r4, [r1, #0x2a]
	strb r5, [r1, #5]
	ldr r5, [r1]
	movs r4, #0x80
	lsls r6, r5, #0x16
	cmp r6, #0
	blt %9
	orrs r5, r4
	str r5, [r1]
9
	ldr r0, [r0, #0x2c]
	movs r1, #3
	ldrh r5, [r0, #0x2a]
	lsls r1, r1, #0xa
	bics r5, r1
	orrs r3, r5
	strh r3, [r0, #0x2a]
	movs r1, #0x60
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r3, r1, #0x16
	bmi %10
	orrs r1, r4
	str r1, [r0]
10
	movs r1, #1
	ldr r0, [r2, #0xc]
	lsls r1, r1, #0xe
	bics r0, r1
	str r0, [r2, #0xc]
11
	pop {r4, r5, r6}
	bx lr

	thumb_func_start ScannerScriptGroup__10
ScannerScriptGroup__10
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r0, #0
	adds r5, #0x80
	ldr r0, [r5, #0x2c]
	adds r6, r4, #0
	lsls r0, r0, #5
	lsrs r0, r0, #0x17
	adds r6, #0xc0
	cmp r0, #0x39
	bne %22
	movs r1, #0
	ldr r0, _0803A904
	ldr r2, [r5, #0x1c]
	mvns r1, r1
	cmp r2, #0
	ldr r0, [r0]
	bne %20
	ldr r7, [r4, #0x2c]
	ldr r2, [r7, #0x44]
	cmp r2, #0
	beq %12
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r7, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
12
	lsls r0, r1, #0x10
	ldr r1, [r6, #0x30]
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1c
	adds r1, r1, r4
	ldrh r1, [r1, #8]
	cmp r0, r1
	beq %13
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %13
	bl sub_8000914
13
	ldr r0, [r4, #0x2c]
	ldrh r1, [r0, #0x28]
	lsls r1, r1, #0x13
	lsrs r2, r1, #0x1f
	ldr r1, [r6, #0x30]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	cmp r1, #2
	bne %14
	ldr r3, [r5]
	lsls r3, r3, #0x1d
	bpl %14
	movs r3, #1
	b %15
14
	movs r3, #0
15
	cmp r2, r3
	beq %18
	cmp r1, #2
	bne %16
	ldr r1, [r5]
	lsls r1, r1, #0x1d
	bpl %16
	movs r1, #1
	b %17
16
	movs r1, #0
17
	bl sub_803F2CC
18
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq %19
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %30
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
	b %30
19
	movs r0, #4
	str r0, [r5, #0x1c]
	b %30
20
	cmp r2, #9
	bne %31
	ldr r7, [r4, #0x2c]
	ldr r2, [r7, #0x44]
	cmp r2, #0
	beq %21
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r7, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
21
	lsls r0, r1, #0x10
	ldr r1, [r6, #0x30]
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1c
	adds r1, r1, r4
	ldrh r1, [r1, #0x10]
	cmp r0, r1
	beq %24
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	b %23
22
	b %43
23
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %24
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
24
	ldr r0, [r4, #0x2c]
	ldrh r1, [r0, #0x28]
	lsls r1, r1, #0x13
	lsrs r2, r1, #0x1f
	ldr r1, [r6, #0x30]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	cmp r1, #2
	bne %25
	ldr r3, [r5]
	lsls r3, r3, #0x1d
	bpl %25
	movs r3, #1
	b %26
25
	movs r3, #0
26
	cmp r2, r3
	beq %29
	cmp r1, #2
	bne %27
	ldr r1, [r5]
	lsls r1, r1, #0x1d
	bpl %27
	movs r1, #1
	b %28
27
	movs r1, #0
28
	bl sub_803F2CC
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %29
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
29
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %30
	ldr r1, [r5, #0x14]
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x1d
	beq %32
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
	ldr r0, [r5, #0x14]
	movs r1, #7
	lsls r1, r1, #0xc
	movs r3, #1
	adds r2, r0, #0
	lsls r3, r3, #0xc
	subs r0, r0, r3
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	str r0, [r5, #0x14]
30
	b %42
31
	b %33
32
	movs r0, #4
	str r0, [r5, #0x1c]
	b %42
33
	cmp r2, #4
	bne %42
	ldr r7, [r4, #0x2c]
	ldr r2, [r7, #0x44]
	cmp r2, #0
	beq %34
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r7, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
34
	lsls r0, r1, #0x10
	ldr r1, [r6, #0x30]
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1c
	adds r1, r1, r4
	ldrh r1, [r1, #0x18]
	cmp r0, r1
	beq %36
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r1, [r4, #0x2c]
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq %35
	movs r2, #1
	lsls r2, r2, #0xa
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _0803A908
	ldr r0, [r0]
	bl sub_8001432
35
	movs r0, #0
	str r0, [r4, #0x78]
36
	ldr r0, [r4, #0x2c]
	ldrh r1, [r0, #0x28]
	lsls r1, r1, #0x13
	lsrs r2, r1, #0x1f
	ldr r1, [r6, #0x30]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	cmp r1, #2
	bne %37
	ldr r3, [r5]
	lsls r3, r3, #0x1d
	bpl %37
	movs r3, #1
	b %38
37
	movs r3, #0
38
	cmp r2, r3
	beq %41
	cmp r1, #2
	bne %39
	ldr r1, [r5]
	lsls r1, r1, #0x1d
	bpl %39
	movs r1, #1
	b %40
39
	movs r1, #0
40
	bl sub_803F2CC
41
	ldr r0, [r5]
	lsls r0, r0, #0x1e
	bpl %42
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %42
	bl sub_803FC14
42
	b %44
43
	adds r0, r4, #0
	bl DefaultScriptGroups__10
44
	ldr r1, _0803A90C
	movs r0, #4
	ldr r1, [r1]
	ands r1, r0
	bne %45
	ldr r0, [r5, #0x34]
	lsls r0, r0, #0x11
	bpl %45
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x60]
	adds r1, r2, r1
	bl __call_via_r1
45
	ldr r0, [r5, #0x1c]
	cmp r0, #9
	bne %50
	ldr r0, [r5, #0x2c]
	lsls r1, r0, #0xf
	bpl %50
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #1
	lsrs r1, r1, #0x1d
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r1, [r1, #0x38]
	cmp r1, #0
	bne %51
	lsls r0, r0, #5
	adds r7, r4, #0
	adds r7, #0x90
	lsrs r0, r0, #0x17
	cmp r0, #0x37
	ldr r1, _0803A910
	beq %48
	cmp r0, #0x38
	beq %54
	cmp r0, #0x39
	bne %51
	ldr r0, [r6, #0x30]
	lsls r2, r0, #0x1c
	bpl %46
	lsls r2, r0, #0x10
	asrs r2, r2, #0x1f
	movs r3, #1
	lsls r3, r3, #0xf
	adds r2, #1
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x10
	bics r0, r3
	orrs r0, r2
	str r0, [r6, #0x30]
46
	ldr r0, [r1]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	str r0, [sp]
	cmp r0, #0
	beq %47
	ldr r0, [sp]
	bl sub_8037E48
47
	ldr r0, [sp]
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #1
	lsrs r1, r1, #0x1d
	lsls r1, r1, #2
	adds r1, r1, r4
	str r0, [r1, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r6, #0x30]
	lsls r2, r1, #0x1d
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x1f
	lsls r1, r1, #1
	lsrs r2, r2, #0x1d
	adds r3, r2, r1
	bpl %58
	adds r3, #4
	b %61
	ALIGN
_0803A8FC DCDU gUnknown_03003454
_0803A900 DCDU 0xFFFF803F
_0803A904 DCDU gUnknown_03003EA0
_0803A908 DCDU gUnknown_03003EB8
_0803A90C DCDU gUnknown_03003478
_0803A910 DCDU gUnknown_0300346C
48
	ldr r0, [r6, #0x30]
	lsls r2, r0, #0x1c
	bpl %49
	lsls r2, r0, #0x10
	asrs r2, r2, #0x1f
	movs r3, #1
	lsls r3, r3, #0xf
	adds r2, #1
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x10
	bics r0, r3
	orrs r0, r2
	str r0, [r6, #0x30]
49
	ldr r0, [r1]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x48
	b %52
50
	b %65
51
	b %64
52
	bl sub_803DA80
	str r0, [sp]
	cmp r0, #0
	beq %53
	ldr r0, [sp]
	bl sub_8037E48
53
	ldr r0, [sp]
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #1
	lsrs r1, r1, #0x1d
	lsls r1, r1, #2
	adds r1, r1, r4
	str r0, [r1, #0x38]
	movs r0, #0
	bl sub_80050FA
	b %55
54
	b %62
55
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r6, #0x30]
	lsls r2, r1, #0x1d
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x1f
	lsls r1, r1, #1
	lsrs r2, r2, #0x1d
	adds r3, r2, r1
	bpl %56
	adds r3, #4
	b %57
56
	cmp r3, #4
	blt %57
	subs r3, #4
57
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #0
	adds r1, r4, #0
	bl __call_via_r6
	ldr r0, _0803AB78
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #1]
	ldrb r0, [r7, #0xa]
	movs r1, #7
	lsls r1, r1, #0x1c
	adds r0, #1
	strb r0, [r7, #0xa]
	ldr r0, [r4, #0x7c]
	adds r2, r0, #0
	adds r0, r0, r3
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	lsls r2, r0, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r0, [r4, #0x7c]
	bne %64
	bics r0, r1
	b %59
58
	b %60
59
	str r0, [r4, #0x7c]
	b %64
60
	cmp r3, #4
	blt %61
	subs r3, #4
61
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #2
	adds r1, r4, #0
	bl __call_via_r6
	ldr r0, _0803AB78
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #1]
	ldrb r0, [r7, #0xa]
	movs r1, #7
	lsls r1, r1, #0x1c
	adds r0, #1
	strb r0, [r7, #0xa]
	ldr r0, [r4, #0x7c]
	adds r2, r0, #0
	adds r0, r0, r3
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	lsls r2, r0, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r0, [r4, #0x7c]
	bne %64
	bics r0, r1
	str r0, [r4, #0x7c]
	b %64
62
	ldr r0, [r1]
	bl sub_80050FA
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r6, r0, #0
	beq %63
	adds r0, r6, #0
	bl sub_8037E48
63
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r1, [r4, #0x7c]
	lsls r0, r1, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	lsls r1, r1, #4
	ldr r2, [r0]
	ldr r3, [r2, #4]
	adds r6, r3, r2
	lsrs r3, r1, #0x1c
	movs r2, #1
	adds r1, r4, #0
	bl __call_via_r6
	ldr r0, _0803AB78
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #1]
	ldrb r0, [r7, #0xa]
	movs r1, #7
	lsls r1, r1, #0x1c
	adds r0, #1
	strb r0, [r7, #0xa]
	ldr r0, [r4, #0x7c]
	adds r2, r0, #0
	adds r0, r0, r3
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	lsls r2, r0, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r0, [r4, #0x7c]
	bne %64
	bics r0, r1
	str r0, [r4, #0x7c]
64
	movs r1, #1
	ldr r0, [r5, #0x2c]
	lsls r1, r1, #0x10
	bics r0, r1
	str r0, [r5, #0x2c]
65
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start ScannerScriptGroup__Intersect
ScannerScriptGroup__Intersect
	push {r4, lr}
	adds r4, r0, #0
	bl DefaultScriptGroups__TakeDamage
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	pop {r4}
	pop {r3}
	movs r0, #1
	bx r3

	non_word_aligned_thumb_func_start ScannerScriptGroup__20
ScannerScriptGroup__20
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl HostileCreature__20
	adds r1, r4, #0
	adds r1, #0x80
	ldr r0, [r1, #0x2c]
	lsls r0, r0, #5
	lsrs r0, r0, #0x17
	cmp r0, #0x38
	beq %69
	ldr r0, [r4, #0x30]
	movs r2, #3
	ldrh r3, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r5, #0x7f
	bics r3, r2
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r3, r2
	strh r3, [r0, #0x2a]
	strb r5, [r0, #5]
	ldr r5, [r0]
	movs r3, #0x80
	lsls r6, r5, #0x16
	cmp r6, #0
	blt %66
	orrs r5, r3
	str r5, [r0]
66
	ldr r0, [r4, #0x2c]
	movs r5, #3
	ldrh r6, [r0, #0x2a]
	lsls r5, r5, #0xa
	bics r6, r5
	orrs r2, r6
	strh r2, [r0, #0x2a]
	movs r5, #0x60
	strb r5, [r0, #5]
	ldr r2, [r0]
	lsls r5, r2, #0x16
	bmi %67
	orrs r2, r3
	str r2, [r0]
67
	movs r2, #1
	ldr r0, [r1, #0xc]
	lsls r2, r2, #0xc
	bics r0, r2
	str r0, [r1, #0xc]
	ldr r5, [r4, #0x30]
	movs r6, #0
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bpl %68
	ldr r0, _0803AB7C
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8001338
68
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r6
	str r0, [r5]
	ldr r0, [r4, #0x30]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r6
	str r1, [r0]
69
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start ScannerScriptGroup__StartAttack
ScannerScriptGroup__StartAttack
	bx lr

	thumb_func_start ScannerScriptGroup__StartAttack2
ScannerScriptGroup__StartAttack2
	bx lr
	ALIGN
_0803AB78 DCDU gUnknown_03003458
_0803AB7C DCDU gUnknown_03003EB8
	END
