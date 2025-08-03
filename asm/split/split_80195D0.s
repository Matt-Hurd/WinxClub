	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003444
	IMPORT gUnknown_03003448
	IMPORT gUnknown_03003450
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003468
	IMPORT gUnknown_03003478
	IMPORT gUnknown_03003D1C
	IMPORT gUnknown_03003D35
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EA8
	IMPORT gUnknown_080506E8
	IMPORT gUnknown_08051438
	IMPORT sub_800065C
	IMPORT sub_8000D5A
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_8001A60
	IMPORT sub_80046F8
	IMPORT sub_8004784
	IMPORT sub_80047BE
	IMPORT sub_8004FFC
	IMPORT sub_80050FA
	IMPORT sub_800B08E
	IMPORT sub_800D912
	IMPORT sub_800D9E0
	IMPORT sub_800EF2A
	IMPORT sub_80137F8
	IMPORT sub_80138E2
	IMPORT sub_80143E0
	IMPORT sub_8014436
	IMPORT sub_80147FA
	IMPORT sub_8014B02
	IMPORT sub_8018070
	IMPORT sub_80180BE
	IMPORT sub_8018386
	IMPORT sub_80189BC
	IMPORT sub_8018C48
	IMPORT sub_8028A7C
	IMPORT sub_8028C2E
	IMPORT sub_802EF0A
	IMPORT __vecmap1c__FPvT1iPFPv_v
	IMPORT __vecmap1ci__FPvT1iPFPvi_v
	IMPORT sub_803D66C
	IMPORT sub_803F9C4
	IMPORT sub_8040034
	IMPORT sub_80401E4

	thumb_func_start sub_80195D0
sub_80195D0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_80180BE
	ldr r6, _080199B8
	movs r5, #0
_080195DC
	lsls r0, r5, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _080195EC
	adds r1, r0, r4
	ldr r0, [r6]
	bl sub_8000DE6
_080195EC
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _080195DC
	movs r5, #0
_080195F8
	lsls r0, r5, #2
	adds r0, r0, r4
	movs r1, #0xf8
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _0801960E
	adds r1, r0, #0
	adds r1, #0xf8
	ldr r0, [r6]
	bl sub_8000DE6
_0801960E
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _080195F8
	movs r5, #0
_0801961A
	lsls r0, r5, #2
	movs r1, #0xff
	adds r1, #0xd5
	adds r0, r0, r4
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _08019634
	adds r1, r0, #0
	adds r1, #0xff
	adds r1, #0xd5
	ldr r0, [r6]
	bl sub_8000DE6
_08019634
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _0801961A
	movs r5, #0
_08019640
	lsls r0, r5, #2
	movs r1, #0xff
	adds r1, #0xdd
	adds r0, r0, r4
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _0801965A
	adds r1, r0, #0
	adds r1, #0xff
	adds r1, #0xdd
	ldr r0, [r6]
	bl sub_8000DE6
