	non_word_aligned_thumb_func_start sub_8039336
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
	ldr r0, _080395C0
	ldr r0, [r0]
	bl sub_80050FA
	add r6, sp, #4
	adds r0, r6, #0
	bl sub_8001A60
	ldr r0, _080395C4
	add r1, pc, #0x258
	ldr r0, [r0]
	bl sub_8004FFC
	adds r3, r4, #0
	movs r2, #0
	movs r1, #7
	bl sub_802EF0A
	ldr r4, _080395D4
	str r0, [sp, #4]
	ldr r0, [r4]
	adds r1, r6, #0
	bl sub_800D9E0
	ldr r0, _080395D8
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
13
	ldr r0, [sp, #0x58]
	ldr r1, _080395B4
	ldrb r0, [r0, #0xd]
	cmp r0, r4
	bne %14
	subs r1, #2
14
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
15
	ldr r7, _080395DC
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
	blo %15
	ldr r7, _080395DC
	ldr r0, [r7]
	bl sub_800116A
	lsls r1, r4, #2
	adds r6, r1, r5
	str r6, [sp, #0x44]
	adds r6, #0xff
	str r1, [sp, #0x48]
	adds r6, #1
	str r0, [r6, #0x2c]
	ldr r1, _080395E0
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
	ldr r1, _080395E4
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
	ldr r1, _080395E8
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
	ldr r0, _080395B0
	strb r4, [r0]
	bl sub_802383A
	ldr r0, _080395EC
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
	bne %16
	movs r0, #0
16
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
	ldr r1, _080395F0
	ldr r0, [sp, #0x48]
	movs r2, #0
	ldr r1, [r1, r0]
	adds r0, r6, #0
	bl sub_80137F8
	movs r0, #0xff
	adds r0, #0x69
	ldr r1, _080395F4
	movs r2, #0xff
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x50]
	muls r0, r4
	str r1, [sp, #4]
	str r1, [sp, #8]
	adds r1, r0, r5
	ldr r0, _080395F8
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
	ldr r0, _080395EC
	ldr r0, [r0]
	adds r0, #0xa0
	ldrb r0, [r0, #0xf]
	bl sub_80406A4
	adds r2, r1, #0
	add r1, pc, #0x5C
	adds r0, r6, #0
	bl sub_801390A
	movs r2, #0xff
	b %17
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
17
	ldr r1, _08039944
	ldr r0, _08039948
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
	ldr r0, _0803994C
	add r1, pc, #0x328
	ldr r0, [r0]
	adds r0, #0xb0
	ldrb r2, [r0, #2]
	adds r0, r6, #0
	bl sub_801390A
	ldr r1, _08039944
	ldr r0, _08039958
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
	ldr r0, _0803994C
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
	add r1, pc, #0x2E4
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
	ldr r1, _08039968
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
	beq %18
	ldr r0, _0803994C
	movs r3, #0xff
	ldr r0, [r0]
	movs r2, #0
	adds r0, #0x90
	ldrb r1, [r0]
	adds r1, #0x78
	adds r0, r6, #0
	bl sub_80138E2
	b %19
18
	movs r3, #0xff
	movs r2, #0
	movs r1, #0x77
	adds r0, r6, #0
	bl sub_80138E2
19
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #3
	bhs %20
	b %13
20
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
	beq %21
	movs r3, #0xb
	movs r2, #6
	adds r0, r5, #0
	bl sub_8018C48
	b %22
21
	movs r3, #0xa
	movs r2, #6
	adds r0, r5, #0
	bl sub_8018C48
22
	ldr r1, _0803996C
	movs r0, #0
	strb r0, [r1]
	bl sub_802383A
	ldr r7, _08039970
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
	ldr r2, _08039974
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
	beq %23
	movs r1, #1
	ldr r0, [r6, #0x10]
	bl sub_80401E4
23
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
	ldr r4, _08039978
	ldr r0, [r4]
	cmp r0, #0
	beq %25
	bl sub_800B72A
	cmp r0, #0
	beq %24
	ldr r0, [r4]
	bl sub_800B6A8
	cmp r0, #0
	beq %25
24
	ldr r0, _0803997C
	movs r2, #0
	movs r1, #1
	ldr r0, [r0]
	bl sub_8028A7C
25
	bl FadeToImage
	add sp, #0x5c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end sub_8039336

