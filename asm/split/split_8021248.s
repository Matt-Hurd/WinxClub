	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003D20
	IMPORT gUnknown_03003EB8
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_80012F0
	IMPORT sub_8001338
	IMPORT sub_801D788
	IMPORT sub_801D9B0
	IMPORT DefaultScriptGroups__14
	IMPORT sub_8028BE4
	IMPORT sub_8028C2E
	IMPORT rand
	IMPORT sub_803F2CC
	IMPORT sub_803F6B4
	IMPORT sub_803F6E0
	IMPORT sub_803F898
	IMPORT sub_803FC14
	IMPORT sub_80401C0
	IMPORT sub_80401E4
	IMPORT sub_80404B4

	thumb_func_start sub_8021248
sub_8021248
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r6, #0x80
	ldr r1, [r6, #4]
	adds r4, r0, #0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	sub sp, #0xc
	blo %2
	cmp r0, #0x18
	bhi %2
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x18
	cmp r0, #1
	blo %1
	cmp r0, #0x18
	bls %2
1
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r6, #4]
2
	ldr r1, [r6, #4]
	adds r5, r4, #0
	adds r5, #0xff
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	adds r5, #1
	movs r7, #0
	cmp r0, #0xf7
	beq %20
	bgt %6
	cmp r0, #0xf3
	beq %21
	bgt %3
	cmp r0, #0
	beq %16
	cmp r0, #0xec
	beq %22
	cmp r0, #0xed
	beq %4
	cmp r0, #0xf2
	bne %23
	b %24
3
	cmp r0, #0xf4
	beq %24
	cmp r0, #0xf5
	beq %24
	cmp r0, #0xf6
	bne %23
4
	ldr r0, [r6, #0x1c]
	cmp r0, #5
	bne %26
	ldr r0, [r4, #0x30]
	ldrh r1, [r0, #0x26]
	lsls r2, r1, #0x14
	lsrs r2, r2, #0x1e
	cmp r2, #1
	beq %5
	movs r2, #3
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
5
	ldr r0, [r4, #0x30]
	ldrb r1, [r0, #5]
	cmp r1, #0xbe
	beq %28
	movs r1, #0xbe
	bl sub_80401C0
	b %28
6
	adds r2, r0, #0
	subs r2, #0xf8
	cmp r2, #8
	bhs %7
	add r3, pc, #0x8
	adds r3, r3, r2
	ldrh r3, [r3, r2]
	lsls r3, r3, #1
	add pc, r3
7
	b %23
8
	DCB 0x36, 0x01
9
	DCB 0xAF, 0x02
10
	DCB 0x8B, 0x03
11
	DCB 0xF6, 0x00
12
	DCB 0x8B, 0x03
13
	DCB 0xF6, 0x00
14
	DCB 0x4E, 0x03
15
	DCB 0xBD, 0x00
16
	ldr r0, [r5, #0x3c]
	lsls r1, r0, #0xf
	bpl %17
	movs r1, #1
	lsls r1, r1, #0x10
	bics r0, r1
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x24]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %17
	movs r1, #0
	bl sub_80401E4
17
	ldr r0, [r6, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	cmp r0, #0xfa
	beq %18
	cmp r0, #0xfc
	bne %31
18
	ldr r0, [r5, #0x3c]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #8
	beq %19
	ldr r0, [r6, #0x1c]
	cmp r0, #0xc
	bne %30
19
	ldr r0, _080216F8
	ldr r1, [r0]
	movs r0, #0x15
	lsls r0, r0, #7
	adds r0, r0, r1
	bl sub_8028C2E
	movs r0, #0x6e
	strh r0, [r4, #0xe]
	movs r0, #0x6f
	strh r0, [r4, #0xa]
	movs r0, #0x70
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0x5c
	strh r0, [r4, #0x1e]
	movs r0, #0x5d
	strh r0, [r4, #0x1a]
	movs r0, #0x5e
	b %25
20
	b %45
21
	b %88
22
	b %40
23
	b %92
24
	b %85
25
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	ldr r0, [r4, #0x2c]
	movs r3, #1
	ldr r1, [r0]
	lsls r3, r3, #0xb
	lsls r2, r1, #0x14
	asrs r2, r2, #0x1f
	adds r2, #1
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x14
	bics r1, r3
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x30]
	movs r1, #4
	ldr r2, [r0]
	b %27
26
	b %49
27
	bics r2, r1
	orrs r2, r1
	str r2, [r0]
	ldr r0, [r4, #0x74]
	str r0, [r4, #0x70]
	ldr r0, [r5, #0x3c]
	lsrs r0, r0, #4
	lsls r0, r0, #4
	str r0, [r5, #0x3c]
	str r1, [r6, #0x1c]
	str r7, [r4, #0x78]
	ldr r0, [r4, #0x30]
	bl sub_803F898
	ldr r1, _080216FC
	cmp r0, r1
	beq %29
	ldr r0, [r4, #0x30]
	bl sub_800065C
	b %29
28
	b %39
29
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %30
	movs r1, #1
	bl sub_80401E4
30
	b %35
31
	cmp r0, #0xf8
	beq %32
	cmp r0, #0xf7
	bne %35
32
	movs r0, #0x6e
	strh r0, [r4, #0xe]
	movs r0, #0x6f
	strh r0, [r4, #0xa]
	movs r0, #0x70
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	ldr r0, [r4, #0x30]
	movs r2, #3
	ldrh r1, [r0, #0x26]
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x30]
	ldrb r1, [r0, #5]
	cmp r1, #0xbe
	beq %33
	movs r1, #0xbe
	bl sub_80401C0
33
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %34
	movs r1, #1
	bl sub_80401E4
34
	ldr r0, [r4, #0x74]
	str r0, [r4, #0x70]
	str r7, [r6, #0x1c]
35
	ldr r0, [r4, #0x30]
	bl sub_803F898
	ldr r5, _080216FC
	cmp r0, r5
	blo %36
	ldr r0, [r4, #0x30]
	bl sub_803F898
	adds r1, r5, #3
	cmp r0, r1
	bls %39
36
	adds r1, r5, #0
	ldr r0, [r4, #0x30]
	bl sub_800065C
	ldr r0, [r4, #0x30]
	movs r2, #3
	ldrh r1, [r0, #0x26]
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x30]
	ldrb r1, [r0, #5]
	cmp r1, #0xbe
	beq %39
	movs r1, #0xbe
	bl sub_80401C0
	b %39
loc_8021472
	ldr r0, [r5, #0x3c]
	lsls r1, r0, #0xf
	bpl %37
	movs r1, #1
	lsls r1, r1, #0x10
	bics r0, r1
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x24]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %37
	movs r1, #0
	bl sub_80401E4
37
	ldr r0, [r4, #0x30]
	bl sub_803F898
	ldr r5, _080216FC
	cmp r0, r5
	blo %38
	ldr r0, [r4, #0x30]
	bl sub_803F898
	adds r1, r5, #3
	cmp r0, r1
	bls %39
38
	adds r1, r5, #0
	ldr r0, [r4, #0x30]
	bl sub_800065C
	ldr r0, [r4, #0x30]
	movs r2, #3
	ldrh r1, [r0, #0x26]
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x30]
	ldrb r1, [r0, #5]
	cmp r1, #0xbe
	beq %39
	movs r1, #0xbe
	bl sub_80401C0
39
	b %44
40
	movs r1, #1
	ldr r0, [r5, #0x3c]
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r5, #0x3c]
	b %44
loc_80214e4
	ldr r0, [r5, #0x3c]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #8
	beq %41
	ldr r0, [r6, #0x1c]
	cmp r0, #0xc
	bne %44
41
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x18
	cmp r0, #0xfa
	beq %42
	cmp r0, #0xfc
	bne %44
42
	movs r0, #0x5c
	strh r0, [r4, #0x1e]
	movs r0, #0x5d
	strh r0, [r4, #0x1a]
	movs r0, #0x5e
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	ldr r0, [r4, #0x2c]
	movs r3, #1
	ldr r1, [r0]
	lsls r3, r3, #0xb
	lsls r2, r1, #0x14
	asrs r2, r2, #0x1f
	adds r2, #1
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x14
	bics r1, r3
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x30]
	movs r1, #4
	ldr r2, [r0]
	bics r2, r1
	orrs r2, r1
	str r2, [r0]
	ldr r0, [r4, #0x74]
	str r0, [r4, #0x70]
	ldr r0, [r5, #0x3c]
	lsrs r0, r0, #4
	lsls r0, r0, #4
	str r0, [r5, #0x3c]
	str r1, [r6, #0x1c]
	str r7, [r4, #0x78]
	ldr r0, [r4, #0x30]
	bl sub_803F898
	ldr r1, _080216FC
	cmp r0, r1
	beq %43
	ldr r0, [r4, #0x30]
	bl sub_800065C
43
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %44
	movs r1, #1
	bl sub_80401E4
	b %44
loc_8021564
	ldr r0, [r6, #0x1c]
	cmp r0, #0xa
	beq %44
	movs r0, #0xa
	str r0, [r6, #0x1c]
	ldr r0, [r4, #0x70]
	lsrs r1, r0, #0x1f
	str r0, [r4, #0x74]
	adds r0, r1, r0
	asrs r0, r0, #1
	str r0, [r4, #0x70]
	str r7, [r4, #0x78]
44
	b %53
45
	ldr r0, [r6, #0x1c]
	cmp r0, #0xb
	beq %48
	cmp r0, #5
	bne %46
	ldr r0, [r5, #0x3c]
	lsls r1, r0, #0x1c
	bne %46
	ldr r1, [r4, #0x74]
	lsrs r0, r0, #4
	str r1, [r4, #0x70]
	movs r1, #1
	lsls r0, r0, #4
	lsls r1, r1, #0x15
	bics r0, r1
	str r7, [r4, #0x74]
	str r0, [r5, #0x3c]
46
	movs r0, #0xb
	str r0, [r6, #0x1c]
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %47
	movs r1, #0
	bl sub_80401E4
47
	ldr r0, [r4, #0x70]
	str r0, [r4, #0x74]
	bl sub_80404B4
	str r1, [r4, #0x70]
	str r7, [r4, #0x78]
	b %53
48
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq %53
	ldr r5, _080216F8
	movs r6, #0x4f
	ldr r0, [r5]
	lsls r6, r6, #5
	adds r0, r6, r0
	bl sub_8028BE4
	cmp r0, #0
	bne %53
	ldr r0, [r5]
	adds r0, r6, r0
	bl sub_8028C2E
	b %53
49
	ldr r0, _08021700
	ldrb r0, [r0]
	cmp r0, #0
	bne %57
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x18
	cmp r0, #0xf7
	bne %50
	movs r0, #0x6e
	strh r0, [r4, #0xe]
	movs r0, #0x6f
	strh r0, [r4, #0xa]
	movs r0, #0x70
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	ldr r0, [r4, #0x74]
	str r0, [r4, #0x70]
	str r7, [r6, #0x1c]
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne %50
	movs r1, #1
	bl sub_80401E4
50
	ldr r0, [r6, #0x1c]
	cmp r0, #0xd
	beq %57
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #4
	lsrs r2, r1, #0x1c
	lsls r3, r2, #1
	adds r3, r3, r4
	ldrh r3, [r3, #0x18]
	cmp r0, r3
	bne %62
	ldr r0, [r5, #0x3c]
	movs r7, #0xf
	lsls r7, r7, #0xc
	adds r3, r0, #0
	bics r0, r7
	movs r7, #1
	lsls r7, r7, #0xc
	subs r3, r3, r7
	movs r7, #0xf
	lsls r7, r7, #0xc
	ands r3, r7
	orrs r0, r3
	lsls r3, r0, #0x10
	lsrs r3, r3, #0x1c
	str r0, [r5, #0x3c]
	bne %57
	adds r3, r7, #0
	bics r0, r3
	movs r3, #1
	lsls r3, r3, #0xe
	adds r0, r0, r3
	movs r7, #3
	lsls r7, r7, #0xa
	adds r3, r0, #0
	bics r3, r7
	movs r7, #1
	lsls r7, r7, #0xa
	adds r0, r0, r7
	movs r7, #3
	lsls r7, r7, #0xa
	ands r0, r7
	orrs r0, r3
	lsls r3, r0, #0x14
	lsrs r3, r3, #0x1e
	cmp r3, #3
	str r0, [r5, #0x3c]
	blo %51
	adds r3, r7, #0
	bics r0, r3
	str r0, [r5, #0x3c]
51
	lsrs r0, r1, #0x1c
	beq %52
	cmp r2, #2
	bne %58
52
	ldr r0, _08021704
	ldr r0, [r0]
	adds r0, #0x90
	ldrb r0, [r0]
	cmp r0, #0xa
	bne %54
	ldr r7, _08021708
	b %56
53
	b %83
54
	cmp r0, #0xb
	bne %55
	ldr r7, _0802170C
	b %56
55
	ldr r7, _08021710
56
	ldr r0, [r4, #0x30]
	bl sub_803F898
	ldr r1, [r5, #0x3c]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x1e
	adds r1, r1, r7
	cmp r0, r1
	beq %57
	ldr r0, [r4, #0x30]
	bl sub_800065C
57
	b %70
58
	ldr r0, _08021704
	ldr r0, [r0]
	adds r0, #0x90
	ldrb r0, [r0]
	cmp r0, #0xa
	bne %59
	ldr r7, _08021714
	b %61
59
	cmp r0, #0xb
	bne %60
	ldr r7, _08021718
	b %61
60
	movs r7, #0xb7
	lsls r7, r7, #2
61
	ldr r0, [r4, #0x30]
	bl sub_803F898
	ldr r1, [r5, #0x3c]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x1e
	adds r1, r1, r7
	cmp r0, r1
	beq %70
	ldr r0, [r4, #0x30]
	bl sub_800065C
	b %70
62
	b %63
	ALIGN
_080216F8 DCDU gUnknown_0300345C
_080216FC DCDU 0x000011EF
_08021700 DCDU gUnknown_03003D20
_08021704 DCDU gPlayerEntity
_08021708 DCDU 0x00000325
_0802170C DCDU 0x000002C1
_08021710 DCDU 0x000002E2
_08021714 DCDU 0x0000031F
_08021718 DCDU 0x000002BB
63
	ldr r0, [r4, #0x2c]
	bl sub_803F6E0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _08021A1C
	ldr r0, [r0]
	adds r0, #0x90
	ldrb r0, [r0]
	cmp r0, #0xa
	bne %64
	ldr r1, _08021A20
	adds r2, r1, #0
	adds r2, #8
	adds r0, r1, #0
	adds r0, #0x10
	b %66
64
	cmp r0, #0xb
	bne %65
	ldr r1, _08021A24
	adds r2, r1, #0
	adds r2, #8
	adds r0, r1, #0
	adds r0, #0x10
	b %66
65
	movs r1, #0xb1
	lsls r1, r1, #2
	adds r2, r1, #0
	adds r2, #8
	adds r0, r1, #0
	adds r0, #0x10
66
	ldr r3, [r4, #0x7c]
	lsls r3, r3, #4
	lsrs r3, r3, #0x1c
	beq %75
	cmp r3, #1
	beq %76
	cmp r3, #2
	beq %77
	cmp r3, #3
	bne %67
	adds r5, r1, #0
67
	ldr r0, [r4, #0x30]
	bl sub_803F898
	ldr r1, [sp, #8]
	subs r0, r0, r5
	cmp r0, r1
	beq %68
	ldr r0, [sp, #8]
	adds r1, r5, r0
	ldr r0, [r4, #0x30]
	bl sub_800065C
68
	ldr r5, _08021A28
	movs r0, #5
	ldr r1, [r5]
	lsls r0, r0, #9
	adds r0, r0, r1
	bl sub_8028BE4
	cmp r0, #0
	bne %72
	movs r0, #0x51
	ldr r1, [r5]
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028BE4
	cmp r0, #0
	bne %72
	movs r0, #0x29
	ldr r1, [r5]
	lsls r0, r0, #6
	adds r0, r0, r1
	bl sub_8028BE4
	cmp r0, #0
	bne %72
	bl rand
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne %69
	movs r0, #0
69
	adds r0, #0x50
	lsls r0, r0, #0x18
	ldr r1, [r5]
	b %71
70
	b %74
71
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_8028C2E
72
	ldr r0, [r4, #0x30]
	ldrh r1, [r0, #0x26]
	lsls r2, r1, #0x14
	lsrs r2, r2, #0x1e
	beq %73
	movs r2, #3
	lsls r2, r2, #0xa
	bics r1, r2
	orrs r1, r7
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
73
	ldr r0, [r4, #0x30]
	ldrh r1, [r0, #0x28]
	ldr r2, [sp, #4]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1f
	cmp r1, r2
	beq %74
	ldr r1, [sp, #4]
	bl sub_803F2CC
74
	ldr r0, [r6, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf6
	ldr r0, [r4, #0x2c]
	ldrb r1, [r0, #5]
	bne %78
	cmp r1, #0x80
	bhs %79
	movs r1, #0x82
	bl sub_80401C0
	b %79
75
	adds r5, r0, #0
	b %67
76
	adds r5, r2, #0
	b %67
77
	adds r5, r0, #0
	movs r0, #1
	str r0, [sp, #4]
	b %67
78
	cmp r1, #0x80
	bls %79
	movs r1, #0x42
	bl sub_80401C0
79
	ldr r0, [r4, #0x2c]
	ldrb r2, [r0, #5]
	ldr r0, [r4, #0x30]
	ldrb r3, [r0, #5]
	subs r2, #1
	adds r1, r2, #0
	cmp r2, r3
	beq %83
	bl sub_80401C0
	b %83
loc_8021856
	ldr r0, [r6, #0x1c]
	cmp r0, #5
	bne %80
	ldr r0, [r5, #0x3c]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #8
	bne %83
80
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	cmp r0, #0x55
	beq %82
	movs r2, #0
	movs r1, #0x55
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %81
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
81
	ldr r0, [r4, #0x2c]
	movs r3, #1
	ldr r1, [r0]
	lsls r3, r3, #0xb
	lsls r2, r1, #0x14
	asrs r2, r2, #0x1f
	adds r2, #1
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x14
	bics r1, r3
	orrs r1, r2
	str r1, [r0]
82
	ldr r0, [r6, #0x1c]
	cmp r0, #0xc
	beq %84
	ldr r0, [r4, #0x30]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r7
	str r1, [r0]
	ldr r0, [r4, #0x70]
	movs r1, #0xf
	str r0, [r4, #0x74]
	movs r0, #0xc
	str r0, [r6, #0x1c]
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	lsls r1, r2, #0x16
	adds r0, r0, r1
	str r0, [r4, #0x7c]
	lsrs r0, r1, #2
	str r0, [r4, #0x78]
83
	b %91
84
	ldr r1, _08021A2C
	ldr r0, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x70]
	b %91
85
	ldr r0, [r4, #0x2c]
	ldrb r1, [r0, #5]
	cmp r1, #0x80
	bls %86
	movs r1, #0x42
	bl sub_80401C0
86
	ldr r0, [r4, #0x30]
	bl sub_803F898
	ldr r5, _08021A30
	cmp r0, r5
	blo %87
	ldr r0, [r4, #0x30]
	bl sub_803F898
	adds r1, r5, #3
	cmp r0, r1
	bls %91
87
	adds r1, r5, #0
	ldr r0, [r4, #0x30]
	bl sub_800065C
	ldr r0, [r4, #0x30]
	movs r2, #3
	ldrh r1, [r0, #0x26]
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x30]
	ldrb r1, [r0, #5]
	cmp r1, #0xbe
	beq %91
	movs r1, #0xbe
	bl sub_80401C0
	b %91
88
	ldr r0, [r4, #0x2c]
	ldrb r1, [r0, #5]
	cmp r1, #0x80
	bhs %89
	movs r1, #0x82
	bl sub_80401C0
89
	ldr r0, [r4, #0x30]
	bl sub_803F898
	ldr r5, _08021A30
	cmp r0, r5
	blo %90
	ldr r0, [r4, #0x30]
	bl sub_803F898
	adds r1, r5, #3
	cmp r0, r1
	bls %91
90
	adds r1, r5, #0
	ldr r0, [r4, #0x30]
	bl sub_800065C
	ldr r0, [r4, #0x30]
	movs r2, #3
	ldrh r1, [r0, #0x26]
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x30]
	ldrb r1, [r0, #5]
	cmp r1, #0xbe
	beq %91
	movs r1, #0xbe
	bl sub_80401C0
91
	b %96
92
	cmp r0, #0x40
	blo %96
	cmp r0, #0x80
	bhi %96
	lsls r2, r0, #2
	adds r2, r2, r4
	ldr r2, [r2, #0x50]
	cmp r2, #0
	beq %96
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x18
	cmp r0, r1
	beq %96
	adds r1, r2, #0
	adds r0, r4, #0
	bl sub_801D9B0
	cmp r0, #0
	beq %93
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_801D788
93
	ldr r0, [r6, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x40
	blo %96
	cmp r0, #0x43
	bhi %96
	movs r1, #1
	ldr r0, [r6, #0xc]
	lsls r1, r1, #0xc
	bics r0, r1
	orrs r0, r7
	str r0, [r6, #0xc]
	lsls r0, r0, #0x13
	ldr r5, [r4, #0x30]
	lsrs r6, r0, #0x1f
	ldr r0, _08021A34
	ldr r1, [r5]
	beq %94
	lsls r1, r1, #0x1c
	bmi %95
	ldr r0, [r0]
	adds r1, r5, #0
	bl sub_80012F0
	b %95
94
	lsls r1, r1, #0x1c
	bpl %95
	ldr r0, [r0]
	adds r1, r5, #0
	bl sub_8001338
95
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	lsls r1, r6, #3
	orrs r0, r1
	str r0, [r5]
96
	adds r0, r4, #0
	bl DefaultScriptGroups__14
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08021A1C DCDU gPlayerEntity
_08021A20 DCDU 0x00000307
_08021A24 DCDU 0x000002A3
_08021A28 DCDU gUnknown_0300345C
_08021A2C DCDU 0x00001998
_08021A30 DCDU 0x000011EF
_08021A34 DCDU gUnknown_03003EB8
	END