_0801965A
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _08019640
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801966A
sub_801966A
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r6, #0xff
	adds r6, #0xd1
	adds r4, r0, #0
	movs r3, #2
	ldrsb r0, [r6, r3]
	sub sp, #4
	ldr r1, [sp, #8]
	adds r0, r0, r1
	bmi _08019766
	ldrb r2, [r6, #3]
	cmp r2, r0
	ble _08019766
	lsls r1, r0, #0x18
	asrs r1, r1, #0x18
	movs r0, #0xd
	cmp r1, #7
	strb r1, [r6, #2]
	blt _0801969A
	cmp r1, #7
	bgt _080196DA
	cmp r2, #8
	bne _080196DA
_0801969A
	movs r7, #0
	movs r5, #0
_0801969E
	lsls r1, r5, #5
	adds r1, #0x82
	movs r0, #0xd
	cmp r5, #2
	beq _080196AA
	movs r0, #1
_080196AA
	subs r0, r1, r0
	movs r3, #2
	ldrsb r1, [r6, r3]
	lsls r3, r1, #1
	adds r1, r3, r1
	add r3, sp, #0
	strh r0, [r3]
	lsls r1, r1, #2
	adds r1, #0x30
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	strh r1, [r3, #2]
	adds r0, #0xc1
	ldr r0, [r0, #0x1c]
	mov r1, sp
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _0801969E
	b _08019712
_080196DA
	adds r1, #0xf9
	lsls r7, r1, #0x18
	lsrs r7, r7, #0x18
	movs r5, #0
_080196E2
	lsls r1, r5, #5
	adds r1, #0x82
	movs r0, #0xd
	cmp r5, #2
	beq _080196EE
	movs r0, #1
_080196EE
	subs r0, r1, r0
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0x84
	strh r0, [r3, #2]
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xc1
	ldr r0, [r0, #0x1c]
	mov r1, sp
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _080196E2
_08019712
	movs r5, #0
	b _0801975A
_08019716
	adds r0, r7, r5
	cmp r0, r1
	bhs _0801973C
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0x81
	ldrh r1, [r0, #2]
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xe9
	movs r3, #0xff
	movs r2, #0
	bl sub_80138E2
	b _08019750
_0801973C
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0xe9
	movs r2, #0
	add r1, pc, #0x270
	bl sub_80137F8
_08019750
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	bhs _08019760
_0801975A
	ldrb r1, [r6, #3]
	cmp r1, r5
	bhi _08019716
_08019760
	movs r3, #2
	ldrsb r0, [r6, r3]
	b _08019768
_08019766
	b _080197A4
_08019768
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0x81
	ldrh r0, [r0, #2]
	movs r2, #0xff
	adds r1, r4, #0
	adds r1, #8
	adds r2, #0x86
	cmp r0, r2
	bhs _0801978A
	movs r3, #0
	movs r2, #6
	adds r0, r4, #0
	bl sub_8018C48
	b _08019794
_0801978A
	movs r3, #8
	movs r2, #6
	adds r0, r4, #0
	bl sub_8018C48
_08019794
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _080197A4
	ldr r0, _080199C0
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
_080197A4
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_80197AC
sub_80197AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r4, r0, #0
	add r0, sp, #0x2c
	bl sub_80046F8
	ldr r0, _080199C4
	ldr r0, [r0]
	bl sub_80050FA
	mov r0, sp
	bl sub_8001A60
	ldr r0, _080199C8
	add r1, pc, #0x200
	ldr r0, [r0]
	bl sub_8004FFC
	movs r6, #0
	adds r3, r6, #0
	movs r2, #0
	movs r1, #7
	bl sub_802EF0A
	ldr r5, _080199DC
	str r0, [sp]
	ldr r0, [r5]
	mov r1, sp
	bl sub_800D9E0
	ldr r0, _080199E0
	ldr r0, [r0]
	bl sub_800B08E
	movs r1, #0
	ldr r0, [r5]
	bl sub_800D912
	movs r0, #0
	bl sub_80050FA
	ldr r0, _080199E4
	adds r5, r4, #0
	adds r5, #0xff
	strb r6, [r0]
	movs r0, #0xff
	adds r5, #0xd1
	adds r0, #0x81
	strb r6, [r0, r4]
	strb r6, [r5, #2]
	adds r1, r5, #0
	subs r1, #0xd0
	strb r6, [r5, #3]
	str r6, [r4]
	str r6, [r4, #4]
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
	adds r1, r4, #0
	adds r1, #8
	adds r3, r6, #0
	movs r2, #6
	adds r0, r4, #0
	bl sub_8018C48
	movs r2, #0
	ldr r1, _080199E8
	movs r0, #1
_08019846
	adds r3, r2, #0
	adds r3, #0xc6
	lsls r7, r3, #0x1b
	lsrs r7, r7, #0x1b
	adds r6, r0, #0
	lsls r6, r7
	cmp r3, #0
	beq _08019860
	lsrs r3, r3, #5
	lsls r3, r3, #2
	ldr r3, [r1, r3]
	ands r3, r6
	beq _08019874
_08019860
	ldrb r3, [r5, #3]
	adds r6, r2, #0
	adds r6, #0xa0
	adds r7, r3, #1
	lsls r3, r3, #1
	adds r3, r3, r4
	adds r3, #0xff
	adds r3, #0x81
	strb r7, [r5, #3]
	strh r6, [r3, #2]
_08019874
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0x1e
	blo _08019846
	movs r2, #0
	mov ip, r2
	movs r3, #0
_08019884
	ldr r6, _080199EC
	lsls r2, r3, #1
	ldrh r2, [r6, r2]
	mov r0, ip
	lsls r0, r0, #0x18
	add r2, ip
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0
	lsrs r0, r0, #0x18
	mov ip, r2
	b _08019940
_0801989C
	lsls r2, r0, #2
	adds r1, r2, #0
	adds r1, #0xff
	adds r1, #0x55
	lsls r7, r1, #0x1b
	lsrs r7, r7, #0x1b
	movs r6, #1
	lsls r6, r7
	cmp r1, #0
	beq _080198BC
	lsrs r1, r1, #5
	ldr r7, _080199E8
	lsls r1, r1, #2
	ldr r1, [r7, r1]
	ands r1, r6
	beq _080198C0
_080198BC
	movs r6, #1
	b _080198C2
_080198C0
	movs r6, #0
_080198C2
	adds r1, r2, #0
	adds r1, #0xff
	adds r1, #0x56
	lsls r7, r1, #0x1b
	mov lr, r6
	movs r6, #1
	lsrs r7, r7, #0x1b
	lsls r6, r7
	cmp r1, #0
	beq _080198E2
	lsrs r1, r1, #5
	ldr r7, _080199E8
	lsls r1, r1, #2
	ldr r1, [r7, r1]
	ands r1, r6
	beq _080198E6
_080198E2
	movs r1, #1
	b _080198E8
_080198E6
	movs r1, #0
_080198E8
	mov r6, lr
	orrs r6, r1
	adds r1, r2, #0
	adds r1, #0xff
	adds r1, #0x57
	lsls r7, r1, #0x1b
	mov lr, r6
	movs r6, #1
	lsrs r7, r7, #0x1b
	lsls r6, r7
	cmp r1, #0
	beq _0801990C
	lsrs r1, r1, #5
	ldr r7, _080199E8
	lsls r1, r1, #2
	ldr r1, [r7, r1]
	ands r1, r6
	beq _08019910
_0801990C
	movs r1, #1
	b _08019912
_08019910
	movs r1, #0
_08019912
	adds r2, #0xff
	adds r2, #0x58
	mov r6, lr
	orrs r1, r6
	lsls r7, r2, #0x1b
	lsrs r7, r7, #0x1b
	movs r6, #1
	lsls r6, r7
	cmp r2, #0
	beq _08019932
	lsrs r2, r2, #5
	ldr r7, _080199E8
	lsls r2, r2, #2
	ldr r2, [r7, r2]
	ands r2, r6
	beq _08019936
_08019932
	movs r2, #1
	b _08019938
_08019936
	movs r2, #0
_08019938
	adds r0, #1
	lsls r0, r0, #0x18
	orrs r1, r2
	lsrs r0, r0, #0x18
_08019940
	cmp r0, ip
	bhs _0801994A
	cmp r1, #0
	beq _0801989C
	b _0801994E
_0801994A
	cmp r1, #0
	beq _08019964
_0801994E
	ldrb r0, [r5, #3]
	adds r1, r3, #0
	adds r1, #0xff
	adds r2, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r0, #0xff
	adds r1, #0x86
	adds r0, #0x81
	strb r2, [r5, #3]
	strh r1, [r0, #2]
_08019964
	adds r3, #1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	cmp r3, #0xa
	blo _08019884
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq _08019A58
	ldr r0, _080199B8
	ldr r0, [r0]
	bl sub_800116A
	adds r5, r4, #0
	adds r5, #0xff
	adds r5, #0xc1
	str r0, [r5, #0x14]
	ldr r1, _080199F0
	bl sub_800065C
	movs r0, #0xd6
	add r3, sp, #0
	strh r0, [r3, #0x28]
	movs r0, #0x30
	strh r0, [r3, #0x2a]
	ldr r0, [r5, #0x14]
	add r1, sp, #0x28
	bl sub_8040034
	ldr r0, [r5, #0x14]
	movs r7, #3
	ldrh r1, [r0, #0x2a]
	lsls r7, r7, #0xa
	movs r2, #0
	bics r1, r7
	orrs r1, r2
	strh r1, [r0, #0x2a]
	movs r6, #4
	strb r6, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _080199FA
	b _080199F4
	ALIGN
_080199B8 DCDU gUnknown_03003448
_080199BC
	DCB 0x20, 0x00, 0x00, 0x00
_080199C0 DCDU gUnknown_0300345C
_080199C4 DCDU gUnknown_03003468
_080199C8 DCDU gUnknown_03003EA8
_080199CC
	DCB 0x42, 0x67, 0x4D, 0x65
	DCB 0x6E, 0x75, 0x49, 0x6E, 0x76, 0x65, 0x6E, 0x74, 0x00, 0x00, 0x00, 0x00
_080199DC DCDU gUnknown_03003450
_080199E0 DCDU gUnknown_03003E98
_080199E4 DCDU gUnknown_03003D35
_080199E8 DCDU gUnknown_03003478
_080199EC DCDU gUnknown_08051438
_080199F0 DCDU 0x00000C87
_080199F4
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_080199FA
	movs r1, #1
	ldr r0, [r5, #0x14]
	bl sub_80401E4
	ldr r0, _08019DE4
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, _08019DE8
	str r0, [r5, #0x18]
	bl sub_800065C
	movs r0, #0xd6
	add r3, sp, #0
	strh r0, [r3, #0x28]
	movs r0, #0x86
	strh r0, [r3, #0x2a]
	ldr r0, [r5, #0x18]
	add r1, sp, #0x28
	bl sub_8040034
	ldr r0, [r5, #0x18]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r7, #0
	bics r1, r2
	movs r2, #0
	orrs r1, r2
	strh r1, [r0, #0x2a]
	strb r6, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _08019A44
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_08019A44
	movs r1, #1
	ldr r0, [r5, #0x18]
	bl sub_80401E4
	movs r5, #0
_08019A4E
	movs r2, #0xff
	movs r1, #0x10
	movs r0, #0x50
	str r0, [sp, #4]
	b _08019A5A
_08019A58
	b _08019B24
_08019A5A
	str r2, [sp, #0xc]
	lsls r2, r5, #1
	lsls r0, r5, #4
	subs r0, r0, r5
	adds r2, r2, r5
	lsls r2, r2, #2
	lsls r0, r0, #3
	adds r6, r0, r4
	adds r2, #0x2e
	str r2, [sp]
	adds r6, #0xff
	str r1, [sp, #8]
	movs r1, #0
	adds r6, #0xe9
	movs r2, #0
	movs r3, #0x82
	adds r0, r6, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r6, #0
	bl sub_80147FA
	movs r1, #1
	adds r0, r6, #0
	bl sub_8014B02
	add r1, pc, #0x0
	subs r1, #0xd8
	movs r2, #0
	adds r0, r6, #0
	bl sub_80137F8
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo _08019A4E
	movs r5, #0
_08019AA8
	ldr r0, _08019DE4
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r5, #2
	adds r6, r1, r4
	adds r6, #0xff
	adds r6, #0xc1
	str r0, [r6, #0x1c]
	ldr r1, _08019DEC
	bl sub_800065C
	lsls r1, r5, #5
	adds r1, #0x82
	movs r0, #0xd
	cmp r5, #2
	beq _08019ACC
	movs r0, #1
_08019ACC
	subs r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #0x28]
	movs r0, #0x30
	strh r0, [r3, #0x2a]
	ldr r0, [r6, #0x1c]
	add r1, sp, #0x28
	bl sub_8040034
	ldr r0, [r6, #0x1c]
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
	ldr r0, [r6, #0x1c]
	ldrh r1, [r0, #0x2a]
	bics r1, r2
	orrs r1, r7
	strh r1, [r0, #0x2a]
	movs r2, #5
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _08019B10
	orrs r1, r3
	str r1, [r0]
_08019B10
	movs r1, #1
	ldr r0, [r6, #0x1c]
	bl sub_80401E4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _08019AA8
	b _08019B52
_08019B24
	movs r0, #0
	movs r1, #0
_08019B28
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r2, #0xff
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, #0xc1
	lsrs r0, r0, #0x18
	cmp r0, #2
	str r1, [r2, #0x14]
	blo _08019B28
	movs r0, #0
_08019B3E
	lsls r2, r0, #2
	adds r2, r2, r4
	adds r2, #0xff
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, #0xc1
	lsrs r0, r0, #0x18
	cmp r0, #3
	str r1, [r2, #0x1c]
	blo _08019B3E
_08019B52
	movs r2, #4
	movs r0, #0x68
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	movs r2, #0x88
	movs r0, #0xb5
	movs r1, #0xc
	str r1, [sp, #8]
	lsls r0, r0, #3
	str r2, [sp]
	movs r2, #0
	adds r0, r4, r0
	movs r1, #0
	movs r3, #0x10
	adds r5, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r5, #0
	bl sub_80147FA
	ldr r0, _08019DF0
	movs r3, #0xff
	ldr r0, [r0]
	movs r2, #0
	adds r0, #0xb0
	ldrb r1, [r0, #9]
	adds r1, #0x95
	adds r0, r5, #0
	bl sub_80138E2
	movs r1, #0
	adds r0, r4, #0
	bl sub_801966A
	ldr r0, _08019DF4
	movs r1, #0x13
	ldr r0, [r0]
	lsls r1, r1, #8
	adds r1, r0, r1
	ldrb r2, [r1, #4]
	cmp r2, #0
	bne _08019BB2
	ldrb r1, [r1, #5]
	cmp r1, #2
	beq _08019BB2
	cmp r1, #4
	bne _08019BBA
_08019BB2
	movs r2, #0
	movs r1, #3
	bl sub_8028A7C
_08019BBA
	bl sub_8018070
	movs r2, #0x3f
	movs r1, #8
	add r4, sp, #0x2c
	adds r0, r4, #0
	bl sub_8004784
	movs r2, #8
	movs r1, #8
	adds r0, r4, #0
	bl sub_80047BE
	adds r0, r4, #0
	bl sub_803D66C
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8019BE2
sub_8019BE2
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x50
	add r4, sp, #0x10
	ldr r5, _08019DF8
	adds r1, r4, #0
	adds r1, #0xf8
	adds r0, r4, #0
	movs r2, #0x78
	adds r3, r5, #0
	adds r0, #8
	bl __vecmap1c__FPvT1iPFPv_v
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #1
	movs r3, #3
	lsls r3, r3, #9
	add r3, sp
	str r0, [r3, #0x40]
	bl sub_80143E0
	movs r0, #0xb5
	lsls r0, r0, #3
	adds r1, r4, r0
	movs r3, #3
	lsls r3, r3, #9
	adds r0, r4, #0
	adds r0, #0xff
	add r3, sp
	str r1, [r3, #0x3c]
	adds r0, #0xe9
	movs r2, #0x78
	adds r3, r5, #0
	bl __vecmap1c__FPvT1iPFPv_v
	movs r3, #3
	lsls r3, r3, #9
	add r3, sp
	ldr r0, [r3, #0x3c]
	bl sub_80143E0
	adds r0, r4, #0
	bl sub_80197AC
	movs r3, #3
	lsls r3, r3, #9
	add r3, sp
	add r0, sp, #0x1e0
	str r0, [r3, #0x38]
	add r1, sp, #0xd0
	str r1, [r3, #0x34]
	add r1, sp, #0x170
	str r1, [r3, #0x30]
	add r7, sp, #0x1d0
	add r5, sp, #0x190
_08019C56
	ldr r0, _08019DFC
	movs r2, #0
	ldr r0, [r0]
	adds r4, r2, #0
	ldr r1, [r0, #0x14]
	lsls r3, r1, #0x1c
	bmi _08019C66
	ldrh r4, [r0, #8]
_08019C66
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x1c
	bmi _08019C70
	ldrh r2, [r0, #4]
_08019C70
	movs r3, #3
	lsls r3, r3, #9
	add r3, sp
	ldr r1, [r3, #0x30]
	lsls r6, r2, #0x10
	ldrh r0, [r1, #0x1c]
	ldrh r1, [r1, #0x1e]
	lsrs r6, r6, #0x10
	str r1, [sp, #4]
	ldr r1, [r3, #0x34]
	ldr r1, [r1, #0x38]
	str r1, [sp, #8]
	ldr r1, [r3, #0x34]
	ldr r1, [r1, #0x3c]
	str r1, [sp, #0xc]
	lsls r1, r6, #0x16
	lsrs r1, r1, #0x1f
	adds r0, r1, r0
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08019E00
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
	beq _08019CBE
	ldr r0, [sp, #8]
	ldr r1, [sp]
	bl sub_800065C
_08019CBE
	lsls r0, r6, #0x17
	ldr r1, [sp, #4]
	lsrs r0, r0, #0x1f
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, _08019E00
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
	beq _08019CF0
	ldr r0, [sp, #0xc]
	ldr r1, [sp]
	bl sub_800065C
_08019CF0
	lsls r0, r4, #0x16
	bpl _08019CFA
	movs r0, #2
	strb r0, [r5]
	b _08019D76
_08019CFA
	lsls r0, r4, #0x17
	bpl _08019D04
	movs r0, #1
	strb r0, [r5]
	b _08019D76
_08019D04
	lsls r0, r4, #0x1e
	bpl _08019D0E
	movs r0, #3
	strb r0, [r5]
	b _08019D76
_08019D0E
	lsls r0, r4, #0x1d
	bpl _08019D18
	movs r0, #3
	strb r0, [r5]
	b _08019D76
_08019D18
	lsls r0, r4, #0x19
	bpl _08019D28
	movs r1, #0
	mvns r1, r1
	add r0, sp, #0x10
	bl sub_801966A
	b _08019D76
_08019D28
	lsls r0, r4, #0x18
	bpl _08019D36
	movs r1, #1
	add r0, sp, #0x10
	bl sub_801966A
	b _08019D76
_08019D36
	movs r3, #3
	lsls r3, r3, #9
	add r3, sp
	ldr r1, [r3, #0x38]
	add r0, sp, #0x10
	ldrb r1, [r1, #3]
	cmp r1, #0
	beq _08019D76
	lsls r1, r4, #0x1f
	bpl _08019D76
	adds r1, r0, #0
	ldr r0, [r3, #0x38]
	movs r3, #2
	ldrsb r0, [r0, r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	adds r0, #0xff
	adds r0, #0x81
	ldrh r0, [r0, #2]
	movs r1, #0xff
	adds r1, #0x86
	cmp r0, r1
	blo _08019D76
	adds r0, #0x7b
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bhs _08019D76
	ldr r1, _08019E04
	strb r0, [r1]
	movs r0, #6
	strb r0, [r5]
_08019D76
	movs r3, #3
	lsls r3, r3, #9
	add r3, sp
	ldr r0, [r3, #0x38]
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _08019DDC
	lsls r0, r6, #0x19
	ldr r1, _08019E08
	lsrs r0, r0, #0x1f
	adds r4, r0, r1
	ldr r1, [r7, #0x14]
	ldr r0, _08019E00
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
	cmp r0, r4
	beq _08019DB2
	adds r1, r4, #0
	ldr r0, [r7, #0x14]
	bl sub_800065C
_08019DB2
	lsls r0, r6, #0x18
	ldr r1, _08019DE8
	lsrs r0, r0, #0x1f
	adds r4, r0, r1
	ldr r0, _08019E00
	ldr r6, [r7, #0x18]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r4
	beq _08019DDC
	adds r1, r4, #0
	ldr r0, [r7, #0x18]
	bl sub_800065C
_08019DDC
	bl sub_800EF2A
	b _08019E0C
	ALIGN
_08019DE4 DCDU gUnknown_03003448
_08019DE8 DCDU 0x00000C81
_08019DEC DCDU 0x00000CA8
_08019DF0 DCDU gPlayerEntity
_08019DF4 DCDU gUnknown_0300345C
_08019DF8 DCDU sub_80143E0
_08019DFC DCDU gUnknown_03003444
_08019E00 DCDU gUnknown_03003EA0
_08019E04 DCDU gUnknown_03003D1C
_08019E08 DCDU 0x00000C87
_08019E0C
	ldrb r0, [r5]
	cmp r0, #0
	bne _08019E14
	b _08019C56
_08019E14
	movs r3, #3
	lsls r3, r3, #9
	add r3, sp
	ldr r1, [r3, #0x30]
	ldrb r0, [r5]
	ldrh r2, [r1, #0x1a]
	ldr r1, _08019ED4
	add r4, sp, #0x10
	ldrb r5, [r1, r2]
	ldr r2, [r3, #0x30]
	ldr r6, _08019ED8
	ldrh r2, [r2, #0x18]
	cmp r0, #1
	ldrb r7, [r1, r2]
	beq _08019E58
	cmp r0, #2
	beq _08019E46
	cmp r0, #3
	beq _08019E6A
	cmp r0, #6
	bne _08019E70
	movs r0, #0xb
	bl sub_8018386
	b _08019E70
_08019E46
	ldr r0, [r6]
	adds r0, #0x40
	bl sub_8028C2E
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_8018386
	b _08019E7A
_08019E58
	ldr r0, [r6]
	adds r0, #0x40
	bl sub_8028C2E
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	bl sub_8018386
	b _08019E7A
_08019E6A
	movs r0, #0x11
	bl sub_8018386
_08019E70
	movs r2, #0xff
	movs r1, #4
	ldr r0, [r6]
	bl sub_8028A7C
_08019E7A
	adds r0, r4, #0
	bl sub_80195D0
	movs r1, #0
	movs r3, #3
	lsls r3, r3, #9
	add r3, sp
	ldr r0, [r3, #0x3c]
	bl sub_8014436
	ldr r5, _08019EDC
	adds r1, r4, #0
	adds r1, #0xff
	movs r2, #0x77
	movs r0, #0x53
	lsls r0, r0, #4
	mvns r2, r2
	adds r1, #0x71
	adds r3, r5, #0
	adds r0, r4, r0
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r1, #0
	movs r3, #3
	lsls r3, r3, #9
	add r3, sp
	ldr r0, [r3, #0x40]
	bl sub_8014436
	movs r2, #0x77
	adds r1, r4, #0
	subs r1, #0x70
	mvns r2, r2
	adds r3, r5, #0
	adds r0, r4, #0
	adds r0, #0x80
	bl __vecmap1ci__FPvT1iPFPvi_v
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x50
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08019ED4 DCDU gUnknown_080506E8
_08019ED8 DCDU gUnknown_0300345C
_08019EDC DCDU sub_8014436
	END