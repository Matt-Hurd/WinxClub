    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003448
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003460
	IMPORT gUnknown_03003478
	IMPORT gUnknown_03003D20
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT sub_800065C
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_80011D8
	IMPORT sub_80046F8
	IMPORT sub_8004784
	IMPORT sub_80047BE
	IMPORT sub_800B72A
	IMPORT sub_800BE0E
	IMPORT sub_800C1CA
	IMPORT sub_800CD58
	IMPORT sub_800E53C
	IMPORT sub_800E71C
	IMPORT sub_800EF2A
	IMPORT sub_800EF60
	IMPORT sub_80138E2
	IMPORT sub_80147FA
	IMPORT sub_8018070
	IMPORT sub_80180BE
	IMPORT sub_8018386
	IMPORT sub_802383A
	IMPORT sub_8028A7C
	IMPORT sub_8028C2E
	IMPORT sub_803D66C
	IMPORT sub_803F9C4

	thumb_func_start sub_80301E8
sub_80301E8 ;@ 0x080301E8
	push {r4, r5, r6}
	ldr r1, [r0, #0xc]
	movs r3, #0x20
	cmp r1, #0
	beq _0803021A
	adds r4, r0, #4
	ldm r4!, {r2, r4}
	ldr r6, [r0]
	adds r5, r4, #0
	lsrs r5, r2
	orrs r5, r6
	str r5, [r0]
	adds r5, r1, r2
	cmp r5, #0x20
	bls _08030216
	subs r2, r3, r2
	subs r1, r1, r2
	str r1, [r0, #0xc]
	lsls r4, r2
	adds r0, #4
	stm r0!, {r3, r4}
_08030212
	pop {r4, r5, r6}
	bx lr
_08030216
	adds r1, r2, r1
	str r1, [r0, #4]
_0803021A
	ldr r1, [r0, #0x10]
	adds r2, r1, #4
	str r2, [r0, #0x10]
	ldr r1, [r1]
	ldr r2, [r0, #4]
	cmp r2, #0x20
	bhs _0803023E
	adds r5, r1, #0
	ldr r4, [r0]
	lsrs r5, r2
	orrs r4, r5
	str r4, [r0]
	subs r4, r3, r2
	lsls r1, r4
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	str r3, [r0, #4]
	b _08030212
_0803023E
	adds r0, #8
	stm r0!, {r1, r3}
	b _08030212

	thumb_func_start sub_8030244
sub_8030244 ;@ 0x08030244
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _08030594 ;@ =gUnknown_0300345C
	movs r2, #0
	movs r1, #2
	ldr r0, [r0]
	bl sub_8028A7C
	bl sub_80180BE
	ldr r4, _08030598 ;@ =gUnknown_03003460
	ldr r0, [r4]
	bl sub_800B72A
	cmp r0, #0
	beq _08030272
_08030264
	bl sub_800EF2A
	ldr r0, [r4]
	bl sub_800B72A
	cmp r0, #0
	bne _08030264
_08030272
	ldr r1, _0803059C ;@ =gUnknown_03003D20
	movs r0, #0
	ldr r2, _080305A0 ;@ =gUnknown_03003478
	strb r0, [r1]
	ldr r1, [r2]
	movs r0, #0x10
	bics r1, r0
	str r1, [r2]
	movs r5, #0
_08030284
	movs r4, #0
	lsls r0, r5, #3
	adds r6, r0, r7
_0803028A
	lsls r0, r4, #2
	adds r1, r6, r0
	ldr r0, _080305A4 ;@ =gUnknown_03003448
	adds r1, #0xff
	adds r1, #0x6d
	ldr r0, [r0]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo _0803028A
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo _08030284
	ldrb r0, [r7]
	cmp r0, #0
	bne _080302C4
	bl sub_802383A
	movs r0, #0x10
	bl sub_8018386
_080302BE
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_080302C4
	movs r0, #2
	bl sub_8018386
	b _080302BE

	thumb_func_start sub_80302CC
sub_80302CC ;@ 0x080302CC
	push {r3, r4, r5, r6, r7, lr}
	mov ip, r1
	cmp r1, #0
	beq _080302DE
	ldrb r1, [r0]
	adds r1, #1
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1f
	strb r1, [r0]
_080302DE
	movs r2, #0
	movs r7, #3
	lsls r7, r7, #0xa
_080302E4
	ldrb r1, [r0]
	movs r4, #1
	cmp r1, r2
	bne _080302EE
	movs r4, #0
_080302EE
	lsls r1, r2, #3
	adds r5, r1, r0
	adds r5, #0xff
	adds r5, #0x41
	ldr r3, [r5, #0x2c]
	ldrh r6, [r3, #0x26]
	lsls r1, r6, #0x14
	lsrs r1, r1, #0x1e
	cmp r1, r4
	beq _08030326
	lsls r1, r4, #0x1e
	lsrs r1, r1, #0x14
	bics r6, r7
	orrs r6, r1
	adds r4, r6, #0
	strh r4, [r3, #0x26]
	ldr r4, [r3]
	movs r6, #0x80
	orrs r4, r6
	str r4, [r3]
	ldr r3, [r5, #0x30]
	ldrh r4, [r3, #0x26]
	bics r4, r7
	orrs r1, r4
	strh r1, [r3, #0x26]
	ldr r1, [r3]
	orrs r1, r6
	str r1, [r3]
_08030326
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #2
	blo _080302E4
	mov r1, ip
	cmp r1, #0
	beq _08030340
	ldr r0, _08030594 ;@ =gUnknown_0300345C
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
_08030340
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8030346
sub_8030346 ;@ 0x08030346
	push {r0, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r0, sp, #0x10
	bl sub_80046F8
	ldr r0, [sp, #0x20]
	movs r4, #0
	strb r4, [r0]
	movs r0, #1
	bl sub_800E53C
	movs r0, #3
	bl sub_800E71C
	add r0, pc, #0x244 ;@ =_080305A8
	bl sub_800EF60
	movs r2, #4
	str r2, [sp, #0xc]
	movs r2, #0x3c
	movs r0, #0x70
	str r0, [sp, #4]
	str r2, [sp]
	ldr r0, [sp, #0x20]
	movs r1, #0x10
	str r1, [sp, #8]
	movs r1, #1
	movs r2, #1
	adds r3, r4, #0
	adds r0, #4
	adds r4, r0, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	movs r6, #0xff
	adds r3, r6, #0
	movs r2, #0
	adds r0, r4, #0
	ldr r1, _080305B8 ;@ =0x000004E3
	bl sub_80138E2
	movs r4, #0
	movs r7, #0xe
_080303A2
	movs r2, #4
	str r2, [sp, #0xc]
	lsls r2, r4, #5
	movs r0, #0x50
	str r0, [sp, #4]
	adds r2, #0x52
	movs r1, #0x10
	str r1, [sp, #8]
	str r2, [sp]
	lsls r0, r4, #4
	subs r0, r0, r4
	ldr r1, [sp, #0x20]
	lsls r0, r0, #3
	adds r5, r0, r1
	adds r5, #0x7c
	movs r1, #0
	movs r2, #0
	adds r3, r7, #0
	adds r0, r5, #0
	bl sub_803F9C4
	movs r1, #4
	adds r0, r5, #0
	bl sub_80147FA
	ldr r0, _080305BC ;@ =0x000004E4
	adds r3, r6, #0
	movs r2, #0
	adds r1, r4, r0
	adds r0, r5, #0
	bl sub_80138E2
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo _080303A2
	movs r7, #0
_080303EE
	lsls r0, r7, #5
	adds r0, #0x50
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	lsls r0, r7, #3
	movs r5, #0
	adds r1, r0, r1
	str r1, [sp, #0x18]
_080303FE
	ldr r0, _080305A4 ;@ =gUnknown_03003448
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, [sp, #0x18]
	lsls r2, r5, #2
	adds r6, r1, r2
	adds r6, #0xff
	adds r6, #0x41
	ldr r1, _080305C0 ;@ =0x00000CA9
	str r0, [r6, #0x2c]
	adds r1, r5, r1
	bl sub_800065C
	lsls r1, r5, #6
	adds r1, #0xe
	ldr r4, [r6, #0x2c]
	ldr r0, [sp, #0x1c]
	add r3, sp, #0
	strh r1, [r3, #0xc]
	strh r0, [r3, #0xe]
	lsls r2, r1, #0x10
	ldrh r1, [r3, #0xe]
	ldr r0, [r4, #0x2c]
	lsls r3, r1, #0x10
	ldr r1, [r4, #0x30]
	str r2, [r4, #0x2c]
	str r3, [r4, #0x30]
	subs r1, r3, r1
	ldr r3, [r4, #0x34]
	subs r0, r2, r0
	adds r3, r3, r0
	str r3, [r4, #0x34]
	ldr r3, [r4, #0x38]
	adds r2, r4, #0
	adds r3, r3, r1
	str r3, [r4, #0x38]
	ldr r3, [r4, #0x3c]
	adds r2, #0x34
	adds r0, r3, r0
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r2, #0xc]
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	blt _08030476
	movs r1, #0xf
	ldr r0, [r4, #0x34]
	lsls r1, r1, #0x14
	cmp r0, r1
	bge _08030476
	ldr r0, [r4, #0x40]
	cmp r0, #0
	blt _08030476
	movs r1, #5
	ldr r0, [r4, #0x38]
	lsls r1, r1, #0x15
	cmp r0, r1
	blt _08030496
_08030476
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi _080304F0
	ldr r0, _080305C4 ;@ =gUnknown_03003EA0
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_800C1CA
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #9
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4]
	b _080304F0
_08030496
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bpl _080304B8
	ldr r0, _080305C4 ;@ =gUnknown_03003EA0
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_800BE0E
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #9
	bics r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4]
_080304B8
	ldr r0, [r4, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x28]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	lsrs r0, r0, #0x17
	orrs r0, r1
	strh r0, [r4, #0x28]
	ldr r0, [r4, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x26]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4]
_080304F0
	ldr r0, [r6, #0x2c]
	movs r2, #3
	ldrh r1, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r3, #0
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #0x2a]
	movs r2, #5
	strb r2, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _08030510
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_08030510
	ldr r4, [r6, #0x2c]
	movs r6, #1
	ldr r0, [r4]
	lsls r0, r0, #0x1f
	bmi _0803054C
	ldr r0, _080305C8 ;@ =gUnknown_03003EB8
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80011D8
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi _0803053A
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0803053A
	ldr r0, _080305C4 ;@ =gUnknown_03003EA0
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_800CD58
_0803053A
	ldr r0, [r4]
	orrs r0, r6
	str r0, [r4]
	lsls r1, r0, #0x1e
	bpl _0803054C
	movs r1, #0xff
	adds r1, #1
	orrs r0, r1
	str r0, [r4]
_0803054C
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	bhs _08030558
	b _080303FE
_08030558
	adds r7, #1
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x18
	cmp r7, #2
	bhs _08030564
	b _080303EE
_08030564
	bl sub_8018070
	movs r2, #0x3f
	movs r1, #8
	add r4, sp, #0x10
	adds r0, r4, #0
	bl sub_8004784
	movs r2, #8
	movs r1, #8
	adds r0, r4, #0
	bl sub_80047BE
	adds r0, r4, #0
	bl sub_803D66C
	movs r1, #0
	ldr r0, [sp, #0x20]
	bl sub_80302CC
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08030594 DCDU gUnknown_0300345C
_08030598 DCDU gUnknown_03003460
_0803059C DCDU gUnknown_03003D20
_080305A0 DCDU gUnknown_03003478
_080305A4 DCDU gUnknown_03003448
_080305A8 DCDU 0x654D6742
_080305AC DCDU 0x6147756E
_080305B0 DCDU 0x766F656D
_080305B4 DCDU 0x00007265
_080305B8 DCDU 0x000004E3
_080305BC DCDU 0x000004E4
_080305C0 DCDU 0x00000CA9
_080305C4 DCDU gUnknown_03003EA0
_080305C8 DCDU gUnknown_03003EB8
