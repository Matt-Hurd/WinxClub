	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __16__rt_memcpy
	IMPORT gPlayerEntity
	IMPORT gUnknown_03003448
	IMPORT gUnknown_03003450
	IMPORT gUnknown_03003468
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EA8
	IMPORT gUnknown_080507A8
	IMPORT sub_800065C
	IMPORT sub_800116A
	IMPORT sub_8001A60
	IMPORT sub_80046F8
	IMPORT sub_8004FFC
	IMPORT sub_80050FA
	IMPORT sub_800B08E
	IMPORT sub_800D912
	IMPORT sub_800D9E0
	IMPORT sub_80137F8
	IMPORT sub_80138E2
	IMPORT sub_80147FA
	IMPORT sub_80189BC
	IMPORT sub_8018C48
	IMPORT sub_8018D76
	IMPORT sub_802EF0A
	IMPORT sub_803F9C4
	IMPORT sub_8040034
	IMPORT sub_80401E4

	non_word_aligned_thumb_func_start sub_801A0D2

sub_801A0D2
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	adds r4, r0, #0
	add r0, sp, #0x44
	bl sub_80046F8
	ldr r1, _0801A2D8
	movs r2, #0xc
	adds r1, #0x30
	add r0, sp, #0x38
	bl __16__rt_memcpy
	ldr r0, _0801A2D8
	add r3, sp, #0
	subs r0, #0xa
	ldrh r1, [r0]
	strh r1, [r3, #0x34]
	ldrh r1, [r0, #2]
	strh r1, [r3, #0x36]
	ldrh r1, [r0, #4]
	strh r1, [r3, #0x2c]
	ldrh r1, [r0, #6]
	strh r1, [r3, #0x2e]
	ldrh r1, [r0, #8]
	movs r0, #0
	strh r1, [r3, #0x30]
	movs r1, #0xff
	adds r1, #0x81
	strb r0, [r1, r4]
	str r0, [r4]
	str r0, [r4, #4]
	ldr r0, _0801A2F8
	ldr r0, [r0]
	bl sub_80050FA
	mov r5, sp
	mov r0, sp
	bl sub_8001A60
	ldr r0, _0801A2FC
	add r1, pc, #0x1DC
	ldr r0, [r0]
	bl sub_8004FFC
	movs r3, #0
	movs r2, #0
	movs r1, #7
	bl sub_802EF0A
	adds r1, r5, #0
	ldr r5, _0801A30C
	str r0, [sp]
	ldr r0, [r5]
	bl sub_800D9E0
	ldr r0, _0801A310
	ldr r0, [r0]
	bl sub_800B08E
	movs r1, #0
	ldr r0, [r5]
	bl sub_800D912
	movs r0, #0
	bl sub_80050FA
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #1
	adds r0, r1, #0
	adds r0, #0x7e
	movs r2, #0
	str r2, [sp, #8]
	str r1, [sp, #4]
	subs r1, r0, #4
	subs r2, r0, #6
	str r0, [sp]
	subs r3, r0, #2
	subs r0, #0x86
	bl sub_80189BC
	add r1, sp, #0x2c
	str r1, [sp]
	adds r1, r4, #0
	movs r2, #0
	adds r1, #0xff
	adds r1, #0x85
	str r2, [sp, #4]
	add r2, sp, #0x38
	movs r0, #3
	add r3, sp, #0x34
	bl sub_8018D76
	adds r1, r4, #0
	adds r1, #8
	movs r3, #0
	movs r2, #6
	adds r0, r4, #0
	bl sub_8018C48
	movs r1, #0x19
	lsls r1, r1, #6
	adds r7, r4, r1
	movs r0, #0
	movs r2, #4
	strb r0, [r7, #4]
	strb r2, [r7, #5]
	movs r5, #0
15
	ldr r0, _0801A2C8
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r5, #2
	movs r2, #3
	lsls r2, r2, #9
	adds r1, r1, r4
	adds r6, r1, r2
	str r0, [r6, #0x34]
	ldr r1, _0801A314
	bl sub_800065C
	lsls r0, r5, #5
	adds r0, #0xc
	add r3, sp, #0
	strh r0, [r3, #0x28]
	movs r1, #5
	strh r1, [r3, #0x2a]
	ldr r0, [r6, #0x34]
	add r1, sp, #0x28
	bl sub_8040034
	ldr r0, [r6, #0x34]
	movs r2, #3
	ldrh r1, [r0, #0x26]
	lsls r2, r2, #0xa
	movs r3, #1
	lsls r3, r3, #0xa
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r3, #0x80
	orrs r1, r3
	str r1, [r0]
	ldr r0, [r6, #0x34]
	ldrh r1, [r0, #0x2a]
	bics r1, r2
	movs r2, #0
	orrs r1, r2
	strh r1, [r0, #0x2a]
	movs r1, #5
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi %16
	orrs r1, r3
	str r1, [r0]
16
	movs r1, #1
	ldr r0, [r6, #0x34]
	bl sub_80401E4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo %15
	movs r5, #0
17
	movs r2, #0xff
	ldr r1, _0801A318
	str r2, [sp, #0xc]
	lsls r2, r5, #1
	lsls r0, r5, #4
	subs r0, r0, r5
	adds r2, r2, r5
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0xbb
	lsls r2, r2, #2
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r2, #0x63
	lsls r1, r1, #2
	adds r6, r0, r1
	str r2, [sp]
	movs r2, #0
	movs r1, #0
	movs r3, #0x14
	adds r0, r6, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	ldr r1, _0801A2D8
	lsls r0, r5, #2
	ldrh r0, [r1, r0]
	ldr r1, _0801A2D0
	movs r3, #0xff
	ldr r1, [r1]
	movs r2, #0
	adds r1, r1, r5
	adds r1, #0xb0
	ldrb r1, [r1, #5]
	adds r0, r0, r1
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_80138E2
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo %17
	ldr r0, _0801A2DC
	movs r2, #0xff
	adds r0, r4, r0
	adds r5, r0, #0
	ldr r0, _0801A2F8
	movs r1, #0x28
	ldr r0, [r0]
	movs r6, #0x7e
	str r0, [r5, #0x50]
	str r2, [sp, #0xc]
	movs r2, #0x30
	str r2, [sp]
	str r1, [sp, #8]
	movs r0, #0x38
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	adds r3, r6, #0
	adds r0, r5, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r5, #0
	bl sub_80147FA
	movs r2, #0
	adds r0, r5, #0
	add r1, pc, #0x2C
	bl sub_80137F8
	ldr r0, _0801A2E0
	adds r0, r4, r0
	adds r5, r0, #0
	ldr r0, _0801A2F8
	ldr r0, [r0]
	b %20
	ALIGN

	ALIGN
_0801A2C8 DCDU gUnknown_03003448
_0801A2D0 DCDU gPlayerEntity
_0801A2D8 DCDU gUnknown_080507A8
_0801A2DC DCDU 0x000004CC
_0801A2E0 DCDU 0x00000544
_0801A2F8 DCDU gUnknown_03003468
_0801A2FC DCDU gUnknown_03003EA8
_0801A30C DCDU gUnknown_03003450
_0801A310 DCDU gUnknown_03003E98
_0801A314 DCDU 0x00000CA8
_0801A318 DCDU 0x0000FFFF

	END
