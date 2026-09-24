	thumb_func_start maybeInitTransitionLevelScreen
maybeInitTransitionLevelScreen
	push {r0, r4, r5, r6, r7, lr}
	ldr r5, _0800E938
	ldr r0, [r5]
	bl sub_800B082
	ldr r7, _0800E920
	movs r4, #0
	strh r4, [r7, #8]
	ldr r0, _0800E924
	ldr r0, [r0, #8]
	cmp r0, #0
	bne %19
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r4, #0
	movs r2, #0
	movs r0, #0xc
	bl sub_803DA80
	adds r5, r0, #0
	beq %18
	movs r2, #0
	lsls r1, r7, #0xa
	adds r0, r5, #0
	bl LoadFiletable
18
	ldr r0, _0800E924
	str r5, [r0, #8]
19
	ldr r6, _0800E924
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne %21
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r4, #0
	movs r2, #0
	movs r0, #0x18
	bl sub_803DA80
	adds r5, r0, #0
	beq %20
	adds r0, r5, #0
	bl sub_8004924
20
	str r5, [r6, #0xc]
21
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	bne %23
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r0, #0x67
	adds r3, r4, #0
	movs r2, #0
	lsls r0, r0, #4
	bl sub_803DA80
	adds r5, r0, #0
	beq %22
	add r1, pc, #0x1F8
	adds r0, r5, #0
	bl InitScriptData
22
	str r5, [r6, #0x1c]
23
	ldr r0, [r6, #0x14]
	cmp r0, #0
	bne %25
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r4, #0
	movs r2, #0
	movs r0, #0xc
	bl sub_803DA80
	adds r5, r0, #0
	beq %24
	movs r1, #1
	adds r0, r5, #0
	bl sub_801343C
24
	str r5, [r6, #0x14]
	bl sub_800E678
25
	ldr r0, [r6, #0x20]
	cmp r0, #0
	bne %27
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r4, #0
	movs r2, #0
	ldr r0, _0800E9A0
	bl sub_803DA80
	adds r5, r0, #0
	beq %26
	adds r0, r5, #0
	bl sub_801B10C
26
	str r5, [r6, #0x20]
27
	ldr r0, [r6, #0x30]
	bl sub_80050FA
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	bne %29
	adds r3, r4, #0
	movs r2, #0
	movs r0, #4
	ldr r1, [r6, #0x30]
	bl sub_803DA80
	cmp r0, #0
	beq %28
	ldr r1, _0800E9A4
	ldr r2, _0800E9A8
	str r1, [r0]
	ldr r1, _0800E9AC
	str r0, [r2]
	str r1, [r0]
28
	str r0, [r6, #0x2c]
29
	ldr r0, [r6, #0x10]
	cmp r0, #0
	bne %31
	adds r3, r4, #0
	movs r2, #0
	movs r0, #0xdf
	lsls r0, r0, #5
	ldr r1, [r6, #0x30]
	bl sub_803DA80
	adds r5, r0, #0
	beq %30
	adds r0, r5, #0
	bl g3003448__Init
30
	movs r2, #0
	movs r1, #0
	adds r0, r5, #0
	str r5, [r6, #0x10]
	bl sub_800194E
	bl sub_8014DD4
31
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bne %33
	adds r3, r4, #0
	movs r2, #0
	ldr r0, _0800E9B0
	ldr r1, [r6, #0x30]
	bl sub_803DA80
	adds r5, r0, #0
	beq %32
	adds r0, r5, #0
	bl sub_8001A90
32
	str r5, [r6, #0x18]
33
	ldr r0, [r6, #0x28]
	cmp r0, #0
	bne %35
	adds r3, r4, #0
	movs r2, #0
	movs r0, #0x14
	ldr r1, [r6, #0x30]
	bl sub_803DA80
	adds r5, r0, #0
	beq %34
	adds r0, r5, #0
	bl sub_800B4F0
34
	adds r0, r5, #0
	adds r3, r4, #0
	movs r1, #0
	ldr r2, _0800E9B4
	str r5, [r6, #0x28]
	bl sub_800B5EE
	add r1, pc, #0x12C
	ldr r0, [r6, #8]
	bl sub_8004FFC
	adds r1, r0, #0
	ldr r0, [r6, #0x28]
	bl sub_800B676
	add r1, pc, #0x128
	ldr r0, [r6, #8]
	bl sub_8004FFC
	adds r2, r0, #0
	ldr r0, [r6, #0x28]
	movs r1, #5
	bl sub_800B772
	ldr r5, _0800E98C
	ldr r0, [r5]
	ldrb r0, [r0]
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #8
	bl sub_8040574
	ldr r0, [r6, #0x28]
	bl sub_800B782
	ldr r0, [r5]
	ldrb r0, [r0, #1]
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #8
	bl sub_8040574
	ldr r0, [r6, #0x28]
	bl sub_800B6FA
	ldr r0, [r6, #0x28]
	bl sub_800B652
35
	ldr r0, [r6, #0x24]
	cmp r0, #0
	bne %37
	adds r3, r4, #0
	movs r2, #0
	ldr r0, _0800E9CC
	ldr r1, [r6, #0x30]
	bl sub_803DA80
	adds r5, r0, #0
	beq %36
	adds r0, r5, #0
	bl sub_8026908
36
	adds r0, r5, #0
	str r5, [r6, #0x24]
	bl sub_8026962
37
	ldr r5, _0800E938
	ldr r0, [r5]
	ldr r1, [sp]
	bl sub_800B058
	movs r1, #1
	ldr r0, [r5]
	bl sub_800B034
	ldr r0, [r6, #0x10]
	movs r5, #1
	cmp r0, #0
	beq %39
	movs r1, #0x67
	lsls r1, r1, #6
	b %38
	ALIGN
_0800E920 DCDU REG_IE
_0800E924 DCDU gScriptDataMetadata
_0800E928 DCDU gUnknown_03003E94
_0800E92C DCDU gUnknown_03003EB8
_0800E930 DCDU gUnknown_03003EA4
_0800E934 DCDU gUnknown_03007FF8
_0800E938 DCDU gUnknown_03003E98
_0800E93C DCDU 0x746E6F66
_0800E940 DCDU 0x68746F67
_0800E944 DCDU 0x32316369
_0800E948 DCDU 0x746E662E
_0800E94C DCDU 0x00000000
_0800E950 DCDU 0x746E6F66
_0800E954 DCDU 0x646E6F70
_0800E958 DCDU 0x7365726F
_0800E95C DCDU 0x2E323161
_0800E960 DCDU 0x00746E66
_0800E964 DCDU 0x0000777F
_0800E968 DCDU 0x0000FFFF
_0800E96C DCDU 0x000050FC
_0800E970 DCDU gUnknown_03003EBC
_0800E974 DCDU 0x50747854
_0800E978 DCDU 0x616B6361
_0800E97C DCDU 0x415F6567
_0800E980 DCDU 0x622E6C6C
_0800E984 DCDU 0x00006E69
_0800E988 DCDU gUnknown_03003EA8
_0800E98C DCDU gUnknown_03003D30
_0800E990 DCDU 0x69726353
_0800E994 DCDU 0x61447470
_0800E998 DCDU 0x622E6174
_0800E99C DCDU 0x00006E69
_0800E9A0 DCDU 0x00000524
_0800E9A4 DCDU __VTABLE__14Singleton_3E90
_0800E9A8 DCDU gUnknown_03003E90
_0800E9AC DCDU __VTABLE__327dword_803E86C
_0800E9B0 DCDU 0x00000A08
_0800E9B4 DCDU 0x00003442
_0800E9B8 DCDU 0x73754D58
_0800E9BC DCDU 0x622E6369
_0800E9C0 DCDU 0x00006E69
_0800E9C4 DCDU 0x2E784673
_0800E9C8 DCDU 0x006E6962
_0800E9CC DCDU 0x00001308
38
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne %39
	ldr r0, _0800ECBC
	add r1, pc, #0x2E4
	ldr r0, [r0]
	bl sub_8004FFC
	adds r3, r4, #0
	movs r2, #0
	movs r1, #6
	bl sub_802EF0A
	adds r1, r0, #0
	adds r3, r4, #0
	movs r2, #0x40
	ldr r0, [r6, #0x10]
	bl sub_8000F4C
	movs r2, #1
	lsls r1, r2, #8
	b %40
39
	b %41
40
	ldr r0, [r6, #0x10]
	bl sub_800106A
41
	movs r0, #0
	bl sub_80050FA
	ldr r0, _0800ECC8
	adds r3, r5, #0
	movs r1, #0
	ldr r2, _0800ECCC
	ldr r0, [r0]
	bl sub_800B12C
	strh r5, [r7, #8]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

