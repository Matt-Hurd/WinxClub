	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003444
	IMPORT gUnknown_03003448
	IMPORT gUnknown_03003450
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003460
	IMPORT gUnknown_03003468
	IMPORT gPlayerPointer
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EA8
	IMPORT gUnknown_08050716
	IMPORT gUnknown_08050FC0
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_8001A60
	IMPORT sub_8004FFC
	IMPORT sub_80050FA
	IMPORT sub_800B08E
	IMPORT sub_800B6A8
	IMPORT sub_800B72A
	IMPORT sub_800D912
	IMPORT sub_800D9E0
	IMPORT sub_800E53C
	IMPORT sub_800E71C
	IMPORT sub_800EF2A
	IMPORT sub_80137F8
	IMPORT sub_80138E2
	IMPORT sub_801390A
	IMPORT sub_80143E0
	IMPORT sub_8014436
	IMPORT sub_80147FA
	IMPORT sub_8018070
	IMPORT sub_80180BE
	IMPORT sub_801810E
	IMPORT sub_8018386
	IMPORT sub_8018C48
	IMPORT sub_802383A
	IMPORT sub_8028A7C
	IMPORT sub_8028C2E
	IMPORT sub_802EF0A
	IMPORT __vecmap1c__FPvT1iPFPv_v
	IMPORT __vecmap1ci__FPvT1iPFPvi_v
	IMPORT sub_803F9C4
	IMPORT sub_8040034
	IMPORT sub_80401C0
	IMPORT sub_80401E4
	IMPORT sub_8040640
	IMPORT sub_8040660
	IMPORT sub_80406A4
	IMPORT sub_80406C4

	thumb_func_start sub_801CCEC
