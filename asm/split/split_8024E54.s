	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_0803ECF8
	IMPORT gUnknown_0805107A
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_80268AC
	IMPORT sub_8028C2E
	IMPORT sub_802E418
	IMPORT sub_802E47A
	IMPORT sub_802E4AA
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT sub_803F2CC
	IMPORT sub_803FF24
	IMPORT sub_80401E4

	thumb_func_start sub_8024E54
sub_8024E54
	push {r4, lr}
	adds r4, r0, #0
	bne _08024E6C
	movs r0, #0x44
	bl __nw__FUi
	adds r4, r0, #0
	bne _08024E6C
	adds r0, r4, #0
_08024E66
	pop {r4}
	pop {r3}
	bx r3
_08024E6C
	adds r0, r4, #0
	bl sub_802E418
	ldr r0, _080250D0
	ldr r1, _080250D4
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	ands r0, r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	b _08024E66

	non_word_aligned_thumb_func_start sub_8024E8A
sub_8024E8A
	push {r4, lr}
	adds r4, r0, #0
	bl sub_802E47A
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _08024EA8
	ldr r0, _080250D8
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
_08024EA8
	ldr r0, _080250DC
	ldr r1, [r0]
	movs r0, #0x53
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_80268AC
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8024EBC
sub_8024EBC
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080250D0
	adds r5, r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_802E47A
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _08024EE2
	ldr r0, _080250D8
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
_08024EE2
	ldr r0, _080250DC
	ldr r1, [r0]
	movs r0, #0x53
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_80268AC
	movs r1, #0
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq _08024F02
	adds r0, r4, #0
	bl sub_803DA18
_08024F02
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8024F08
sub_8024F08
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
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0xd
	bics r6, r7
	orrs r5, r6
	str r5, [r4, #0x34]
	ldr r6, [r3]
	ldr r3, [r3, #4]
	str r3, [r4, #0x20]
	str r6, [r4, #0x1c]
	adds r3, r0, #1
	bne _08024F4E
	ldr r0, [r1, #0x7c]
	ldr r1, [r4, #0x34]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #0x34]
	b _08024F5C
_08024F4E
	ldr r1, [r4, #0x34]
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	str r0, [r4, #0x34]
_08024F5C
	cmp r2, #0
	bne _08024F68
	movs r0, #0xff
	adds r0, #0xba
	str r0, [r4, #0x38]
	b _08024F6E
_08024F68
	movs r0, #0xff
	adds r0, #0xbc
	str r0, [r4, #0x38]
_08024F6E
	movs r1, #1
	ldr r0, [r4, #0x34]
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #0x34]
	ldr r1, [r4, #0x40]
	ldr r2, _080250D4
	lsrs r1, r1, #1
	lsls r1, r1, #1
	ands r1, r2
	str r1, [r4, #0x40]
	ldr r1, _080250E0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrsb r1, [r1, r0]
	lsls r5, r1, #0x10
	ldr r1, _080250E0
	adds r1, #4
	ldrsb r0, [r1, r0]
	lsls r6, r0, #0x10
	ldr r0, _080250D8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #4]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	adds r0, r0, r5
	adds r1, r1, r6
	str r1, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl sub_803FF24
	ldr r1, [r4, #0x34]
	ldr r3, _080250E0
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r4, #4]
	subs r3, #8
	ldrb r2, [r3, r2]
	cmp r2, #0
	beq _08024FE4
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	adds r1, #1
	b _08024FEA
_08024FE4
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	subs r1, #1
_08024FEA
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	movs r7, #0x80
	lsls r2, r1, #0x16
	cmp r2, #0
	blt _0802500C
	orrs r1, r7
	str r1, [r0]
_0802500C
	ldr r0, [r4, #4]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #4]
	bl sub_80401E4
	ldr r0, [r4, #0x34]
	ldr r1, _080250E0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, #8
	ldrsb r1, [r1, r0]
	lsls r5, r1, #0x10
	ldr r1, _080250E0
	adds r1, #0xc
	ldrsb r0, [r1, r0]
	lsls r6, r0, #0x10
	ldr r0, _080250D8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x38]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	movs r2, #2
	ldr r1, [r0]
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	adds r0, r0, r5
	adds r1, r1, r6
	str r1, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [r4, #0x3c]
	add r1, sp, #4
	bl sub_803FF24
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_803F2CC
	ldr r1, [r4, #0x34]
	ldr r3, _080250E0
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r4, #0x3c]
	subs r3, #4
	ldrb r2, [r3, r2]
	cmp r2, #0
	beq _08025086
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	adds r1, #1
	b _0802508C
_08025086
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	subs r1, #1
_0802508C
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _080250AA
	orrs r1, r7
	str r1, [r0]
_080250AA
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
	ldr r0, _080250DC
	ldr r1, [r0]
	movs r0, #0x53
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_080250D0 DCDU gUnknown_0803ECF8
_080250D4 DCDU 0xFFFE0001
_080250D8 DCDU gUnknown_03003EB8
_080250DC DCDU gUnknown_0300345C
_080250E0 DCDU gUnknown_0805107A
	END
