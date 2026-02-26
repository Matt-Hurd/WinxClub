	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT GetEWRAMStart
	IMPORT InitScriptData
	IMPORT LoadFiletable
	IMPORT __VTABLE__327dword_803E86C
	IMPORT __VTABLE__359dword_803ECCC
	IMPORT g3003448__Init
	IMPORT gScriptDataMetadata
	IMPORT gUnknown_03003D30
	IMPORT gUnknown_03003E90
	IMPORT gUnknown_03003E98
	IMPORT sub_800194E
	IMPORT sub_8001A90
	IMPORT sub_8004924
	IMPORT sub_8004FFC
	IMPORT sub_80050FA
	IMPORT sub_800B034
	IMPORT sub_800B058
	IMPORT sub_800B082
	IMPORT sub_800B4F0
	IMPORT sub_800B5EE
	IMPORT sub_800B652
	IMPORT sub_800B676
	IMPORT sub_800B6FA
	IMPORT sub_800B772
	IMPORT sub_800B782
	IMPORT sub_800E678
	IMPORT sub_801343C
	IMPORT sub_8014DD4
	IMPORT sub_801B10C
	IMPORT sub_8026908
	IMPORT sub_8026962
	IMPORT sub_803DA80
	IMPORT sub_8040574

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

	ALIGN
_0800E920 DCDU REG_IE
_0800E924 DCDU gScriptDataMetadata
_0800E938 DCDU gUnknown_03003E98
_0800E98C DCDU gUnknown_03003D30
_0800E9A0 DCDU 0x00000524
_0800E9A4 DCDU __VTABLE__359dword_803ECCC
_0800E9A8 DCDU gUnknown_03003E90
_0800E9AC DCDU __VTABLE__327dword_803E86C
_0800E9B0 DCDU 0x00000A08
_0800E9B4 DCDU 0x00003442
_0800E9CC DCDU 0x00001308

	END
