    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003440
	IMPORT gUnknown_03003448
	IMPORT gUnknown_03003454
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003460
	IMPORT gUnknown_03003468
	IMPORT gUnknown_03003478
	IMPORT gUnknown_03003D34
	IMPORT gUnknown_03003D35
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_080510C0
	IMPORT gUnknown_080513DC
	IMPORT sub_8000DE6
	IMPORT sub_80046F8
	IMPORT sub_8004784
	IMPORT sub_80047BE
	IMPORT sub_8004FFC
	IMPORT sub_80050FA
	IMPORT sub_8005106
	IMPORT sub_800B058
	IMPORT sub_800B72A
	IMPORT sub_800E53C
	IMPORT sub_800E71C
	IMPORT sub_800EF2A
	IMPORT sub_800EF60
	IMPORT sub_8017620
	IMPORT sub_8017B9A
	IMPORT sub_8017CA0
	IMPORT sub_8018070
	IMPORT sub_80180BE
	IMPORT sub_8018386
	IMPORT sub_8018C48
	IMPORT sub_8028A7C
	IMPORT sub_803D66C
	IMPORT sub_803DA9C

	thumb_func_start sub_8031830
sub_8031830 ;@ 0x08031830
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08031B28 ;@ =gUnknown_0300345C
	movs r2, #0xff
	movs r1, #4
	ldr r0, [r0]
	bl sub_8028A7C
	bl sub_80180BE
	ldrb r2, [r4, #4]
	ldr r0, _08031B2C ;@ =gUnknown_03003454
	ldr r1, [r0]
	lsls r3, r2, #1
	adds r5, r3, r1
	movs r3, #0xb
	lsls r3, r3, #7
	adds r3, r5, r3
	ldrh r5, [r3, #0x18]
	lsls r2, r2, #2
	adds r1, r2, r1
	lsrs r5, r5, #1
	lsls r5, r5, #1
	strh r5, [r3, #0x18]
	movs r2, #9
	lsls r2, r2, #7
	movs r3, #0
	adds r1, r1, r2
	str r3, [r1, #0x18]
	ldrb r1, [r4, #4]
	ldr r0, [r0]
	bl sub_8017620
	ldr r5, _08031B30 ;@ =gUnknown_03003448
	adds r1, r4, #0
	adds r1, #8
	ldr r0, [r5]
	bl sub_8000DE6
	adds r1, r4, #0
	adds r1, #0xc
	ldr r0, [r5]
	bl sub_8000DE6
	ldr r4, _08031B34 ;@ =gUnknown_03003460
	ldr r0, [r4]
	bl sub_800B72A
	cmp r0, #0
	beq _080318A2
_08031894
	bl sub_800EF2A
	ldr r0, [r4]
	bl sub_800B72A
	cmp r0, #0
	bne _08031894
_080318A2
	movs r0, #1
	bl sub_800E53C
	movs r0, #0
	bl sub_800E71C
	ldr r0, _08031B38 ;@ =gUnknown_03003D34
	ldrb r0, [r0]
	bl sub_8018386
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_80318BC
sub_80318BC ;@ 0x080318BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r4, r0, #0
	add r0, sp, #0x20
	bl sub_80046F8
	movs r0, #1
	bl sub_800E53C
	movs r0, #3
	bl sub_800E71C
	ldr r0, _08031B3C ;@ =gUnknown_03003E98
	movs r1, #3
	ldr r0, [r0]
	bl sub_800B058
	ldr r5, _08031B2C ;@ =gUnknown_03003454
	ldr r0, [r5]
	bl sub_8017B9A
	ldr r6, _08031B40 ;@ =gUnknown_03003D35
	ldr r1, _08031B44 ;@ =gUnknown_080510C0
	ldrb r0, [r6]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_800EF60
	adds r0, r5, #0
	ldr r0, [r0]
	bl sub_8017CA0
	movs r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x10
	adds r0, r4, #0
	movs r2, #6
	adds r0, #8
	ldr r3, _08031B48 ;@ =0x000004F5
	bl sub_8018C48
	adds r0, r6, #0
	ldrb r0, [r0]
	movs r3, #1
	lsls r1, r0, #2
	adds r2, r1, #0
	adds r2, #0xff
	adds r2, #0x55
	lsls r0, r2, #0x1b
	lsrs r0, r0, #0x1b
	lsls r3, r0
	ldr r0, _08031B4C ;@ =gUnknown_03003478
	cmp r2, #0
	beq _08031936
	lsrs r2, r2, #5
	lsls r2, r2, #2
	ldr r2, [r0, r2]
	ands r2, r3
	beq _0803193A
_08031936
	movs r2, #1
	b _0803193C
_0803193A
	movs r2, #0
_0803193C
	adds r3, r1, #0
	adds r3, #0xff
	adds r3, #0x56
	str r2, [sp, #0x10]
	movs r2, #1
	lsls r6, r3, #0x1b
	lsrs r6, r6, #0x1b
	adds r7, r2, #0
	lsls r7, r6
	cmp r3, #0
	beq _0803195C
	lsrs r3, r3, #5
	lsls r3, r3, #2
	ldr r3, [r0, r3]
	ands r3, r7
	beq _08031960
_0803195C
	movs r3, #1
	b _08031962
_08031960
	movs r3, #0
_08031962
	str r3, [sp, #0x14]
	adds r3, r1, #0
	adds r3, #0xff
	adds r3, #0x57
	lsls r7, r3, #0x1b
	lsrs r7, r7, #0x1b
	adds r6, r2, #0
	lsls r6, r7
	cmp r3, #0
	beq _08031980
	lsrs r3, r3, #5
	lsls r3, r3, #2
	ldr r3, [r0, r3]
	ands r3, r6
	beq _08031984
_08031980
	movs r3, #1
	b _08031986
_08031984
	movs r3, #0
_08031986
	adds r1, #0xff
	adds r1, #0x58
	str r3, [sp, #0x18]
	lsls r3, r1, #0x1b
	lsrs r3, r3, #0x1b
	movs r2, #1
	lsls r2, r3
	cmp r1, #0
	beq _080319A2
	lsrs r1, r1, #5
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	ands r0, r2
	beq _080319A6
_080319A2
	movs r0, #1
	b _080319A8
_080319A6
	movs r0, #0
_080319A8
	ldr r6, _08031B64 ;@ =gUnknown_03003440
	str r0, [sp, #0x1c]
	movs r7, #3
	lsls r7, r7, #0x19
	ldr r0, [r6]
	add r1, pc, #0x19C ;@ =_08031B50
	bl sub_8004FFC
	str r0, [sp, #0xc]
	ldr r0, [r6]
	add r1, pc, #0x1A8 ;@ =_08031B68
	bl sub_8004FFC
	adds r6, r0, #0
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _080319DC
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _080319DC
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _080319DC
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _080319E0
_080319DC
	movs r0, #0xcc
	b _080319E8
_080319E0
	ldr r0, _08031B40 ;@ =gUnknown_03003D35
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, #0xce
_080319E8
	strh r0, [r4]
	ldr r2, [r5]
	add r0, pc, #0x18C ;@ =_08031B7C
	str r0, [sp, #8]
	movs r5, #4
	str r2, [sp, #4]
	b _08031A00
_080319F6
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #0x40
	bhs _08031A0C
_08031A00
	ldr r2, [sp, #4]
	lsls r0, r5, #2
	adds r0, r0, r2
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _080319F6
_08031A0C
	ldr r0, _08031B8C ;@ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #0x1d
	movs r3, #0
	movs r2, #0
	lsls r0, r0, #5
	bl sub_803DA9C
	ldr r2, [sp, #4]
	lsls r1, r5, #2
	adds r1, r1, r2
	str r1, [sp, #0x28]
	str r0, [r1, #0x18]
	movs r0, #0
	bl sub_80050FA
	ldr r2, [sp, #4]
	lsls r0, r5, #1
	adds r0, r0, r2
	movs r2, #0xff
	movs r1, #0x1d
	lsls r1, r1, #5
	adds r2, #0x99
	strh r1, [r2, r0]
	movs r2, #0xff
	adds r2, #0x19
	movs r1, #0
	strh r1, [r2, r0]
	movs r2, #1
	lsls r2, r2, #9
	adds r2, r0, r2
	movs r3, #0xb
	lsls r3, r3, #7
	adds r0, r0, r3
	strh r1, [r2, #0x18]
	movs r2, #1
	strh r2, [r0, #0x18]
	ldr r2, [sp, #0x28]
	subs r3, #0xff
	subs r3, #1
	ldr r0, [sp, #8]
	adds r2, r2, r3
	str r0, [r2, #0x18]
	movs r0, #0x61
	ldr r2, [sp, #4]
	lsls r0, r0, #4
	adds r0, r2, r0
	ldrb r2, [r0, #8]
	adds r2, #1
	strb r2, [r0, #8]
	strb r5, [r4, #4]
	movs r0, #0xc7
	strh r0, [r4, #2]
	movs r0, #0
	add r2, sp, #0x10
_08031A84
	lsls r3, r0, #2
	ldr r3, [r2, r3]
	cmp r3, #0
	beq _08031A92
	ldrh r3, [r4, #2]
	adds r3, #1
	strh r3, [r4, #2]
_08031A92
	adds r0, #1
	cmp r0, #4
	blo _08031A84
	ldrh r0, [r4, #2]
	cmp r0, #0xcb
	bne _08031AA0
	strh r1, [r4, #2]
_08031AA0
	movs r3, #0x1f
	lsls r3, r3, #0xa
	movs r1, #0
	ldr r4, _08031B90 ;@ =0x000083E0
	movs r5, #0x4b
	lsls r5, r5, #9
_08031AAC
	ldr r0, [sp, #0xc]
	ldrh r0, [r0]
	cmp r0, #0
	bne _08031AB6
	b _08031ACC
_08031AB6
	cmp r0, r3
	bne _08031ABE
	movs r0, #1
	b _08031ACC
_08031ABE
	cmp r0, r4
	bne _08031AC6
	movs r0, #2
	b _08031ACC
_08031AC6
	cmp r0, #0x1f
	bne _08031AD4
	movs r0, #3
_08031ACC
	lsls r0, r0, #2
	ldr r0, [r2, r0]
	cmp r0, #0
	bne _08031AD8
_08031AD4
	ldrh r0, [r6]
	strh r0, [r7]
_08031AD8
	ldr r0, [sp, #0xc]
	adds r7, #2
	adds r0, #2
	adds r6, #2
	adds r1, #1
	cmp r1, r5
	str r0, [sp, #0xc]
	blo _08031AAC
	ldr r0, _08031B40 ;@ =gUnknown_03003D35
	ldr r1, _08031B94 ;@ =gUnknown_080513DC
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldrh r0, [r1, r0]
	lsls r2, r0, #0x18
	ldr r0, _08031B28 ;@ =gUnknown_0300345C
	lsrs r2, r2, #0x18
	movs r1, #3
	ldr r0, [r0]
	bl sub_8028A7C
	bl sub_8018070
	movs r2, #0x3f
	movs r1, #0x3f
	add r4, sp, #0x20
	adds r0, r4, #0
	bl sub_8004784
	movs r2, #8
	movs r1, #8
	adds r0, r4, #0
	bl sub_80047BE
	adds r0, r4, #0
	bl sub_803D66C
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08031B28 DCDU gUnknown_0300345C
_08031B2C DCDU gUnknown_03003454
_08031B30 DCDU gUnknown_03003448
_08031B34 DCDU gUnknown_03003460
_08031B38 DCDU gUnknown_03003D34
_08031B3C DCDU gUnknown_03003E98
_08031B40 DCDU gUnknown_03003D35
_08031B44 DCDU gUnknown_080510C0
_08031B48 DCDU 0x000004F5
_08031B4C DCDU gUnknown_03003478
_08031B50 DCDU 0x654D6742
_08031B54 DCDU 0x7550756E
_08031B58 DCDU 0x656C7A7A
_08031B5C DCDU 0x6E69622E
_08031B60 DCDU 0x00000000
_08031B64 DCDU gUnknown_03003440
_08031B68 DCDU 0x654D6742
_08031B6C DCDU 0x7550756E
_08031B70 DCDU 0x656C7A7A
_08031B74 DCDU 0x2E636950
_08031B78 DCDU 0x006E6962
_08031B7C DCDU 0x776F6853
_08031B80 DCDU 0x63695020
_08031B84 DCDU 0x65727574
_08031B88 DCDU 0x00000000
_08031B8C DCDU gUnknown_03003468
_08031B90 DCDU 0x000083E0
_08031B94 DCDU gUnknown_080513DC
	END