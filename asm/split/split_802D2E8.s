    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_030032C0
	IMPORT gUnknown_030032E8
	IMPORT gUnknown_03003304
	IMPORT gUnknown_03003328
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003D20
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_0803ED28
	IMPORT sub_800065C
	IMPORT sub_8000D5A
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_80012F0
	IMPORT sub_8023A70
	IMPORT sub_8028C2E
	IMPORT sub_802E418
	IMPORT sub_802E4AA
	IMPORT __call_via_r1
	IMPORT sub_803D9F8
	IMPORT sub_803DA18
	IMPORT sub_803FF24
	IMPORT sub_8040148
	IMPORT sub_80401E4
	IMPORT sub_8040594


	thumb_func_start sub_802D2E8
sub_802D2E8 ;@ 0x0802D2E8
	push {r4, lr}
	adds r4, r0, #0
	bne _0802D300
	movs r0, #0x4c
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0802D300
	adds r0, r4, #0
_0802D2FA
	pop {r4}
	pop {r3}
	bx r3
_0802D300
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _0802D6C0 ;@ =gUnknown_0803ED28
	movs r1, #0x1e
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x48]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	bics r0, r1
	lsls r1, r1, #4
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #0xf
	lsls r1, r1, #0xf
	bics r0, r1
	str r0, [r4, #0x48]
	adds r0, r4, #0
	b _0802D2FA

	non_word_aligned_thumb_func_start sub_802D32E
sub_802D32E ;@ 0x0802D32E
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802D6C0 ;@ =gUnknown_0803ED28
	adds r5, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0x48]
	lsls r0, r0, #0x16
	bpl _0802D350
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _0802D350
	ldr r0, _0802D6C4 ;@ =gUnknown_03003EB8
	adds r1, r4, #0
	adds r1, #0x44
	ldr r0, [r0]
	bl sub_8000DE6
