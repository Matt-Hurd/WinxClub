	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003EB8
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_80012F0
	IMPORT sub_8028C2E
	IMPORT __call_via_r1
	IMPORT sub_803F38C
	IMPORT sub_803F898
	IMPORT sub_803FF24
	IMPORT sub_8040148
	IMPORT sub_80401C0
	IMPORT sub_80401E4
	IMPORT sub_8040594

	thumb_func_start sub_803248C
sub_803248C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	sub sp, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	beq _08032580
	adds r6, r4, #4
	adds r7, r6, #4
	cmp r0, #1
	beq _08032582
	cmp r0, #2
	beq _08032584
	cmp r0, #3
	bne _08032586
	ldr r0, [r4, #4]
	bl sub_803F898
	ldr r1, [r4, #0x4c]
	lsls r1, r1, #6
	lsrs r1, r1, #0x13
	cmp r0, r1
	blo _080324D0
	ldr r0, [r4, #4]
	bl sub_803F898
	ldr r1, [r4, #0x4c]
	lsls r2, r1, #6
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1c
	lsrs r2, r2, #0x13
	adds r1, r2, r1
	cmp r0, r1
	blo _08032570
_080324D0
	ldr r5, _080327CC
	adds r1, r6, #0
	ldr r0, [r5]
	bl sub_8000DE6
	ldr r0, [r5]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x4c]
	lsls r1, r1, #6
	lsrs r1, r1, #0x13
	bl sub_800065C
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_803F38C
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bge _08032520
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bmi _08032516
	ldr r0, _080327CC
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80012F0
_08032516
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r5]
_08032520
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
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	ldr r0, [r4, #4]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
	ldr r0, _080327D0
	ldr r1, [r0]
	movs r0, #0x25
	lsls r0, r0, #6
	adds r0, r0, r1
	bl sub_8028C2E
_08032570
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bge _0803258C
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	b _08032588
_08032580
	b _08032616
_08032582
	b _08032640
_08032584
	b _080327B4
_08032586
	b _0803260E
_08032588
	bl __call_via_r1
_0803258C
	ldr r0, [r4, #0x4c]
	movs r1, #0xff
	adds r2, r0, #0
	adds r1, #0xe1
	adds r0, #0x20
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	lsls r2, r0, #0x17
	lsrs r2, r2, #0x1c
	cmp r2, #8
	str r0, [r4, #0x4c]
	bls _0803260E
	bics r0, r1
	str r0, [r4, #0x4c]
	ldr r1, [r4, #0x50]
	lsls r0, r0, #0x1b
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	lsrs r0, r0, #0x1c
	cmp r1, r0
	bne _080325CC
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080325CC
	ldr r0, _080327CC
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r7, #0
	str r7, [r4, #8]
_080325CC
	ldr r0, [r4, #0x4c]
	movs r1, #0x1e
	adds r2, r0, #0
	adds r0, #2
	ands r0, r1
	bics r2, r1
	orrs r2, r0
	adds r1, r2, #0
	lsls r0, r1, #0x1b
	lsls r2, r1, #0x13
	lsrs r2, r2, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, r2
	str r1, [r4, #0x4c]
	bhs _080326B8
	lsls r1, r1, #6
	lsrs r1, r1, #0x13
	adds r1, r1, r0
	ldr r0, [r4, #4]
	bl sub_800065C
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
_0803260E
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08032616
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0803260E
	ldr r1, [r4, #0x38]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_8000914
	movs r1, #7
	ldr r0, [r4, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
	b _0803260E
_08032640
	ldr r1, _080327D4
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r1, [r4, #0x40]
	adds r0, r1, r0
	str r0, [r4, #0x40]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, #0x24]
	adds r1, r1, r2
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x28]
	adds r1, r1, r2
	str r1, [r4, #0x20]
	ldr r0, [r4, #0x44]
	cmp r0, #0
	bge _08032668
	NEGS r1, r0
	b _0803266A
_08032668
	adds r1, r0, #0
_0803266A
	ldr r2, _080327D8
	cmp r1, r2
	ble _08032684
	ldr r0, [r4, #8]
	bl sub_803F898
	ldr r1, _080327DC
	cmp r0, r1
	beq _080326CA
	ldr r0, [r4, #8]
	bl sub_800065C
	b _080326CA
_08032684
	ldr r2, _080327E0
	cmp r1, r2
	ble _0803269E
	ldr r0, [r4, #8]
	bl sub_803F898
	ldr r1, _080327E4
	cmp r0, r1
	beq _080326CA
	ldr r0, [r4, #8]
	bl sub_800065C
	b _080326CA
_0803269E
	ldr r0, _080327E8
	cmp r1, r0
	ldr r0, [r4, #8]
	ble _080326BA
	bl sub_803F898
	ldr r1, _080327EC
	cmp r0, r1
	beq _080326CA
	ldr r0, [r4, #8]
	bl sub_800065C
	b _080326CA
_080326B8
	b _080327A2
_080326BA
	bl sub_803F898
	ldr r1, _080327F0
	cmp r0, r1
	beq _080326CA
	ldr r0, [r4, #8]
	bl sub_800065C
_080326CA
	movs r1, #3
	ldr r0, [r4, #0x44]
	lsls r1, r1, #0xf
	cmp r0, r1
	ble _08032732
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bmi _080326E6
	ldr r0, _080327CC
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_80012F0
_080326E6
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r5]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x48]
	cmp r0, r1
	ble _08032732
	movs r1, #7
	ldr r0, [r4, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	movs r1, #3
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r4, #0x4c]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08032762
	ldr r0, _080327CC
	adds r1, r7, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r7, #0
	str r7, [r4, #8]
	b _08032762
_08032732
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08032762
	ldr r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1f
	beq _08032762
	ldr r5, _080327CC
	adds r1, r7, #0
	ldr r0, [r5]
	bl sub_8000DE6
	movs r7, #0
	str r7, [r4, #8]
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _08032756
_08032754
	b _0803260E
_08032756
	adds r1, r6, #0
	ldr r0, [r5]
	bl sub_8000DE6
	str r7, [r4, #4]
	b _0803260E
_08032762
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x24]
	ldr r2, [r4, #0x28]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	adds r1, r1, r2
	ldr r2, [r4, #0x3c]
	adds r0, r0, r2
	ldr r2, [r4, #0x40]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08032754
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x24]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x28]
	str r0, [sp, #4]
	adds r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r4, #8]
	add r1, sp, #4
	bl sub_803FF24
	b _0803260E
_080327A2
	movs r1, #7
	ldr r0, [r4, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #9
	adds r0, r0, r1
	str r0, [r4, #0x34]
	b _0803260E
_080327B4
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _08032754
	ldr r0, _080327CC
	adds r1, r6, #0
	ldr r0, [r0]
	bl sub_8000DE6
	movs r7, #0
	str r7, [r4, #4]
	b _0803260E
	ALIGN
_080327CC DCDU gUnknown_03003EB8
_080327D0 DCDU gUnknown_0300345C
_080327D4 DCDU 0x00001998
_080327D8 DCDU 0x0001B330
_080327DC DCDU 0x000011EF
_080327E0 DCDU 0x00013330
_080327E4 DCDU 0x000011F0
_080327E8 DCDU 0x0000B330
_080327EC DCDU 0x000011F1
_080327F0 DCDU 0x000011F2
	END