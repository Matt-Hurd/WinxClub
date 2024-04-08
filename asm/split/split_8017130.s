    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003E98
	IMPORT sub_8005106
	IMPORT sub_80154DC
	IMPORT sub_80166FE
	IMPORT sub_8018390
	IMPORT sub_801F794
	IMPORT sub_80253A8
	IMPORT sub_8026024
	IMPORT sub_8028BE4
	IMPORT sub_802E900
	IMPORT sub_802F118
	IMPORT sub_802FC38
	IMPORT sub_8030668
	IMPORT sub_803108C
	IMPORT sub_803166C
	IMPORT sub_8033318
	IMPORT sub_80344E4
	IMPORT sub_8035480
	IMPORT sub_8035E7C
	IMPORT sub_8036620
	IMPORT sub_8036CE4
	IMPORT sub_80399A4
	IMPORT sub_803A050
	IMPORT sub_803DA80

	thumb_func_start sub_8017130
sub_8017130 ;@ 0x08017130
	push {r4, lr}
	ldr r2, [r1]
	ldrb r4, [r2]
	cmp r4, #0x15
	bhs _080171BA
	add r3, pc, #0x8 ;@ =_08017144
	ldrb r3, [r3, r4]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
_08017144
	DCB 0x3B
_08017145
	DCB 0x3B
_08017146
	DCB 0x3B
_08017147
	DCB 0x0B
_08017148
	DCB 0x3B
_08017149
	DCB 0x3B
_0801714A
	DCB 0x3B
_0801714B
	DCB 0x3B
_0801714C
	DCB 0x22
_0801714D
	DCB 0x17
_0801714E
	DCB 0x3B
_0801714F
	DCB 0x3B
_08017150
	DCB 0x3B
_08017151
	DCB 0x3B
_08017152
	DCB 0x2A
_08017153
	DCB 0x3B
_08017154
	DCB 0x3B
_08017155
	DCB 0x3B
_08017156
	DCB 0x3B
_08017157
	DCB 0x32
_08017158
	DCB 0x3B, 0x00
