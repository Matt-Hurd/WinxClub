    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003448
	IMPORT gUnknown_03003450
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003460
	IMPORT gUnknown_03003468
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EA8
	IMPORT gUnknown_08050716
	IMPORT gUnknown_080514B8
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_8001A60
	IMPORT sub_80046F8
	IMPORT sub_8004784
	IMPORT sub_80047BE
	IMPORT sub_8004FFC
	IMPORT sub_80050FA
	IMPORT sub_800B08E
	IMPORT sub_800B6A8
	IMPORT sub_800B72A
	IMPORT sub_800D912
	IMPORT sub_800D9E0
	IMPORT sub_80138E2
	IMPORT sub_80147FA
	IMPORT sub_8014B02
	IMPORT sub_8018070
	IMPORT sub_80180BE
	IMPORT sub_801810E
	IMPORT sub_8018390
	IMPORT sub_8018C48
	IMPORT sub_801B170
	IMPORT sub_8028A7C
	IMPORT sub_8028C2E
	IMPORT sub_802EF0A
	IMPORT sub_803D66C
	IMPORT sub_803F708
	IMPORT sub_803F9C4
	IMPORT sub_8040034
	IMPORT sub_80401E4

	thumb_func_start sub_8038888
sub_8038888 ;@ 0x08038888
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08038C70 ;@ =gUnknown_0300345C
	movs r2, #0
	movs r1, #4
	ldr r0, [r0]
	bl sub_8028A7C
	bl sub_8018390
	adds r7, r4, #0
	movs r1, #0x21
	lsls r1, r1, #4
	adds r7, #0xff
	adds r7, #0xe9
	adds r6, r4, r1
	adds r5, r4, #4
	cmp r0, #0xf
	bne _08038902
	bl sub_801810E
	ldr r0, _08038C74 ;@ =gUnknown_03003448
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_8000DE6
	ldr r0, _08038C74 ;@ =gUnknown_03003448
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8000DE6
	ldrb r0, [r6, #5]
	movs r5, #0
	cmp r0, #0
	bls _080388EA
_080388CE
	lsls r0, r5, #2
	adds r1, r0, r4
	ldr r0, _08038C74 ;@ =gUnknown_03003448
	adds r1, #0xff
	adds r1, #0xed
	ldr r0, [r0]
	bl sub_8000DE6
	adds r5, #1
	ldrb r0, [r6, #5]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r0, r5
	bhi _080388CE
_080388EA
	ldr r0, _08038C74 ;@ =gUnknown_03003448
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_8000DE6
	ldr r0, _08038C78 ;@ =gUnknown_03003458
	ldr r0, [r0]
	bl sub_801B170
_080388FC
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_08038902
	bl sub_80180BE
	ldr r0, _08038C74 ;@ =gUnknown_03003448
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_8000DE6
	ldr r0, _08038C74 ;@ =gUnknown_03003448
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8000DE6
	ldrb r0, [r6, #5]
	movs r5, #0
	cmp r0, #0
	bls _0803893E
_08038922
	lsls r0, r5, #2
	adds r1, r0, r4
	ldr r0, _08038C74 ;@ =gUnknown_03003448
	adds r1, #0xff
	adds r1, #0xed
	ldr r0, [r0]
	bl sub_8000DE6
	adds r5, #1
	ldrb r0, [r6, #5]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r0, r5
	bhi _08038922
_0803893E
	ldr r0, _08038C74 ;@ =gUnknown_03003448
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_8000DE6
	b _080388FC

	non_word_aligned_thumb_func_start sub_803894A
sub_803894A ;@ 0x0803894A
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x21
	lsls r0, r0, #4
	adds r4, r5, r0
	ldrb r0, [r4, #4]
	adds r1, r0, r1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bpl _08038964
	movs r3, #4
	ldrsb r1, [r4, r3]
	b _0803896E
_08038964
	ldrb r2, [r4, #5]
	cmp r2, r1
	bgt _0803896E
	movs r3, #4
	ldrsb r1, [r4, r3]
_0803896E
	cmp r0, r1
	beq _080389C6
	strb r1, [r4, #4]
	ldrb r1, [r4, #4]
	movs r3, #0x34
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1e
	muls r0, r3
	lsrs r1, r1, #2
	lsls r3, r1, #3
	adds r1, r3, r1
	add r3, sp, #0
	adds r0, #0x14
	strh r0, [r3]
	lsls r1, r1, #3
	adds r1, #0x1c
	strh r1, [r3, #2]
	movs r0, #0xff
	adds r0, #0xe9
	ldr r0, [r0, r5]
	mov r1, sp
	bl sub_8040034
	ldrb r0, [r4, #4]
	movs r1, #1
	lsls r1, r1, #9
	adds r0, r0, r5
	adds r0, r0, r1
	ldrb r0, [r0, #0xc]
	ldr r1, _08038C7C ;@ =gUnknown_080514B8
	movs r3, #0xff
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	adds r0, r5, #0
	adds r0, #0xff
	movs r2, #0
	adds r0, #0x71
	bl sub_80138E2
	ldr r0, _08038C70 ;@ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
_080389C6
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_80389CC
sub_80389CC ;@ 0x080389CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r4, r0, #0
	add r0, sp, #0x2c
	bl sub_80046F8
	ldr r0, _08038C80 ;@ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	mov r5, sp
	mov r0, sp
	bl sub_8001A60
	ldr r0, _08038C84 ;@ =gUnknown_03003EA8
	add r1, pc, #0x29C ;@ =_08038C88
	ldr r0, [r0]
	bl sub_8004FFC
	movs r7, #0
	adds r3, r7, #0
	movs r2, #0
	movs r1, #7
	bl sub_802EF0A
	adds r1, r5, #0
	ldr r5, _08038C94 ;@ =gUnknown_03003450
	str r0, [sp]
	ldr r0, [r5]
	bl sub_800D9E0
	ldr r0, _08038C98 ;@ =gUnknown_03003E98
	ldr r0, [r0]
	bl sub_800B08E
	movs r1, #0
	ldr r0, [r5]
	bl sub_800D912
	movs r0, #0
	bl sub_80050FA
	ldr r5, _08038C9C ;@ =gUnknown_03003460
	ldr r0, [r5]
	cmp r0, #0
	beq _08038A46
	bl sub_800B72A
	cmp r0, #0
	beq _08038A3A
	ldr r0, [r5]
	bl sub_800B6A8
	cmp r0, #0
	beq _08038A46
_08038A3A
	ldr r0, _08038C70 ;@ =gUnknown_0300345C
	movs r2, #0
	movs r1, #1
	ldr r0, [r0]
	bl sub_8028A7C
_08038A46
	movs r0, #0
	str r0, [r4]
	adds r1, r4, #0
	adds r1, #8
	str r0, [r4, #4]
	movs r5, #0
	movs r6, #0
	movs r3, #0xc
	movs r2, #6
	adds r0, r4, #0
	bl sub_8018C48
	movs r0, #0x34
	bl sub_803F708
	movs r1, #1
	cmp r0, #0
	beq _08038A72
	adds r5, r1, #0
	lsls r1, r1, #9
	adds r0, r4, r1
	strb r6, [r0, #0xc]
_08038A72
	movs r6, #1
	movs r0, #0x35
	bl sub_803F708
	cmp r0, #0
	beq _08038A90
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r5, r0, #0
	adds r0, r1, r4
	lsls r1, r6, #9
	adds r0, r0, r1
	strb r6, [r0, #0xc]
_08038A90
	movs r6, #2
	movs r0, #0x36
	bl sub_803F708
	cmp r0, #0
	beq _08038AAE
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r5, r0, #0
	adds r0, r1, r4
	lsls r1, r6, #8
	adds r0, r0, r1
	strb r6, [r0, #0xc]
_08038AAE
	movs r6, #3
	movs r0, #0x37
	bl sub_803F708
	cmp r0, #0
	beq _08038ACE
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r5, r0, #0
	adds r0, r1, r4
	movs r1, #1
	lsls r1, r1, #9
	adds r0, r0, r1
	strb r6, [r0, #0xc]
_08038ACE
	movs r6, #4
	movs r0, #0x38
	bl sub_803F708
	cmp r0, #0
	beq _08038AEC
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r5, r0, #0
	adds r0, r1, r4
	lsls r1, r6, #7
	adds r0, r0, r1
	strb r6, [r0, #0xc]
_08038AEC
	movs r6, #5
	movs r0, #0x39
	bl sub_803F708
	cmp r0, #0
	beq _08038B0C
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r5, r0, #0
	adds r0, r1, r4
	movs r1, #1
	lsls r1, r1, #9
	adds r0, r0, r1
	strb r6, [r0, #0xc]
_08038B0C
	movs r6, #6
	movs r0, #0x3a
	bl sub_803F708
	cmp r0, #0
	beq _08038B2C
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r5, r0, #0
	adds r0, r1, r4
	movs r1, #1
	lsls r1, r1, #9
	adds r0, r0, r1
	strb r6, [r0, #0xc]
_08038B2C
	movs r6, #7
	movs r0, #0x3b
	bl sub_803F708
	cmp r0, #0
	beq _08038B4C
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r5, r0, #0
	adds r0, r1, r4
	movs r1, #1
	lsls r1, r1, #9
	adds r0, r0, r1
	strb r6, [r0, #0xc]
_08038B4C
	movs r1, #0x21
	lsls r1, r1, #4
	adds r6, r4, r1
	strb r5, [r6, #5]
	adds r0, r5, #0
	movs r7, #0
	movs r5, #0
	cmp r0, #0
	strb r7, [r6, #4]
	bls _08038BE2
_08038B60
	ldr r0, _08038C74 ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r5, #2
	adds r7, r1, r4
	movs r2, #1
	lsls r2, r2, #9
	adds r7, #0xff
	adds r1, r4, r5
	adds r1, r1, r2
	adds r7, #0xc1
	str r0, [r7, #0x2c]
	ldrb r1, [r1, #0xc]
	ldr r2, _08038C7C ;@ =gUnknown_080514B8
	subs r2, #8
	ldrb r1, [r2, r1]
	ldr r2, _08038CA0 ;@ =gUnknown_08050716
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	bl sub_800065C
	lsls r0, r5, #0x1e
	lsrs r0, r0, #0x1e
	movs r3, #0x34
	muls r0, r3
	lsrs r1, r5, #2
	lsls r3, r1, #3
	adds r1, r3, r1
	adds r0, #0x18
	lsls r1, r1, #3
	add r3, sp, #0
	strh r0, [r3, #0x28]
	adds r1, #0x20
	strh r1, [r3, #0x2a]
	ldr r0, [r7, #0x2c]
	add r1, sp, #0x28
	bl sub_8040034
	ldr r0, [r7, #0x2c]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #4
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _08038BCE
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_08038BCE
	movs r1, #1
	ldr r0, [r7, #0x2c]
	bl sub_80401E4
	adds r5, #1
	ldrb r0, [r6, #5]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r0, r5
	bhi _08038B60
_08038BE2
	adds r0, r4, #0
	adds r0, #0xf8
	movs r1, #4
	adds r5, r0, #0
	bl sub_80147FA
	movs r2, #8
	ldr r1, _08038CA4 ;@ =0x0000FFFF
	str r2, [sp, #0xc]
	movs r2, #6
	str r2, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #1
	movs r2, #0
	movs r3, #0
	adds r0, r5, #0
	bl sub_803F9C4
	movs r7, #0xff
	movs r1, #0x27
	lsls r1, r1, #5
	adds r3, r7, #0
	movs r2, #0
	adds r0, r5, #0
	bl sub_80138E2
	adds r0, r5, #0
	adds r0, #0x78
	movs r1, #1
	adds r5, r0, #0
	bl sub_8014B02
	movs r2, #8
	ldr r1, _08038CA4 ;@ =0x0000FFFF
	str r2, [sp, #0xc]
	movs r2, #0x52
	str r2, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0
	movs r2, #0
	movs r3, #0x44
	adds r0, r5, #0
	bl sub_803F9C4
	ldrb r0, [r6, #4]
	movs r1, #1
	lsls r1, r1, #9
	adds r0, r0, r4
	adds r0, r0, r1
	ldrb r0, [r0, #0xc]
	ldr r1, _08038C7C ;@ =gUnknown_080514B8
	adds r3, r7, #0
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	movs r2, #0
	adds r0, r5, #0
	bl sub_80138E2
	movs r1, #5
	adds r0, r5, #0
	bl sub_80147FA
	ldr r0, _08038C74 ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	adds r4, #0xff
	adds r4, #0xc1
	b _08038CA8
	ALIGN
_08038C70 DCDU gUnknown_0300345C
_08038C74 DCDU gUnknown_03003448
_08038C78 DCDU gUnknown_03003458
_08038C7C DCDU gUnknown_080514B8
_08038C80 DCDU gUnknown_03003468
_08038C84 DCDU gUnknown_03003EA8
_08038C88 DCDU 0x654D6742
_08038C8C DCDU 0x6157756E
_08038C90 DCDU 0x00007072
_08038C94 DCDU gUnknown_03003450
_08038C98 DCDU gUnknown_03003E98
_08038C9C DCDU gUnknown_03003460
_08038CA0 DCDU gUnknown_08050716
_08038CA4 DCDU 0x0000FFFF
_08038CA8
	movs r2, #0
	lsls r1, r7, #1
	str r0, [r4, #0x28]
	bl sub_80007A0
	ldrb r1, [r6, #4]
	movs r3, #0x34
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1e
	muls r0, r3
	lsrs r1, r1, #2
	lsls r3, r1, #3
	adds r1, r3, r1
	adds r0, #0x14
	lsls r1, r1, #3
	add r3, sp, #0
	strh r0, [r3, #0x28]
	adds r1, #0x1c
	strh r1, [r3, #0x2a]
	ldr r0, [r4, #0x28]
	add r1, sp, #0x28
	bl sub_8040034
	ldr r0, [r4, #0x28]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #4
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _08038CF6
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_08038CF6
	ldr r0, [r4, #0x28]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x28]
	bl sub_80401E4
	bl sub_8018070
	movs r2, #0x3f
	movs r1, #8
	add r4, sp, #0x2c
	adds r0, r4, #0
	bl sub_8004784
	movs r2, #4
	movs r1, #0xc
	adds r0, r4, #0
	bl sub_80047BE
	adds r0, r4, #0
	bl sub_803D66C
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	END