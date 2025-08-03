    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003478
	IMPORT gUnknown_030034F8
	IMPORT gUnknown_03003E88
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_0803E314
	IMPORT gUnknown_08050654
	IMPORT sub_80003F4
	IMPORT sub_800065C
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_800EF2A
	IMPORT sub_80138E2
	IMPORT sub_80143E0
	IMPORT sub_8014436
	IMPORT sub_80147FA
	IMPORT sub_8017444
	IMPORT sub_8017450
	IMPORT sub_80177D8
	IMPORT sub_801CBDE
	IMPORT sub_8024D30
	IMPORT sub_8028C2E
	IMPORT __call_via_r1
	IMPORT __vecmap1c__FPvT1iPFPv_v
	IMPORT __vecmap1ci__FPvT1iPFPvi_v
	IMPORT maybeMallocEWRAM
	IMPORT sub_803DA18
	IMPORT sub_803F9C4
	IMPORT sub_8040034
	IMPORT sub_80401C0
	IMPORT sub_80401E4
	IMPORT sub_804025C

	thumb_func_start sub_80154DC
sub_80154DC ;@ 0x080154DC
	push {r4, lr}
	adds r4, r0, #0
	bne _080154F6
	movs r0, #0x6d
	lsls r0, r0, #3
	bl maybeMallocEWRAM
	adds r4, r0, #0
	bne _080154F6
	adds r0, r4, #0
_080154F0
	pop {r4}
	pop {r3}
	bx r3