sub_801CCEC
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _0801D0D4
	movs r2, #0
	movs r1, #2
	ldr r0, [r0]
	bl sub_8028A7C
	movs r0, #0x4d
	lsls r0, r0, #5
	adds r0, r6, r0
	ldrb r0, [r0, #0xc]
	cmp r0, #4
	bne _0801CD0E
	bl sub_801810E
	b _0801CD12
_0801CD0E
	bl sub_80180BE
_0801CD12
	adds r1, r6, #0
	ldr r4, _0801D0D8
	adds r1, #0xff
	adds r1, #0x11
	ldr r0, [r4]
	bl sub_8000DE6
	adds r1, r6, #0
	ldr r0, [r4]
	bl sub_8000DE6
	adds r1, r6, #4
	ldr r0, [r4]
	bl sub_8000DE6
	adds r1, r6, #0
	adds r1, #0xff
	adds r1, #0x39
	ldr r0, [r4]
	bl sub_8000DE6
	movs r5, #0
_0801CD3E
	lsls r0, r5, #2
	adds r1, r0, r6
	adds r4, r1, #0
	ldr r7, _0801D0D8
	adds r1, #0xff
	adds r1, #0x21
	ldr r0, [r7]
	bl sub_8000DE6
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #0x15
	ldr r0, [r7]
	bl sub_8000DE6
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #0x2d
	ldr r0, [r7]
	bl sub_8000DE6
	movs r4, #0
	lsls r0, r5, #3
	adds r7, r0, r6
_0801CD6E
	lsls r0, r4, #2
	adds r1, r7, r0
	ldr r0, _0801D0D8
	adds r1, #0xf8
	ldr r0, [r0]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo _0801CD6E
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _0801CD3E
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801CD96
sub_801CD96
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x4d
	lsls r0, r0, #5
	adds r6, r5, r0
	ldrb r0, [r6, #0xd]
	cmp r1, #0
	sub sp, #0xc
	bge _0801CDB2
	adds r0, #2
	bl sub_8040640
	strb r0, [r6, #0xd]
	b _0801CDBE
_0801CDB2
	cmp r1, #0
	ble _0801CDBE
	adds r0, #1
	bl sub_8040640
	strb r0, [r6, #0xd]
_0801CDBE
	movs r4, #0
_0801CDC0
	ldrb r0, [r6, #0xd]
	ldr r7, _0801D0DC
	cmp r0, r4
	bne _0801CDCA
	subs r7, #2
_0801CDCA
	lsls r0, r4, #3
	adds r0, r0, r5
	adds r0, #0xc0
	str r0, [sp, #8]
	ldr r1, [r0, #0x38]
	ldr r0, _0801D0E0
	str r1, [sp, #4]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #4]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	beq _0801CE04
	ldr r0, [sp, #8]
	adds r1, r7, #0
	ldr r0, [r0, #0x38]
	bl sub_800065C
	ldr r0, [sp, #8]
	adds r1, r7, #1
	ldr r0, [r0, #0x3c]
	bl sub_800065C
_0801CE04
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #3
	blo _0801CDC0
	ldrb r0, [r6, #0xd]
	movs r1, #5
	adds r4, r5, #0
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #4
	add r3, sp, #0
	strh r1, [r3, #4]
	adds r0, #2
	adds r4, #0xff
	adds r4, #1
	strh r0, [r3, #6]
	ldr r0, [r4, #0x38]
	add r1, sp, #4
	bl sub_8040034
	ldrb r0, [r6, #0xd]
	movs r1, #0x13
	lsls r1, r1, #7
	lsls r0, r0, #2
	adds r0, r0, r5
	adds r0, r0, r1
	ldr r0, [r0, #0x30]
	adds r1, r5, #0
	adds r1, #8
	cmp r0, #0
	beq _0801CE50
	movs r3, #2
	movs r2, #6
	adds r0, r5, #0
	bl sub_8018C48
	b _0801CE5A
_0801CE50
	movs r3, #0
	movs r2, #6
	adds r0, r5, #0
	bl sub_8018C48
_0801CE5A
	ldr r0, _0801D0E0
	ldr r7, [r4, #0x10]
	ldr r0, [r0]
	ldr r2, [r7, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _0801CE76
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r7, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0801CE76
	lsls r0, r1, #0x10
	ldrb r1, [r6, #0xd]
	lsrs r0, r0, #0x10
	adds r2, r1, r5
	movs r1, #0x9b
	lsls r1, r1, #4
	adds r1, r2, r1
	ldrb r1, [r1, #0xc]
	ldr r2, _0801D0E4
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	cmp r0, r1
	beq _0801CE96
	ldr r0, [r4, #0x10]
	bl sub_800065C
_0801CE96
	ldr r0, [r4, #0x10]
	movs r3, #0x13
	ldr r1, [r0]
	lsls r3, r3, #7
	lsls r2, r1, #0x1f
	ldrb r1, [r6, #0xd]
	lsrs r2, r2, #0x1f
	lsls r1, r1, #2
	adds r1, r1, r5
	adds r1, r1, r3
	ldr r1, [r1, #0x30]
	cmp r2, r1
	beq _0801CEB4
	bl sub_80401E4
_0801CEB4
	ldr r0, _0801D0D4
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

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
	bl sub_800E71C
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
_0801CF6E
	ldr r0, [sp, #0x58]
	ldr r1, _0801D0DC
	ldrb r0, [r0, #0xd]
	cmp r0, r4
	bne _0801CF7A
	subs r1, #2
_0801CF7A
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
_0801CF90
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
	blo _0801CF90
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
	bne _0801D0A0
	movs r0, #0
_0801D0A0
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
	b _0801D118
	ALIGN
_0801D0D4 DCDU gUnknown_0300345C
_0801D0D8 DCDU gUnknown_03003448
_0801D0DC DCDU 0x00000CED
_0801D0E0 DCDU gUnknown_03003EA0
_0801D0E4 DCDU gUnknown_08050716
_0801D0E8 DCDU gUnknown_03003468
_0801D0EC DCDU gUnknown_03003EA8
_0801D0F0 DCDU 0x654D6742
_0801D0F4 DCDU 0x6153756E
_0801D0F8 DCDU 0x00006576
_0801D0FC DCDU gUnknown_03003450
_0801D100 DCDU gUnknown_03003E98
_0801D104 DCDU 0x000008A4
_0801D108 DCDU 0x00000C9D
_0801D10C DCDU 0x00000C8B
_0801D110 DCDU gPlayerPointer
_0801D114 DCDU gPlayerEntity
_0801D118
	movs r2, #0
	movs r1, #0
	adds r0, r6, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	ldr r1, _0801D4F4
	ldr r0, [sp, #0x48]
	movs r2, #0
	ldr r1, [r1, r0]
	adds r0, r6, #0
	bl sub_80137F8
	movs r0, #0xff
	adds r0, #0x69
	ldr r1, _0801D4F8
	movs r2, #0xff
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x50]
	muls r0, r4
	str r1, [sp, #4]
	str r1, [sp, #8]
	adds r1, r0, r5
	ldr r0, _0801D4FC
	adds r2, #0x10
	adds r7, r2, #0
	str r2, [sp]
	str r1, [sp, #0x34]
	adds r6, r1, r0
	movs r1, #0
	movs r2, #0
	movs r3, #0x31
	adds r0, r6, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	ldr r0, _0801D500
	ldr r0, [r0]
	adds r0, #0xa0
	ldrb r0, [r0, #0xf]
	bl sub_80406A4
	adds r2, r1, #0
	add r1, pc, #0x388
	adds r0, r6, #0
	bl sub_801390A
	ldr r1, _0801D4F8
	ldr r0, _0801D508
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x34]
	movs r2, #0xff
	str r2, [sp, #0xc]
	adds r6, r1, r0
	movs r1, #0
	movs r2, #0
	movs r3, #0x4a
	adds r0, r6, #0
	str r7, [sp]
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	ldr r0, _0801D500
	add r1, pc, #0x360
	ldr r0, [r0]
	adds r0, #0xb0
	ldrb r2, [r0, #2]
	adds r0, r6, #0
	bl sub_801390A
	ldr r1, _0801D4F8
	ldr r0, _0801D514
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x34]
	movs r2, #0xff
	str r2, [sp, #0xc]
	adds r6, r1, r0
	movs r1, #0
	movs r2, #0
	movs r3, #0x69
	adds r0, r6, #0
	str r7, [sp]
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	ldr r0, _0801D500
	ldr r0, [r0]
	ldr r7, [r0]
	adds r0, r7, #0
	bl sub_80406C4
	adds r0, r1, #0
	bl sub_80406C4
	str r0, [sp, #0x2c]
	adds r0, r7, #0
	bl sub_8040660
	adds r2, r1, #0
	add r1, pc, #0x31C
	adds r0, r6, #0
	ldr r3, [sp, #0x2c]
	bl sub_801390A
	movs r2, #4
	str r2, [sp, #0xc]
	movs r1, #0x10
	movs r0, #0x80
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r2, [sp, #0x50]
	ldr r1, _0801D524
	ldr r0, [sp, #0x38]
	adds r2, #0x21
	str r2, [sp]
	adds r6, r0, r1
	movs r1, #0
	movs r2, #0
	movs r3, #5
	adds r0, r6, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	ldr r1, [sp, #0x3c]
	ldr r0, [r1, #0x30]
	cmp r0, #0
	beq _0801D24E
	ldr r0, _0801D500
	movs r3, #0xff
	ldr r0, [r0]
	movs r2, #0
	adds r0, #0x90
	ldrb r1, [r0]
	adds r1, #0x78
	adds r0, r6, #0
	bl sub_80138E2
	b _0801D25A
_0801D24E
	movs r3, #0xff
	movs r2, #0
	movs r1, #0x77
	adds r0, r6, #0
	bl sub_80138E2
_0801D25A
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #3
	bhs _0801D266
	b _0801CF6E
_0801D266
	ldr r0, [sp, #0x58]
	movs r4, #0x13
	ldrb r0, [r0, #0xd]
	lsls r4, r4, #7
	adds r1, r5, #0
	lsls r0, r0, #2
	adds r0, r0, r5
	adds r0, r0, r4
	ldr r0, [r0, #0x30]
	adds r1, #8
	cmp r0, #0
	beq _0801D28A
	movs r3, #2
	movs r2, #6
	adds r0, r5, #0
	bl sub_8018C48
	b _0801D294
_0801D28A
	movs r3, #0
	movs r2, #6
	adds r0, r5, #0
	bl sub_8018C48
_0801D294
	ldr r0, _0801D528
	movs r3, #0
	strb r3, [r0]
	bl sub_802383A
	ldr r7, _0801D52C
	ldr r0, [r7]
	bl sub_800116A
	adds r6, r5, #0
	adds r6, #0xff
	adds r6, #1
	movs r3, #0x9b
	lsls r3, r3, #4
	adds r1, r5, r3
	str r0, [r6, #0x10]
	ldrb r1, [r1, #0xc]
	ldr r2, _0801D530
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	bl sub_800065C
	movs r0, #0x8f
	add r3, sp, #0
	strh r0, [r3, #0x2c]
	movs r0, #0x3c
	strh r0, [r3, #0x2e]
	ldr r0, [r6, #0x10]
	add r1, sp, #0x2c
	bl sub_8040034
	movs r1, #5
	ldr r0, [r6, #0x10]
	bl sub_80401C0
	adds r0, r5, r4
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _0801D2EA
	movs r1, #1
	ldr r0, [r6, #0x10]
	bl sub_80401E4
_0801D2EA
	ldr r0, [r7]
	bl sub_800116A
	movs r2, #0
	movs r1, #0xff
	adds r1, #0xf0
	str r0, [r6, #0x38]
	bl sub_80007A0
	ldr r0, [sp, #0x58]
	ldrb r0, [r0, #0xd]
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #4
	adds r0, #2
	movs r1, #5
	add r3, sp, #0
	strh r1, [r3, #0x2c]
	strh r0, [r3, #0x2e]
	ldr r0, [r6, #0x38]
	add r1, sp, #0x2c
	bl sub_8040034
	movs r1, #3
	ldr r0, [r6, #0x38]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r6, #0x38]
	bl sub_80401E4
	ldr r0, [r6, #0x38]
	bl sub_8000914
	ldr r4, _0801D534
	ldr r0, [r4]
	cmp r0, #0
	beq _0801D354
	bl sub_800B72A
	cmp r0, #0
	beq _0801D348
	ldr r0, [r4]
	bl sub_800B6A8
	cmp r0, #0
	beq _0801D354
_0801D348
	ldr r0, _0801D538
	movs r2, #0
	movs r1, #1
	ldr r0, [r0]
	bl sub_8028A7C
_0801D354
	bl sub_8018070
	add sp, #0x5c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start HandleLoadGameScreen
HandleLoadGameScreen
	push {r4, r5, r6, r7, lr}
	ldr r3, _0801D53C
	ldr r4, _0801D540
	add sp, r3
	add r5, sp, #4
	adds r1, r5, #0
	adds r1, #0xf8
	adds r0, r5, #0
	adds r3, r4, #0
	movs r2, #0x78
	adds r0, #8
	bl __vecmap1c__FPvT1iPFPv_v
	adds r0, r5, #0
	adds r0, #0xff
	adds r0, #0x3d
	adds r7, r0, #0
	bl sub_80143E0
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r5, r0
	adds r0, r5, #0
	adds r0, #0xff
	adds r0, #0xb5
	adds r6, r1, #0
	movs r2, #0x78
	adds r3, r4, #0
	bl __vecmap1c__FPvT1iPFPv_v
	ldr r0, _0801D524
	movs r3, #0x13
	lsls r3, r3, #7
	adds r1, r5, r0
	add r3, sp
	str r1, [r3, #0x48]
	adds r0, r6, #0
	movs r2, #0x78
	adds r3, r4, #0
	bl __vecmap1c__FPvT1iPFPv_v
	ldr r0, _0801D4FC
	movs r3, #0x13
	lsls r3, r3, #7
	adds r1, r5, r0
	add r3, sp
	ldr r0, [r3, #0x48]
	adds r6, r1, #0
	movs r2, #0x78
	adds r3, r4, #0
	bl __vecmap1c__FPvT1iPFPv_v
	ldr r0, _0801D544
	movs r2, #0x78
	adds r1, r5, r0
	adds r0, r6, #0
	adds r3, r4, #0
	bl __vecmap1c__FPvT1iPFPv_v
	adds r0, r5, #0
	bl sub_801CEC6
	movs r0, #0x4d
	lsls r0, r0, #5
	ldr r6, _0801D538
	adds r4, r5, r0
_0801D3E4
	ldr r0, _0801D548
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi _0801D3F2
	ldrh r1, [r0, #6]
_0801D3F2
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #0x19
	bpl _0801D406
	movs r1, #0
	mvns r1, r1
	adds r0, r5, #0
	bl sub_801CD96
	b _0801D456
_0801D406
	lsls r1, r0, #0x18
	bpl _0801D414
	movs r1, #1
	adds r0, r5, #0
	bl sub_801CD96
	b _0801D456
_0801D414
	lsls r1, r0, #0x1e
	bpl _0801D424
	ldr r0, [r6]
	bl sub_8028C2E
	movs r0, #3
	strb r0, [r4, #0xc]
	b _0801D456
_0801D424
	lsls r0, r0, #0x1f
	bpl _0801D456
	ldrb r0, [r4, #0xd]
	movs r2, #0x13
	lsls r2, r2, #7
	lsls r1, r0, #2
	adds r1, r1, r5
	adds r1, r1, r2
	ldr r1, [r1, #0x30]
	cmp r1, #0
	beq _0801D44E
	ldr r1, _0801D528
	strb r0, [r1]
	movs r0, #4
	strb r0, [r4, #0xc]
	ldr r0, [r6]
	bl sub_8028C2E
	bl sub_802383A
	b _0801D456
_0801D44E
	ldr r0, [r6]
	adds r0, #0x60
	bl sub_8028C2E
_0801D456
	bl sub_800EF2A
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0801D3E4
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	beq _0801D4F2
	cmp r0, #4
	bne _0801D470
	movs r0, #0x10
	bl sub_8018386
_0801D470
	adds r0, r5, #0
	bl sub_801CCEC
	ldr r0, _0801D550
	ldr r4, _0801D54C
	adds r1, r5, r0
	ldr r0, _0801D554
	movs r2, #0x77
	mvns r2, r2
	adds r6, r1, #0
	adds r0, r5, r0
	adds r3, r4, #0
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r0, #0xe5
	lsls r0, r0, #2
	movs r3, #0x13
	lsls r3, r3, #7
	adds r1, r5, r0
	add r3, sp
	movs r2, #0x77
	mvns r2, r2
	str r1, [r3, #0x44]
	adds r0, r6, #0
	adds r3, r4, #0
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r0, #0x8b
	lsls r0, r0, #2
	movs r3, #0x13
	lsls r3, r3, #7
	adds r1, r5, r0
	add r3, sp
	movs r2, #0x77
	mvns r2, r2
	ldr r0, [r3, #0x44]
	adds r6, r1, #0
	adds r3, r4, #0
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r2, #0x77
	mvns r2, r2
	adds r1, r7, #0
	adds r0, r6, #0
	adds r3, r4, #0
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r1, #0
	adds r0, r7, #0
	bl sub_8014436
	movs r2, #0x77
	adds r1, r5, #0
	subs r1, #0x70
	mvns r2, r2
	adds r3, r4, #0
	adds r0, r5, #0
	adds r0, #0x80
	bl __vecmap1ci__FPvT1iPFPvi_v
	ldr r3, _0801D558
	add sp, r3
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0801D4F2
	b _0801D55C
	ALIGN
_0801D4F4 DCDU gUnknown_08050FC0
_0801D4F8 DCDU 0x0000FFFF
_0801D4FC DCDU 0x00000574
_0801D500 DCDU gPlayerEntity
_0801D504 DCDU 0x00006925
_0801D508 DCDU 0x000005EC
_0801D50C DCDU 0x69323025
_0801D510 DCDU 0x00000000
_0801D514 DCDU 0x00000664
_0801D518 DCDU 0x69323025
_0801D51C DCDU 0x3230253A
_0801D520 DCDU 0x00000069
_0801D524 DCDU 0x0000040C
_0801D528 DCDU gPlayerPointer
_0801D52C DCDU gUnknown_03003448
_0801D530 DCDU gUnknown_08050716
_0801D534 DCDU gUnknown_03003460
_0801D538 DCDU gUnknown_0300345C
_0801D53C DCDU 0xFFFFF634
_0801D540 DCDU sub_80143E0
_0801D544 DCDU 0x000009AC
_0801D548 DCDU gUnknown_03003444
_0801D54C DCDU sub_8014436
_0801D550 DCDU 0x000004FC
_0801D554 DCDU 0x00000934
_0801D558 DCDU 0x000009CC
_0801D55C
	movs r0, #2
	bl sub_8018386
	b _0801D470
	END
