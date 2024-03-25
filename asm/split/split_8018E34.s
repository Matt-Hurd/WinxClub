    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003444
	IMPORT gUnknown_03003448
	IMPORT gUnknown_03003450
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003468
	IMPORT gUnknown_03003478
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EA8
	IMPORT gUnknown_080506E8
	IMPORT gUnknown_0805075A
	IMPORT sub_800065C
	IMPORT sub_8000D5A
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_8001A60
	IMPORT sub_8004FFC
	IMPORT sub_80050FA
	IMPORT sub_800B08E
	IMPORT sub_800BE0E
	IMPORT sub_800C1CA
	IMPORT sub_800D912
	IMPORT sub_800D9E0
	IMPORT sub_800EF2A
	IMPORT sub_80137F8
	IMPORT sub_80138E2
	IMPORT sub_80143E0
	IMPORT sub_8014436
	IMPORT sub_80147FA
	IMPORT sub_8018070
	IMPORT sub_80180BE
	IMPORT sub_8018386
	IMPORT sub_80189BC
	IMPORT sub_8018C48
	IMPORT sub_8018D76
	IMPORT sub_8028A7C
	IMPORT sub_8028C2E
	IMPORT sub_802EF0A
	IMPORT sub_803BF0C
	IMPORT sub_803C3A4
	IMPORT sub_803C3C8
	IMPORT sub_803F9C4
	IMPORT sub_80401E4

	thumb_func_start sub_8018E34
sub_8018E34 ;@ 0x08018E34
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	bl sub_80180BE
	ldr r6, _0801921C ;@ =gUnknown_03003448
	movs r4, #0
