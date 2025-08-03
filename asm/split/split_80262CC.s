	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT sub_8000D5A
	IMPORT sub_801EBCA
	IMPORT rand

	thumb_func_start sub_80262CC
sub_80262CC
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrh r0, [r0, #0x1a]
	adds r6, r4, #0
	adds r6, #0x80
	cmp r0, #0
	ldr r7, _08026684
	beq _0802632E
	ldr r5, [r4, #0x2c]
	ldr r0, [r7]
	bl sub_8000D5A
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [r5, #0x48]
	subs r0, r1, r0
	asrs r0, r0, #2
	bne _0802632E
	ldr r5, [r4, #0x2c]
	ldr r0, [r7]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _08026312
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_08026312
	lsls r0, r1, #0x10
	ldrh r1, [r4, #0x1a]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq _0802632E
	bl rand
	movs r1, #0xa0
	ldrh r1, [r1, r4]
	ands r0, r1
	bne _0802632E
	movs r0, #0x12
	str r0, [r6, #0x1c]
	b _08026360
_0802632E
	ldr r5, [r4, #0x2c]
	ldr r0, [r7]
	ldr r2, [r5, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq _08026348
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_08026348
	lsls r0, r1, #0x10
	ldrh r1, [r4, #0x1a]
	lsrs r0, r0, #0x10
	cmp r0, r1
	bne _08026360
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _08026360
	movs r0, #0x11
	str r0, [r6, #0x1c]
_08026360
	adds r0, r4, #0
	bl sub_801EBCA
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_802636C
sub_802636C
	subs r1, #0x42
	cmp r1, #0x14
	push {r4, lr}
	bhs _0802637E
	add r3, pc, #0xC
	adds r3, r3, r1
	ldrh r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
_0802637E
	pop {r4}
	pop {r3}
	bx r3
_08026384
	DCB 0x16, 0x00
_08026386
	DCB 0x20, 0x00
_08026388
	DCB 0x85, 0x00
_0802638A
	DCB 0x42, 0x00
_0802638C
	DCB 0xA8, 0x00
_0802638E
	DCB 0xBC, 0x00
_08026390
	DCB 0xDB, 0x00
_08026392
	DCB 0xFA, 0x00
_08026394
	DCB 0x0F, 0x01
_08026396
	DCB 0x21, 0x01
_08026398
	DCB 0x57, 0x01
_0802639A
	DCB 0xB0, 0x01
_0802639C
	DCB 0xD0, 0x01
_0802639E
	DCB 0x63, 0x00
_080263A0
	DCB 0x4D, 0x02
_080263A2
	DCB 0x3D, 0x02
_080263A4
	DCB 0x45, 0x02
_080263A6
	DCB 0x56, 0x02
_080263A8
	DCB 0x17, 0x02
_080263AA
	DCB 0xF1, 0x01
loc_80263ac
	movs r1, #0x13
	lsls r1, r1, #5
	strh r1, [r0, #0x18]
	movs r2, #0
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	b _0802637E
loc_80263c0
	ldr r1, _08026688
	ldr r3, _0802668C
	strh r1, [r0, #0x18]
	adds r2, r1, #1
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r3, _08026690
	ands r2, r3
	ldr r3, _08026694
	adds r2, r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026698
	ands r2, r3
	ldr r3, _0802669C
	adds r2, r2, r3
	str r2, [r1]
	movs r1, #0x3c
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x14
	strb r1, [r0, #0xc]
	b _0802637E
loc_8026404
	ldr r1, _080266A0
	ldr r3, _0802668C
	strh r1, [r0, #0x18]
	strh r1, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r3, _08026690
	ands r2, r3
	ldr r3, _080266A4
	adds r2, r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026698
	ands r2, r3
	ldr r3, _0802669C
	adds r2, r2, r3
	str r2, [r1]
	movs r1, #0x3c
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x14
	strb r1, [r0, #0xc]
	b _0802637E
loc_8026446
	ldr r1, _080266A8
	ldr r3, _080266AC
	strh r1, [r0, #0x18]
	adds r2, r1, #1
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r3, _08026690
	ands r2, r3
	ldr r3, _080266B0
	adds r2, r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026698
	ands r2, r3
	ldr r3, _0802669C
	adds r2, r2, r3
	str r2, [r1]
	movs r1, #0x3c
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x23
	strb r1, [r0, #0xc]
	b _0802637E
loc_802648a
	movs r1, #0xab
	lsls r1, r1, #2
	strh r1, [r0, #0x18]
	adds r2, r1, #1
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	ldr r3, _080266B4
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r3, _08026690
	ands r2, r3
	ldr r3, _080266B8
	adds r2, r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026698
	ands r2, r3
	ldr r3, _080266BC
	adds r2, r2, r3
	str r2, [r1]
	movs r1, #0x3c
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x14
	strb r1, [r0, #0xc]
	b _0802637E
loc_80264d0
	ldr r1, _080266C0
	movs r2, #4
	strh r1, [r0, #0x18]
	movs r1, #0
	strh r1, [r0, #0x1a]
	movs r1, #0x47
	lsls r1, r1, #3
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	movs r1, #1
	lsls r1, r1, #0xe
	str r1, [r0, #0x70]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r0, [r1]
	bics r0, r2
	str r0, [r1]
	b _0802637E
loc_80264f8
	movs r1, #0x91
	lsls r1, r1, #2
	strh r1, [r0, #0x18]
	movs r2, #0
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	ldr r3, _08026690
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	ands r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026698
	ands r2, r3
	ldr r3, _080266C4
	adds r2, r2, r3
	str r2, [r1]
	movs r1, #0x3c
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x14
	strb r1, [r0, #0xc]
_08026534
	b _0802637E
loc_8026536
	movs r1, #0x91
	lsls r1, r1, #2
	strh r1, [r0, #0x18]
	movs r2, #0
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	ldr r3, _08026690
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	ands r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026698
	ands r2, r3
	ldr r3, _080266C4
	adds r2, r2, r3
	str r2, [r1]
	movs r1, #0x3c
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x14
	strb r1, [r0, #0xc]
	b _0802637E
loc_8026574
	ldr r1, _080266C8
	movs r2, #0
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	movs r1, #3
	lsls r1, r1, #0xe
	str r1, [r0, #0x70]
	adds r0, #0x80
	ldr r1, [r0]
	movs r2, #4
	bics r1, r2
	str r1, [r0]
	ldr r1, [r0, #0x14]
	lsls r2, r2, #0x10
	bics r1, r2
	str r1, [r0, #0x14]
	b _0802637E
loc_802659e
	ldr r1, _080266CC
	movs r2, #0
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r0, #0x80
	ldr r1, [r0, #0x14]
	movs r2, #3
	lsls r2, r2, #0xf
	bics r1, r2
	movs r2, #1
	lsls r2, r2, #0x10
	adds r1, r1, r2
	str r1, [r0, #0x14]
	b _0802637E
loc_80265c2
	ldr r1, _080266D0
	movs r2, #0
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0x14]
	movs r3, #3
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0xf
	adds r2, r2, r3
	str r2, [r1, #0x14]
	lsls r2, r2, #0xf
	lsrs r2, r2, #0x1e
	cmp r2, #1
	beq _080265F6
	cmp r2, #2
	beq _080265F6
	movs r2, #1
	b _080265F8
_080265F6
	movs r2, #0
_080265F8
	movs r4, #1
	ldr r3, [r1, #0xc]
	lsls r4, r4, #0xe
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x11
	bics r3, r4
	orrs r2, r3
	str r2, [r1, #0xc]
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	beq _08026534
	ldrh r2, [r0, #0x2a]
	movs r1, #3
	lsls r1, r1, #0xa
	bics r2, r1
	lsrs r3, r4, #3
	orrs r2, r3
	strh r2, [r0, #0x2a]
	movs r1, #0xbf
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _08026534
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	b _0802637E
loc_802662e
	movs r1, #0xe1
	lsls r1, r1, #2
	strh r1, [r0, #0x18]
	movs r2, #0
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	ldr r3, _080266D4
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	ldr r3, [r1, #8]
	ldr r4, _08026690
	adds r0, #0x70
	ands r3, r4
	ldr r4, _080266D8
	adds r3, r3, r4
	str r3, [r1, #8]
	ldr r3, [r1]
	ldr r4, _08026698
	ands r3, r4
	ldr r4, _080266DC
	adds r3, r3, r4
	str r3, [r1]
	movs r3, #0x3c
	strb r3, [r0, #0xd]
	movs r3, #0x1e
	strb r3, [r0, #0xc]
	movs r0, #1
	lsls r0, r0, #0xc
	orrs r0, r2
	lsls r2, r3, #0xe
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x12
	adds r0, r0, r2
	str r0, [r1, #0xc]
	b _0802637E
	ALIGN
_08026684 DCDU gUnknown_03003EA0
_08026688 DCDU 0x00000289
_0802668C DCDU 0x00000522
_08026690 DCDU 0xFF8003FF
_08026694 DCDU 0x0044A000
_08026698 DCDU 0xFF8007FF
_0802669C DCDU 0x0027B800
_080266A0 DCDU 0x000002B5
_080266A4 DCDU 0x0043B000
_080266A8 DCDU 0x00000239
_080266AC DCDU 0x00000527
_080266B0 DCDU 0x0043C000
_080266B4 DCDU 0x00000523
_080266B8 DCDU 0x0044C000
_080266BC DCDU 0x0027D800
_080266C0 DCDU 0x00000237
_080266C4 DCDU 0x0027E800
_080266C8 DCDU 0x000002AE
_080266CC DCDU 0x0000024D
_080266D0 DCDU 0x0000026E
_080266D4 DCDU 0x0000052D
_080266D8 DCDU 0x00451800
_080266DC DCDU 0x0027B000
loc_80266e0
	ldr r1, _08026874
	movs r2, #0
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	ldr r3, _08026878
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r3, _0802687C
	ands r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026880
	ands r2, r3
	ldr r3, _08026884
	adds r2, r2, r3
	str r2, [r1]
	movs r1, #0x3c
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x19
	strb r1, [r0, #0xc]
	b _0802637E
loc_8026720
	movs r1, #0xa5
	lsls r1, r1, #2
	strh r1, [r0, #0x18]
	movs r2, #0
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	ldr r3, _08026878
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	adds r2, r2, r3
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r3, _0802687C
	ands r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026880
	ands r2, r3
	ldr r3, _08026884
	adds r2, r2, r3
	str r2, [r1]
	movs r1, #0x3c
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x19
	strb r1, [r0, #0xc]
	b _0802637E
loc_8026762
	ldr r1, _08026888
	movs r2, #0
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	ldr r3, _0802687C
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	adds r0, #0x70
	ands r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026880
	ands r2, r3
	ldr r3, _0802688C
	adds r2, r2, r3
	str r2, [r1]
	movs r2, #0x3c
	strb r2, [r0, #0xd]
	ldr r2, [r1, #0x14]
	movs r3, #3
	lsls r3, r3, #0xf
	bics r2, r3
	movs r3, #1
	lsls r3, r3, #0x10
	adds r2, r2, r3
	str r2, [r1, #0x14]
	movs r1, #0x28
	strb r1, [r0, #0xc]
	b _0802637E
loc_80267ae
	ldr r1, _08026890
	movs r2, #0
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	ldr r3, _0802687C
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	adds r0, #0x70
	ands r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026880
	ands r2, r3
	ldr r3, _08026894
	adds r2, r2, r3
	str r2, [r1]
	movs r2, #0x3c
	strb r2, [r0, #0xd]
	movs r2, #0x14
	strb r2, [r0, #0xc]
	movs r2, #3
	ldr r0, [r1, #0x14]
	lsls r2, r2, #0xf
	bics r0, r2
	movs r2, #1
	lsls r2, r2, #0x10
	adds r0, r0, r2
	str r0, [r1, #0x14]
	b _0802637E
loc_80267fa
	ldr r1, _08026898
	movs r2, #0
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
loc_802680a
	ldr r1, _0802689C
	movs r2, #0
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
loc_802681a
	movs r1, #0x51
	lsls r1, r1, #3
	strh r1, [r0, #0x18]
	movs r2, #0
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
loc_802682c
	ldr r1, _080268A0
	movs r2, #0
	strh r1, [r0, #0x18]
	strh r2, [r0, #0x1a]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	movs r3, #0xa5
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	lsls r3, r3, #3
	adds r2, r2, r3
	str r2, [r1, #0xc]
	ldr r2, [r1, #8]
	ldr r3, _0802687C
	ands r2, r3
	ldr r3, _080268A4
	adds r2, r2, r3
	str r2, [r1, #8]
	ldr r2, [r1]
	ldr r3, _08026880
	ands r2, r3
	ldr r3, _080268A8
	adds r2, r2, r3
	str r2, [r1]
	movs r1, #0x3c
	adds r0, #0x70
	strb r1, [r0, #0xd]
	movs r1, #0x14
	strb r1, [r0, #0xc]
	b _0802637E
	ALIGN
_08026874 DCDU 0x00000297
_08026878 DCDU 0x00000526
_0802687C DCDU 0xFF8003FF
_08026880 DCDU 0xFF8007FF
_08026884 DCDU 0x0027C800
_08026888 DCDU 0x0000024E
_0802688C DCDU 0x0027F000
_08026890 DCDU 0x0000026B
_08026894 DCDU 0x0027F800
_08026898 DCDU 0x00000286
_0802689C DCDU 0x00000287
_080268A0 DCDU 0x00000285
_080268A4 DCDU 0x00449800
_080268A8 DCDU 0x0027B800
	END
