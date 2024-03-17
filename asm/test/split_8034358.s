    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_8001432
	IMPORT sub_802E47A
	IMPORT sub_802E4EE
	IMPORT sub_802E5D2
	IMPORT sub_803F6B4
	IMPORT sub_803FF24
	IMPORT sub_80401C0
	IMPORT sub_80401E4

	thumb_func_start sub_8034358
sub_8034358 ;@ 0x08034358
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_802E4EE
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _08034402
	bl sub_803F6B4
	ldr r1, [r4, #0x30]
	lsls r0, r0, #0x13
	lsrs r1, r1, #0xd
	lsls r1, r1, #0xd
	lsrs r0, r0, #0x13
	orrs r0, r1
	str r0, [r4, #0x30]
	ldr r0, _080344D8 ;@ =gUnknown_03003EA0
	ldr r5, [r4, #0x3c]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	movs r2, #0x1f
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x48]
	lsls r2, r2, #0xd
	subs r0, r1, r0
	asrs r0, r0, #2
	ldr r1, [r4, #0x30]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0xe
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x30]
	ldr r1, [r4, #0x3c]
	movs r3, #0x3f
	ldrb r2, [r1, #3]
	lsls r3, r3, #0x12
	bics r0, r3
	lsls r2, r2, #0x1a
	lsrs r2, r2, #8
	orrs r0, r2
	str r0, [r4, #0x30]
	ldr r2, [r1]
	movs r3, #1
	lsls r3, r3, #0x1c
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1f
	bics r0, r3
	lsls r2, r2, #0x1c
	orrs r2, r0
	str r2, [r4, #0x30]
	ldr r0, [r1]
	lsrs r3, r3, #4
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bics r2, r3
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r4, #0x30]
	ldr r0, [r1]
	lsls r3, r3, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #6
	bics r2, r3
	orrs r0, r2
	lsls r2, r3, #4
	orrs r0, r2
	str r0, [r4, #0x30]
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq _08034402
	lsrs r2, r3, #0xf
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _080344DC ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_8001432
_08034402
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8034408
sub_8034408 ;@ 0x08034408
	push {r4, lr}
	adds r4, r0, #0
	bl sub_802E47A
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _08034426
	ldr r0, _080344DC ;@ =gUnknown_03003EB8
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
_08034426
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_803442C
sub_803442C ;@ 0x0803442C
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_802E5D2
	ldr r0, [r4, #0x30]
	lsls r0, r0, #2
	bpl _080344D0
	ldr r0, _080344DC ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_800116A
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x30]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x13
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x30]
	ldr r5, [r4, #0x3c]
	lsls r1, r0, #0xe
	lsrs r7, r1, #0x1b
	lsls r0, r0, #8
	lsrs r6, r0, #0x1a
	ldr r0, _080344D8 ;@ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	movs r2, #2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	lsls r1, r7, #2
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, _080344E0 ;@ =0x0010BE20
	strb r6, [r5, #3]
	muls r0, r6
	str r0, [r5, #8]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x3c]
	lsls r1, r1, #3
	lsrs r3, r1, #0x1f
	movs r1, #0xff
	adds r1, #1
	cmp r3, #0
	ldr r3, [r0]
	beq _0803449A
	orrs r2, r3
	bics r2, r1
	str r2, [r0]
	b _080344A0
_0803449A
	bics r3, r2
	bics r3, r1
	str r3, [r0]
_080344A0
	adds r1, r4, #0
	adds r1, #0x1c
	ldr r0, [r4, #0x3c]
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x18
	ldr r0, [r4, #0x3c]
	bl sub_80401C0
	ldr r0, [r4, #0x30]
	lsls r0, r0, #7
	bpl _080344C2
	ldr r0, [r4, #0x3c]
	bl sub_8000914
_080344C2
	ldr r0, [r4, #0x30]
	lsls r0, r0, #6
	bpl _080344D0
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
_080344D0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_080344D8 DCDU gUnknown_03003EA0
_080344DC DCDU gUnknown_03003EB8
_080344E0 DCDU 0x0010BE20
	END