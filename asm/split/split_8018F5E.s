	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __16__rt_memcpy
	IMPORT gUnknown_03003448
	IMPORT gUnknown_03003450
	IMPORT gUnknown_03003468
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EA8
	IMPORT gUnknown_0805075A
	IMPORT sub_800065C
	IMPORT sub_800116A
	IMPORT sub_8001A60
	IMPORT sub_8004FFC
	IMPORT sub_80050FA
	IMPORT sub_800B08E
	IMPORT sub_800BE0E
	IMPORT sub_800C1CA
	IMPORT sub_800D912
	IMPORT sub_800D9E0
	IMPORT sub_80137F8
	IMPORT sub_80147FA
	IMPORT sub_80189BC
	IMPORT sub_8018C48
	IMPORT sub_8018D76
	IMPORT sub_802EF0A
	IMPORT sub_803F9C4

	non_word_aligned_thumb_func_start sub_8018F5E

sub_8018F5E
	push {r4, r5, r6, r7, lr}
	ldr r1, _08019220
	sub sp, #0x4c
	add r7, sp, #0x40
	adds r5, r0, #0
	movs r2, #0xc
	adds r1, #0x38
	adds r0, r7, #0
	bl __16__rt_memcpy
	ldr r0, _08019220
	add r3, sp, #0
	subs r0, #0xc
	ldrh r1, [r0]
	adds r6, r5, #0
	adds r6, #0xff
	strh r1, [r3, #0x38]
	ldrh r1, [r0, #2]
	movs r4, #0
	adds r6, #0x81
	strh r1, [r3, #0x3a]
	ldrh r1, [r0, #4]
	strh r1, [r3, #0x3c]
	ldrh r1, [r0, #6]
	strh r1, [r3, #0x30]
	ldrh r1, [r0, #8]
	strh r1, [r3, #0x32]
	ldrh r1, [r0, #0xa]
	ldr r0, _08019228
	strh r1, [r3, #0x34]
	strb r4, [r6, #1]
	strb r4, [r6]
	str r4, [r5]
	str r4, [r5, #4]
	ldr r0, [r0]
	bl sub_80050FA
	add r0, sp, #4
	bl sub_8001A60
	ldr r0, _0801922C
	add r1, pc, #0x27C
	ldr r0, [r0]
	bl sub_8004FFC
	adds r3, r4, #0
	movs r2, #0
	movs r1, #7
	bl sub_802EF0A
	str r0, [sp, #4]
	ldr r0, _08019240
	add r1, sp, #4
	ldr r0, [r0]
	bl sub_800D9E0
	ldr r0, _08019244
	ldr r0, [r0]
	bl sub_800B08E
	ldr r0, _08019240
	movs r1, #0
	ldr r0, [r0]
	bl sub_800D912
	movs r0, #0
	bl sub_80050FA
	adds r2, r6, #0
	adds r2, #0x1c
	adds r1, r2, #0
	subs r0, r6, #2
	subs r1, #0x9c
	str r1, [sp, #4]
	str r2, [sp, #8]
	subs r2, r0, #6
	subs r1, r0, #4
	str r0, [sp]
	subs r3, r0, #2
	subs r0, #0x86
	bl sub_80189BC
	movs r2, #0
	add r1, sp, #0x30
	str r1, [sp]
	str r2, [sp, #4]
	adds r2, r7, #0
	adds r1, r6, #0
	adds r1, #0x28
	movs r0, #2
	add r3, sp, #0x38
	bl sub_8018D76
	adds r1, r5, #0
	adds r1, #8
	adds r3, r4, #0
	movs r2, #6
	adds r0, r5, #0
	bl sub_8018C48
	movs r2, #4
	movs r0, #0x60
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	movs r2, #0x20
	movs r0, #0x31
	movs r1, #0x10
	str r1, [sp, #8]
	lsls r0, r0, #4
	str r2, [sp]
	movs r2, #0
	adds r0, r5, r0
	movs r1, #0
	movs r3, #0x7a
	adds r4, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	movs r2, #0
	adds r0, r4, #0
	add r1, pc, #0x1F0
	bl sub_80137F8
	movs r2, #4
	movs r0, #0x60
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	movs r2, #0x43
	movs r0, #0x71
	movs r1, #0x10
	str r1, [sp, #8]
	lsls r0, r0, #3
	str r2, [sp]
	movs r2, #0
	adds r0, r5, r0
	movs r1, #0
	movs r3, #0x12
	adds r4, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	movs r2, #0
	adds r0, r4, #0
	add r1, pc, #0x1BC
	bl sub_80137F8
	movs r2, #4
	movs r0, #0x60
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	movs r2, #0x64
	movs r0, #1
	movs r1, #0x10
	str r1, [sp, #8]
	lsls r0, r0, #0xa
	str r2, [sp]
	movs r2, #0
	adds r0, r5, r0
	movs r1, #0
	movs r3, #0x12
	adds r4, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	movs r2, #0
	adds r0, r4, #0
	add r1, pc, #0x188
	bl sub_80137F8
	movs r2, #4
	movs r0, #0x60
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	movs r2, #0x84
	movs r0, #0x8f
	movs r1, #0x10
	str r1, [sp, #8]
	lsls r0, r0, #3
	str r2, [sp]
	movs r2, #0
	adds r0, r5, r0
	movs r1, #0
	movs r3, #0x12
	adds r4, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	movs r2, #0
	adds r0, r4, #0
	add r1, pc, #0x154
	bl sub_80137F8
	movs r0, #0x4f
	lsls r0, r0, #4
	adds r0, r5, r0
	adds r4, r0, #0
	ldr r0, _08019228
	movs r2, #0xff
	ldr r0, [r0]
	movs r1, #0x60
	str r0, [r4, #0x50]
	str r2, [sp, #0xc]
	movs r2, #0x32
	str r2, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0
	movs r2, #0
	movs r3, #0x7a
	adds r0, r4, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	movs r2, #0
	adds r0, r4, #0
	add r1, pc, #0x11C
	bl sub_80137F8
	ldr r0, _0801921C
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, _0801924C
	str r0, [r6, #0x24]
	bl sub_800065C
	movs r0, #0x30
	add r3, sp, #0
	ldr r4, [r6, #0x24]
	strh r0, [r3, #0x2c]
	movs r0, #0x20
	strh r0, [r3, #0x2e]
	movs r0, #3
	ldr r1, [r4, #0x2c]
	lsls r0, r0, #0x14
	subs r0, r0, r1
	movs r1, #1
	ldr r2, [r4, #0x30]
	lsls r1, r1, #0x15
	subs r1, r1, r2
	movs r2, #3
	lsls r2, r2, #0x14
	movs r3, #1
	lsls r3, r3, #0x15
	str r2, [r4, #0x2c]
	str r3, [r4, #0x30]
	ldr r3, [r4, #0x34]
	adds r2, r4, #0
	adds r3, r3, r0
	str r3, [r4, #0x34]
	ldr r3, [r4, #0x38]
	adds r2, #0x34
	adds r3, r3, r1
	str r3, [r4, #0x38]
	ldr r3, [r4, #0x3c]
	movs r7, #0x80
	adds r0, r3, r0
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r2, #0xc]
	ldr r0, [r4, #0x3c]
	ldr r1, _08019250
	cmp r0, #0
	blt %7
	movs r2, #0xf
	ldr r0, [r4, #0x34]
	lsls r2, r2, #0x14
	cmp r0, r2
	bge %7
	ldr r0, [r4, #0x40]
	cmp r0, #0
	blt %7
	movs r2, #5
	ldr r0, [r4, #0x38]
	lsls r2, r2, #0x15
	cmp r0, r2
	blt %8
7
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi %10
	ldr r0, [r1]
	adds r1, r4, #0
	bl sub_800C1CA
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #9
	orrs r0, r1
	orrs r0, r7
	str r0, [r4]
	b %10
8
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bpl %9
	ldr r0, [r1]
	adds r1, r4, #0
	bl sub_800BE0E
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4]
9
	ldr r0, [r4, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x28]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	lsrs r0, r0, #0x17
	orrs r0, r1
	strh r0, [r4, #0x28]
	ldr r0, [r4, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x26]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	orrs r0, r7
	str r0, [r4]
10
	b %11
	ALIGN

	ALIGN
_0801921C DCDU gUnknown_03003448
_08019220 DCDU gUnknown_0805075A
_08019228 DCDU gUnknown_03003468
_0801922C DCDU gUnknown_03003EA8
_08019240 DCDU gUnknown_03003450
_08019244 DCDU gUnknown_03003E98
_0801924C DCDU 0x00000C83
_08019250 DCDU gUnknown_03003EA0

	END
