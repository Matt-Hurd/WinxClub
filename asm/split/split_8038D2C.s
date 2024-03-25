    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003444
	IMPORT gUnknown_080514B0
	IMPORT sub_800EF2A
	IMPORT sub_80143E0
	IMPORT sub_8014436
	IMPORT sub_8018386
	IMPORT sub_8038888
	IMPORT sub_803894A
	IMPORT sub_80389CC
	IMPORT sub_803C3A4
	IMPORT sub_803C3C8

	thumb_func_start sub_8038D2C
sub_8038D2C ;@ 0x08038D2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x20
	add r5, sp, #4
	adds r1, r5, #0
	adds r1, #0xf8
	adds r6, r1, #0
	adds r0, r5, #0
	movs r2, #0x78
	adds r0, #8
	ldr r3, _08038E2C ;@ =sub_80143E0
	bl sub_803C3A4
	adds r0, r6, #0
	bl sub_80143E0
	adds r0, r5, #0
	adds r0, #0xff
	adds r0, #0x71
	adds r7, r0, #0
	bl sub_80143E0
	movs r4, #0
	adds r0, r5, #0
	bl sub_80389CC
_08038D60
	ldr r0, _08038E30 ;@ =gUnknown_03003444
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi _08038D6E
	ldrh r1, [r0, #6]
_08038D6E
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #0x1e
	bpl _08038D7A
	movs r4, #1
	b _08038DBC
_08038D7A
	lsls r1, r0, #0x1f
	bpl _08038D82
	movs r4, #2
	b _08038DBC
_08038D82
	lsls r1, r0, #0x1a
	bpl _08038D92
	movs r1, #0
	mvns r1, r1
	adds r0, r5, #0
	bl sub_803894A
	b _08038DBC
_08038D92
	lsls r1, r0, #0x1b
	bpl _08038DA0
	movs r1, #1
	adds r0, r5, #0
	bl sub_803894A
	b _08038DBC
_08038DA0
	lsls r1, r0, #0x19
	bpl _08038DB0
	movs r1, #3
	mvns r1, r1
	adds r0, r5, #0
	bl sub_803894A
	b _08038DBC
_08038DB0
	lsls r0, r0, #0x18
	bpl _08038DBC
	movs r1, #4
	adds r0, r5, #0
	bl sub_803894A
_08038DBC
	bl sub_800EF2A
	cmp r4, #0
	beq _08038D60
	cmp r4, #2
	bne _08038DF4
	movs r0, #0x21
	lsls r0, r0, #4
	adds r0, r5, r0
	ldrb r0, [r0, #4]
	lsls r1, r4, #8
	movs r2, #0x90
	adds r0, r0, r5
	adds r0, r0, r1
	ldrb r0, [r0, #0xc]
	ldr r1, _08038E34 ;@ =gUnknown_080514B0
	ldrb r1, [r1, r0]
	ldr r0, _08038E38 ;@ =gPlayerEntity
	ldr r0, [r0]
	strb r1, [r2, r0]
	ldr r1, _08038E3C ;@ =0x0000FFFF
	adds r0, #0x80
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	movs r0, #0xf
	bl sub_8018386
	b _08038DFA
_08038DF4
	movs r0, #0x11
	bl sub_8018386
_08038DFA
	adds r0, r5, #0
	bl sub_8038888
	movs r1, #0
	adds r0, r7, #0
	bl sub_8014436
	movs r1, #0
	adds r0, r6, #0
	bl sub_8014436
	movs r2, #0x77
	adds r1, r5, #0
	subs r1, #0x70
	mvns r2, r2
	adds r0, r5, #0
	adds r0, #0x80
	ldr r3, _08038E40 ;@ =sub_8014436
	bl sub_803C3C8
	add sp, #0x1fc
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08038E2C DCDU sub_80143E0
_08038E30 DCDU gUnknown_03003444
_08038E34 DCDU gUnknown_080514B0
_08038E38 DCDU gPlayerEntity
_08038E3C DCDU 0x0000FFFF
_08038E40 DCDU sub_8014436
	END