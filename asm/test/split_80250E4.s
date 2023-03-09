    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003478
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT gUnknown_0805107A
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_800116A
	IMPORT sub_8001432
	IMPORT sub_802E4EE
	IMPORT sub_802E5D2
	IMPORT sub_803F2CC
	IMPORT sub_803FF24
	IMPORT sub_80401E4

	thumb_func_start sub_80250E4
sub_80250E4 ;@ 0x080250E4
	push {r4, r5, r6, lr}
	ldr r1, _0802538C ;@ =gUnknown_03003478
	adds r4, r0, #0
	ldr r1, [r1]
	movs r0, #0x10
	movs r5, #1
	ands r1, r0
	sub sp, #8
	beq _08025154
	ldr r0, [r4, #0x34]
	ldr r1, _08025390 ;@ =gUnknown_0805107A
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08025390 ;@ =gUnknown_0805107A
	ldrsb r1, [r1, r0]
	ldr r3, [r4, #0x14]
	adds r2, #4
	ldrsb r0, [r2, r0]
	adds r3, #0x2c
	ldr r6, [r3]
	ldr r3, [r3, #4]
	subs r0, #4
	lsls r2, r0, #0x10
	lsls r1, r1, #0x10
	adds r0, r6, r1
	str r3, [r4, #0x20]
	str r6, [r4, #0x1c]
	adds r1, r3, r2
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [r4, #4]
	mov r1, sp
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	ldr r2, _08025390 ;@ =gUnknown_0805107A
	lsls r1, r0, #0x18
	ldr r0, _08025390 ;@ =gUnknown_0805107A
	lsrs r1, r1, #0x18
	adds r0, #8
	ldrsb r0, [r0, r1]
	adds r2, #0xc
	ldrsb r1, [r2, r1]
	ldr r2, [r4, #0x1c]
	lsls r0, r0, #0x10
	adds r0, r2, r0
	ldr r2, [r4, #0x20]
	subs r1, #4
	lsls r1, r1, #0x10
	adds r1, r2, r1
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [r4, #0x3c]
	mov r1, sp
	bl sub_803FF24
_08025154
	ldr r1, _08025394 ;@ =0xFFFE0001
	ldr r0, [r4, #0x40]
	ldr r2, _08025398 ;@ =0x0001FFFE
	ands r1, r0
	adds r0, #2
	ands r0, r2
	orrs r0, r1
	str r0, [r4, #0x40]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bls _08025190
	ldr r0, [r4, #0x38]
	subs r0, #0xff
	subs r0, #0xba
	bne _08025190
	movs r0, #0xff
	adds r0, #0xbc
	adds r1, r0, #1
	str r0, [r4, #0x38]
	ldr r0, [r4, #4]
	movs r2, #0
	bl sub_80007A0
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
_08025190
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _080251C2
	ldr r1, [r4, #0x38]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	ldr r0, [r4, #0x40]
	orrs r0, r5
	str r0, [r4, #0x40]
_080251C2
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80251CA
sub_80251CA ;@ 0x080251CA
	push {r4, lr}
	adds r4, r0, #0
	bl sub_802E4EE
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _080251EC
	ldrh r0, [r0, #0x28]
	movs r2, #1
	lsls r2, r2, #0x1b
	ldr r1, [r4, #0x2c]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0x1b
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x2c]
_080251EC
	ldr r1, [r4, #0x3c]
	cmp r1, #0
	beq _0802520E
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq _0802520E
	movs r2, #1
	lsls r2, r2, #0xa
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _0802539C ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_8001432
_0802520E
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8025214
sub_8025214 ;@ 0x08025214
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #2
	bpl _0802530A
	ldr r0, [r4, #0x34]
	ldr r2, _08025390 ;@ =gUnknown_0805107A
	lsls r1, r0, #0x18
	ldr r0, _08025390 ;@ =gUnknown_0805107A
	lsrs r1, r1, #0x18
	ldrsb r0, [r0, r1]
	adds r2, #4
	ldrsb r1, [r2, r1]
	ldr r2, [r4, #0x1c]
	lsls r0, r0, #0x10
	adds r0, r2, r0
	ldr r2, [r4, #0x20]
	lsls r1, r1, #0x10
	adds r1, r2, r1
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [r4, #4]
	mov r1, sp
	bl sub_803FF24
	ldr r1, [r4, #0x34]
	ldr r0, [r4, #4]
	ldr r5, _08025390 ;@ =gUnknown_0805107A
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	ldrb r3, [r0, #5]
	subs r5, #8
	ldrb r2, [r5, r2]
	cmp r3, r2
	beq _08025268
	lsls r3, r1, #0xd
	lsrs r3, r3, #0x18
	adds r3, #1
	b _0802526E
_08025268
	lsls r3, r1, #0xd
	lsrs r3, r3, #0x18
	subs r3, #1
_0802526E
	cmp r3, #0
	beq _080252A4
	cmp r2, #0
	beq _0802527E
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	adds r1, #1
	b _08025284
_0802527E
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	subs r1, #1
_08025284
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
	bmi _080252A4
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_080252A4
	ldr r0, [r4, #0x34]
	ldr r2, _08025390 ;@ =gUnknown_0805107A
	lsls r1, r0, #0x18
	ldr r0, _08025390 ;@ =gUnknown_0805107A
	lsrs r1, r1, #0x18
	adds r0, #8
	ldrsb r0, [r0, r1]
	adds r2, #0xc
	ldrsb r1, [r2, r1]
	lsls r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _0802539C ;@ =gUnknown_03003EB8
	lsls r7, r1, #0x10
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x2c]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	ldr r5, [r4, #0x3c]
	lsls r1, r0, #0xe
	lsrs r1, r1, #0x1b
	lsls r0, r0, #8
	lsrs r6, r0, #0x1a
	ldr r0, _080253A0 ;@ =gUnknown_03003EA0
	str r1, [sp, #4]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [sp, #4]
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, _080253A4 ;@ =0x0010BE20
	strb r6, [r5, #3]
	muls r0, r6
	str r0, [r5, #8]
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	b _0802530C
_0802530A
	b _08025382
_0802530C
	movs r2, #2
	orrs r1, r2
	lsls r2, r2, #7
	bics r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r1, [sp, #8]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	str r0, [sp]
	adds r1, r1, r7
	str r1, [sp, #4]
	ldr r0, [r4, #0x3c]
	mov r1, sp
	bl sub_803FF24
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_803F2CC
	ldr r1, [r4, #0x34]
	ldr r3, _08025390 ;@ =gUnknown_0805107A
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r4, #0x3c]
	subs r3, #4
	ldrb r2, [r3, r2]
	cmp r2, #0
	beq _0802534E
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	adds r1, #1
	b _08025354
_0802534E
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x18
	subs r1, #1
_08025354
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
	bmi _08025374
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_08025374
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
_08025382
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0802538C DCDU gUnknown_03003478
_08025390 DCDU gUnknown_0805107A
_08025394 DCDU 0xFFFE0001
_08025398 DCDU 0x0001FFFE
_0802539C DCDU gUnknown_03003EB8
_080253A0 DCDU gUnknown_03003EA0
_080253A4 DCDU 0x0010BE20
