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
	IMPORT gUnknown_080514D0
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
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
	IMPORT sub_8018386
	IMPORT sub_8018C48
	IMPORT sub_802383A
	IMPORT sub_8028A7C
	IMPORT sub_8028C2E
	IMPORT sub_802EF0A
	IMPORT sub_8038E44
	IMPORT sub_8038EE2
	IMPORT sub_803C3A4
	IMPORT sub_803C3C8
	IMPORT sub_803F9C4
	IMPORT sub_8040034
	IMPORT sub_80401C0
	IMPORT sub_80401E4
	IMPORT sub_8040640
	IMPORT sub_8040660
	IMPORT sub_80406A4
	IMPORT sub_80406C4


	thumb_func_start sub_80391C8
sub_80391C8 ;@ 0x080391C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080395AC ;@ =gUnknown_0300345C
	ldr r0, [r0]
	bl sub_8028C2E
	movs r0, #0x4d
	lsls r0, r0, #5
	adds r0, r4, r0
	ldrb r1, [r0, #0xd]
	movs r3, #0x13
	lsls r3, r3, #7
	lsls r2, r1, #2
	adds r2, r2, r4
	adds r2, r2, r3
	ldr r2, [r2, #0x30]
	cmp r2, #0
	bne _080391FE
	ldr r2, _080395B0 ;@ =gPlayerPointer
	strb r1, [r2]
	movs r1, #4
	strb r1, [r0, #0xc]
	bl sub_802383A
_080391F8
	pop {r4}
	pop {r3}
	bx r3
_080391FE
	adds r0, r4, #0
	bl sub_8038EE2
	b _080391F8

	non_word_aligned_thumb_func_start sub_8039206
sub_8039206 ;@ 0x08039206
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x4d
	lsls r0, r0, #5
	adds r6, r5, r0
	ldrb r0, [r6, #0xd]
	cmp r1, #0
	sub sp, #0xc
	bge _08039222
	adds r0, #2
	bl sub_8040640
	strb r0, [r6, #0xd]
	b _0803922E
_08039222
	cmp r1, #0
	ble _0803922E
	adds r0, #1
	bl sub_8040640
	strb r0, [r6, #0xd]
_0803922E
	movs r4, #0
_08039230
	ldrb r0, [r6, #0xd]
	ldr r7, _080395B4 ;@ =0x00000CED
	cmp r0, r4
	bne _0803923A
	subs r7, #2
_0803923A
	lsls r0, r4, #3
	adds r0, r0, r5
	adds r0, #0xc0
	str r0, [sp, #8]
	ldr r1, [r0, #0x38]
	ldr r0, _080395B8 ;@ =gUnknown_03003EA0
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
	beq _08039274
	ldr r0, [sp, #8]
	adds r1, r7, #0
	ldr r0, [r0, #0x38]
	bl sub_800065C
	ldr r0, [sp, #8]
	adds r1, r7, #1
	ldr r0, [r0, #0x3c]
	bl sub_800065C
_08039274
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #3
	blo _08039230
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
	beq _080392C0
	movs r3, #0xb
	movs r2, #6
	adds r0, r5, #0
	bl sub_8018C48
	b _080392CA
_080392C0
	movs r3, #0xa
	movs r2, #6
	adds r0, r5, #0
	bl sub_8018C48
_080392CA
	ldr r0, _080395B8 ;@ =gUnknown_03003EA0
	ldr r7, [r4, #0x10]
	ldr r0, [r0]
	ldr r2, [r7, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _080392E6
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r7, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_080392E6
	lsls r0, r1, #0x10
	ldrb r1, [r6, #0xd]
	lsrs r0, r0, #0x10
	adds r2, r1, r5
	movs r1, #0x9b
	lsls r1, r1, #4
	adds r1, r2, r1
	ldrb r1, [r1, #0xc]
	ldr r2, _080395BC ;@ =gUnknown_08050716
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	cmp r0, r1
	beq _08039306
	ldr r0, [r4, #0x10]
	bl sub_800065C
_08039306
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
	beq _08039324
	bl sub_80401E4
_08039324
	ldr r0, _080395AC ;@ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8039336
sub_8039336 ;@ 0x08039336
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
	ldr r0, _080395C0 ;@ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	add r6, sp, #4
	adds r0, r6, #0
	bl sub_8001A60
	ldr r0, _080395C4 ;@ =gUnknown_03003EA8
	add r1, pc, #0x258 ;@ =_080395C8
	ldr r0, [r0]
	bl sub_8004FFC
	adds r3, r4, #0
	movs r2, #0
	movs r1, #7
	bl sub_802EF0A
	ldr r4, _080395D4 ;@ =gUnknown_03003450
	str r0, [sp, #4]
	ldr r0, [r4]
	adds r1, r6, #0
	bl sub_800D9E0
	ldr r0, _080395D8 ;@ =gUnknown_03003E98
	ldr r0, [r0]
	bl sub_800B08E
	movs r1, #0
	ldr r0, [r4]
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
	movs r1, #1
	adds r0, r4, #0
	bl sub_80138E2
	movs r4, #0
_080393DA
	ldr r0, [sp, #0x58]
	ldr r1, _080395B4 ;@ =0x00000CED
	ldrb r0, [r0, #0xd]
	cmp r0, r4
	bne _080393E6
	subs r1, #2
_080393E6
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
_080393FC
	ldr r7, _080395DC ;@ =gUnknown_03003448
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
	blo _080393FC
	ldr r7, _080395DC ;@ =gUnknown_03003448
	ldr r0, [r7]
	bl sub_800116A
	lsls r1, r4, #2
	adds r6, r1, r5
	str r6, [sp, #0x44]
	adds r6, #0xff
	str r1, [sp, #0x48]
	adds r6, #1
	str r0, [r6, #0x2c]
	ldr r1, _080395E0 ;@ =0x000008A4
	bl sub_800065C
	ldr r0, [sp, #0x50]
	add r3, sp, #0
	adds r0, #0xf
	movs r1, #0x21
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
	ldr r0, [r7]
	bl sub_800116A
	ldr r1, _080395E4 ;@ =0x00000C9D
	str r0, [r6, #0x20]
	bl sub_800065C
	ldr r0, [sp, #0x50]
	add r3, sp, #0
	adds r0, #0xe
	str r0, [sp, #0x40]
	movs r1, #0x3a
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
	ldr r1, _080395E8 ;@ =0x00000C8B
	str r0, [r6, #0x14]
	bl sub_800065C
	movs r1, #0x58
	add r3, sp, #0
	ldr r0, [sp, #0x40]
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
	ldr r0, _080395B0 ;@ =gPlayerPointer
	strb r4, [r0]
	bl sub_802383A
	ldr r0, _080395EC ;@ =gPlayerEntity
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
	bne _0803950C
	movs r0, #0
_0803950C
	movs r1, #0x13
	ldr r6, [sp, #0x44]
	lsls r1, r1, #7
	adds r1, r6, r1
	str r1, [sp, #0x3c]
	str r0, [r1, #0x30]
	movs r0, #8
	str r0, [sp, #4]
	lsls r0, r4, #4
	movs r2, #4
	str r2, [sp, #0xc]
	subs r0, r0, r4
	movs r1, #0x10
	str r1, [sp, #8]
	lsls r0, r0, #3
	ldr r2, [sp, #0x50]
	adds r0, r0, r5
	movs r1, #0xa9
	lsls r1, r1, #2
	adds r2, #0xa
	str r2, [sp]
	adds r6, r0, r1
	movs r1, #0
	movs r2, #0
	str r0, [sp, #0x38]
	movs r3, #0x10
	adds r0, r6, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	ldr r1, _080395F0 ;@ =gUnknown_080514D0
	ldr r0, [sp, #0x48]
	movs r2, #0
	ldr r1, [r1, r0]
	adds r0, r6, #0
	bl sub_80137F8
	movs r0, #0xff
	adds r0, #0x69
	ldr r1, _080395F4 ;@ =0x0000FFFF
	movs r2, #0xff
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x50]
	muls r0, r4
	str r1, [sp, #4]
	str r1, [sp, #8]
	adds r1, r0, r5
	ldr r0, _080395F8 ;@ =0x00000574
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
	ldr r0, _080395EC ;@ =gPlayerEntity
	ldr r0, [r0]
	adds r0, #0xa0
	ldrb r0, [r0, #0xf]
	bl sub_80406A4
	adds r2, r1, #0
	add r1, pc, #0x5C ;@ =_080395FC
	adds r0, r6, #0
	bl sub_801390A
	movs r2, #0xff
	b _08039600
	ALIGN
_080395AC DCDU gUnknown_0300345C
_080395B0 DCDU gPlayerPointer
_080395B4 DCDU 0x00000CED
_080395B8 DCDU gUnknown_03003EA0
_080395BC DCDU gUnknown_08050716
_080395C0 DCDU gUnknown_03003468
_080395C4 DCDU gUnknown_03003EA8
_080395C8 DCDU 0x654D6742
_080395CC DCDU 0x6153756E
_080395D0 DCDU 0x00006576
_080395D4 DCDU gUnknown_03003450
_080395D8 DCDU gUnknown_03003E98
_080395DC DCDU gUnknown_03003448
_080395E0 DCDU 0x000008A4
_080395E4 DCDU 0x00000C9D
_080395E8 DCDU 0x00000C8B
_080395EC DCDU gPlayerEntity
_080395F0 DCDU gUnknown_080514D0
_080395F4 DCDU 0x0000FFFF
_080395F8 DCDU 0x00000574
_080395FC DCDU 0x00006925
_08039600
	ldr r1, _08039944 ;@ =0x0000FFFF
	ldr r0, _08039948 ;@ =0x000005EC
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x34]
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
	ldr r0, _0803994C ;@ =gPlayerEntity
	add r1, pc, #0x328 ;@ =_08039950
	ldr r0, [r0]
	adds r0, #0xb0
	ldrb r2, [r0, #2]
	adds r0, r6, #0
	bl sub_801390A
	ldr r1, _08039944 ;@ =0x0000FFFF
	ldr r0, _08039958 ;@ =0x00000664
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
	ldr r0, _0803994C ;@ =gPlayerEntity
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
	add r1, pc, #0x2E4 ;@ =_0803995C
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
	ldr r1, _08039968 ;@ =0x0000040C
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
	beq _080396CA
	ldr r0, _0803994C ;@ =gPlayerEntity
	movs r3, #0xff
	ldr r0, [r0]
	movs r2, #0
	adds r0, #0x90
	ldrb r1, [r0]
	adds r1, #0x78
	adds r0, r6, #0
	bl sub_80138E2
	b _080396D6
_080396CA
	movs r3, #0xff
	movs r2, #0
	movs r1, #0x77
	adds r0, r6, #0
	bl sub_80138E2
_080396D6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #3
	bhs _080396E2
	b _080393DA
_080396E2
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
	beq _08039706
	movs r3, #0xb
	movs r2, #6
	adds r0, r5, #0
	bl sub_8018C48
	b _08039710
_08039706
	movs r3, #0xa
	movs r2, #6
	adds r0, r5, #0
	bl sub_8018C48
_08039710
	ldr r1, _0803996C ;@ =gPlayerPointer
	movs r0, #0
	strb r0, [r1]
	bl sub_802383A
	ldr r7, _08039970 ;@ =gUnknown_03003448
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
	ldr r2, _08039974 ;@ =gUnknown_08050716
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
	beq _08039766
	movs r1, #1
	ldr r0, [r6, #0x10]
	bl sub_80401E4
_08039766
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
	ldr r4, _08039978 ;@ =gUnknown_03003460
	ldr r0, [r4]
	cmp r0, #0
	beq _080397D0
	bl sub_800B72A
	cmp r0, #0
	beq _080397C4
	ldr r0, [r4]
	bl sub_800B6A8
	cmp r0, #0
	beq _080397D0
_080397C4
	ldr r0, _0803997C ;@ =gUnknown_0300345C
	movs r2, #0
	movs r1, #1
	ldr r0, [r0]
	bl sub_8028A7C
_080397D0
	bl sub_8018070
	add sp, #0x5c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_80397DC
sub_80397DC ;@ 0x080397DC
	push {r4, r5, r6, r7, lr}
	ldr r3, _08039980 ;@ =0xFFFFF634
	ldr r4, _08039984 ;@ =sub_80143E0
	add sp, r3
	add r6, sp, #4
	adds r1, r6, #0
	adds r1, #0xf8
	adds r0, r6, #0
	adds r3, r4, #0
	movs r2, #0x78
	adds r0, #8
	bl sub_803C3A4
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #0x3d
	adds r7, r0, #0
	bl sub_80143E0
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r6, r0
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #0xb5
	adds r5, r1, #0
	movs r2, #0x78
	adds r3, r4, #0
	bl sub_803C3A4
	ldr r0, _08039968 ;@ =0x0000040C
	movs r3, #0x13
	lsls r3, r3, #7
	adds r1, r6, r0
	add r3, sp
	str r1, [r3, #0x48]
	adds r0, r5, #0
	movs r2, #0x78
	adds r3, r4, #0
	bl sub_803C3A4
	ldr r0, _08039988 ;@ =0x00000574
	movs r3, #0x13
	lsls r3, r3, #7
	adds r1, r6, r0
	add r3, sp
	ldr r0, [r3, #0x48]
	adds r5, r1, #0
	movs r2, #0x78
	adds r3, r4, #0
	bl sub_803C3A4
	ldr r0, _0803998C ;@ =0x000009AC
	movs r2, #0x78
	adds r1, r6, r0
	adds r0, r5, #0
	adds r3, r4, #0
	bl sub_803C3A4
	adds r0, r6, #0
	bl sub_8039336
	movs r0, #0x4d
	lsls r0, r0, #5
	adds r5, r6, r0
_0803985E
	ldr r0, _08039990 ;@ =gUnknown_03003444
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi _0803986C
	ldrh r1, [r0, #6]
_0803986C
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	lsls r0, r4, #0x1e
	bpl _0803987A
	movs r0, #3
	strb r0, [r5, #0xc]
	b _08039896
_0803987A
	lsls r0, r4, #0x19
	bpl _0803988A
	movs r1, #0
	mvns r1, r1
	adds r0, r6, #0
	bl sub_8039206
	b _08039896
_0803988A
	lsls r0, r4, #0x18
	bpl _08039896
	movs r1, #1
	adds r0, r6, #0
	bl sub_8039206
_08039896
	lsls r0, r4, #0x1f
	bpl _080398A0
	adds r0, r6, #0
	bl sub_80391C8
_080398A0
	bl sub_800EF2A
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _0803985E
	ldrb r0, [r5, #0xc]
	cmp r0, #3
	beq _0803993C
	cmp r0, #4
	bne _080398BA
	movs r0, #0x10
	bl sub_8018386
_080398BA
	adds r0, r6, #0
	bl sub_8038E44
	ldr r0, _08039998 ;@ =0x000004FC
	ldr r4, _08039994 ;@ =sub_8014436
	adds r1, r6, r0
	ldr r0, _0803999C ;@ =0x00000934
	movs r2, #0x77
	mvns r2, r2
	adds r5, r1, #0
	adds r0, r6, r0
	adds r3, r4, #0
	bl sub_803C3C8
	movs r0, #0xe5
	lsls r0, r0, #2
	movs r3, #0x13
	lsls r3, r3, #7
	adds r1, r6, r0
	add r3, sp
	movs r2, #0x77
	mvns r2, r2
	str r1, [r3, #0x44]
	adds r0, r5, #0
	adds r3, r4, #0
	bl sub_803C3C8
	movs r0, #0x8b
	lsls r0, r0, #2
	movs r3, #0x13
	lsls r3, r3, #7
	adds r1, r6, r0
	add r3, sp
	movs r2, #0x77
	mvns r2, r2
	ldr r0, [r3, #0x44]
	adds r5, r1, #0
	adds r3, r4, #0
	bl sub_803C3C8
	movs r2, #0x77
	mvns r2, r2
	adds r1, r7, #0
	adds r0, r5, #0
	adds r3, r4, #0
	bl sub_803C3C8
	movs r1, #0
	adds r0, r7, #0
	bl sub_8014436
	movs r2, #0x77
	adds r1, r6, #0
	subs r1, #0x70
	mvns r2, r2
	adds r3, r4, #0
	adds r0, r6, #0
	adds r0, #0x80
	bl sub_803C3C8
	ldr r3, _080399A0 ;@ =0x000009CC
	add sp, r3
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0803993C
	movs r0, #2
	bl sub_8018386
	b _080398BA
	ALIGN
_08039944 DCDU 0x0000FFFF
_08039948 DCDU 0x000005EC
_0803994C DCDU gPlayerEntity
_08039950 DCDU 0x69323025
_08039954 DCDU 0x00000000
_08039958 DCDU 0x00000664
_0803995C DCDU 0x69323025
_08039960 DCDU 0x3230253A
_08039964 DCDU 0x00000069
_08039968 DCDU 0x0000040C
_0803996C DCDU gPlayerPointer
_08039970 DCDU gUnknown_03003448
_08039974 DCDU gUnknown_08050716
_08039978 DCDU gUnknown_03003460
_0803997C DCDU gUnknown_0300345C
_08039980 DCDU 0xFFFFF634
_08039984 DCDU sub_80143E0
_08039988 DCDU 0x00000574
_0803998C DCDU 0x000009AC
_08039990 DCDU gUnknown_03003444
_08039994 DCDU sub_8014436
_08039998 DCDU 0x000004FC
_0803999C DCDU 0x00000934
_080399A0 DCDU 0x000009CC
	END