loc_801715a
	ldr r0, _08017424 ;@ =gUnknown_03003E98
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ldr r1, [r2, #0xc]
	cmp r0, r1
	blo _0801716E
	movs r0, #1
_08017168
	pop {r4}
	pop {r3}
	bx r3
_0801716E
	movs r0, #0
	b _08017168
loc_8017172
	ldr r0, _08017428 ;@ =gUnknown_0300345C
	ldr r0, [r0]
	ldrh r1, [r2, #4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028BE4
	movs r1, #1
	subs r0, r1, r0
	b _08017168
loc_8017188
	bl sub_8018390
	cmp r0, #0x12
	bne _08017194
	movs r0, #1
	b _08017168
_08017194
	movs r0, #0
	b _08017168
loc_8017198
	bl sub_8018390
	cmp r0, #0x12
	bne _080171A4
	movs r0, #1
	b _08017168
_080171A4
	movs r0, #0
	b _08017168
loc_80171a8
	ldr r2, [r0, #8]
	adds r3, r2, #1
	bne _080171B2
	movs r0, #1
	b _08017168
_080171B2
	bl sub_80166FE
	movs r0, #0
	b _08017168
_080171BA
	movs r0, #1
	b _08017168

	non_word_aligned_thumb_func_start sub_80171BE
sub_80171BE ;@ 0x080171BE
	subs r0, #3
	cmp r0, #0x12
	push {r4, lr}
	bhs _080171D0
	add r3, pc, #0xC ;@ =_080171D4
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_080171D0
	b _0801741E
	ALIGN
_080171D4
	DCB 0x13, 0x00
_080171D6
	DCB 0x61, 0x00
_080171D8
	DCB 0x34, 0x00
_080171DA
	DCB 0x71, 0x00
_080171DC
	DCB 0x80, 0x00
_080171DE
	DCB 0x25, 0x00
_080171E0
	DCB 0xE9, 0x00
_080171E2
	DCB 0xDA, 0x00
_080171E4
	DCB 0x17, 0x01
_080171E6
	DCB 0xF9, 0x00
_080171E8
	DCB 0x08, 0x01
_080171EA
	DCB 0x52, 0x00
_080171EC
	DCB 0x43, 0x00
_080171EE
	DCB 0x8F, 0x00
_080171F0
	DCB 0x9E, 0x00
_080171F2
	DCB 0xCB, 0x00
_080171F4
	DCB 0xAD, 0x00
_080171F6
	DCB 0xBC, 0x00
loc_80171f8
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #0x6d
	movs r3, #0
	movs r2, #0
	lsls r0, r0, #3
	bl sub_803DA80
	adds r4, r0, #0
	beq _08017214
	adds r0, r4, #0
	bl sub_80154DC
_08017214
	adds r0, r4, #0
_08017216
	pop {r4}
	pop {r3}
	bx r3
loc_801721c
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xa0
	bl sub_803DA80
	adds r4, r0, #0
	beq _08017236
	adds r0, r4, #0
	bl sub_80253A8
_08017236
	adds r0, r4, #0
	b _08017216
loc_801723a
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xa4
	bl sub_803DA80
	adds r4, r0, #0
	beq _08017254
	adds r0, r4, #0
	bl sub_803166C
_08017254
	adds r0, r4, #0
	b _08017216
loc_8017258
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xe8
	bl sub_803DA80
	adds r4, r0, #0
	beq _08017272
	adds r0, r4, #0
	bl sub_80344E4
_08017272
	adds r0, r4, #0
	b _08017216
loc_8017276
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xec
	bl sub_803DA80
	adds r4, r0, #0
	beq _08017290
	adds r0, r4, #0
	bl sub_80399A4
_08017290
	adds r0, r4, #0
	b _08017216
loc_8017294
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #0x4b
	movs r3, #0
	movs r2, #0
	lsls r0, r0, #3
	bl sub_803DA80
	adds r4, r0, #0
	beq _080172B0
	adds r0, r4, #0
	bl sub_801F794
_080172B0
	adds r0, r4, #0
	b _08017216
loc_80172b4
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xb8
	bl sub_803DA80
	adds r4, r0, #0
	beq _080172CE
	adds r0, r4, #0
	bl sub_802FC38
_080172CE
	adds r0, r4, #0
	b _08017216
loc_80172d2
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xb4
	bl sub_803DA80
	adds r4, r0, #0
	beq _080172EC
	adds r0, r4, #0
	bl sub_803108C
_080172EC
	adds r0, r4, #0
	b _08017216
loc_80172f0
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xa4
	bl sub_803DA80
	adds r4, r0, #0
	beq _0801730A
	adds r0, r4, #0
	bl sub_8026024
_0801730A
	adds r0, r4, #0
	b _08017216
loc_801730e
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xac
	bl sub_803DA80
	adds r4, r0, #0
	beq _08017328
	adds r0, r4, #0
	bl sub_802E900
_08017328
	adds r0, r4, #0
	b _08017216
loc_801732c
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xac
	bl sub_803DA80
	adds r4, r0, #0
	beq _08017346
	adds r0, r4, #0
	bl sub_8035480
_08017346
	adds r0, r4, #0
	b _08017216
loc_801734a
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xbc
	bl sub_803DA80
	adds r4, r0, #0
	beq _08017364
	adds r0, r4, #0
	bl sub_8035E7C
_08017364
	adds r0, r4, #0
	b _08017216
loc_8017368
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xd4
	bl sub_803DA80
	adds r4, r0, #0
	beq _08017382
	adds r0, r4, #0
	bl sub_802F118
_08017382
	adds r0, r4, #0
	b _08017216
loc_8017386
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xe0
	bl sub_803DA80
	adds r4, r0, #0
	beq _080173A0
	adds r0, r4, #0
	bl sub_8030668
_080173A0
	adds r0, r4, #0
	b _08017216
loc_80173a4
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #0xff
	movs r3, #0
	movs r2, #0
	adds r0, #1
	bl sub_803DA80
	adds r4, r0, #0
	beq _080173C0
	adds r0, r4, #0
	bl sub_8033318
_080173C0
	adds r0, r4, #0
	b _08017216
loc_80173c4
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xe4
	bl sub_803DA80
	adds r4, r0, #0
	beq _080173DE
	adds r0, r4, #0
	bl sub_8036620
_080173DE
	adds r0, r4, #0
	b _08017216
loc_80173e2
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xe0
	bl sub_803DA80
	adds r4, r0, #0
	beq _080173FC
	adds r0, r4, #0
	bl sub_8036CE4
_080173FC
	adds r0, r4, #0
	b _08017216
loc_8017400
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0xf4
	bl sub_803DA80
	adds r4, r0, #0
	beq _0801741A
	adds r0, r4, #0
	bl sub_803A050
_0801741A
	adds r0, r4, #0
	b _08017216
_0801741E
	movs r0, #0
	b _08017216
	ALIGN
_08017424 DCDU gUnknown_03003E98
_08017428 DCDU gUnknown_0300345C
	END