_080154F6
	adds r0, r4, #0
	bl sub_8017444
	ldr r0, _080158AC ;@ =_0803E314
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x80
	bl sub_80143E0
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #5
	bl sub_80143E0
	movs r0, #0x1b
	lsls r0, r0, #5
	adds r1, r4, r0
	adds r0, r4, #0
	adds r0, #0xff
	movs r2, #0x78
	adds r0, #0x81
	ldr r3, _080158B0 ;@ =sub_80143E0
	bl __vecmap1c__FPvT1iPFPv_v
	movs r0, #3
	strh r0, [r4, #4]
	ldr r0, _080158B4 ;@ =gUnknown_03003E88
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80177D8
	movs r1, #0
	movs r0, #0xf8
	strb r1, [r0, r4]
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #0x61
	strh r1, [r0, #0x1c]
	mvns r2, r1
	strh r2, [r0, #0x1e]
	movs r0, #0xff
	adds r0, #1
	str r1, [r0, r4]
	movs r0, #0
_0801554E
	lsls r2, r0, #2
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, r2, r4
	lsrs r0, r0, #0x18
	cmp r0, #8
	str r1, [r2, #8]
	blo _0801554E
	movs r0, #0
_08015560
	lsls r2, r0, #2
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, r2, r4
	lsrs r0, r0, #0x18
	cmp r0, #2
	str r1, [r2, #0x28]
	blo _08015560
	movs r0, #0
_08015572
	lsls r2, r0, #2
	adds r0, #1
	lsls r0, r0, #0x18
	adds r2, r2, r4
	lsrs r0, r0, #0x18
	cmp r0, #3
	str r1, [r2, #0x30]
	blo _08015572
	adds r0, r4, #0
	str r1, [r4, #0x3c]
	b _080154F0

	thumb_func_start sub_8015588
sub_8015588 ;@ 0x08015588
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080158AC ;@ =_0803E314
	adds r5, r1, #0
	adds r1, r4, #0
	str r0, [r4]
	movs r0, #0x5d
	adds r1, #0xff
	movs r2, #0x77
	mvns r2, r2
	adds r1, #9
	lsls r0, r0, #3
	adds r0, r4, r0
	ldr r3, _080158B8 ;@ =sub_8014436
	bl __vecmap1ci__FPvT1iPFPvi_v
	adds r0, r4, #0
	adds r0, #0xff
	movs r1, #0
	adds r0, #5
	bl sub_8014436
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0x80
	bl sub_8014436
	movs r1, #0
	adds r0, r4, #0
	bl sub_8017450
	cmp r5, #0
	beq _080155D0
	adds r0, r4, #0
	bl sub_803DA18
_080155D0
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80155D6
sub_80155D6 ;@ 0x080155D6
	push {r3, r4, r5, r6, r7, lr}
	movs r5, #0
	adds r4, r0, #0
	movs r7, #0
_080155DE
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _080155F6
	ldr r0, _080158BC ;@ =gUnknown_03003EB8
	adds r1, r6, #0
	adds r1, #8
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #8]
_080155F6
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo _080155DE
	movs r5, #0
_08015602
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq _0801561A
	ldr r0, _080158BC ;@ =gUnknown_03003EB8
	adds r1, r6, #0
	adds r1, #0x28
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x28]
_0801561A
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _08015602
	ldr r6, _080158BC ;@ =gUnknown_03003EB8
	movs r5, #0
_08015628
	lsls r0, r5, #2
	adds r7, r0, r4
	ldr r0, [r7, #0x30]
	cmp r0, #0
	beq _08015640
	adds r1, r7, #0
	adds r1, #0x30
	ldr r0, [r6]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r7, #0x30]
_08015640
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _08015628
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0801565A
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r6]
	bl sub_8000DE6
_0801565A
	movs r5, #0
_0801565C
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0x81
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl __call_via_r1
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo _0801565C
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl __call_via_r1
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #5
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r1, _080158C0 ;@ =gUnknown_03003478
	movs r0, #4
	ldr r1, [r1]
	ands r1, r0
	bne _080156AE
	ldr r0, _080158C4 ;@ =gUnknown_03003458
	movs r1, #0
	ldr r0, [r0]
	bl sub_801CBDE
_080156AE
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_80156B4
sub_80156B4 ;@ 0x080156B4
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r4, r0, #0
	movs r0, #1
	movs r1, #0xf8
	sub sp, #0x10
	strb r0, [r1, r4]
	movs r1, #0xfa
	movs r3, #0
	strh r3, [r1, r4]
	cmp r7, #0
	bne _080156CE
	ldr r7, _080158C8 ;@ =0x00001136
_080156CE
	movs r6, #0
_080156D0
	ldr r0, _080158BC ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r6, #2
	adds r5, r1, r4
	ldr r2, _080158CC ;@ =gUnknown_08050654
	str r0, [r5, #8]
	lsls r1, r6, #1
	ldrh r1, [r2, r1]
	bl sub_800065C
	movs r0, #0xf0
	add r3, sp, #0
	strh r0, [r3, #0xc]
	movs r0, #0xa0
	strh r0, [r3, #0xe]
	ldr r0, [r5, #8]
	add r1, sp, #0xc
	bl sub_8040034
	ldr r0, [r5, #8]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #8
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0801571A
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0801571A
	movs r1, #1
	ldr r0, [r5, #8]
	bl sub_80401E4
	cmp r6, #7
	bne _0801574E
	ldr r5, [r4, #0x24]
	movs r2, #1
	ldrh r1, [r5, #0x28]
	lsls r2, r2, #0xc
	bics r1, r2
	orrs r1, r2
	strh r1, [r5, #0x28]
	adds r0, r5, #0
	bl sub_80003F4
	ldr r0, [r5]
	lsls r0, r0, #0x1e
	bmi _08015746
	adds r0, r5, #0
	bl sub_804025C
_08015746
	ldr r0, [r5]
	movs r2, #0x80
	orrs r0, r2
	str r0, [r5]
_0801574E
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #8
	blo _080156D0
	movs r5, #0
_0801575A
	ldr r0, _080158BC ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r5, #2
	adds r6, r1, r4
	str r0, [r6, #0x28]
	adds r1, r7, r5
	bl sub_800065C
	movs r0, #0xf0
	add r3, sp, #0
	strh r0, [r3, #0xc]
	movs r0, #0xa0
	strh r0, [r3, #0xe]
	ldr r0, [r6, #0x28]
	add r1, sp, #0xc
	bl sub_8040034
	ldr r0, [r6, #0x28]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #7
	bics r1, r2
	movs r2, #0
	orrs r1, r2
	strh r1, [r0, #0x2a]
	strb r3, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _080157A0
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_080157A0
	movs r1, #1
	ldr r0, [r6, #0x28]
	bl sub_80401E4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _0801575A
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _08015832
	movs r5, #0
_080157BA
	ldr r0, _080158BC ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r5, #2
	adds r7, r1, r4
	str r0, [r7, #0x30]
	ldr r1, _080158D0 ;@ =0x0000088D
	bl sub_800065C
	movs r0, #0xf0
	add r3, sp, #0
	strh r0, [r3, #0xc]
	movs r0, #0xa0
	strh r0, [r3, #0xe]
	ldr r0, [r7, #0x30]
	add r1, sp, #0xc
	bl sub_8040034
	movs r1, #5
	cmp r5, #0
	beq _080157E8
	movs r1, #6
_080157E8
	ldr r0, [r7, #0x30]
	bl sub_80401C0
	movs r1, #1
	cmp r5, #2
	ldr r6, [r7, #0x30]
	beq _080157F8
	movs r1, #0
_080157F8
	ldrh r2, [r6, #0x28]
	movs r3, #1
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r1, r1, #0xc
	orrs r1, r2
	strh r1, [r6, #0x28]
	adds r0, r6, #0
	bl sub_80003F4
	ldr r0, [r6]
	lsls r0, r0, #0x1e
	bmi _08015818
	adds r0, r6, #0
	bl sub_804025C
_08015818
	ldr r0, [r6]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r6]
	ldr r0, [r7, #0x30]
	movs r1, #1
	bl sub_80401E4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _080157BA
_08015832
	bl sub_800EF2A
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _08015872
	movs r2, #4
	movs r0, #0x48
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	movs r2, #0xa0
	adds r0, r4, #0
	movs r1, #0x10
	str r1, [sp, #8]
	adds r0, #0xff
	str r2, [sp]
	movs r2, #0
	adds r0, #5
	movs r1, #0
	movs r3, #0xf0
	adds r4, r0, #0
	bl sub_803F9C4
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, #0
	ldr r1, [sp, #0x18]
	bl sub_80138E2
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
_08015872
	ldr r0, _080158D4 ;@ =gUnknown_030034F8
	ldr r0, [r0]
	cmp r0, #0
	beq _08015884
	movs r3, #0
	movs r2, #0
	ldr r1, _080158D8 ;@ =0x0000FFFE
	bl sub_8024D30
_08015884
	ldr r0, _080158DC ;@ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0xe0
	bl sub_8028C2E
	ldr r1, _080158C0 ;@ =gUnknown_03003478
	movs r0, #4
	ldr r1, [r1]
	ands r1, r0
	beq _080158A2
	ldr r0, _080158C4 ;@ =gUnknown_03003458
	movs r1, #1
	ldr r0, [r0]
	bl sub_801CBDE
_080158A2
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_080158AC DCDU gUnknown_0803E314
_080158B0 DCDU sub_80143E0
_080158B4 DCDU gUnknown_03003E88
_080158B8 DCDU sub_8014436
_080158BC DCDU gUnknown_03003EB8
_080158C0 DCDU gUnknown_03003478
_080158C4 DCDU gUnknown_03003458
_080158C8 DCDU 0x00001136
_080158CC DCDU gUnknown_08050654
_080158D0 DCDU 0x0000088D
_080158D4 DCDU gUnknown_030034F8
_080158D8 DCDU 0x0000FFFE
_080158DC DCDU gUnknown_0300345C
	END