	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gPlayerPointer
	IMPORT gUnknown_03003448
	IMPORT gUnknown_03003450
	IMPORT gUnknown_03003468
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EA8
	IMPORT maybeInitTransitionLevelScreen
	IMPORT sub_800065C
	IMPORT sub_800116A
	IMPORT sub_8001A60
	IMPORT sub_8004FFC
	IMPORT sub_80050FA
	IMPORT sub_800B08E
	IMPORT sub_800D912
	IMPORT sub_800D9E0
	IMPORT sub_800E53C
	IMPORT sub_80138E2
	IMPORT sub_80147FA
	IMPORT sub_802383A
	IMPORT sub_802EF0A
	IMPORT sub_803F9C4
	IMPORT sub_8040034
	IMPORT sub_80401C0
	IMPORT sub_80401E4

	non_word_aligned_thumb_func_start sub_801CEC6

sub_801CEC6
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x4d
	lsls r0, r0, #5
	adds r0, r5, r0
	sub sp, #0x5c
	str r0, [sp, #0x58]
	movs r4, #0
	strb r4, [r0, #0xc]
	ldr r0, [sp, #0x58]
	strb r4, [r0, #0xd]
	str r4, [r5]
	str r4, [r5, #4]
	movs r0, #1
	bl sub_800E53C
	movs r0, #0
	bl maybeInitTransitionLevelScreen
	ldr r0, _0801D0E8
	ldr r0, [r0]
	bl sub_80050FA
	add r0, sp, #4
	bl sub_8001A60
	ldr r0, _0801D0EC
	add r1, pc, #0x1F0
	ldr r0, [r0]
	bl sub_8004FFC
	adds r3, r4, #0
	movs r2, #0
	movs r1, #7
	bl sub_802EF0A
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #0x2c]
	ldr r0, _0801D0FC
	add r1, sp, #4
	ldr r0, [r0]
	bl sub_800D9E0
	ldr r0, _0801D100
	ldr r0, [r0]
	bl sub_800B08E
	ldr r0, _0801D0FC
	movs r1, #0
	ldr r0, [r0]
	bl sub_800D912
	movs r0, #0
	bl sub_80050FA
	movs r0, #0x70
	str r0, [sp, #4]
	movs r2, #2
	adds r0, r5, #0
	movs r1, #0x10
	str r1, [sp, #8]
	adds r0, #0xff
	str r2, [sp, #0xc]
	str r2, [sp]
	movs r2, #0
	adds r0, #0x3d
	movs r1, #1
	movs r3, #0x78
	adds r4, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	movs r6, #0xff
	adds r3, r6, #0
	movs r2, #0
	movs r1, #2
	adds r0, r4, #0
	bl sub_80138E2
	movs r4, #0
15
	ldr r0, [sp, #0x58]
	ldr r1, _0801D0DC
	ldrb r0, [r0, #0xd]
	cmp r0, r4
	bne %16
	subs r1, #2
16
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	str r1, [sp, #0x30]
	str r0, [sp, #0x50]
	adds r0, #5
	str r0, [sp, #0x54]
	lsls r0, r4, #3
	movs r6, #0
	adds r1, r0, r5
	str r1, [sp, #0x4c]
17
	ldr r7, _0801D0D8
	ldr r0, [r7]
	bl sub_800116A
	ldr r1, [sp, #0x4c]
	lsls r2, r6, #2
	adds r7, r1, r2
	adds r7, #0xc0
	str r0, [r7, #0x38]
	ldr r1, [sp, #0x30]
	adds r1, r1, r6
	bl sub_800065C
	lsls r1, r6, #6
	adds r1, #5
	add r3, sp, #0
	ldr r0, [sp, #0x54]
	strh r1, [r3, #0x2c]
	strh r0, [r3, #0x2e]
	ldr r0, [r7, #0x38]
	add r1, sp, #0x2c
	bl sub_8040034
	movs r1, #5
	ldr r0, [r7, #0x38]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r7, #0x38]
	bl sub_80401E4
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #2
	blo %17
	ldr r7, _0801D0D8
	ldr r0, [r7]
	bl sub_800116A
	lsls r1, r4, #2
	adds r6, r1, r5
	str r6, [sp, #0x44]
	adds r6, #0xff
	str r1, [sp, #0x48]
	adds r6, #1
	str r0, [r6, #0x20]
	ldr r1, _0801D104
	bl sub_800065C
	ldr r0, [sp, #0x50]
	add r3, sp, #0
	adds r0, #0xf
	movs r1, #0x21
	strh r1, [r3, #0x2c]
	strh r0, [r3, #0x2e]
	ldr r0, [r6, #0x20]
	add r1, sp, #0x2c
	bl sub_8040034
	movs r1, #4
	ldr r0, [r6, #0x20]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r6, #0x20]
	bl sub_80401E4
	ldr r0, [r7]
	bl sub_800116A
	ldr r1, _0801D108
	str r0, [r6, #0x14]
	bl sub_800065C
	ldr r0, [sp, #0x50]
	add r3, sp, #0
	adds r0, #0xe
	str r0, [sp, #0x40]
	movs r1, #0x3a
	strh r1, [r3, #0x2c]
	strh r0, [r3, #0x2e]
	ldr r0, [r6, #0x14]
	add r1, sp, #0x2c
	bl sub_8040034
	movs r1, #4
	ldr r0, [r6, #0x14]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r6, #0x14]
	bl sub_80401E4
	ldr r0, [r7]
	bl sub_800116A
	ldr r1, _0801D10C
	str r0, [r6, #0x2c]
	bl sub_800065C
	movs r1, #0x58
	add r3, sp, #0
	ldr r0, [sp, #0x40]
	strh r1, [r3, #0x2c]
	strh r0, [r3, #0x2e]
	ldr r0, [r6, #0x2c]
	add r1, sp, #0x2c
	bl sub_8040034
	movs r1, #4
	ldr r0, [r6, #0x2c]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r6, #0x2c]
	bl sub_80401E4
	ldr r0, _0801D110
	strb r4, [r0]
	bl sub_802383A
	ldr r0, _0801D114
	movs r3, #0x9b
	ldr r1, [r0]
	movs r0, #0x90
	ldrb r0, [r0, r1]
	lsls r3, r3, #4
	adds r2, r5, r4
	adds r2, r2, r3
	strb r0, [r2, #0xc]
	ldr r1, [r1]
	movs r0, #1
	cmp r1, #0
	bne %18
	movs r0, #0
18
	movs r1, #0x13
	ldr r6, [sp, #0x44]
	lsls r1, r1, #7
	adds r1, r6, r1
	str r1, [sp, #0x3c]
	str r0, [r1, #0x30]
	movs r0, #8
	str r0, [sp, #4]
	movs r2, #4
	str r2, [sp, #0xc]
	lsls r0, r4, #4
	subs r0, r0, r4
	ldr r2, [sp, #0x50]
	movs r1, #0x10
	str r1, [sp, #8]
	lsls r0, r0, #3
	adds r0, r0, r5
	movs r1, #0xa9
	adds r2, #0xa
	lsls r1, r1, #2
	adds r6, r0, r1
	movs r3, #0x10
	str r2, [sp]
	str r0, [sp, #0x38]
	b %19
	ALIGN

	ALIGN
_0801D0D8 DCDU gUnknown_03003448
_0801D0DC DCDU 0x00000CED
_0801D0E8 DCDU gUnknown_03003468
_0801D0EC DCDU gUnknown_03003EA8
_0801D0FC DCDU gUnknown_03003450
_0801D100 DCDU gUnknown_03003E98
_0801D104 DCDU 0x000008A4
_0801D108 DCDU 0x00000C9D
_0801D10C DCDU 0x00000C8B
_0801D110 DCDU gPlayerPointer
_0801D114 DCDU gPlayerEntity

	END
