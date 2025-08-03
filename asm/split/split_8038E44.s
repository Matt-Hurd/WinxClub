	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003444
	IMPORT gUnknown_03003448
	IMPORT gUnknown_0300345C
	IMPORT gPlayerPointer
	IMPORT gUnknown_080514C8
	IMPORT sub_80003F4
	IMPORT sub_800065C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000DE6
	IMPORT sub_800116A
	IMPORT sub_800EF2A
	IMPORT sub_80138E2
	IMPORT sub_80143E0
	IMPORT sub_8014436
	IMPORT sub_80147FA
	IMPORT sub_80180BE
	IMPORT sub_801810E
	IMPORT sub_802383A
	IMPORT sub_80239EC
	IMPORT sub_8028A7C
	IMPORT sub_8028C2E
	IMPORT __vecmap1c__FPvT1iPFPv_v
	IMPORT __vecmap1ci__FPvT1iPFPvi_v
	IMPORT sub_803F814
	IMPORT sub_803F9C4
	IMPORT sub_8040034
	IMPORT sub_80401C0
	IMPORT sub_80401E4
	IMPORT sub_804025C

	thumb_func_start sub_8038E44
sub_8038E44
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _080391A4
	movs r2, #0
	movs r1, #2
	ldr r0, [r0]
	bl sub_8028A7C
	movs r0, #0x4d
	lsls r0, r0, #5
	adds r0, r6, r0
	ldrb r0, [r0, #0xc]
	cmp r0, #4
	bne _08038E66
	bl sub_801810E
	b _08038E6A
_08038E66
	bl sub_80180BE
_08038E6A
	ldr r4, _080391A8
	adds r1, r6, #0
	ldr r0, [r4]
	bl sub_8000DE6
	adds r1, r6, #4
	ldr r0, [r4]
	bl sub_8000DE6
	adds r1, r6, #0
	adds r1, #0xff
	adds r1, #0x39
	ldr r0, [r4]
	bl sub_8000DE6
	movs r5, #0
_08038E8A
	lsls r0, r5, #2
	adds r1, r0, r6
	adds r4, r1, #0
	ldr r7, _080391A8
	adds r1, #0xff
	adds r1, #0x2d
	ldr r0, [r7]
	bl sub_8000DE6
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #0x21
	ldr r0, [r7]
	bl sub_8000DE6
	adds r1, r4, #0
	adds r1, #0xff
	adds r1, #0x15
	ldr r0, [r7]
	bl sub_8000DE6
	movs r4, #0
	lsls r0, r5, #3
	adds r7, r0, r6
_08038EBA
	lsls r0, r4, #2
	adds r1, r7, r0
	ldr r0, _080391A8
	adds r1, #0xf8
	ldr r0, [r0]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #2
	blo _08038EBA
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo _08038E8A
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8038EE2
sub_8038EE2
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1ac
	adds r7, r0, #0
	movs r0, #1
	str r0, [sp, #0x198]
	add r5, sp, #0x104
	movs r6, #0
	adds r0, r5, #0
	bl sub_80143E0
	add r4, sp, #0x14
	adds r1, r4, #0
	adds r1, #0xf0
	movs r2, #0x78
	adds r0, r4, #0
	ldr r3, _080391AC
	bl __vecmap1c__FPvT1iPFPv_v
	movs r0, #0xb0
	str r0, [sp, #4]
	movs r0, #0x4d
	lsls r0, r0, #5
	movs r2, #0xff
	movs r1, #0x30
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	adds r7, r7, r0
	ldrb r0, [r7, #0xd]
	ldr r1, _080391B0
	movs r3, #0x20
	lsls r0, r0, #1
	ldrh r0, [r1, r0]
	movs r1, #0
	adds r0, #4
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	str r2, [sp]
	movs r2, #0
	adds r0, r5, #0
	bl sub_803F9C4
	movs r1, #0
	adds r0, r5, #0
	bl sub_80147FA
	movs r3, #0xff
	movs r2, #0
	adds r0, r5, #0
	ldr r1, _080391B4
	bl sub_80138E2
	movs r2, #4
	movs r1, #0x10
	movs r0, #0x60
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldrb r0, [r7, #0xd]
	ldr r1, _080391B0
	movs r3, #0x18
	lsls r0, r0, #1
	ldrh r0, [r1, r0]
	movs r1, #0
	adds r0, #0x20
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	str r2, [sp]
	movs r2, #0
	adds r0, r4, #0
	bl sub_803F9C4
	movs r1, #0
	adds r0, r4, #0
	bl sub_80147FA
	movs r1, #0x9b
	lsls r1, r1, #3
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, #0
	bl sub_80138E2
	movs r2, #4
	movs r1, #0x10
	movs r0, #0x60
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldrb r0, [r7, #0xd]
	ldr r1, _080391B0
	movs r3, #0x78
	lsls r0, r0, #1
	ldrh r0, [r1, r0]
	movs r1, #0
	adds r0, #0x20
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	str r2, [sp]
	movs r2, #0
	adds r0, r4, r3
	str r0, [sp, #0x1a8]
	bl sub_803F9C4
	movs r1, #0
	ldr r0, [sp, #0x1a8]
	bl sub_80147FA
	movs r3, #0xff
	movs r2, #0
	ldr r1, _080391B8
	ldr r0, [sp, #0x1a8]
	bl sub_80138E2
	movs r5, #0
_08038FC6
	ldr r0, _080391A8
	ldr r0, [r0]
	bl sub_800116A
	lsls r4, r5, #2
	str r4, [sp, #0x1a4]
	add r1, sp, #0x180
	str r0, [r1, r4]
	lsls r1, r5, #1
	ldr r2, _080391B0
	str r1, [sp, #0x1a0]
	adds r2, #0x1a
	ldrh r1, [r2, r1]
	bl sub_800065C
	ldr r0, _080391B0
	ldr r1, [sp, #0x1a0]
	adds r0, #0x26
	ldrh r1, [r0, r1]
	ldrb r0, [r7, #0xd]
	ldr r2, _080391B0
	add r3, sp, #0
	lsls r0, r0, #1
	ldrh r0, [r2, r0]
	strh r1, [r3, #0x10]
	add r1, sp, #0x180
	strh r0, [r3, #0x12]
	ldr r0, [r1, r4]
	add r1, sp, #0x10
	bl sub_8040034
	add r1, sp, #0x180
	ldr r4, [r1, r4]
	movs r1, #1
	cmp r5, #5
	beq _08039010
	movs r1, #0
_08039010
	ldrh r2, [r4, #0x28]
	movs r3, #1
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r1, r1, #0xc
	orrs r1, r2
	strh r1, [r4, #0x28]
	adds r0, r4, #0
	bl sub_80003F4
	ldr r0, [r4]
	lsls r0, r0, #0x1e
	bmi _08039030
	adds r0, r4, #0
	bl sub_804025C
_08039030
	ldr r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4]
	ldr r0, [sp, #0x1a4]
	add r4, sp, #0x180
	ldr r0, [r4, r0]
	movs r1, #1
	bl sub_80401C0
	ldr r0, [sp, #0x1a4]
	movs r1, #1
	ldr r0, [r4, r0]
	bl sub_80401E4
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #6
	blo _08038FC6
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #3
	add r1, sp, #0x14
	adds r0, r0, r1
	movs r2, #0
	movs r4, #0
	adds r3, r4, #0
	str r2, [sp]
	add r1, sp, #0x19c
	bl sub_803F814
	ldr r0, _080391A8
	ldr r0, [r0]
	bl sub_800116A
	movs r2, #0
	movs r1, #0xa4
	str r0, [sp, #0x17c]
	bl sub_80007A0
	ldrb r1, [r7, #0xd]
	add r3, sp, #0x180
	ldrh r0, [r3, #0x1c]
	ldr r2, _080391B0
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	subs r0, #0x14
	add r3, sp, #0
	strh r0, [r3, #0x10]
	adds r1, #0x1c
	strh r1, [r3, #0x12]
	ldr r0, [sp, #0x17c]
	add r1, sp, #0x10
	bl sub_8040034
	movs r1, #1
	ldr r0, [sp, #0x17c]
	bl sub_80401C0
	movs r1, #1
	ldr r0, [sp, #0x17c]
	bl sub_80401E4
	ldr r0, [sp, #0x17c]
	bl sub_8000914
	bl sub_800EF2A
	ldr r0, [sp, #0x198]
	cmp r0, #0
	beq _0803914A
	ldr r5, _080391A4
_080390C2
	ldr r0, _080391BC
	adds r1, r4, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi _080390D0
	ldrh r1, [r0, #6]
_080390D0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #0x1f
	bpl _080390E4
	ldr r0, [r5]
	bl sub_8028C2E
	movs r0, #0
	str r0, [sp, #0x198]
	b _08039140
_080390E4
	lsls r1, r0, #0x1e
	bpl _080390F6
	ldr r0, [r5]
	bl sub_8028C2E
	movs r0, #0
	str r0, [sp, #0x198]
	movs r6, #0
	b _08039140
_080390F6
	lsls r1, r0, #0x1a
	bmi _080390FE
	lsls r0, r0, #0x1b
	bpl _08039140
_080390FE
	ldr r0, [r5]
	adds r0, #0x20
	bl sub_8028C2E
	adds r6, #1
	lsls r6, r6, #0x1f
	lsrs r6, r6, #0x1f
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #3
	add r1, sp, #0x14
	adds r0, r0, r1
	movs r2, #0
	str r2, [sp]
	adds r3, r4, #0
	add r1, sp, #0x19c
	bl sub_803F814
	add r3, sp, #0x180
	ldrb r0, [r7, #0xd]
	ldrh r1, [r3, #0x1c]
	ldr r2, _080391B0
	lsls r0, r0, #1
	ldrh r0, [r2, r0]
	subs r1, #0x14
	add r3, sp, #0
	strh r1, [r3, #0x10]
	adds r0, #0x1c
	strh r0, [r3, #0x12]
	ldr r0, [sp, #0x17c]
	add r1, sp, #0x10
	bl sub_8040034
_08039140
	bl sub_800EF2A
	ldr r0, [sp, #0x198]
	cmp r0, #0
	bne _080390C2
_0803914A
	cmp r6, #1
	bne _08039160
	ldrb r0, [r7, #0xd]
	ldr r1, _080391C0
	strb r0, [r1]
	bl sub_80239EC
	bl sub_802383A
	movs r0, #4
	strb r0, [r7, #0xc]
_08039160
	ldr r5, _080391A8
	movs r4, #0
	add r6, sp, #0x180
_08039166
	lsls r0, r4, #2
	adds r1, r0, r6
	ldr r0, [r5]
	bl sub_8000DE6
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #6
	blo _08039166
	add r1, sp, #0x17c
	ldr r0, [r5]
	bl sub_8000DE6
	movs r2, #0x77
	mvns r2, r2
	movs r1, #0x63
	mvns r1, r1
	add r1, sp
	ldr r3, _080391C4
	ldr r0, [sp, #0x1a8]
	bl __vecmap1ci__FPvT1iPFPvi_v
	movs r1, #0
	add r0, sp, #0x104
	bl sub_8014436
	add sp, #0x1ac
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_080391A4 DCDU gUnknown_0300345C
_080391A8 DCDU gUnknown_03003448
_080391AC DCDU sub_80143E0
_080391B0 DCDU gUnknown_080514C8
_080391B4 DCDU 0x000004DF
_080391B8 DCDU 0x000004D9
_080391BC DCDU gUnknown_03003444
_080391C0 DCDU gPlayerPointer
_080391C4 DCDU sub_8014436
	END