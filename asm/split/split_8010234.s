    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_030031EC
	IMPORT gUnknown_03003E7C
	IMPORT gUnknown_03003E80
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_0803EC98
	IMPORT gUnknown_0804AE44
	IMPORT sub_8004670
	IMPORT sub_80049B4
	IMPORT sub_80081A8
	IMPORT sub_801053C
	IMPORT sub_80105AE
	IMPORT sub_8010B3E
	IMPORT sub_8011040
	IMPORT sub_801115C
	IMPORT sub_803B8CA
	IMPORT sub_803B8CC
	IMPORT sub_803D9F8
	IMPORT sub_803DA18

	thumb_func_start sub_8010234
sub_8010234 ;@ 0x08010234
	push {r4, lr}
	adds r4, r0, #0
	bne _0801024C
	ldr r0, _080103AC ;@ =0x00001730
	bl sub_803D9F8
	adds r4, r0, #0
	bne _0801024C
	adds r0, r4, #0
_08010246
	pop {r4}
	pop {r3}
	bx r3
_0801024C
	adds r0, r4, #0
	bl sub_801053C
	ldr r0, _080103B0 ;@ =_0803EC98
	movs r1, #0xb9
	lsls r1, r1, #5
	str r0, [r4]
	movs r0, #0
	adds r1, r4, r1
	strb r0, [r1, #0xc]
	ldr r1, _080103B8 ;@ =gUnknown_030031EC
	movs r3, #0
	ldrsb r1, [r1, r3]
	ldr r0, _080103B4 ;@ =gUnknown_03003E98
	ldr r2, _080103BC ;@ =gUnknown_0804AE44
	ldr r0, [r0]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	bl sub_8004670
	adds r0, r4, #0
	b _08010246

	thumb_func_start sub_8010278
sub_8010278 ;@ 0x08010278
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080103B0 ;@ =_0803EC98
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_80105AE
	cmp r5, #0
	beq _08010294
	adds r0, r4, #0
	bl sub_803DA18
_08010294
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801029A
sub_801029A ;@ 0x0801029A
	push {r3, r4, r5, lr}
	ldr r5, _080103C0 ;@ =gUnknown_03003E80
	adds r4, r0, #0
	ldr r0, [r5]
	bl sub_80049B4
	movs r0, #0x17
	lsls r0, r0, #8
	adds r0, r4, r0
	ldr r0, [r0, #0x20]
	lsls r1, r0, #0x1f
	bmi _080102D2
	ldr r1, [r5]
	lsrs r0, r0, #0x10
	ldr r3, [r1, #0x14]
	movs r2, #0
	lsls r3, r3, #0x1c
	bmi _080102C0
	ldrh r2, [r1, #6]
_080102C0
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	ands r1, r0
	beq _080102D2
	movs r1, #0xb9
	lsls r1, r1, #5
	movs r0, #1
	adds r1, r4, r1
	strb r0, [r1, #0xc]
_080102D2
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_80102D8
sub_80102D8 ;@ 0x080102D8
	push {r3, r4, r5, lr}
	ldr r5, _080103C4 ;@ =gUnknown_03003E7C
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _080102EE
	ldr r1, [r0]
	ldr r2, [r1, #8]
	adds r1, r2, r1
	bl sub_803B8CA
_080102EE
	movs r0, #0x54
	ldrb r0, [r0, r4]
	cmp r0, #0xb
	beq _08010302
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #8]
	adds r1, r2, r1
	bl sub_803B8CA
_08010302
	bl sub_80081A8
	movs r0, #0xb9
	lsls r0, r0, #5
	adds r0, r4, r0
	ldrb r2, [r0, #5]
	ldrb r1, [r0, #4]
	adds r0, r4, #0
	bl sub_8011040
	ldr r0, [r5]
	cmp r0, #0
	beq _08010338
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r1, r2, r1
	bl sub_803B8CA
	cmp r0, #0
	beq _08010338
	ldr r0, [r5]
	ldr r1, [r4, #0x64]
	ldr r2, [r0]
	ldr r3, [r2, #0xc]
	adds r2, r3, r2
	bl sub_803B8CC
_08010338
	adds r0, r4, #0
	bl sub_801115C
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8010344
sub_8010344 ;@ 0x08010344
	push {r3, r4, r5, lr}
	ldr r5, _080103C4 ;@ =gUnknown_03003E7C
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _0801035A
	ldr r1, [r0]
	ldr r2, [r1, #0x24]
	adds r1, r2, r1
	bl sub_803B8CA
_0801035A
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #8]
	adds r1, r2, r1
	bl sub_803B8CA
	movs r1, #1
	adds r0, r4, #0
	bl sub_8010B3E
	ldr r0, [r5]
	cmp r0, #0
	beq _0801037E
	ldr r1, [r0]
	ldr r2, [r1, #0x28]
	adds r1, r2, r1
	bl sub_803B8CA
_0801037E
	movs r0, #0xb9
	lsls r0, r0, #5
	adds r0, r4, r0
	ldrb r1, [r0, #0xc]
	cmp r1, #1
	bne _08010392
	movs r0, #1
_0801038C
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_08010392
	movs r1, #0
	strb r1, [r0, #0xc]
	adds r0, r4, #0
	bl sub_801115C
	cmp r0, #0
	bne _080103A4
	movs r0, #1
	b _0801038C
_080103A4
	movs r0, #0
	b _0801038C

	thumb_func_start nullsub_39
nullsub_39 ;@ 0x080103A8
	bx lr
	ALIGN
_080103AC DCDU 0x00001730
_080103B0 DCDU gUnknown_0803EC98
_080103B4 DCDU gUnknown_03003E98
_080103B8 DCDU gUnknown_030031EC
_080103BC DCDU gUnknown_0804AE44
_080103C0 DCDU gUnknown_03003E80
_080103C4 DCDU gUnknown_03003E7C
	END