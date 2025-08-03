    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_8000DE6
	IMPORT sub_8001338
	IMPORT sub_801CA1E
	IMPORT sub_801CAC0
	IMPORT sub_8020B50
	IMPORT sub_8020B60
	IMPORT sub_80268AC
	IMPORT sub_8028BE4
	IMPORT sub_802E47A
	IMPORT __call_via_r1
	IMPORT __16_ll_sdiv
	IMPORT __16_ll_shift_l
	IMPORT sub_803FF24

	thumb_func_start sub_80381C0
sub_80381C0 ;@ 0x080381C0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x34]
	adds r6, r4, #0
	movs r7, #7
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1d
	lsls r7, r7, #8
	adds r6, #0x1c
	cmp r0, #0
	sub sp, #0x1c
	beq _08038282
	adds r5, r4, #0
	adds r5, #0x40
	cmp r0, #1
	beq _080382C4
	cmp r0, #2
	beq _080382C6
	cmp r0, #4
	bne _0803827A
	ldr r2, _08038454 ;@ =gUnknown_03003458
	ldr r0, [r2]
	ldr r1, [r0, #0x20]
	adds r1, #0xa0
	ldr r3, [r1, #4]
	cmp r3, #0
	beq _0803824E
	ldr r1, [r1, #0x34]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1d
	cmp r1, #1
	bne _0803824E
	ldrb r1, [r5, #6]
	adds r1, #0xff
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	strb r1, [r5, #6]
	bne _0803824E
	adds r5, r2, #0
	ldr r0, [r0, #0x20]
	bl sub_8020B50
	ldr r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	cmp r0, #2
	bne _08038242
	ldr r0, [r5]
	movs r3, #5
	ldr r1, [r0, #0x20]
	lsls r3, r3, #0x13
	adds r2, r1, #0
	ldr r1, [r1, #0x58]
	adds r2, #0x58
	str r1, [sp, #0x14]
	ldr r2, [r2, #4]
	str r1, [sp, #0xc]
	str r2, [sp, #0x18]
	str r2, [sp, #0x10]
	subs r2, r2, r3
	str r1, [sp, #4]
	add r1, sp, #4
	str r2, [sp, #8]
	bl sub_801CA1E
_08038242
	ldr r0, [r4, #0x34]
	movs r1, #1
	lsls r1, r1, #9
	bics r0, r7
	adds r0, r0, r1
	str r0, [r4, #0x34]
_0803824E
	ldr r0, [r4, #0x14]
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r0, [r6, #4]
	str r1, [r6]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	adds r1, r1, r2
	ldr r2, [r4, #0x24]
	adds r0, r0, r2
	ldr r2, [r4, #0x28]
	str r0, [sp, #0x14]
	adds r1, r1, r2
	str r1, [sp, #0x18]
	ldr r0, [r4, #4]
	add r1, sp, #0x14
	bl sub_803FF24
_0803827A
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08038282
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _080382A6
	ldr r1, [r4, #0x38]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r0, [r4, #0x34]
	bics r0, r7
	adds r0, #0xff
	adds r0, #1
	str r0, [r4, #0x34]
_080382A6
	ldr r0, [r4, #0x14]
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r0, [r6, #4]
	str r1, [r6]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	adds r1, r1, r2
	ldr r2, [r4, #0x24]
	adds r0, r0, r2
	b _080382C8
_080382C4
	b _080382DA
_080382C6
	b _08038396
_080382C8
	ldr r2, [r4, #0x28]
	str r0, [sp, #0x14]
	adds r1, r1, r2
	str r1, [sp, #0x18]
	ldr r0, [r4, #4]
	add r1, sp, #0x14
	bl sub_803FF24
	b _0803827A
_080382DA
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r1, [r4, #4]
	ldr r0, [r1]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _08038368
	ldrb r0, [r5, #5]
	adds r0, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r5, #5]
	bne _08038324
	ldr r0, [r4, #0x34]
	movs r1, #1
	bics r0, r7
	lsls r1, r1, #9
	adds r0, r0, r1
	ldr r5, _08038458 ;@ =gUnknown_0300345C
	str r0, [r4, #0x34]
	ldr r0, [r5]
	movs r7, #0x49
	lsls r7, r7, #6
	adds r0, r7, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _08038368
	ldr r0, [r5]
	adds r0, r7, r0
	bl sub_80268AC
	b _08038368
_08038324
	ldr r0, _0803845C ;@ =gUnknown_03003EA0
	adds r5, r1, #0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, [r5, #0xc]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [r5, #8]
	bl __16_ll_shift_l
	add r2, pc, #0x114 ;@ =_08038460
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strb r0, [r5, #3]
	ldr r0, [r5]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r5]
	ldr r0, [r4, #4]
	bl sub_8000914
_08038368
	ldr r0, [r4, #0x14]
	adds r0, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r0, [r6, #4]
	str r1, [r6]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	adds r1, r1, r2
	ldr r2, [r4, #0x24]
	adds r0, r0, r2
	ldr r2, [r4, #0x28]
	str r0, [sp, #0x14]
	adds r1, r1, r2
	str r1, [sp, #0x18]
	ldr r0, [r4, #4]
	add r1, sp, #0x14
	bl sub_803FF24
_08038394
	b _0803827A
_08038396
	ldr r0, _0803845C ;@ =gUnknown_03003EA0
	ldr r5, [r4, #4]
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _080383B2
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_080383B2
	lsls r0, r1, #0x10
	ldr r1, [r4, #0x38]
	lsrs r0, r0, #0x10
	movs r6, #0
	adds r1, #2
	cmp r0, r1
	ldr r0, [r4, #4]
	ldr r5, _08038468 ;@ =gUnknown_03003EB8
	beq _080383F4
	movs r2, #0
	bl sub_80007A0
	ldr r7, [r4, #4]
	ldr r0, [r7]
	lsls r0, r0, #0x1c
	bpl _080383DA
	adds r1, r7, #0
	ldr r0, [r5]
	bl sub_8001338
_080383DA
	ldr r0, [r7]
	movs r1, #8
	bics r0, r1
	orrs r0, r6
	str r0, [r7]
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08038394
	bl sub_8000914
	b _0803827A
_080383F4
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _08038394
	ldr r7, _08038454 ;@ =gUnknown_03003458
	ldr r0, [r7]
	ldr r0, [r0, #0x20]
	bl sub_8020B60
	cmp r0, #0
	beq _08038394
	ldr r0, [r4, #0x34]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1c
	cmp r0, #2
	bne _0803841A
	ldr r0, [r7]
	bl sub_801CAC0
_0803841A
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _08038394
	adds r1, r4, #4
	ldr r0, [r5]
	bl sub_8000DE6
	str r6, [r4, #4]
	b _0803827A

	thumb_func_start sub_803842C
sub_803842C ;@ 0x0803842C
	push {r3, r4, r5, lr}
	bl sub_802E47A
	ldr r4, _08038458 ;@ =gUnknown_0300345C
	movs r5, #0x49
	ldr r0, [r4]
	lsls r5, r5, #6
	adds r0, r5, r0
	bl sub_8028BE4
	cmp r0, #0
	beq _0803844C
	ldr r0, [r4]
	adds r0, r5, r0
	bl sub_80268AC
_0803844C
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_08038454 DCDU gUnknown_03003458
_08038458 DCDU gUnknown_0300345C
_0803845C DCDU gUnknown_03003EA0
_08038460 DCDU 0x0010BE20
_08038464 DCDU 0x00000000
_08038468 DCDU gUnknown_03003EB8
	END