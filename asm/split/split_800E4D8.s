	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03000000
	IMPORT gUnknown_03001140
	IMPORT gUnknown_0300142C
	IMPORT gUnknown_03001444
	IMPORT gUnknown_030033C8
	IMPORT gScriptDataMetadata
	IMPORT gPlayerPointer
	IMPORT gUnknown_03003D30
	IMPORT gUnknown_03003D35
	IMPORT gUnknown_03003E90
	IMPORT gUnknown_03003E94
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003E9C
	IMPORT gUnknown_03003EA4
	IMPORT gUnknown_03003EA8
	IMPORT gUnknown_03003EAC
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_03003EBC
	IMPORT gUnknown_03007FF8
	IMPORT __VTABLE__327dword_803E86C
	IMPORT __VTABLE__359dword_803ECCC
	IMPORT sub_80517C8
	IMPORT g3003448__Init
	IMPORT sub_8000F4C
	IMPORT sub_800106A
	IMPORT sub_800194E
	IMPORT sub_8001A90
	IMPORT sub_8004716
	IMPORT sub_800474E
	IMPORT sub_8004924
	IMPORT LoadFiletable
	IMPORT sub_8004FFC
	IMPORT SomehowInitEWRAMLinkedList
	IMPORT sub_80050FA
	IMPORT GetEWRAMStart
	IMPORT sub_80052C0
	IMPORT sub_8008160
	IMPORT sub_800B034
	IMPORT sub_800B058
	IMPORT sub_800B082
	IMPORT sub_800B12C
	IMPORT InitKeyinputIE
	IMPORT sub_800B4F0
	IMPORT sub_800B5EE
	IMPORT sub_800B652
	IMPORT sub_800B65E
	IMPORT sub_800B676
	IMPORT sub_800B6FA
	IMPORT sub_800B708
	IMPORT sub_800B772
	IMPORT sub_800B782
	IMPORT sub_800C93A
	IMPORT sub_800CADA
	IMPORT sub_800E178
	IMPORT sub_801333E
	IMPORT sub_80133A0
	IMPORT sub_80133F0
	IMPORT sub_801343C
	IMPORT sub_80137F8
	IMPORT sub_80139AC
	IMPORT sub_8013DEA
	IMPORT sub_8014DD4
	IMPORT InitScriptData
	IMPORT sub_8017884
	IMPORT sub_8017DE6
	IMPORT HandleIntro
	IMPORT SetGlobalFunction
	IMPORT SetNextGlobalFunction
	IMPORT MainLoop
	IMPORT HandleFavorsScreen
	IMPORT HandleInventoryScreen
	IMPORT HandleMagicScreen
	IMPORT HandleMainMenu
	IMPORT HandleObjectivesScreen
	IMPORT sub_801B10C
	IMPORT HandleLoadGameScreen
	IMPORT HandlePlayCreditsFromOptions
	IMPORT HandleIngameOptionsScreen
	IMPORT HandleMainMenuOptionsScreen
	IMPORT sub_802363C
	IMPORT MaybeHandleTransitionToArea
	IMPORT sub_8026908
	IMPORT sub_802693A
	IMPORT sub_8026962
	IMPORT MaybeHandleIngameCutscene
	IMPORT MaybeHandleBootIntoGame
	IMPORT HandleMainIngameLoop
	IMPORT sub_8028F64
	IMPORT sub_802EF0A
	IMPORT HandleGameOverScreen
	IMPORT sub_8031578
	IMPORT sub_80315A2
	IMPORT sub_80315CE
	IMPORT sub_80315FC
	IMPORT sub_8031600
	IMPORT sub_8031622
	IMPORT HandleShowPictureScreen
	IMPORT HandleAlbum
	IMPORT sub_8038754
	IMPORT HandleTeleportMenu
	IMPORT HandleNewGameScreen
	IMPORT HandlePostGameCredits
	IMPORT atoi
	IMPORT __call_via_r2
	IMPORT __16__rt_memset
	IMPORT sub_803D680
	IMPORT sub_803D834
	IMPORT sub_803D984
	IMPORT sub_803DA18
	IMPORT sub_803DA80
	IMPORT sub_803DA9C
	IMPORT sub_803FDB8
	IMPORT sub_8040574
	IMPORT sub_80412A8

	thumb_func_start sub_800E4D8
