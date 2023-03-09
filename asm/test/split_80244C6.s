    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003448
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EA0
	IMPORT sub_8000324
	IMPORT sub_800065C
	IMPORT sub_8000D5A
	IMPORT sub_800116A
	IMPORT sub_8040034
	IMPORT sub_80401C0
	IMPORT sub_80401E4
	IMPORT sub_804025C

	non_word_aligned_thumb_func_start sub_80244C6
sub_80244C6 ;@ 0x080244C6
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r5, #0
	sub sp, #4
_080244CE
	ldr r1, _08024788 ;@ =gPlayerEntity
	lsls r0, r5, #1
	ldr r1, [r1]
	adds r0, r0, r5
	adds r1, #0xa0
	ldrb r1, [r1, #0xc]
	lsls r0, r0, #1
	cmp r0, r1
	bhs _080244E8
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080244EA
_080244E8
	movs r0, #0
_080244EA
	ldr r1, _0802478C ;@ =0x000008A4
	cmp r0, #6
	bhs _080244F4
	subs r7, r1, #6
	adds r1, r0, r7
_080244F4
	lsls r7, r1, #0x10
	lsrs r7, r7, #0x10
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r1, [r6, #0x28]
	ldr r0, _08024790 ;@ =gUnknown_03003EA0
	str r1, [sp]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [sp]
	ldr r1, [r1, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	beq _08024522
	adds r1, r7, #0
	ldr r0, [r6, #0x28]
	bl sub_800065C
_08024522
	ldr r1, _08024788 ;@ =gPlayerEntity
	ldr r0, [r1]
	adds r0, #0xb0
	ldrb r0, [r0, #4]
	cmp r0, r5
	bls _0802453C
	ldr r0, [r6, #0x28]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _0802453C
	movs r1, #1
	bl sub_80401E4
_0802453C
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo _080244CE
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _08024596
	ldr r0, _08024794 ;@ =gUnknown_03003E98
	ldr r5, _08024790 ;@ =gUnknown_03003EA0
	ldr r0, [r0]
	ldr r7, _08024798 ;@ =0x0000089E
	ldr r0, [r0, #8]
	adds r0, #0x78
	str r0, [r4]
	movs r0, #0
	strb r0, [r4, #4]
	b _0802456E
_08024560
	ldrb r0, [r4, #4]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #4]
	cmp r0, #8
	bhs _0802458C
_0802456E
	ldrb r0, [r4, #4]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r6, [r0, #0x28]
	ldr r0, [r5]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r6, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	bne _08024560
_0802458C
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _08024596
	adds r0, #0xff
	strb r0, [r4, #4]
_08024596
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802459E
sub_802459E ;@ 0x0802459E
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0xc0
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, [r0, #0x1c]
	cmp r1, #0
	beq _08024692
	cmp r0, #0
	bne _08024692
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	movs r6, #0
_080245BA
	ldr r0, _0802479C ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	lsls r1, r6, #2
	adds r7, r1, r4
	adds r7, #0xc0
	str r0, [r7, #0x1c]
	ldr r1, _080247A0 ;@ =0x00000892
	bl sub_800065C
	movs r0, #0x1f
	mvns r0, r0
	add r3, sp, #0
	strh r0, [r3, #4]
	strh r0, [r3, #6]
	ldr r0, [r7, #0x1c]
	add r1, sp, #4
	bl sub_8040034
	movs r1, #0x12
	ldr r0, [r7, #0x1c]
	bl sub_80401C0
	movs r1, #1
	cmp r6, #8
	ldr r5, [r7, #0x1c]
	bhs _080245F4
	movs r1, #0
_080245F4
	ldrh r2, [r5, #0x28]
	movs r3, #1
	lsls r3, r3, #0xd
	bics r2, r3
	lsls r1, r1, #0xd
	orrs r1, r2
	strh r1, [r5, #0x28]
	adds r0, r5, #0
	bl sub_8000324
	ldr r0, [r5]
	lsls r0, r0, #0x1e
	bmi _08024614
	adds r0, r5, #0
	bl sub_804025C
_08024614
	ldr r0, [r5]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r7, #0x1c]
	movs r1, #1
	bl sub_80401E4
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #0x10
	blo _080245BA
	movs r5, #0
_08024630
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _08024646
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _08024646
	movs r1, #0
	bl sub_80401E4
_08024646
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08024630
	movs r5, #0
_08024652
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _08024668
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _08024668
	movs r1, #0
	bl sub_80401E4
_08024668
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08024652
	movs r5, #0
_08024674
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x60]
	cmp r0, #0
	beq _0802468A
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _0802468A
	movs r1, #0
	bl sub_80401E4
_0802468A
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	b _08024694
_08024692
	b _08024778
_08024694
	cmp r5, #6
	blo _08024674
	movs r5, #0
_0802469A
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x78]
	cmp r0, #0
	beq _080246B0
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _080246B0
	movs r1, #0
	bl sub_80401E4
_080246B0
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo _0802469A
	movs r5, #0
_080246BC
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _080246D4
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _080246D4
	movs r1, #0
	bl sub_80401E4
_080246D4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo _080246BC
	movs r5, #0
_080246E0
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _080246F8
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _080246F8
	movs r1, #0
	bl sub_80401E4
_080246F8
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _080246E0
	movs r5, #0
_08024704
	lsls r0, r5, #2
	adds r0, r0, r4
	adds r0, #0x80
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _0802471C
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _0802471C
	movs r1, #0
	bl sub_80401E4
_0802471C
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08024704
	movs r5, #0
_08024728
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _0802473E
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _0802473E
	movs r1, #0
	bl sub_80401E4
_0802473E
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo _08024728
	ldr r0, [sp, #8]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0802475C
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _0802475C
	movs r1, #0
	bl sub_80401E4
_0802475C
	ldr r0, [sp, #8]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08024770
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _08024770
	movs r1, #0
	bl sub_80401E4
_08024770
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08024778
	cmp r0, #0
	beq _08024770
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x59
	strb r0, [r4, #0xd]
	b _08024770
	ALIGN
_08024788 DCDU gPlayerEntity
_0802478C DCDU 0x000008A4
_08024790 DCDU gUnknown_03003EA0
_08024794 DCDU gUnknown_03003E98
_08024798 DCDU 0x0000089E
_0802479C DCDU gUnknown_03003448
_080247A0 DCDU 0x00000892