_08018E40
	lsls r0, r4, #2
	adds r5, r0, r7
	adds r1, r5, #0
	ldr r0, [r6]
	bl sub_8000DE6
	adds r1, r5, #0
	adds r1, #0xf8
	ldr r0, [r6]
	bl sub_8000DE6
	adds r1, r5, #0
	adds r1, #0xff
	adds r1, #0x9d
	ldr r0, [r6]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo _08018E40
	adds r1, r7, #0
	adds r1, #0xff
	adds r1, #0xa5
	ldr r0, [r6]
	bl sub_8000DE6
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8018E7E
sub_8018E7E ;@ 0x08018E7E
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r5, #0xff
	adds r5, #0x81
	adds r4, r0, #0
	ldrb r0, [r5, #1]
	sub sp, #4
	ldr r1, [sp, #8]
	adds r0, r0, r1
	bmi _08018F56
	movs r1, #0xff
	adds r1, #0x9c
	ldrb r1, [r1, r4]
	cmp r1, r0
	ble _08018F56
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r5, #1]
	cmp r1, #0
	beq _08018EB0
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0x81
	ldrb r0, [r0, #2]
	b _08018EB2
_08018EB0
	movs r0, #0
_08018EB2
	lsls r7, r0, #2
	adds r0, r7, #0
	adds r0, #0x11
	lsls r6, r0, #0x10
	lsrs r6, r6, #0x10
	movs r0, #0x31
	lsls r0, r0, #4
	adds r1, r6, #0
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, r0
	bl sub_80138E2
	adds r0, r6, #1
	lsls r1, r0, #0x10
	movs r0, #1
	lsls r0, r0, #0xa
	lsrs r1, r1, #0x10
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, r0
	bl sub_80138E2
	adds r0, r6, #2
	lsls r1, r0, #0x10
	movs r0, #0x8f
	lsls r0, r0, #3
	lsrs r1, r1, #0x10
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, r0
	bl sub_80138E2
	adds r6, #3
	lsls r1, r6, #0x10
	movs r0, #0x4f
	lsls r0, r0, #4
	lsrs r1, r1, #0x10
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, r0
	bl sub_80138E2
	ldr r6, _08019220 ;@ =gUnknown_0805075A
	movs r0, #0x71
	lsls r0, r0, #3
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, r0
	ldrh r1, [r6, r7]
	bl sub_80138E2
	adds r0, r7, r6
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _08018F38
	ldr r0, [r5, #0x24]
	bl sub_800065C
	ldr r0, [r5, #0x24]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _08018F46
	movs r1, #1
	bl sub_80401E4
	b _08018F46
_08018F38
	ldr r0, [r5, #0x24]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _08018F46
	movs r1, #0
	bl sub_80401E4
_08018F46
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _08018F56
	ldr r0, _08019224 ;@ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
_08018F56
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8018F5E
sub_8018F5E ;@ 0x08018F5E
	push {r4, r5, r6, r7, lr}
	ldr r1, _08019220 ;@ =gUnknown_0805075A
	sub sp, #0x4c
	add r7, sp, #0x40
	adds r5, r0, #0
	movs r2, #0xc
	adds r1, #0x38
	adds r0, r7, #0
	bl sub_803BF0C
	ldr r0, _08019220 ;@ =gUnknown_0805075A
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
	ldr r0, _08019228 ;@ =gUnknown_03003468
	strh r1, [r3, #0x34]
	strb r4, [r6, #1]
	strb r4, [r6]
	str r4, [r5]
	str r4, [r5, #4]
	ldr r0, [r0]
	bl sub_80050FA
	add r0, sp, #4
	bl sub_8001A60
	ldr r0, _0801922C ;@ =gUnknown_03003EA8
	add r1, pc, #0x27C ;@ =_08019230
	ldr r0, [r0]
	bl sub_8004FFC
	adds r3, r4, #0
	movs r2, #0
	movs r1, #7
	bl sub_802EF0A
	str r0, [sp, #4]
	ldr r0, _08019240 ;@ =gUnknown_03003450
	add r1, sp, #4
	ldr r0, [r0]
	bl sub_800D9E0
	ldr r0, _08019244 ;@ =gUnknown_03003E98
	ldr r0, [r0]
	bl sub_800B08E
	ldr r0, _08019240 ;@ =gUnknown_03003450
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
	add r1, pc, #0x1F0 ;@ =_08019248
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
	add r1, pc, #0x1BC ;@ =_08019248
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
	add r1, pc, #0x188 ;@ =_08019248
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
	add r1, pc, #0x154 ;@ =_08019248
	bl sub_80137F8
	movs r0, #0x4f
	lsls r0, r0, #4
	adds r0, r5, r0
	adds r4, r0, #0
	ldr r0, _08019228 ;@ =gUnknown_03003468
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
	add r1, pc, #0x11C ;@ =_08019248
	bl sub_80137F8
	ldr r0, _0801921C ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, _0801924C ;@ =0x00000C83
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
	ldr r1, _08019250 ;@ =gUnknown_03003EA0
	cmp r0, #0
	blt _080191A8
	movs r2, #0xf
	ldr r0, [r4, #0x34]
	lsls r2, r2, #0x14
	cmp r0, r2
	bge _080191A8
	ldr r0, [r4, #0x40]
	cmp r0, #0
	blt _080191A8
	movs r2, #5
	ldr r0, [r4, #0x38]
	lsls r2, r2, #0x15
	cmp r0, r2
	blt _080191C4
_080191A8
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi _0801921A
	ldr r0, [r1]
	adds r1, r4, #0
	bl sub_800C1CA
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #9
	orrs r0, r1
	orrs r0, r7
	str r0, [r4]
	b _0801921A
_080191C4
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bpl _080191E4
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
_080191E4
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
_0801921A
	b _08019254
	ALIGN
_0801921C DCDU gUnknown_03003448
_08019220 DCDU gUnknown_0805075A
_08019224 DCDU gUnknown_0300345C
_08019228 DCDU gUnknown_03003468
_0801922C DCDU gUnknown_03003EA8
_08019230 DCDU 0x654D6742
_08019234 DCDU 0x6146756E
_08019238 DCDU 0x72756F76
_0801923C DCDU 0x00000073
_08019240 DCDU gUnknown_03003450
_08019244 DCDU gUnknown_03003E98
_08019248 DCDU 0x00000020
_0801924C DCDU 0x00000C83
_08019250 DCDU gUnknown_03003EA0
_08019254
	ldr r0, [r6, #0x24]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #4
	bics r1, r2
	movs r2, #0
	orrs r1, r2
	strh r1, [r0, #0x2a]
	strb r3, [r0, #5]
	ldr r1, [r0]
	lsls r3, r1, #0x16
	bmi _08019272
	orrs r1, r7
	str r1, [r0]
_08019272
	adds r0, r2, #0
	adds r2, r5, #0
	adds r2, #0xff
	adds r2, #0x91
	strb r0, [r2, #0xb]
	movs r0, #0
	ldr r6, _080195AC ;@ =gUnknown_03003478
	movs r4, #1
_08019282
	adds r1, r0, #0
	adds r1, #0xff
	adds r1, #0x28
	lsls r7, r1, #0x1b
	lsrs r7, r7, #0x1b
	adds r3, r4, #0
	lsls r3, r7
	cmp r1, #0
	beq _0801929E
	lsrs r1, r1, #5
	lsls r1, r1, #2
	ldr r1, [r6, r1]
	ands r1, r3
	beq _080192B0
_0801929E
	ldrb r3, [r2, #0xb]
	adds r1, r0, #1
	adds r3, r3, r5
	adds r3, #0xff
	adds r3, #0x81
	strb r1, [r3, #2]
	ldrb r1, [r2, #0xb]
	adds r1, #1
	strb r1, [r2, #0xb]
_080192B0
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xd
	blo _08019282
	movs r1, #0
	adds r0, r5, #0
	bl sub_8018E7E
	bl sub_8018070
	add sp, #0x4c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80192CE
sub_80192CE ;@ 0x080192CE
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x19c
	add r4, sp, #0x10
	ldr r5, _080195B0 ;@ =sub_80143E0
	adds r1, r4, #0
	adds r1, #0xf8
	adds r0, r4, #0
	movs r2, #0x78
	adds r3, r5, #0
	adds r0, #8
	bl sub_803C3A4
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #1
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	str r0, [r3, #0x10]
	bl sub_80143E0
	movs r0, #0x31
	lsls r0, r0, #4
	adds r1, r4, r0
	movs r3, #0xb
	lsls r3, r3, #7
	adds r0, r4, #0
	adds r0, #0xff
	add r3, sp
	str r1, [r3, #0xc]
	adds r0, #0xa9
	movs r2, #0x78
	adds r3, r5, #0
	bl sub_803C3A4
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	ldr r0, [r3, #0xc]
	bl sub_80143E0
	movs r0, #0x71
	lsls r0, r0, #3
	adds r0, r4, r0
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	str r0, [r3, #8]
	bl sub_80143E0
	movs r0, #1
	lsls r0, r0, #0xa
	adds r0, r4, r0
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	str r0, [r3, #4]
	bl sub_80143E0
	movs r0, #0x8f
	lsls r0, r0, #3
	adds r0, r4, r0
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	str r0, [r3]
	bl sub_80143E0
	movs r0, #0x4f
	lsls r0, r0, #4
	adds r0, r4, r0
	movs r3, #5
	lsls r3, r3, #8
	add r3, sp
	str r0, [r3, #0x7c]
	bl sub_80143E0
	adds r0, r4, #0
	bl sub_8018F5E
	movs r3, #5
	lsls r3, r3, #8
	add r3, sp
	add r1, sp, #0xd0
	str r1, [r3, #0x78]
	add r4, sp, #0x190
	add r7, sp, #0x170
_08019380
	ldr r0, _080195B4 ;@ =gUnknown_03003444
	movs r2, #0
	ldr r0, [r0]
	adds r5, r2, #0
	ldr r1, [r0, #0x14]
	lsls r3, r1, #0x1c
	bmi _08019390
	ldrh r5, [r0, #8]
_08019390
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r1, r1, #0x1c
	bmi _0801939A
	ldrh r2, [r0, #4]
_0801939A
	ldrh r0, [r7, #0x1c]
	ldrh r1, [r7, #0x1e]
	movs r3, #5
	lsls r3, r3, #8
	add r3, sp
	str r1, [sp, #4]
	ldr r1, [r3, #0x78]
	lsls r6, r2, #0x10
	ldr r1, [r1, #0x38]
	lsrs r6, r6, #0x10
	str r1, [sp, #8]
	ldr r1, [r3, #0x78]
	ldr r1, [r1, #0x3c]
	str r1, [sp, #0xc]
	lsls r1, r6, #0x16
	lsrs r1, r1, #0x1f
	adds r0, r1, r0
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _080195B8 ;@ =gUnknown_03003EA0
	str r1, [sp]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #8]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, [sp]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _080193E6
	ldr r0, [sp, #8]
	ldr r1, [sp]
	bl sub_800065C
_080193E6
	lsls r0, r6, #0x17
	ldr r1, [sp, #4]
	lsrs r0, r0, #0x1f
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, _080195B8 ;@ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #0xc]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	ldr r1, [sp]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _08019418
	ldr r0, [sp, #0xc]
	ldr r1, [sp]
	bl sub_800065C
_08019418
	lsls r0, r5, #0x16
	bpl _08019422
	movs r0, #2
	strb r0, [r4]
	b _0801945C
_08019422
	lsls r0, r5, #0x17
	bpl _0801942C
	movs r0, #1
	strb r0, [r4]
	b _0801945C
_0801942C
	lsls r0, r5, #0x1a
	bpl _0801943C
	movs r1, #0
	mvns r1, r1
	add r0, sp, #0x10
	bl sub_8018E7E
	b _0801945C
_0801943C
	lsls r0, r5, #0x1b
	bpl _0801944A
	movs r1, #1
	add r0, sp, #0x10
	bl sub_8018E7E
	b _0801945C
_0801944A
	lsls r0, r5, #0x1e
	bpl _08019454
	movs r0, #3
	strb r0, [r4]
	b _0801945C
_08019454
	lsls r0, r5, #0x1d
	bpl _0801945C
	movs r0, #3
	strb r0, [r4]
_0801945C
	lsls r0, r6, #0x1a
	ldr r1, _080195BC ;@ =0x00000C83
	lsrs r0, r0, #0x1f
	adds r5, r0, r1
	ldr r1, [r4, #0x1c]
	ldr r0, _080195B8 ;@ =gUnknown_03003EA0
	str r1, [sp, #0xc]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp, #0xc]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	beq _0801948A
	adds r1, r5, #0
	ldr r0, [r4, #0x1c]
	bl sub_800065C
_0801948A
	lsls r0, r6, #0x1b
	ldr r1, _080195C0 ;@ =0x00000C85
	lsrs r0, r0, #0x1f
	adds r5, r0, r1
	ldr r0, _080195B8 ;@ =gUnknown_03003EA0
	ldr r6, [r4, #0x20]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	beq _080194B4
	adds r1, r5, #0
	ldr r0, [r4, #0x20]
	bl sub_800065C
_080194B4
	bl sub_800EF2A
	ldrb r0, [r4]
	cmp r0, #0
	bne _080194C0
	b _08019380
_080194C0
	ldrh r2, [r7, #0x1a]
	ldr r1, _080195C4 ;@ =gUnknown_080506E8
	ldrb r0, [r4]
	ldrb r4, [r1, r2]
	ldrh r2, [r7, #0x18]
	add r5, sp, #0x10
	ldr r6, _080195C8 ;@ =gUnknown_0300345C
	cmp r0, #1
	ldrb r7, [r1, r2]
	beq _080194FA
	cmp r0, #2
	beq _080194E8
	cmp r0, #3
	beq _0801950C
	cmp r0, #6
	bne _08019512
	movs r0, #0xb
	bl sub_8018386
	b _08019512
_080194E8
	ldr r0, [r6]
	adds r0, #0x40
	bl sub_8028C2E
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_8018386
	b _0801951C
_080194FA
	ldr r0, [r6]
	adds r0, #0x40
	bl sub_8028C2E
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	bl sub_8018386
	b _0801951C
_0801950C
	movs r0, #0x11
	bl sub_8018386
_08019512
	movs r2, #0xff
	movs r1, #4
	ldr r0, [r6]
	bl sub_8028A7C
_0801951C
	adds r0, r5, #0
	bl sub_8018E34
	movs r1, #0
	movs r3, #5
	lsls r3, r3, #8
	add r3, sp
	ldr r0, [r3, #0x7c]
	bl sub_8014436
	movs r1, #0
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	ldr r0, [r3]
	bl sub_8014436
	movs r1, #0
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	ldr r0, [r3, #4]
	bl sub_8014436
	movs r1, #0
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	ldr r0, [r3, #8]
	bl sub_8014436
	movs r1, #0
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	ldr r0, [r3, #0xc]
	bl sub_8014436
	ldr r4, _080195CC ;@ =sub_8014436
	adds r1, r5, #0
	adds r1, #0xff
	movs r2, #0x77
	movs r0, #0x53
	lsls r0, r0, #3
	mvns r2, r2
	adds r1, #0x31
	adds r3, r4, #0
	adds r0, r5, r0
	bl sub_803C3C8
	movs r1, #0
	movs r3, #0xb
	lsls r3, r3, #7
	add r3, sp
	ldr r0, [r3, #0x10]
	bl sub_8014436
	movs r2, #0x77
	adds r1, r5, #0
	subs r1, #0x70
	mvns r2, r2
	adds r3, r4, #0
	adds r0, r5, #0
	adds r0, #0x80
	bl sub_803C3C8
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x19c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_080195AC DCDU gUnknown_03003478
_080195B0 DCDU sub_80143E0
_080195B4 DCDU gUnknown_03003444
_080195B8 DCDU gUnknown_03003EA0
_080195BC DCDU 0x00000C83
_080195C0 DCDU 0x00000C85
_080195C4 DCDU gUnknown_080506E8
_080195C8 DCDU gUnknown_0300345C
_080195CC DCDU sub_8014436
	END