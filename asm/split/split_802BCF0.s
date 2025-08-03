	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0300328A
	IMPORT gUnknown_0300328E
	IMPORT gUnknown_03003292
	IMPORT gUnknown_03003296
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_8000DE6
	IMPORT sub_80012F0
	IMPORT sub_8001338
	IMPORT sub_80268AC
	IMPORT sub_8028BE4
	IMPORT sub_802E47A
	IMPORT sub_802E5D2
	IMPORT __call_via_r1
	IMPORT sub_803FF24
	IMPORT sub_8040148
	IMPORT sub_8040594

	thumb_func_start sub_802BCF0
sub_802BCF0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r1, [r0, #0x34]
	adds r5, r4, #0
	lsls r0, r1, #0x15
	lsrs r0, r0, #0x1d
	adds r5, #0x1c
	cmp r0, #0
	sub sp, #0xc
	ldr r7, _0802BF98
	beq _0802BD72
	adds r6, r4, #4
	cmp r0, #1
	beq _0802BDD4
	cmp r0, #2
	bne _0802BD6A
	ldr r0, _0802BF9C
	ldr r5, [r4, #4]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _0802BD2C
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0802BD2C
	lsls r0, r1, #0x10
	ldr r1, [r4, #0x38]
	lsrs r0, r0, #0x10
	adds r1, #2
	cmp r0, r1
	ldr r0, [r4, #4]
	beq _0802BE20
	movs r2, #0
	bl sub_80007A0
	ldr r5, [r4, #4]
	movs r6, #0
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bpl _0802BD52
	adds r1, r5, #0
	ldr r0, [r7]
	bl sub_8001338
_0802BD52
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r6
	str r0, [r5]
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802BD6A
	bl sub_8000914
_0802BD6A
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0802BD72
	ldr r0, [r4, #4]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _0802BD6A
	lsls r0, r1, #6
	lsrs r0, r0, #0x1c
	cmp r0, #5
	bhs _0802BDEA
	add r3, pc, #0x4
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0802BD8C
	DCB 0x02
_0802BD8D
	DCB 0x2E
_0802BD8E
	DCB 0x0D
_0802BD8F
	DCB 0x18
_0802BD90
	DCB 0x24, 0x00
loc_802bd92
	movs r2, #0x11
	ldr r0, [r4, #0x1c]
	lsls r2, r2, #0x10
	adds r0, r0, r2
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r2, #3
	lsls r2, r2, #0x10
	adds r0, r0, r2
	str r0, [r4, #0x20]
	b _0802BDEA
loc_802bda8
	movs r2, #7
	ldr r0, [r4, #0x1c]
	lsls r2, r2, #0x10
	adds r0, r0, r2
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r2, #1
	lsls r2, r2, #0x11
	adds r0, r0, r2
	str r0, [r4, #0x20]
	b _0802BDEA
loc_802bdbe
	movs r2, #1
	ldr r0, [r4, #0x1c]
	lsls r2, r2, #0x12
	adds r0, r0, r2
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r2, #0xd
	lsls r2, r2, #0x11
	subs r0, r0, r2
	str r0, [r4, #0x20]
	b _0802BDEA
_0802BDD4
	b _0802BEA2
loc_802bdd6
	movs r2, #1
	ldr r0, [r4, #0x1c]
	lsls r2, r2, #0x12
	adds r0, r0, r2
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	movs r2, #0xd
	lsls r2, r2, #0x11
	subs r0, r0, r2
	str r0, [r4, #0x20]
_0802BDEA
	lsls r1, r1, #0x18
	ldr r2, _0802BFA0
	lsrs r1, r1, #0x18
	ldrsb r2, [r2, r1]
	ldr r0, [r4, #0x1c]
	lsls r2, r2, #0x10
	adds r0, r0, r2
	ldr r2, _0802BFA4
	str r0, [r4, #0x1c]
	ldrsb r2, [r2, r1]
	ldr r0, [r4, #0x20]
	lsls r2, r2, #0x10
	adds r0, r0, r2
	str r0, [r4, #0x20]
	ldr r0, _0802BFA8
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x24]
	ldr r0, _0802BFAC
	ldrsb r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #4]
	adds r1, #1
	movs r2, #0
	b _0802BE22
_0802BE20
	b _0802BEE2
_0802BE22
	bl sub_80007A0
	adds r1, r5, #0
	ldr r0, [r4, #4]
	bl sub_803FF24
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
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
	movs r2, #4
	strh r1, [r5, #0x24]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r5, [r4, #4]
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bmi _0802BE82
	adds r1, r5, #0
	ldr r0, [r7]
	bl sub_80012F0
_0802BE82
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	bl sub_8000914
	movs r1, #7
	ldr r0, [r4, #0x34]
	lsls r1, r1, #8
	bics r0, r1
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
_0802BEA0
	b _0802BD6A
_0802BEA2
	ldr r0, [r5]
	ldr r1, [r4, #0x24]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1f
	beq _0802BEDA
	cmp r0, #0
	beq _0802BEA0
	adds r1, r6, #0
	ldr r0, [r7]
	bl sub_8000DE6
	movs r6, #0
	str r6, [r4, #4]
	b _0802BD6A
_0802BEDA
	adds r1, r5, #0
	bl sub_803FF24
	b _0802BD6A
_0802BEE2
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0802BEA0
	cmp r0, #0
	beq _0802BEA0
	adds r1, r6, #0
	ldr r0, [r7]
	bl sub_8000DE6
	movs r6, #0
	str r6, [r4, #4]
	b _0802BD6A

	thumb_func_start sub_802BEFC
sub_802BEFC
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_802E47A
	ldr r5, _0802BFB0
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x37
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _0802BF2E
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x37
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
_0802BF2E
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_802BF34
sub_802BF34
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #2
	bpl _0802BF90
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	beq _0802BF90
	movs r2, #0x20
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_8040148
	ldr r0, [r4, #4]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x34]
	ldr r5, [r4, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r4, #0x5a
	muls r4, r0
	adds r0, r4, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r4
	lsrs r2, r4, #1
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
_0802BF90
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	bx r3
	ALIGN
_0802BF98 DCDU gUnknown_03003EB8
_0802BF9C DCDU gUnknown_03003EA0
_0802BFA0 DCDU gUnknown_0300328A
_0802BFA4 DCDU gUnknown_0300328E
_0802BFA8 DCDU gUnknown_03003292
_0802BFAC DCDU gUnknown_03003296
_0802BFB0 DCDU gUnknown_0300345C
	END
