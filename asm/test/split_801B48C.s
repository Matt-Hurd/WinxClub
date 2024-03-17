    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003448
	IMPORT gUnknown_03003450
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003468
	IMPORT gUnknown_03003478
	IMPORT gUnknown_03003D20
	IMPORT gUnknown_03003EA8
	IMPORT gUnknown_08050C54
	IMPORT gUnknown_08050E84
	IMPORT sub_80015E6
	IMPORT sub_8001A60
	IMPORT sub_8001C22
	IMPORT sub_8002004
	IMPORT sub_8002010
	IMPORT sub_800242C
	IMPORT sub_8004FFC
	IMPORT sub_80050FA
	IMPORT sub_800D912
	IMPORT sub_800D9E0
	IMPORT sub_800E178
	IMPORT sub_8017620
	IMPORT sub_8017862
	IMPORT sub_8017884
	IMPORT sub_801B212
	IMPORT sub_801B332
	IMPORT sub_8028A7C
	IMPORT sub_802EF0A
	IMPORT sub_803FC68
	IMPORT sub_803FD5C
	IMPORT sub_803FEF8
	IMPORT sub_803FF24
	IMPORT sub_8040504

	thumb_func_start sub_801B48C
sub_801B48C ;@ 0x0801B48C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r5, _0801B870 ;@ =gUnknown_03003450
	adds r4, r1, #0
	ldr r0, [r5]
	bl sub_8002004
	movs r3, #0x58
	ldr r2, [r5]
	muls r3, r6
	adds r2, r3, r2
	movs r3, #0x11
	lsls r3, r3, #7
	adds r2, r2, r3
	ldr r3, _0801B874 ;@ =gUnknown_03003458
	adds r1, r0, #0
	ldr r5, [r3]
	ldr r1, [r1, #4]
	ldr r0, [r0]
	ldr r2, [r2, #0x10]
	ldr r6, [r5, #0xc]
	movs r7, #7
	lsls r7, r7, #0x10
	adds r2, #0xc
	cmp r6, #0
	beq _0801B506
	ldr r5, [r5, #4]
	subs r5, r0, r5
	subs r5, r6, r5
	NEGS r6, r7
	cmp r5, r6
	bge _0801B4D0
	adds r5, r6, #0
	b _0801B4D6
_0801B4D0
	cmp r5, r7
	ble _0801B4D6
	adds r5, r7, #0
_0801B4D6
	ldr r6, [r4]
	subs r5, r6, r5
	movs r6, #3
	lsls r6, r6, #0x1d
	cmp r5, r6
	str r5, [r4]
	blt _0801B4EC
	ldr r6, [r3]
	ldr r6, [r6, #0xc]
	cmp r6, #0
	bgt _0801B4FC
_0801B4EC
	movs r6, #5
	lsls r6, r6, #0x1d
	cmp r5, r6
	bgt _0801B510
	ldr r5, [r3]
	ldr r5, [r5, #0xc]
	cmp r5, #0
	bge _0801B510
_0801B4FC
	ldr r5, [r3]
	ldr r6, [r5, #0xc]
	NEGS r6, r6
	str r6, [r5, #0xc]
	b _0801B510
_0801B506
	ldrh r5, [r2]
	lsls r5, r5, #0x13
	subs r5, #1
	ands r5, r0
	str r5, [r4]
_0801B510
	ldr r3, [r3]
	ldr r5, [r3, #0x10]
	cmp r5, #0
	beq _0801B558
	ldr r2, [r3, #8]
	subs r2, r1, r2
	subs r2, r5, r2
	ldr r5, _0801B878 ;@ =0xFFF90000
	cmp r2, r5
	bge _0801B528
	adds r2, r5, #0
	b _0801B52E
_0801B528
	cmp r2, r7
	ble _0801B52E
	adds r2, r7, #0
_0801B52E
	ldr r5, [r4, #4]
	subs r2, r5, r2
	str r2, [r4, #4]
	movs r4, #7
	lsls r4, r4, #0x1c
	cmp r2, r4
	blt _0801B542
	ldr r4, [r3, #0x10]
	cmp r4, #0
	bgt _0801B550
_0801B542
	movs r4, #9
	lsls r4, r4, #0x1c
	cmp r2, r4
	bgt _0801B562
	ldr r2, [r3, #0x10]
	cmp r2, #0
	bge _0801B562
_0801B550
	ldr r2, [r3, #0x10]
	NEGS r2, r2
	str r2, [r3, #0x10]
	b _0801B562
_0801B558
	ldrh r2, [r2, #2]
	lsls r2, r2, #0x13
	subs r2, #1
	ands r2, r1
	str r2, [r4, #4]
_0801B562
	adds r3, #4
	stm r3!, {r0, r1}
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_801B56C
sub_801B56C ;@ 0x0801B56C
	push {r4, r5, r6, r7, lr}
	movs r7, #0x16
	ldr r6, _0801B87C ;@ =gPlayerEntity
	adds r4, r0, #0
	movs r5, #1
	sub sp, #0x4c
_0801B578
	ldr r0, [r6]
	adds r2, r7, #0
	adds r0, #0x90
	ldrb r0, [r0]
	subs r2, #0x16
	adds r1, r5, #0
	cmp r0, r2
	beq _0801B58A
	movs r1, #0
_0801B58A
	adds r0, r7, #0
	bl sub_803FEF8
	adds r7, #1
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x18
	cmp r7, #0x32
	blo _0801B578
	ldr r0, _0801B880 ;@ =gUnknown_03003D20
	ldrb r1, [r0]
	ldr r0, _0801B884 ;@ =gUnknown_0300345C
	cmp r1, #0
	beq _0801B5B0
	movs r2, #1
	movs r1, #1
	ldr r0, [r0]
	bl sub_8028A7C
	b _0801B5C8
_0801B5B0
	ldr r1, [r6]
	ldr r2, _0801B888 ;@ =gUnknown_08050E84
	adds r1, #0x90
	ldrb r1, [r1]
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	ldr r0, [r0]
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	movs r1, #1
	bl sub_8028A7C
_0801B5C8
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	movs r2, #3
	ldr r0, [r0]
	lsls r2, r2, #9
	adds r1, r0, #4
	adds r1, r1, r2
	ldr r1, [r1, #0x1c]
	ldr r3, _0801B890 ;@ =0x00002EE0
	adds r7, r1, #0
	adds r7, #0x10
	movs r2, #1
	add r1, pc, #0x2B4 ;@ =_0801B894
	bl sub_803FC68
	movs r2, #0
	ldr r6, _0801B87C ;@ =gPlayerEntity
	str r2, [sp]
	adds r5, r0, #0
	ldr r0, [r6]
	ldr r2, _0801B8AC ;@ =gUnknown_08050C54
	adds r0, #0x90
	ldrb r0, [r0]
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #2
	ldrh r1, [r2, r0]
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	movs r3, #1
	adds r2, r5, #0
	ldr r0, [r0]
	bl sub_8017884
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	lsls r6, r5, #2
	ldr r0, [r0]
	movs r1, #5
	lsls r1, r1, #7
	adds r0, r6, r0
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0801B638
_0801B61C
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8017620
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #7
	adds r0, r6, r0
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _0801B61C
_0801B638
	movs r2, #0
	str r2, [sp]
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	adds r2, r5, #0
	movs r3, #1
	movs r1, #0xcf
	ldr r0, [r0]
	bl sub_8017884
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #7
	adds r0, r6, r0
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0801B678
_0801B65C
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8017620
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #7
	adds r0, r6, r0
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _0801B65C
_0801B678
	ldr r0, _0801B87C ;@ =gPlayerEntity
	movs r1, #0x90
	ldr r0, [r0]
	ldr r2, _0801B8AC ;@ =gUnknown_08050C54
	ldrb r1, [r1, r0]
	adds r0, #0x80
	ldrb r0, [r0, #4]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	cmp r1, #0
	beq _0801B6D4
	movs r2, #0
	str r2, [sp]
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	movs r3, #1
	adds r2, r5, #0
	ldr r0, [r0]
	bl sub_8017884
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #7
	adds r0, r6, r0
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0801B6D4
_0801B6B8
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8017620
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #7
	adds r0, r6, r0
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _0801B6B8
_0801B6D4
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	ldr r1, [r0]
	lsls r0, r5, #1
	str r1, [sp, #0x48]
	adds r1, r0, r1
	movs r0, #0xb
	lsls r0, r0, #7
	adds r0, r1, r0
	ldrh r1, [r0, #0x18]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	strh r1, [r0, #0x18]
	ldr r0, [sp, #0x48]
	adds r1, r5, #0
	bl sub_8017862
	ldr r1, [sp, #0x48]
	movs r2, #9
	lsls r2, r2, #7
	adds r1, r6, r1
	adds r1, r1, r2
	movs r0, #0
	str r0, [r1, #0x18]
	ldr r0, _0801B88C ;@ =gUnknown_03003454
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8017620
	ldr r0, _0801B8B0 ;@ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	ldr r0, _0801B870 ;@ =gUnknown_03003450
	movs r1, #1
	ldr r0, [r0]
	bl sub_800D912
	ldr r0, _0801B888 ;@ =gUnknown_08050E84
	add r5, sp, #0x30
	adds r0, #0x38
	ldm r0!, {r1, r2, r3}
	stm r5!, {r1, r2, r3}
	ldm r0!, {r0, r1, r2, r3}
	stm r5!, {r0, r1, r2, r3}
	ldr r0, _0801B87C ;@ =gPlayerEntity
	ldr r0, [r0]
	adds r0, #0x90
	ldrb r0, [r0]
	cmp r0, #0x1c
	bhs _0801B772
	add r3, pc, #0x4 ;@ =_0801B740
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0801B740
	DCB 0x0D
_0801B741
	DCB 0x0D
_0801B742
	DCB 0x0D
_0801B743
	DCB 0x0F
_0801B744
	DCB 0x0F
_0801B745
	DCB 0x0F
_0801B746
	DCB 0x0F
_0801B747
	DCB 0x11
_0801B748
	DCB 0x11
_0801B749
	DCB 0x11
_0801B74A
	DCB 0x11
_0801B74B
	DCB 0x11
_0801B74C
	DCB 0x13
_0801B74D
	DCB 0x13
_0801B74E
	DCB 0x13
_0801B74F
	DCB 0x13
_0801B750
	DCB 0x13
_0801B751
	DCB 0x13
_0801B752
	DCB 0x15
_0801B753
	DCB 0x15
_0801B754
	DCB 0x15
_0801B755
	DCB 0x15
_0801B756
	DCB 0x17
_0801B757
	DCB 0x17
_0801B758
	DCB 0x17
_0801B759
	DCB 0x17
_0801B75A
	DCB 0x17
_0801B75B
	DCB 0x17
loc_801b75c
	movs r5, #0
	b _0801B772
loc_801b760
	movs r5, #5
	b _0801B772
loc_801b764
	movs r5, #1
	b _0801B772
loc_801b768
	movs r5, #6
	b _0801B772
loc_801b76c
	movs r5, #3
	b _0801B772
loc_801b770
	movs r5, #2
_0801B772
	add r0, sp, #4
	bl sub_8001A60
	ldr r0, _0801B8B4 ;@ =gUnknown_03003EA8
	lsls r1, r5, #2
	add r2, sp, #0x30
	ldr r0, [r0]
	ldr r1, [r2, r1]
	bl sub_8004FFC
	movs r6, #0
	adds r3, r6, #0
	movs r2, #0
	movs r1, #7
	bl sub_802EF0A
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #0x28]
	ldr r0, _0801B87C ;@ =gPlayerEntity
	add r3, sp, #0
	strb r6, [r3, #0x14]
	ldr r0, [r0]
	ldr r1, _0801B888 ;@ =gUnknown_08050E84
	adds r0, #0x90
	ldrb r0, [r0]
	adds r1, #0xca
	lsls r0, r0, #2
	adds r0, r0, r1
	str r0, [sp, #0x18]
	movs r0, #0
	b _0801B7C0
_0801B7B2
	add r3, sp, #0
	ldrb r1, [r3, #0x14]
	adds r0, #1
	adds r1, #1
	strb r1, [r3, #0x14]
	cmp r0, #4
	bhs _0801B7C8
_0801B7C0
	ldr r1, [sp, #0x18]
	ldrb r1, [r1, r0]
	cmp r1, #0xff
	bne _0801B7B2
_0801B7C8
	ldr r5, _0801B870 ;@ =gUnknown_03003450
	add r1, sp, #4
	ldr r0, [r5]
	bl sub_800D9E0
	movs r3, #6
	ldrsh r2, [r7, r3]
	movs r3, #4
	str r2, [sp]
	ldrsh r0, [r7, r3]
	movs r3, #2
	ldrsh r2, [r7, r3]
	movs r3, #0
	ldrsh r1, [r7, r3]
	adds r3, r0, #0
	adds r0, r5, #0
	ldr r0, [r0]
	bl sub_803FD5C
	movs r0, #0
	bl sub_80050FA
	ldr r1, [r4, #0x20]
	ldr r0, [r1, #0x30]
	adds r1, #0x58
	ldr r2, [r1]
	str r2, [sp, #0x44]
	ldr r1, [r1, #4]
	str r1, [sp, #0x48]
	add r1, sp, #0x44
	bl sub_803FF24
	movs r0, #5
	lsls r0, r0, #8
	adds r0, r4, r0
	ldr r1, [r0, #0x1c]
	movs r2, #0xff
	adds r2, #1
	bics r1, r2
	str r1, [r0, #0x1c]
	movs r3, #0
	str r3, [r4, #8]
	str r6, [r4, #4]
	str r3, [r4, #0xc]
	str r3, [r4, #0x10]
	strh r3, [r4, #0x1c]
	adds r3, r4, #0
	adds r3, #0x10
	movs r7, #6
	strb r7, [r3, #0xe]
	ldr r7, _0801B87C ;@ =gPlayerEntity
	ldr r7, [r7]
	adds r7, #0x90
	ldrb r7, [r7]
	cmp r7, #0xa
	beq _0801B91A
	bgt _0801B8CE
	cmp r7, #3
	beq _0801B91C
	cmp r7, #4
	beq _0801B91E
	cmp r7, #5
	beq _0801B920
	cmp r7, #6
	bne _0801B922
	ldr r0, _0801B8B8 ;@ =0x04000008
	ldrh r1, [r0]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	adds r1, #2
	strh r1, [r0]
	adds r0, #2
	ldrh r1, [r0]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	adds r1, #1
	strh r1, [r0]
	adds r0, #2
	ldrh r1, [r0]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	strh r1, [r0]
	adds r3, r6, #0
	b _0801B8BC
	ALIGN
_0801B870 DCDU gUnknown_03003450
_0801B874 DCDU gUnknown_03003458
_0801B878 DCDU 0xFFF90000
_0801B87C DCDU gPlayerEntity
_0801B880 DCDU gUnknown_03003D20
_0801B884 DCDU gUnknown_0300345C
_0801B888 DCDU gUnknown_08050E84
_0801B88C DCDU gUnknown_03003454
_0801B890 DCDU 0x00002EE0
_0801B894 DCDU 0x67697254
_0801B898 DCDU 0x20726567
_0801B89C DCDU 0x74696E49
_0801B8A0 DCDU 0x696C6169
_0801B8A4 DCDU 0x69746173
_0801B8A8 DCDU 0x00006E6F
_0801B8AC DCDU gUnknown_08050C54
_0801B8B0 DCDU gUnknown_03003468
_0801B8B4 DCDU gUnknown_03003EA8
_0801B8B8 DCDU 0x04000008
_0801B8BC
	ldr r2, _0801BBC8 ;@ =sub_801B48C
	movs r1, #2
	ldr r0, [r5]
	bl sub_8002010
	movs r0, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0xc]
	b _0801BA66
_0801B8CE
	cmp r7, #0xb
	beq _0801B9BA
	cmp r7, #0xd
	beq _0801B9BA
	cmp r7, #0x16
	bne _0801B922
	ldr r0, _0801BBCC ;@ =0x04000008
	ldr r7, _0801BBD0 ;@ =gUnknown_03003478
	ldrh r1, [r0]
	movs r2, #0x10
	lsrs r1, r1, #2
	lsls r1, r1, #2
	adds r1, #2
	strh r1, [r0]
	adds r0, #2
	ldrh r1, [r0]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	adds r1, #1
	strh r1, [r0]
	adds r0, #2
	ldrh r1, [r0]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	strh r1, [r0]
	ldr r7, [r7, #0x10]
	movs r1, #4
	ands r7, r2
	bne _0801B9D8
	strh r1, [r4, #0x1c]
	movs r0, #0xa
	strb r0, [r3, #0xe]
	lsls r2, r1, #0x18
	ldrh r0, [r2]
	lsls r1, r1, #8
	bics r0, r1
	strh r0, [r2]
	b _0801BA66
_0801B91A
	b _0801B9FA
_0801B91C
	b _0801B924
_0801B91E
	b _0801B98A
_0801B920
	b _0801B9C4
_0801B922
	b _0801BA4E
_0801B924
	orrs r1, r2
	str r1, [r0, #0x1c]
	ldr r1, _0801BBCC ;@ =0x04000008
	ldr r2, _0801BBC8 ;@ =sub_801B48C
	ldrh r0, [r1]
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r0, #2
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r1]
	adds r7, r1, #2
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r0, #1
	strh r0, [r1]
	ldrh r0, [r7]
	lsrs r0, r0, #2
	lsls r0, r0, #2
	strh r0, [r7]
	adds r3, r6, #0
	movs r1, #2
	ldr r0, [r5]
	bl sub_8002010
	subs r0, r7, #4
	ldrh r1, [r0]
	movs r2, #3
	orrs r1, r2
	strh r1, [r0]
	adds r0, #2
	ldrh r1, [r0]
	bics r1, r2
	adds r1, #1
	strh r1, [r0]
	ldrh r0, [r7]
	bics r0, r2
	adds r0, #2
	strh r0, [r7]
	ldr r0, _0801BBD4 ;@ =0xFFFFC000
	str r0, [r4, #0xc]
	NEGS r0, r0
	str r0, [r4, #0x10]
	movs r0, #4
	strh r0, [r4, #0x1c]
	lsls r2, r0, #0x18
	ldrh r0, [r2]
	lsrs r1, r2, #0x10
	bics r0, r1
	strh r0, [r2]
	b _0801BA66
_0801B98A
	ldr r0, _0801BBCC ;@ =0x04000008
	ldr r2, _0801BBC8 ;@ =sub_801B48C
	ldrh r1, [r0]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	adds r1, #2
	strh r1, [r0]
	adds r0, #2
	ldrh r1, [r0]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	adds r1, #1
	strh r1, [r0]
	adds r0, #2
	ldrh r1, [r0]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	strh r1, [r0]
	adds r3, r6, #0
	movs r1, #2
	ldr r0, [r5]
	bl sub_8002010
	b _0801B9BC
_0801B9BA
	b _0801B9DA
_0801B9BC
	movs r0, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0xc]
	b _0801BA66
_0801B9C4
	adds r3, r6, #0
	movs r1, #3
	ldr r2, _0801BBC8 ;@ =sub_801B48C
	ldr r0, [r5]
	bl sub_8002010
	movs r0, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0xc]
	b _0801BA66
_0801B9D8
	b _0801BA44
_0801B9DA
	ldr r0, _0801BBCC ;@ =0x04000008
	movs r2, #3
	ldrh r1, [r0]
	orrs r1, r2
	strh r1, [r0]
	adds r0, #2
	ldrh r1, [r0]
	bics r1, r2
	adds r1, #2
	strh r1, [r0]
	adds r0, #2
	ldrh r1, [r0]
	bics r1, r2
	adds r1, #1
	strh r1, [r0]
	b _0801BA66
_0801B9FA
	ldr r2, _0801BBCC ;@ =0x04000008
	movs r7, #3
	ldrh r0, [r2]
	adds r3, r2, #2
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r0, #2
	strh r0, [r2]
	ldrh r0, [r2, #2]
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r0, #1
	strh r0, [r2, #2]
	ldrh r1, [r2, #4]
	adds r0, r2, #4
	lsrs r1, r1, #2
	lsls r1, r1, #2
	strh r1, [r2, #4]
	ldrh r1, [r2]
	orrs r1, r7
	strh r1, [r2]
	ldrh r1, [r3]
	bics r1, r7
	adds r1, #1
	strh r1, [r3]
	ldrh r1, [r0]
	bics r1, r7
	adds r1, #2
	strh r1, [r0]
	movs r0, #4
	strh r0, [r4, #0x1c]
	lsls r2, r0, #0x18
	ldrh r0, [r2]
	lsrs r1, r2, #0x10
	bics r0, r1
	strh r0, [r2]
	b _0801BA66
_0801BA44
	ldrh r1, [r0]
	movs r2, #3
	orrs r1, r2
	strh r1, [r0]
	b _0801BA66
_0801BA4E
	ldr r0, _0801BBCC ;@ =0x04000008
	ldrh r1, [r0]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	adds r1, #2
	strh r1, [r0]
	adds r0, #2
	ldrh r1, [r0]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	adds r1, #1
	strh r1, [r0]
_0801BA66
	movs r6, #0
	str r6, [sp, #0x44]
	str r6, [sp, #0x48]
	ldr r0, [r5]
	add r1, sp, #0x44
	bl sub_800242C
	b _0801BA7C
_0801BA76
	ldr r0, [r5]
	bl sub_800E178
_0801BA7C
	ldr r0, [r5]
	bl sub_8002004
	ldr r0, [r0]
	cmp r0, #0
	bne _0801BA76
	ldr r0, [r5]
	bl sub_8002004
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0801BA76
	ldr r1, [r4, #0x20]
	ldr r0, [r5]
	movs r2, #0x27
	lsls r2, r2, #6
	ldr r1, [r1, #0x2c]
	adds r0, r0, r2
	str r1, [r0, #0xc]
	adds r0, r4, #0
	bl sub_801B332
	movs r1, #4
	add r3, sp, #0x40
	ldr r0, [r5]
	strb r1, [r3, #8]
	movs r1, #3
	strb r1, [r3, #9]
	movs r1, #0x9d
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r1, [r3, #8]
	strb r1, [r0]
	ldrb r1, [r3, #9]
	strb r1, [r0, #1]
_0801BAC2
	ldr r0, [r5]
	bl sub_8002004
	ldm r0!, {r6, r7}
	ldr r0, [r5]
	bl sub_8001C22
	ldr r0, [r5]
	bl sub_800E178
	ldr r0, [r5]
	bl sub_8002004
	ldr r0, [r0]
	cmp r0, r6
	bne _0801BAC2
	ldr r0, [r5]
	bl sub_8002004
	ldr r0, [r0, #4]
	cmp r0, r7
	bne _0801BAC2
	movs r6, #0
	strb r6, [r4]
	strb r6, [r4, #1]
	ldr r2, [r5]
	adds r1, r6, #0
	ldr r2, [r2, #8]
	movs r0, #0
	cmp r2, #0
	beq _0801BB02
	ldrb r1, [r2]
_0801BB02
	cmp r1, #0
	bls _0801BB4A
	adds r1, r5, #0
	movs r2, #0x11
	lsls r2, r2, #7
_0801BB0C
	movs r6, #0x58
	ldr r7, [r1]
	muls r6, r0
	adds r3, r6, r7
	adds r3, r3, r2
	ldr r3, [r3, #0x10]
	ldrh r3, [r3, #0xc]
	ldrb r7, [r4]
	cmp r3, r7
	bls _0801BB22
	strb r3, [r4]
_0801BB22
	ldr r3, [r1]
	adds r3, r6, r3
	adds r3, r3, r2
	ldr r3, [r3, #0x10]
	ldrh r3, [r3, #0xe]
	ldrb r6, [r4, #1]
	cmp r3, r6
	bls _0801BB34
	strb r3, [r4, #1]
_0801BB34
	ldr r6, [r1]
	adds r0, #1
	lsls r0, r0, #0x18
	ldr r6, [r6, #8]
	lsrs r0, r0, #0x18
	movs r3, #0
	cmp r6, #0
	beq _0801BB46
	ldrb r3, [r6]
_0801BB46
	cmp r3, r0
	bhi _0801BB0C
_0801BB4A
	ldr r0, [r5]
	movs r1, #0x13
	lsls r1, r1, #7
	adds r1, r0, r1
	ldr r6, [r1, #0x20]
	adds r5, r0, #0
	cmp r6, #0
	bne _0801BB5E
	mvns r1, r6
	b _0801BB6A
_0801BB5E
	movs r1, #0x21
	lsls r1, r1, #6
	adds r0, r0, r1
	subs r0, r6, r0
	bl sub_8040504
_0801BB6A
	movs r0, #0x58
	muls r0, r1
	movs r1, #0x11
	lsls r1, r1, #7
	adds r0, r0, r5
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	ldrh r0, [r0, #0xc]
	lsls r7, r0, #0x10
	cmp r6, #0
	bne _0801BB84
	mvns r1, r6
	b _0801BB90
_0801BB84
	movs r1, #0x21
	lsls r1, r1, #6
	adds r0, r5, r1
	subs r0, r6, r0
	bl sub_8040504
_0801BB90
	movs r0, #0x58
	muls r0, r1
	movs r1, #0x11
	lsls r1, r1, #7
	adds r0, r0, r5
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	lsls r1, r7, #3
	ldrh r0, [r0, #0xe]
	lsls r0, r0, #0x13
	str r0, [r4, #0x18]
	str r1, [r4, #0x14]
	movs r0, #5
	lsls r0, r0, #0x18
	movs r1, #0xff
	adds r1, #0xb1
	str r0, [r1, r4]
	ldr r0, _0801BBDC ;@ =gUnknown_03003448
	ldr r2, [r4, #0x20]
	ldr r0, [r0]
	ldr r1, _0801BBD8 ;@ =sub_801B212
	bl sub_80015E6
	add sp, #0x4c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0801BBC8 DCDU sub_801B48C
_0801BBCC DCDU 0x04000008
_0801BBD0 DCDU gUnknown_03003478
_0801BBD4 DCDU 0xFFFFC000
_0801BBD8 DCDU sub_801B212
_0801BBDC DCDU gUnknown_03003448
	END