sub_800E4D8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r2, #0
	movs r1, #0
	bl sub_80412A8
	movs r2, #0
	movs r1, #0
	bl sub_803D984
	adds r4, r0, #0
	movs r2, #2
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_80412A8
	adds r0, r4, #0
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_800E500
sub_800E500
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, r3, #0
	adds r5, r1, #0
	adds r4, r2, #0
	cmp r6, #0
	beq %2
	cmp r6, #1
	bne %1
	movs r2, #0
	movs r1, #0
	bl sub_80052C0
	adds r2, r4, #0
	adds r1, r5, #0
	bl sub_80052C0
1
	pop {r4, r5, r6}
	pop {r3}
	bx r3
2
	movs r1, #0
	cmp r4, #0
	bls %1
3
	ldrb r2, [r5, r1]
	adds r1, #1
	adds r0, r2, r0
	cmp r1, r4
	blo %3
	b %1
	ALIGN

	thumb_func_start sub_800E53C
sub_800E53C
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0800E920
	adds r5, r0, #0
	movs r4, #0
	strh r4, [r7, #8]
	ldr r6, _0800E924
	ldr r0, [r6, #0x30]
	bl sub_80050FA
	adds r0, r6, #0
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq %4
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
	str r4, [r6, #0x18]
4
	ldr r0, [r6, #0x24]
	cmp r0, #0
	beq %5
	cmp r5, #0
	bne %5
	movs r1, #1
	bl sub_802693A
	str r4, [r6, #0x24]
5
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	beq %6
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
	str r4, [r6, #0x2c]
6
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq %8
	cmp r5, #0
	bne %8
	movs r1, #0
	bl sub_800B782
	movs r1, #0
	ldr r0, [r6, #0x28]
	bl sub_800B6FA
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq %7
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
7
	str r4, [r6, #0x28]
8
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq %10
	movs r0, #1
	bl sub_8013DEA
	bl sub_8014DD4
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq %9
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
9
	str r4, [r6, #0x10]
10
	movs r0, #0
	bl sub_80050FA
	movs r0, #1
	strh r0, [r7, #8]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800E5EA
sub_800E5EA
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0800E924
	ldr r0, [r6, #0x3c]
	cmp r0, #0
	bne %17
	movs r3, #1
	str r3, [r6, #0x3c]
	ldr r0, [r6, #0x28]
	ldr r7, _0800E928
	cmp r0, #0
	beq %11
	ldr r0, [r7]
	bl sub_800B65E
11
	ldr r0, _0800E92C
	ldr r0, [r0]
	cmp r0, #0
	beq %13
	movs r1, #0x67
	lsls r1, r1, #6
	adds r4, r0, r1
	ldr r1, [r4, #0x28]
	lsls r2, r1, #0xf
	bpl %12
	movs r0, #1
	lsls r0, r0, #0x11
	orrs r0, r1
	str r0, [r4, #0x28]
	b %13
12
	adds r0, #4
	adds r5, r0, #0
	bl sub_800CADA
	cmp r0, #0
	bne %13
	ldr r0, [r4, #0x28]
	lsls r0, r0, #0xd
	bmi %13
	adds r0, r5, #0
	bl sub_800C93A
13
	ldr r0, _0800E930
	ldr r0, [r0]
	cmp r0, #0
	beq %14
	bl sub_800E178
14
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq %15
	ldr r0, [r7]
	bl sub_800B708
15
	ldr r2, _0800E934
	ldrh r1, [r2]
	movs r0, #0
	movs r3, #1
	orrs r1, r3
	strh r1, [r2]
	ldr r1, _0800E938
	ldr r1, [r1]
	cmp r1, #0
	beq %16
	adds r1, #8
	ldr r2, [r1]
	adds r2, #1
	str r2, [r1]
16
	str r0, [r6, #0x3c]
17
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_800E678
sub_800E678
	push {r4, lr}
	sub sp, #8
	movs r0, #2
	bl sub_801333E
	add r1, pc, #0x2B8
	movs r0, #0
	bl sub_80133F0
	add r1, pc, #0x2C4
	movs r0, #1
	bl sub_80133F0
	movs r0, #1
	bl sub_80133A0
	movs r2, #0
	ldr r4, _0800E964
	movs r3, #0
	movs r1, #1
	str r2, [sp, #4]
	str r4, [sp]
	bl sub_803FDB8
	movs r0, #0
	bl sub_80133A0
	movs r2, #0
	adds r3, r4, #0
	movs r1, #2
	str r2, [sp]
	str r2, [sp, #4]
	bl sub_803FDB8
	movs r0, #0
	bl sub_80133A0
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r2, _0800E96C
	movs r1, #3
	ldr r3, _0800E968
	bl sub_803FDB8
	ldr r0, _0800E970
	add r1, pc, #0x29C
	ldr r4, [r0]
	ldr r0, _0800E988
	ldr r0, [r0]
	bl sub_8004FFC
	ldr r1, [r0]
	ldr r2, [r4, #4]
	str r1, [r2]
	ldrh r2, [r0, #4]
	ldr r3, [r4, #4]
	adds r1, r0, #0
	strh r2, [r3, #4]
	ldrb r2, [r0, #6]
	ldr r3, [r4, #4]
	adds r1, #8
	strb r2, [r3, #6]
	ldrb r2, [r0, #7]
	ldr r3, [r4, #4]
	strb r2, [r3, #7]
	ldr r2, [r4, #4]
	str r1, [r2, #8]
	ldr r1, [r4, #4]
	ldr r2, [r1]
	adds r0, r2, r0
	str r0, [r1, #0xc]
	ldr r1, _0800E98C
	ldr r0, _0800E924
	ldr r1, [r1]
	ldr r0, [r0, #0x14]
	ldrb r1, [r1, #3]
	strb r1, [r0, #9]
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3

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
_0800E9A4 DCDU __VTABLE__359dword_803ECCC
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

	non_word_aligned_thumb_func_start maybeInitGame
maybeInitGame
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r5, sp, #0x18
	adds r0, r5, #0
	bl sub_8031578
	ldr r4, _0800ECD0
	ldr r1, _0800ECD4
	ldr r0, [r4]
	bl sub_80315FC
	movs r1, #3
	ldr r0, [r4]
	bl sub_80315CE
	ldr r0, [r4]
	ldr r2, _0800ECD8
	ldr r1, _0800ECDC
	str r2, [sp, #4]
	str r1, [sp]
	movs r1, #0
	ldr r2, _0800ECE4
	ldr r3, _0800ECE0
	bl sub_8031600
	ldr r0, [r4]
	ldr r2, _0800ECE8
	ldr r1, _0800ECEC
	str r2, [sp, #4]
	str r1, [sp]
	movs r1, #1
	ldr r2, _0800ECF4
	ldr r3, _0800ECF0
	bl sub_8031600
	ldr r0, [r4]
	ldr r2, _0800ECF8
	ldr r1, _0800ECFC
	str r2, [sp, #4]
	str r1, [sp]
	movs r1, #2
	ldr r2, _0800ED04
	ldr r3, _0800ED00
	bl sub_8031600
	movs r1, #1
	adds r0, r5, #0
	bl sub_8031622
	movs r1, #1
	ldr r0, _0800ED08
	bl SetGlobalFunction
	movs r1, #0
	ldr r0, _0800ED0C
	bl SetGlobalFunction
	movs r1, #0x10
	ldr r0, _0800ED10
	bl SetGlobalFunction
	movs r1, #0x13
	ldr r0, _0800ED14
	bl SetGlobalFunction
	movs r1, #0x11
	ldr r0, _0800ED18
	bl SetGlobalFunction
	movs r1, #0x12
	ldr r0, _0800ED1C
	bl SetGlobalFunction
	movs r1, #0x14
	ldr r0, _0800ED20
	bl SetGlobalFunction
	movs r1, #2
	ldr r0, _0800ED24
	bl SetGlobalFunction
	movs r1, #0xf
	ldr r0, _0800ED28
	bl SetGlobalFunction
	movs r1, #0x15
	ldr r0, _0800ED2C
	bl SetGlobalFunction
	movs r1, #3
	ldr r0, _0800ED30
	bl SetGlobalFunction
	movs r1, #4
	ldr r0, _0800ED34
	bl SetGlobalFunction
	movs r1, #5
	ldr r0, _0800ED38
	bl SetGlobalFunction
	movs r1, #6
	ldr r0, _0800ED3C
	bl SetGlobalFunction
	movs r1, #7
	ldr r0, _0800ED40
	bl SetGlobalFunction
	movs r1, #8
	ldr r0, _0800ED44
	bl SetGlobalFunction
	movs r1, #9
	ldr r0, _0800ED48
	bl SetGlobalFunction
	movs r1, #0xa
	ldr r0, _0800ED4C
	bl SetGlobalFunction
	movs r1, #0xd
	ldr r0, _0800ED50
	bl SetGlobalFunction
	movs r1, #0x16
	ldr r0, _0800ED54
	bl SetGlobalFunction
	movs r1, #0x17
	ldr r0, _0800ED58
	bl SetGlobalFunction
	movs r1, #0xb
	ldr r0, _0800ED5C
	bl SetGlobalFunction
	movs r1, #0xc
	ldr r0, _0800ED60
	bl SetGlobalFunction
	ldr r0, _0800ED64
	movs r4, #0
	strb r4, [r0]
	ldr r0, _0800ED68
	strb r4, [r0]
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r0, #0x31
	adds r3, r4, #0
	movs r2, #0
	lsls r0, r0, #0xc
	bl sub_803DA9C
	movs r1, #0x31
	lsls r1, r1, #0xc
	bl SomehowInitEWRAMLinkedList
	ldr r6, _0800ED6C
	str r0, [r6, #0x30]
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r0, #1
	adds r3, r4, #0
	movs r2, #0
	lsls r0, r0, #0xb
	bl sub_803DA9C
	movs r1, #1
	lsls r1, r1, #0xb
	bl SomehowInitEWRAMLinkedList
	str r0, [r6, #0x34]
	movs r0, #0
	bl InitKeyinputIE
	bl sub_802363C
	movs r2, #0x4b
	lsls r2, r2, #0xa
	mvns r1, r4
	movs r0, #3
	lsls r0, r0, #0x19
	bl __16__rt_memset
	movs r0, #3
	bl maybeInitTransitionLevelScreen
	add r5, sp, #0xc
	adds r0, r5, #0
	bl sub_8004716
	movs r2, #0
	movs r1, #1
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0x3f
	movs r1, #3
	adds r3, r4, #0
	adds r0, r5, #0
	bl sub_803D680
	adds r0, r5, #0
	bl sub_803D834
	adds r0, r5, #0
	bl sub_800474E
	movs r2, #0
	str r2, [sp]
	movs r3, #1
	movs r1, #0xce
	ldr r0, [r6, #0x1c]
	bl sub_8017884
	ldr r2, _0800ED6C
	movs r0, #8
	adds r2, #0x40
	ldr r1, [r2]
	bics r1, r0
	str r1, [r2]
42
	movs r0, #1
	bl SetNextGlobalFunction
	bl MainLoop
	cmp r0, #0
	bne %42
	bl sub_800E53C
	ldr r0, _0800ED70
	ldr r0, [r0]
	bl sub_803DA18
	movs r1, #0
	add r0, sp, #0x18
	bl sub_80315A2
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800EC0E
sub_800EC0E
	push {r4, r5, r6, lr}
	sub sp, #8
	cmp r0, #2
	bne %46
	ldr r4, _0800ED6C
	ldrb r0, [r4]
	cmp r0, #0
	beq %43
	ldrh r1, [r4, #4]
	cmp r2, r1
	blo %46
43
	cmp r0, #0
	bne %44
	bl sub_8008160
	ldr r1, _0800ED74
	cmp r0, r1
	bhs %45
44
	ldrb r0, [r4]
	cmp r0, #1
	bne %46
	bl sub_8008160
	ldr r1, _0800ED78
	cmp r0, r1
	blo %46
45
	ldrb r0, [r4]
	movs r5, #0
	cmp r0, #0
	bne %47
	ldr r0, [r4, #0x14]
	ldrh r1, [r4, #2]
	ldrb r2, [r0, #9]
	ldr r0, [r0, #4]
	ldrh r5, [r0, #4]
	ldr r3, [r0, #8]
	lsls r2, r2, #2
	lsls r1, r5
	adds r1, r3, r1
	ldr r1, [r1, r2]
	ldr r0, [r0, #0xc]
	movs r2, #0
	adds r0, r0, r1
	adds r1, r0, #5
	ldr r0, [r4, #0x38]
	bl sub_80137F8
	movs r1, #1
	ldr r0, [r4, #0x38]
	bl sub_80139AC
	movs r0, #1
	strb r0, [r4]
46
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3
47
	movs r1, #2
	ldr r0, [r4, #0x38]
	bl sub_80139AC
	ldrh r0, [r4, #2]
	adds r0, #1
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	strh r1, [r4, #2]
	ldr r0, [r4, #0x14]
	ldrb r2, [r0, #9]
	ldr r0, [r0, #4]
	ldrh r6, [r0, #4]
	ldr r3, [r0, #8]
	lsls r2, r2, #2
	lsls r1, r6
	adds r1, r3, r1
	ldr r1, [r1, r2]
	ldr r0, [r0, #0xc]
	add r3, sp, #0
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp]
	strb r5, [r3, #4]
	mov r0, sp
	bl atoi
	strh r0, [r4, #4]
	strb r5, [r4]
	b %46
	ALIGN
_0800ECBC DCDU gUnknown_03003EA8
_0800ECC0 DCDU 0x69727073
_0800ECC4 DCDU 0x00736574
_0800ECC8 DCDU gUnknown_03003EAC
_0800ECCC DCDU sub_800E5EA
_0800ECD0 DCDU gUnknown_03003E9C
_0800ECD4 DCDU sub_80517C8
_0800ECD8 DCDU 0x00000018
_0800ECDC DCDU gUnknown_0300142C
_0800ECE0 DCDU 0x0000142C
_0800ECE4 DCDU gUnknown_03000000
_0800ECE8 DCDU 0x00000000
_0800ECEC DCDU gUnknown_03001140
_0800ECF0 DCDU 0x00001140
_0800ECF4 DCDU gUnknown_03000000
_0800ECF8 DCDU 0x00000AFC
_0800ECFC DCDU gUnknown_030033C8
_0800ED00 DCDU 0x00001F84
_0800ED04 DCDU gUnknown_03001444
_0800ED08 DCDU HandleIntro
_0800ED0C DCDU sub_8017DE6
_0800ED10 DCDU MaybeHandleBootIntoGame
_0800ED14 DCDU HandleNewGameScreen
_0800ED18 DCDU MaybeHandleIngameCutscene
_0800ED1C DCDU HandleMainIngameLoop
_0800ED20 DCDU HandleTeleportMenu
_0800ED24 DCDU HandleMainMenu
_0800ED28 DCDU MaybeHandleTransitionToArea
_0800ED2C DCDU sub_8028F64
_0800ED30 DCDU HandleFavorsScreen
_0800ED34 DCDU HandleInventoryScreen
_0800ED38 DCDU HandleMagicScreen
_0800ED3C DCDU HandleObjectivesScreen
_0800ED40 DCDU HandleIngameOptionsScreen
_0800ED44 DCDU HandleMainMenuOptionsScreen
_0800ED48 DCDU HandleLoadGameScreen
_0800ED4C DCDU HandlePlayCreditsFromOptions
_0800ED50 DCDU HandleShowPictureScreen
_0800ED54 DCDU HandleGameOverScreen
_0800ED58 DCDU HandlePostGameCredits
_0800ED5C DCDU HandleAlbum
_0800ED60 DCDU sub_8038754
_0800ED64 DCDU gPlayerPointer
_0800ED68 DCDU gUnknown_03003D35
_0800ED6C DCDU gScriptDataMetadata
_0800ED70 DCDU gPlayerEntity
_0800ED74 DCDU 0x0000C350
_0800ED78 DCDU 0x000249F0
	END