_0802D350
	ldr r1, [r4, #0x14]
	ldr r2, [r1]
	lsls r0, r2, #0x14
	lsrs r3, r0, #0x1f
	beq _0802D36C
	asrs r0, r0, #0x1f
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x14
	bics r2, r3
	orrs r0, r2
	str r0, [r1]
_0802D36C
	movs r1, #0
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq _0802D37E
	adds r0, r4, #0
	bl sub_803DA18
_0802D37E
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802D384
sub_802D384 ;@ 0x0802D384
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	sub sp, #0xc
	str r1, [r4, #0x10]
	adds r0, r3, #0
	ldr r3, [r1, #0x2c]
	movs r7, #0xff
	str r3, [r4, #0x14]
	ldr r5, [r1, #0x30]
	lsls r7, r7, #0xb
	str r5, [r4, #0x18]
	ldrb r5, [r3, #5]
	ldr r6, [r4, #0x34]
	adds r3, #0x2c
	bics r6, r7
	lsls r5, r5, #0xb
	orrs r5, r6
	str r5, [r4, #0x34]
	ldr r6, [r3]
	ldr r3, [r3, #4]
	str r3, [r4, #0x20]
	str r6, [r4, #0x1c]
	movs r3, #1
	str r3, [r4, #0x24]
	movs r3, #0
	str r3, [r4, #0x28]
	adds r3, r0, #1
	bne _0802D3CE
	ldr r0, [r1, #0x7c]
	ldr r1, [r4, #0x34]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #0x34]
	b _0802D3DC
_0802D3CE
	ldr r1, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	str r0, [r4, #0x34]
_0802D3DC
	movs r1, #0xf
	ldr r0, [r4, #0x34]
	lsls r1, r1, #0x16
	bics r0, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #6
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	ldr r3, _0802D6C8 ;@ =gUnknown_03003328
	lsls r1, r0, #1
	ldrh r1, [r3, r1]
	cmp r0, #5
	str r1, [r4, #0x38]
	bhs _0802D406
	add r3, pc, #0x8 ;@ =_0802D408
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0802D406
	b _0802D7B8
_0802D408
	DCB 0x05, 0x00
_0802D40A
	DCB 0x05, 0x00
_0802D40C
	DCB 0x05, 0x00
_0802D40E
	DCB 0xAE, 0x00
_0802D410
	DCB 0x39, 0x01
loc_802d412
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802D4AC
	cmp r1, #1
	beq _0802D452
	cmp r1, #2
	beq _0802D47E
	cmp r1, #3
	bne _0802D4AA
	movs r3, #0xff
	adds r1, r0, #0
	movs r5, #1
	lsls r5, r5, #0xb
	lsls r3, r3, #0xb
	adds r0, r0, r5
	ands r0, r3
	bics r1, r3
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802D6CC ;@ =gUnknown_030032C0
	lsls r0, r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r5, #5
	str r1, [r4, #0x3c]
	b _0802D4AA
_0802D452
	movs r3, #0xff
	adds r1, r0, #0
	movs r5, #1
	lsls r5, r5, #0xb
	lsls r3, r3, #0xb
	subs r0, r0, r5
	ands r0, r3
	bics r1, r3
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802D6CC ;@ =gUnknown_030032C0
	lsls r0, r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	movs r1, #0
	str r1, [r4, #0x3c]
	b _0802D4AA
_0802D47E
	movs r3, #0xff
	adds r1, r0, #0
	movs r5, #1
	lsls r5, r5, #0xb
	lsls r3, r3, #0xb
	subs r0, r0, r5
	ands r0, r3
	bics r1, r3
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802D6CC ;@ =gUnknown_030032C0
	lsls r0, r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x11
	str r0, [r4, #0x40]
_0802D4AA
	b _0802D4D8
_0802D4AC
	movs r3, #0xff
	adds r1, r0, #0
	movs r5, #1
	lsls r5, r5, #0xb
	lsls r3, r3, #0xb
	subs r0, r0, r5
	ands r0, r3
	bics r1, r3
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802D6CC ;@ =gUnknown_030032C0
	lsls r0, r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #9
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
_0802D4D8
	ldr r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	beq _0802D538
	cmp r0, #1
	beq _0802D54E
	cmp r0, #2
	bne _0802D4FC
	movs r1, #0x1f
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xa
	bics r0, r1
	movs r1, #7
	lsls r1, r1, #0xa
	adds r0, r0, r1
	movs r5, #0xc
	mvns r5, r5
	str r0, [r4, #0x48]
_0802D4FC
	ldr r0, _0802D6D0 ;@ =gUnknown_0300345C
	adds r2, #0x3a
	lsls r1, r2, #0x18
	ldr r0, [r0]
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
	ldr r0, _0802D6D4 ;@ =gUnknown_03003D20
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802D520
	ldr r0, _0802D6D8 ;@ =gPlayerEntity
	adds r1, r5, #0
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023A70
_0802D520
	movs r1, #0xf
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #5
	lsls r1, r1, #0x10
	adds r0, r0, r1
	movs r1, #1
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r4, #0x48]
	b _0802D7B8
_0802D538
	movs r1, #0x1f
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xa
	bics r0, r1
	movs r1, #9
	lsls r1, r1, #0xb
	adds r0, r0, r1
	movs r5, #0x15
	mvns r5, r5
	str r0, [r4, #0x48]
	b _0802D4FC
_0802D54E
	movs r1, #0x1f
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xa
	bics r0, r1
	movs r1, #7
	lsls r1, r1, #0xb
	adds r0, r0, r1
	movs r5, #0x11
	mvns r5, r5
	str r0, [r4, #0x48]
	b _0802D4FC
loc_802d564
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802D612
	cmp r1, #1
	beq _0802D5AA
	cmp r1, #2
	beq _0802D5DE
	cmp r1, #3
	bne _0802D610
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802D6DC ;@ =gUnknown_030032E8
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	movs r1, #0
	str r1, [r4, #0x3c]
	b _0802D610
_0802D5AA
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802D6DC ;@ =gUnknown_030032E8
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	movs r1, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r1, #0x11
	str r1, [r4, #0x3c]
	b _0802D610
_0802D5DE
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802D6DC ;@ =gUnknown_030032E8
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #7
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
_0802D610
	b _0802D644
_0802D612
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802D6DC ;@ =gUnknown_030032E8
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
_0802D644
	ldr r0, [r4, #0x14]
	movs r3, #1
	ldr r2, [r0]
	lsls r3, r3, #0xb
	lsls r1, r2, #0x14
	asrs r1, r1, #0x1f
	adds r1, #1
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x14
	bics r2, r3
	orrs r1, r2
	str r1, [r0]
	movs r1, #0xf
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #7
	lsls r1, r1, #0xf
	adds r0, r0, r1
	lsrs r1, r3, #2
	bics r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0xa
	bics r0, r1
	adds r0, r0, r3
	str r0, [r4, #0x48]
	b _0802D7B8
loc_802d67a
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802D74C
	cmp r1, #1
	beq _0802D6E4
	cmp r1, #2
	beq _0802D718
	cmp r1, #3
	bne _0802D716
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802D6E0 ;@ =gUnknown_03003304
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	movs r1, #0
	str r1, [r4, #0x3c]
	b _0802D716
	ALIGN
_0802D6C0 DCDU gUnknown_0803ED28
_0802D6C4 DCDU gUnknown_03003EB8
_0802D6C8 DCDU gUnknown_03003328
_0802D6CC DCDU gUnknown_030032C0
_0802D6D0 DCDU gUnknown_0300345C
_0802D6D4 DCDU gUnknown_03003D20
_0802D6D8 DCDU gPlayerEntity
_0802D6DC DCDU gUnknown_030032E8
_0802D6E0 DCDU gUnknown_03003304
_0802D6E4
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DAB4 ;@ =gUnknown_03003304
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	movs r1, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r1, #0x10
	str r1, [r4, #0x3c]
_0802D716
	b _0802D780
_0802D718
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DAB4 ;@ =gUnknown_03003304
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	b _0802D780
_0802D74C
	b _0802D74E
_0802D74E
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DAB4 ;@ =gUnknown_03003304
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
_0802D780
	ldr r0, [r4, #0x14]
	movs r3, #1
	ldr r2, [r0]
	lsls r3, r3, #0xb
	lsls r1, r2, #0x14
	asrs r1, r1, #0x1f
	adds r1, #1
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x14
	bics r2, r3
	orrs r1, r2
	str r1, [r0]
	movs r1, #0xf
	ldr r0, [r4, #0x48]
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #9
	lsls r1, r1, #0xf
	adds r0, r0, r1
	lsrs r1, r3, #2
	bics r0, r1
	movs r1, #0x1f
	lsls r1, r1, #0xa
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	str r0, [r4, #0x48]
_0802D7B8
	ldr r7, _0802DAB8 ;@ =gUnknown_03003EB8
	ldr r0, [r7]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	bl sub_800065C
	ldr r0, [r4, #4]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x40]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bmi _0802D808
	adds r1, r5, #0
	ldr r0, [r7]
	bl sub_80012F0
_0802D808
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #0x34]
	movs r6, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r6, r0
	adds r0, r6, #0
	ldr r5, [r4, #4]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r1, [r4, #0x34]
	ldr r0, [r4, #4]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	ldrh r2, [r0, #0x2a]
	lsls r3, r1, #0x18
	movs r5, #3
	lsls r5, r5, #0xa
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	bics r2, r5
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802D868
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802D868
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
	ldr r0, [r4, #0x48]
	lsls r0, r0, #0x16
	bpl _0802D918
	ldr r0, [r7]
	bl sub_800116A
	str r0, [r4, #0x44]
	ldr r1, [r4, #0x38]
	ldr r2, [r4, #0x48]
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1c
	adds r1, r1, r2
	bl sub_800065C
	ldr r0, [r4, #0x44]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x40]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #0x44]
	add r1, sp, #4
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #0x44]
	bl sub_8040148
	ldr r0, [r4, #0x34]
	movs r7, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r7, r0
	adds r0, r7, #0
	ldr r6, [r4, #0x44]
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r7
	lsrs r2, r7, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	strh r1, [r6, #0x24]
	ldr r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r6]
	ldr r1, [r4, #0x34]
	ldr r0, [r4, #0x44]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	adds r1, #1
	ldrh r2, [r0, #0x2a]
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	bics r2, r5
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _0802D910
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_0802D910
	movs r1, #1
	ldr r0, [r4, #0x44]
	bl sub_80401E4
_0802D918
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_802D920
sub_802D920 ;@ 0x0802D920
	push {r4, r5, r6, lr}
	ldr r1, [r0]
	adds r4, r0, #0
	ldr r2, [r1, #0x18]
	sub sp, #8
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [r4, #0x48]
	lsls r0, r0, #0x16
	bpl _0802D94C
	ldr r0, [r4, #0x44]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _0802D946
	movs r1, #0
	bl sub_80401E4
	b _0802D94C
_0802D946
	movs r1, #1
	bl sub_80401E4
_0802D94C
	ldr r1, [r4, #0x48]
	lsls r0, r1, #0x1f
	bmi _0802D9FA
	movs r0, #0xff
	adds r2, r1, #0
	adds r0, #0xe1
	adds r1, #0x20
	ands r1, r0
	bics r2, r0
	orrs r1, r2
	lsls r2, r1, #0x17
	lsrs r2, r2, #0x1c
	movs r5, #0
	cmp r2, #8
	str r1, [r4, #0x48]
	bls _0802D9B0
	bics r1, r0
	adds r0, r1, #0
	adds r0, #0x20
	adds r1, r0, #0
	movs r2, #0x1e
	adds r0, #2
	ands r0, r2
	bics r1, r2
	orrs r1, r0
	lsls r0, r1, #0x1b
	str r1, [r4, #0x48]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, r1
	bhs _0802D9D6
	ldr r1, [r4, #0x38]
	adds r1, r1, r0
	ldr r0, [r4, #4]
	bl sub_800065C
	ldr r0, [r4, #0x48]
	lsls r1, r0, #0x16
	bpl _0802D9B0
	lsls r2, r0, #0xd
	ldr r1, [r4, #0x38]
	lsrs r2, r2, #0x1c
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r4, #0x44]
	bl sub_800065C
_0802D9B0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0802D9FA
	ldr r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	cmp r0, #5
	bhs _0802D9CA
	add r3, pc, #0x8 ;@ =_0802D9CC
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0802D9CA
	b _0802DAB2
_0802D9CC
	DCB 0x1B, 0x00
_0802D9CE
	DCB 0x1B, 0x00
_0802D9D0
	DCB 0x1B, 0x00
_0802D9D2
	DCB 0x95, 0x00
_0802D9D4
	DCB 0x05, 0x01
_0802D9D6
	ldr r6, _0802DAB8 ;@ =gUnknown_03003EB8
	adds r1, r4, #4
	ldr r0, [r6]
	bl sub_8000DE6
	ldr r0, [r4, #0x48]
	lsls r0, r0, #0x16
	bpl _0802D9F0
	adds r1, r4, #0
	adds r1, #0x44
	ldr r0, [r6]
	bl sub_8000DE6
_0802D9F0
	str r5, [r4, #4]
	ldr r0, [r4, #0x48]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0x48]
_0802D9FA
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3
loc_802da02
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802DAC0
	cmp r1, #1
	beq _0802DA4C
	cmp r1, #2
	beq _0802DA7E
	cmp r1, #3
	bne _0802DAB2
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802DABC ;@ =gUnknown_030032C0
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	movs r1, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r1, #0x10
	str r1, [r4, #0x3c]
	b _0802DAB2
_0802DA4C
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802DABC ;@ =gUnknown_030032C0
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	str r5, [r4, #0x3c]
	b _0802DAB2
_0802DA7E
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802DABC ;@ =gUnknown_030032C0
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x11
	str r0, [r4, #0x40]
_0802DAB2
	b _0802DBA0
	ALIGN
_0802DAB4 DCDU gUnknown_03003304
_0802DAB8 DCDU gUnknown_03003EB8
_0802DABC DCDU gUnknown_030032C0
_0802DAC0
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #2
	adds r0, r3, r0
	ldr r1, _0802DDCC ;@ =gUnknown_030032C0
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #9
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	b _0802DBA0
loc_802daf6
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802DBA2
	cmp r1, #1
	beq _0802DB3A
	cmp r1, #2
	beq _0802DB6E
	cmp r1, #3
	bne _0802DBA0
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD0 ;@ =gUnknown_030032E8
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	str r5, [r4, #0x3c]
	b _0802DBA0
_0802DB3A
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD0 ;@ =gUnknown_030032E8
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	movs r1, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r1, #0x11
	str r1, [r4, #0x3c]
	b _0802DBA0
_0802DB6E
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD0 ;@ =gUnknown_030032E8
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #7
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
_0802DBA0
	b _0802DC80
_0802DBA2
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD0 ;@ =gUnknown_030032E8
	subs r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	b _0802DC80
loc_802dbd6
	ldr r0, [r4, #0x34]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	beq _0802DC82
	cmp r1, #1
	beq _0802DC1A
	cmp r1, #2
	beq _0802DC4E
	cmp r1, #3
	bne _0802DC80
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD4 ;@ =gUnknown_03003304
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	str r5, [r4, #0x3c]
	b _0802DC80
_0802DC1A
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	subs r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD4 ;@ =gUnknown_03003304
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	movs r1, #1
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
	lsls r1, r1, #0x10
	str r1, [r4, #0x3c]
	b _0802DC80
_0802DC4E
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD4 ;@ =gUnknown_03003304
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
_0802DC80
	b _0802DCB4
_0802DC82
	movs r2, #0xff
	adds r1, r0, #0
	movs r3, #1
	lsls r3, r3, #0xb
	lsls r2, r2, #0xb
	adds r0, r0, r3
	ands r0, r2
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #3
	ldr r1, _0802DDD4 ;@ =gUnknown_03003304
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x3c]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r4, #0x40]
_0802DCB4
	ldr r1, [r4, #0x14]
	adds r1, #0x2c
	ldr r2, [r1]
	ldr r1, [r1, #4]
	str r1, [r4, #0x20]
	str r2, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	adds r0, r2, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x40]
	adds r1, r1, r2
	ldr r2, [r4, #0x24]
	adds r0, r0, r2
	ldr r2, [r4, #0x28]
	str r0, [sp]
	adds r1, r1, r2
	str r1, [sp, #4]
	ldr r0, [r4, #4]
	mov r1, sp
	bl sub_803FF24
	ldr r0, [r4, #0x48]
	lsls r0, r0, #0x16
	bmi _0802DCE6
	b _0802D9FA
_0802DCE6
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	adds r1, r1, r2
	ldr r2, [r4, #0x24]
	adds r0, r0, r2
	ldr r2, [r4, #0x28]
	str r0, [sp]
	adds r1, r1, r2
	str r1, [sp, #4]
	ldr r0, [r4, #0x44]
	mov r1, sp
	bl sub_803FF24
	b _0802D9FA

	thumb_func_start sub_802DD08
sub_802DD08 ;@ 0x0802DD08
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	movs r1, #0
	movs r2, #0
	stm r0!, {r1, r2}
	movs r6, #1
	lsls r6, r6, #0x1d
	ldr r5, [r4, #4]
	lsrs r7, r6, #4
	cmp r5, #0
	beq _0802DD7C
	ldr r0, _0802DDD8 ;@ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r5, #0x10]
	lsrs r3, r6, #1
	subs r0, r1, r0
	ldr r1, [r4, #0x2c]
	asrs r0, r0, #3
	lsls r0, r0, #0x13
	lsrs r1, r1, #0xd
	lsls r1, r1, #0xd
	lsrs r0, r0, #0x13
	orrs r1, r0
	adds r2, r1, #0
	str r2, [r4, #0x2c]
	ldr r0, [r4, #4]
	bics r2, r3
	ldr r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x1c
	orrs r2, r1
	str r2, [r4, #0x2c]
	ldr r1, [r0]
	lsls r2, r2, #1
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x1f
	lsrs r2, r2, #1
	orrs r2, r1
	str r2, [r4, #0x2c]
	ldr r1, [r0]
	bics r2, r7
	lsls r1, r1, #0x1f
	lsrs r1, r1, #6
	orrs r1, r2
	orrs r1, r6
	str r1, [r4, #0x2c]
	ldrb r0, [r0, #5]
	cmp r0, #0x42
	bhi _0802DD7C
	lsls r0, r3, #2
	orrs r0, r1
	str r0, [r4, #0x2c]
_0802DD7C
	ldr r5, [r4, #0x44]
	cmp r5, #0
	beq _0802DDC4
	ldr r0, _0802DDD8 ;@ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r5, #0x10]
	movs r3, #1
	subs r0, r1, r0
	ldr r1, [r4, #0x30]
	asrs r0, r0, #3
	lsls r0, r0, #0x13
	lsrs r1, r1, #0xd
	lsls r1, r1, #0xd
	lsrs r0, r0, #0x13
	orrs r1, r0
	adds r2, r1, #0
	str r2, [r4, #0x30]
	ldr r0, [r4, #0x44]
	lsls r3, r3, #0x1c
	ldr r1, [r0]
	bics r2, r3
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x1c
	orrs r1, r2
	str r1, [r4, #0x30]
	ldr r0, [r0]
	bics r1, r7
	lsls r0, r0, #0x1f
	lsrs r0, r0, #6
	orrs r0, r1
	orrs r0, r6
	str r0, [r4, #0x30]
_0802DDC4
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0802DDCC DCDU gUnknown_030032C0
_0802DDD0 DCDU gUnknown_030032E8
_0802DDD4 DCDU gUnknown_03003304
_0802DDD8 DCDU gUnknown_03003EA0
	END