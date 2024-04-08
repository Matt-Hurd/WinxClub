    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003D20
	IMPORT gUnknown_03003EB8
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_80012F0
	IMPORT sub_8001338
	IMPORT sub_801D788
	IMPORT sub_801D9B0
	IMPORT sub_801F0F0
	IMPORT sub_8028BE4
	IMPORT sub_8028C2E
	IMPORT sub_803BE1C
	IMPORT sub_803F2CC
	IMPORT sub_803F6B4
	IMPORT sub_803F6E0
	IMPORT sub_803F898
	IMPORT sub_803FC14
	IMPORT sub_80401C0
	IMPORT sub_80401E4
	IMPORT sub_80404B4

	thumb_func_start sub_8021248
sub_8021248 ;@ 0x08021248
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r6, #0x80
	ldr r1, [r6, #4]
	adds r4, r0, #0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	sub sp, #0xc
	blo _08021274
	cmp r0, #0x18
	bhi _08021274
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x18
	cmp r0, #1
	blo _0802126C
	cmp r0, #0x18
	bls _08021274
_0802126C
	lsrs r1, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r6, #4]
_08021274
	ldr r1, [r6, #4]
	adds r5, r4, #0
	adds r5, #0xff
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	adds r5, #1
	movs r7, #0
	cmp r0, #0xf7
	beq _0802136A
	bgt _080212E4
	cmp r0, #0xf3
	beq _0802136C
	bgt _080212A0
	cmp r0, #0
	beq _08021308
	cmp r0, #0xec
	beq _0802136E
	cmp r0, #0xed
	beq _080212AC
	cmp r0, #0xf2
	bne _08021370
	b _08021372
_080212A0
	cmp r0, #0xf4
	beq _08021372
	cmp r0, #0xf5
	beq _08021372
	cmp r0, #0xf6
	bne _08021370
_080212AC
	ldr r0, [r6, #0x1c]
	cmp r0, #5
	bne _08021398
	ldr r0, [r4, #0x30]
	ldrh r1, [r0, #0x26]
	lsls r2, r1, #0x14
	lsrs r2, r2, #0x1e
	cmp r2, #1
	beq _080212D4
	movs r2, #3
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_080212D4
	ldr r0, [r4, #0x30]
	ldrb r1, [r0, #5]
	cmp r1, #0xbe
	beq _080213C4
	movs r1, #0xbe
	bl sub_80401C0
	b _080213C4
_080212E4
	adds r2, r0, #0
	subs r2, #0xf8
	cmp r2, #8
	bhs _080212F6
	add r3, pc, #0x8 ;@ =_080212F8
	adds r3, r3, r2
	ldrh r3, [r3, r2]
	lsls r3, r3, #1
	add pc, r3
_080212F6
	b _08021370
_080212F8
	DCB 0x36, 0x01
_080212FA
	DCB 0xAF, 0x02
_080212FC
	DCB 0x8B, 0x03
_080212FE
	DCB 0xF6, 0x00
_08021300
	DCB 0x8B, 0x03
_08021302
	DCB 0xF6, 0x00
_08021304
	DCB 0x4E, 0x03
_08021306
	DCB 0xBD, 0x00
_08021308
	ldr r0, [r5, #0x3c]
	lsls r1, r0, #0xf
	bpl _08021324
	movs r1, #1
	lsls r1, r1, #0x10
	bics r0, r1
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x24]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _08021324
	movs r1, #0
	bl sub_80401E4
_08021324
	ldr r0, [r6, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	cmp r0, #0xfa
	beq _08021332
	cmp r0, #0xfc
	bne _080213D6
_08021332
	ldr r0, [r5, #0x3c]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #8
	beq _08021342
	ldr r0, [r6, #0x1c]
	cmp r0, #0xc
	bne _080213D4
_08021342
	ldr r0, _080216F8 ;@ =gUnknown_0300345C
	ldr r1, [r0]
	movs r0, #0x15
	lsls r0, r0, #7
	adds r0, r0, r1
	bl sub_8028C2E
	movs r0, #0x6e
	strh r0, [r4, #0xe]
	movs r0, #0x6f
	strh r0, [r4, #0xa]
	movs r0, #0x70
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	movs r0, #0x5c
	strh r0, [r4, #0x1e]
	movs r0, #0x5d
	strh r0, [r4, #0x1a]
	movs r0, #0x5e
	b _08021374
_0802136A
	b _0802157E
_0802136C
	b _0802193C
_0802136E
	b _080214D8
_08021370
	b _08021994
_08021372
	b _080218E4
_08021374
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	ldr r0, [r4, #0x2c]
	movs r3, #1
	ldr r1, [r0]
	lsls r3, r3, #0xb
	lsls r2, r1, #0x14
	asrs r2, r2, #0x1f
	adds r2, #1
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x14
	bics r1, r3
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x30]
	movs r1, #4
	ldr r2, [r0]
	b _0802139A
_08021398
	b _080215E2
_0802139A
	bics r2, r1
	orrs r2, r1
	str r2, [r0]
	ldr r0, [r4, #0x74]
	str r0, [r4, #0x70]
	ldr r0, [r5, #0x3c]
	lsrs r0, r0, #4
	lsls r0, r0, #4
	str r0, [r5, #0x3c]
	str r1, [r6, #0x1c]
	str r7, [r4, #0x78]
	ldr r0, [r4, #0x30]
	bl sub_803F898
	ldr r1, _080216FC ;@ =0x000011EF
	cmp r0, r1
	beq _080213C6
	ldr r0, [r4, #0x30]
	bl sub_800065C
	b _080213C6
_080213C4
	b _080214D6
_080213C6
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _080213D4
	movs r1, #1
	bl sub_80401E4
_080213D4
	b _08021428
_080213D6
	cmp r0, #0xf8
	beq _080213DE
	cmp r0, #0xf7
	bne _08021428
_080213DE
	movs r0, #0x6e
	strh r0, [r4, #0xe]
	movs r0, #0x6f
	strh r0, [r4, #0xa]
	movs r0, #0x70
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	ldr r0, [r4, #0x30]
	movs r2, #3
	ldrh r1, [r0, #0x26]
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x30]
	ldrb r1, [r0, #5]
	cmp r1, #0xbe
	beq _08021414
	movs r1, #0xbe
	bl sub_80401C0
_08021414
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _08021422
	movs r1, #1
	bl sub_80401E4
_08021422
	ldr r0, [r4, #0x74]
	str r0, [r4, #0x70]
	str r7, [r6, #0x1c]
_08021428
	ldr r0, [r4, #0x30]
	bl sub_803F898
	ldr r5, _080216FC ;@ =0x000011EF
	cmp r0, r5
	blo _08021440
	ldr r0, [r4, #0x30]
	bl sub_803F898
	adds r1, r5, #3
	cmp r0, r1
	bls _080214D6
_08021440
	adds r1, r5, #0
	ldr r0, [r4, #0x30]
	bl sub_800065C
	ldr r0, [r4, #0x30]
	movs r2, #3
	ldrh r1, [r0, #0x26]
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x30]
	ldrb r1, [r0, #5]
	cmp r1, #0xbe
	beq _080214D6
	movs r1, #0xbe
	bl sub_80401C0
	b _080214D6
loc_8021472
	ldr r0, [r5, #0x3c]
	lsls r1, r0, #0xf
	bpl _0802148E
	movs r1, #1
	lsls r1, r1, #0x10
	bics r0, r1
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x24]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _0802148E
	movs r1, #0
	bl sub_80401E4
_0802148E
	ldr r0, [r4, #0x30]
	bl sub_803F898
	ldr r5, _080216FC ;@ =0x000011EF
	cmp r0, r5
	blo _080214A6
	ldr r0, [r4, #0x30]
	bl sub_803F898
	adds r1, r5, #3
	cmp r0, r1
	bls _080214D6
_080214A6
	adds r1, r5, #0
	ldr r0, [r4, #0x30]
	bl sub_800065C
	ldr r0, [r4, #0x30]
	movs r2, #3
	ldrh r1, [r0, #0x26]
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x30]
	ldrb r1, [r0, #5]
	cmp r1, #0xbe
	beq _080214D6
	movs r1, #0xbe
	bl sub_80401C0
_080214D6
	b _0802157C
_080214D8
	movs r1, #1
	ldr r0, [r5, #0x3c]
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r5, #0x3c]
	b _0802157C
loc_80214e4
	ldr r0, [r5, #0x3c]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #8
	beq _080214F4
	ldr r0, [r6, #0x1c]
	cmp r0, #0xc
	bne _0802157C
_080214F4
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x18
	cmp r0, #0xfa
	beq _08021500
	cmp r0, #0xfc
	bne _0802157C
_08021500
	movs r0, #0x5c
	strh r0, [r4, #0x1e]
	movs r0, #0x5d
	strh r0, [r4, #0x1a]
	movs r0, #0x5e
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	ldr r0, [r4, #0x2c]
	movs r3, #1
	ldr r1, [r0]
	lsls r3, r3, #0xb
	lsls r2, r1, #0x14
	asrs r2, r2, #0x1f
	adds r2, #1
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x14
	bics r1, r3
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x30]
	movs r1, #4
	ldr r2, [r0]
	bics r2, r1
	orrs r2, r1
	str r2, [r0]
	ldr r0, [r4, #0x74]
	str r0, [r4, #0x70]
	ldr r0, [r5, #0x3c]
	lsrs r0, r0, #4
	lsls r0, r0, #4
	str r0, [r5, #0x3c]
	str r1, [r6, #0x1c]
	str r7, [r4, #0x78]
	ldr r0, [r4, #0x30]
	bl sub_803F898
	ldr r1, _080216FC ;@ =0x000011EF
	cmp r0, r1
	beq _08021554
	ldr r0, [r4, #0x30]
	bl sub_800065C
_08021554
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _0802157C
	movs r1, #1
	bl sub_80401E4
	b _0802157C
loc_8021564
	ldr r0, [r6, #0x1c]
	cmp r0, #0xa
	beq _0802157C
	movs r0, #0xa
	str r0, [r6, #0x1c]
	ldr r0, [r4, #0x70]
	lsrs r1, r0, #0x1f
	str r0, [r4, #0x74]
	adds r0, r1, r0
	asrs r0, r0, #1
	str r0, [r4, #0x70]
	str r7, [r4, #0x78]
_0802157C
	b _08021698
_0802157E
	ldr r0, [r6, #0x1c]
	cmp r0, #0xb
	beq _080215C0
	cmp r0, #5
	bne _080215A0
	ldr r0, [r5, #0x3c]
	lsls r1, r0, #0x1c
	bne _080215A0
	ldr r1, [r4, #0x74]
	lsrs r0, r0, #4
	str r1, [r4, #0x70]
	movs r1, #1
	lsls r0, r0, #4
	lsls r1, r1, #0x15
	bics r0, r1
	str r7, [r4, #0x74]
	str r0, [r5, #0x3c]
_080215A0
	movs r0, #0xb
	str r0, [r6, #0x1c]
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq _080215B2
	movs r1, #0
	bl sub_80401E4
_080215B2
	ldr r0, [r4, #0x70]
	str r0, [r4, #0x74]
	bl sub_80404B4
	str r1, [r4, #0x70]
	str r7, [r4, #0x78]
	b _08021698
_080215C0
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _08021698
	ldr r5, _080216F8 ;@ =gUnknown_0300345C
	movs r6, #0x4f
	ldr r0, [r5]
	lsls r6, r6, #5
	adds r0, r6, r0
	bl sub_8028BE4
	cmp r0, #0
	bne _08021698
	ldr r0, [r5]
	adds r0, r6, r0
	bl sub_8028C2E
	b _08021698
_080215E2
	ldr r0, _08021700 ;@ =gUnknown_03003D20
	ldrb r0, [r0]
	cmp r0, #0
	bne _080216BC
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x18
	cmp r0, #0xf7
	bne _08021614
	movs r0, #0x6e
	strh r0, [r4, #0xe]
	movs r0, #0x6f
	strh r0, [r4, #0xa]
	movs r0, #0x70
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	ldr r0, [r4, #0x74]
	str r0, [r4, #0x70]
	str r7, [r6, #0x1c]
	ldr r0, [r4, #0x30]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	bne _08021614
	movs r1, #1
	bl sub_80401E4
_08021614
	ldr r0, [r6, #0x1c]
	cmp r0, #0xd
	beq _080216BC
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #4
	lsrs r2, r1, #0x1c
	lsls r3, r2, #1
	adds r3, r3, r4
	ldrh r3, [r3, #0x18]
	cmp r0, r3
	bne _080216F4
	ldr r0, [r5, #0x3c]
	movs r7, #0xf
	lsls r7, r7, #0xc
	adds r3, r0, #0
	bics r0, r7
	movs r7, #1
	lsls r7, r7, #0xc
	subs r3, r3, r7
	movs r7, #0xf
	lsls r7, r7, #0xc
	ands r3, r7
	orrs r0, r3
	lsls r3, r0, #0x10
	lsrs r3, r3, #0x1c
	str r0, [r5, #0x3c]
	bne _080216BC
	adds r3, r7, #0
	bics r0, r3
	movs r3, #1
	lsls r3, r3, #0xe
	adds r0, r0, r3
	movs r7, #3
	lsls r7, r7, #0xa
	adds r3, r0, #0
	bics r3, r7
	movs r7, #1
	lsls r7, r7, #0xa
	adds r0, r0, r7
	movs r7, #3
	lsls r7, r7, #0xa
	ands r0, r7
	orrs r0, r3
	lsls r3, r0, #0x14
	lsrs r3, r3, #0x1e
	cmp r3, #3
	str r0, [r5, #0x3c]
	blo _08021680
	adds r3, r7, #0
	bics r0, r3
	str r0, [r5, #0x3c]
_08021680
	lsrs r0, r1, #0x1c
	beq _08021688
	cmp r2, #2
	bne _080216BE
_08021688
	ldr r0, _08021704 ;@ =gPlayerEntity
	ldr r0, [r0]
	adds r0, #0x90
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0802169A
	ldr r7, _08021708 ;@ =0x00000325
	b _080216A4
_08021698
	b _080218D8
_0802169A
	cmp r0, #0xb
	bne _080216A2
	ldr r7, _0802170C ;@ =0x000002C1
	b _080216A4
_080216A2
	ldr r7, _08021710 ;@ =0x000002E2
_080216A4
	ldr r0, [r4, #0x30]
	bl sub_803F898
	ldr r1, [r5, #0x3c]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x1e
	adds r1, r1, r7
	cmp r0, r1
	beq _080216BC
	ldr r0, [r4, #0x30]
	bl sub_800065C
_080216BC
	b _080217D2
_080216BE
	ldr r0, _08021704 ;@ =gPlayerEntity
	ldr r0, [r0]
	adds r0, #0x90
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _080216CE
	ldr r7, _08021714 ;@ =0x0000031F
	b _080216DA
_080216CE
	cmp r0, #0xb
	bne _080216D6
	ldr r7, _08021718 ;@ =0x000002BB
	b _080216DA
_080216D6
	movs r7, #0xb7
	lsls r7, r7, #2
_080216DA
	ldr r0, [r4, #0x30]
	bl sub_803F898
	ldr r1, [r5, #0x3c]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x1e
	adds r1, r1, r7
	cmp r0, r1
	beq _080217D2
	ldr r0, [r4, #0x30]
	bl sub_800065C
	b _080217D2
_080216F4
	b _0802171C
	ALIGN
_080216F8 DCDU gUnknown_0300345C
_080216FC DCDU 0x000011EF
_08021700 DCDU gUnknown_03003D20
_08021704 DCDU gPlayerEntity
_08021708 DCDU 0x00000325
_0802170C DCDU 0x000002C1
_08021710 DCDU 0x000002E2
_08021714 DCDU 0x0000031F
_08021718 DCDU 0x000002BB
_0802171C
	ldr r0, [r4, #0x2c]
	bl sub_803F6E0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _08021A1C ;@ =gPlayerEntity
	ldr r0, [r0]
	adds r0, #0x90
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _08021740
	ldr r1, _08021A20 ;@ =0x00000307
	adds r2, r1, #0
	adds r2, #8
	adds r0, r1, #0
	adds r0, #0x10
	b _0802175C
_08021740
	cmp r0, #0xb
	bne _08021750
	ldr r1, _08021A24 ;@ =0x000002A3
	adds r2, r1, #0
	adds r2, #8
	adds r0, r1, #0
	adds r0, #0x10
	b _0802175C
_08021750
	movs r1, #0xb1
	lsls r1, r1, #2
	adds r2, r1, #0
	adds r2, #8
	adds r0, r1, #0
	adds r0, #0x10
_0802175C
	ldr r3, [r4, #0x7c]
	lsls r3, r3, #4
	lsrs r3, r3, #0x1c
	beq _08021826
	cmp r3, #1
	beq _0802182A
	cmp r3, #2
	beq _0802182E
	cmp r3, #3
	bne _08021772
	adds r5, r1, #0
_08021772
	ldr r0, [r4, #0x30]
	bl sub_803F898
	ldr r1, [sp, #8]
	subs r0, r0, r5
	cmp r0, r1
	beq _0802178A
	ldr r0, [sp, #8]
	adds r1, r5, r0
	ldr r0, [r4, #0x30]
	bl sub_800065C
_0802178A
	ldr r5, _08021A28 ;@ =gUnknown_0300345C
	movs r0, #5
	ldr r1, [r5]
	lsls r0, r0, #9
	adds r0, r0, r1
	bl sub_8028BE4
	cmp r0, #0
	bne _080217DC
	movs r0, #0x51
	ldr r1, [r5]
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028BE4
	cmp r0, #0
	bne _080217DC
	movs r0, #0x29
	ldr r1, [r5]
	lsls r0, r0, #6
	adds r0, r0, r1
	bl sub_8028BE4
	cmp r0, #0
	bne _080217DC
	bl sub_803BE1C
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne _080217CA
	movs r0, #0
_080217CA
	adds r0, #0x50
	lsls r0, r0, #0x18
	ldr r1, [r5]
	b _080217D4
_080217D2
	b _0802180C
_080217D4
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_8028C2E
_080217DC
	ldr r0, [r4, #0x30]
	ldrh r1, [r0, #0x26]
	lsls r2, r1, #0x14
	lsrs r2, r2, #0x1e
	beq _080217F8
	movs r2, #3
	lsls r2, r2, #0xa
	bics r1, r2
	orrs r1, r7
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_080217F8
	ldr r0, [r4, #0x30]
	ldrh r1, [r0, #0x28]
	ldr r2, [sp, #4]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1f
	cmp r1, r2
	beq _0802180C
	ldr r1, [sp, #4]
	bl sub_803F2CC
_0802180C
	ldr r0, [r6, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf6
	ldr r0, [r4, #0x2c]
	ldrb r1, [r0, #5]
	bne _08021836
	cmp r1, #0x80
	bhs _08021840
	movs r1, #0x82
	bl sub_80401C0
	b _08021840
_08021826
	adds r5, r0, #0
	b _08021772
_0802182A
	adds r5, r2, #0
	b _08021772
_0802182E
	adds r5, r0, #0
	movs r0, #1
	str r0, [sp, #4]
	b _08021772
_08021836
	cmp r1, #0x80
	bls _08021840
	movs r1, #0x42
	bl sub_80401C0
_08021840
	ldr r0, [r4, #0x2c]
	ldrb r2, [r0, #5]
	ldr r0, [r4, #0x30]
	ldrb r3, [r0, #5]
	subs r2, #1
	adds r1, r2, #0
	cmp r2, r3
	beq _080218D8
	bl sub_80401C0
	b _080218D8
loc_8021856
	ldr r0, [r6, #0x1c]
	cmp r0, #5
	bne _08021866
	ldr r0, [r5, #0x3c]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #8
	bne _080218D8
_08021866
	ldr r0, [r4, #0x2c]
	bl sub_803F6B4
	cmp r0, #0x55
	beq _080218AC
	movs r2, #0
	movs r1, #0x55
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _08021894
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_08021894
	ldr r0, [r4, #0x2c]
	movs r3, #1
	ldr r1, [r0]
	lsls r3, r3, #0xb
	lsls r2, r1, #0x14
	asrs r2, r2, #0x1f
	adds r2, #1
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x14
	bics r1, r3
	orrs r1, r2
	str r1, [r0]
_080218AC
	ldr r0, [r6, #0x1c]
	cmp r0, #0xc
	beq _080218DA
	ldr r0, [r4, #0x30]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r7
	str r1, [r0]
	ldr r0, [r4, #0x70]
	movs r1, #0xf
	str r0, [r4, #0x74]
	movs r0, #0xc
	str r0, [r6, #0x1c]
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x18
	bics r0, r1
	lsls r1, r2, #0x16
	adds r0, r0, r1
	str r0, [r4, #0x7c]
	lsrs r0, r1, #2
	str r0, [r4, #0x78]
_080218D8
	b _08021992
_080218DA
	ldr r1, _08021A2C ;@ =0x00001998
	ldr r0, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x70]
	b _08021992
_080218E4
	ldr r0, [r4, #0x2c]
	ldrb r1, [r0, #5]
	cmp r1, #0x80
	bls _080218F2
	movs r1, #0x42
	bl sub_80401C0
_080218F2
	ldr r0, [r4, #0x30]
	bl sub_803F898
	ldr r5, _08021A30 ;@ =0x000011EF
	cmp r0, r5
	blo _0802190A
	ldr r0, [r4, #0x30]
	bl sub_803F898
	adds r1, r5, #3
	cmp r0, r1
	bls _08021992
_0802190A
	adds r1, r5, #0
	ldr r0, [r4, #0x30]
	bl sub_800065C
	ldr r0, [r4, #0x30]
	movs r2, #3
	ldrh r1, [r0, #0x26]
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x30]
	ldrb r1, [r0, #5]
	cmp r1, #0xbe
	beq _08021992
	movs r1, #0xbe
	bl sub_80401C0
	b _08021992
_0802193C
	ldr r0, [r4, #0x2c]
	ldrb r1, [r0, #5]
	cmp r1, #0x80
	bhs _0802194A
	movs r1, #0x82
	bl sub_80401C0
_0802194A
	ldr r0, [r4, #0x30]
	bl sub_803F898
	ldr r5, _08021A30 ;@ =0x000011EF
	cmp r0, r5
	blo _08021962
	ldr r0, [r4, #0x30]
	bl sub_803F898
	adds r1, r5, #3
	cmp r0, r1
	bls _08021992
_08021962
	adds r1, r5, #0
	ldr r0, [r4, #0x30]
	bl sub_800065C
	ldr r0, [r4, #0x30]
	movs r2, #3
	ldrh r1, [r0, #0x26]
	lsls r2, r2, #0xa
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x30]
	ldrb r1, [r0, #5]
	cmp r1, #0xbe
	beq _08021992
	movs r1, #0xbe
	bl sub_80401C0
_08021992
	b _08021A0E
_08021994
	cmp r0, #0x40
	blo _08021A0E
	cmp r0, #0x80
	bhi _08021A0E
	lsls r2, r0, #2
	adds r2, r2, r4
	ldr r2, [r2, #0x50]
	cmp r2, #0
	beq _08021A0E
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x18
	cmp r0, r1
	beq _08021A0E
	adds r1, r2, #0
	adds r0, r4, #0
	bl sub_801D9B0
	cmp r0, #0
	beq _080219C2
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_801D788
_080219C2
	ldr r0, [r6, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x40
	blo _08021A0E
	cmp r0, #0x43
	bhi _08021A0E
	movs r1, #1
	ldr r0, [r6, #0xc]
	lsls r1, r1, #0xc
	bics r0, r1
	orrs r0, r7
	str r0, [r6, #0xc]
	lsls r0, r0, #0x13
	ldr r5, [r4, #0x30]
	lsrs r6, r0, #0x1f
	ldr r0, _08021A34 ;@ =gUnknown_03003EB8
	ldr r1, [r5]
	beq _080219F6
	lsls r1, r1, #0x1c
	bmi _08021A02
	ldr r0, [r0]
	adds r1, r5, #0
	bl sub_80012F0
	b _08021A02
_080219F6
	lsls r1, r1, #0x1c
	bpl _08021A02
	ldr r0, [r0]
	adds r1, r5, #0
	bl sub_8001338
_08021A02
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	lsls r1, r6, #3
	orrs r0, r1
	str r0, [r5]
_08021A0E
	adds r0, r4, #0
	bl sub_801F0F0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08021A1C DCDU gPlayerEntity
_08021A20 DCDU 0x00000307
_08021A24 DCDU 0x000002A3
_08021A28 DCDU gUnknown_0300345C
_08021A2C DCDU 0x00001998
_08021A30 DCDU 0x000011EF
_08021A34 DCDU gUnknown_03003EB8
	END