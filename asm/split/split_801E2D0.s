	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_030033E8
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_0300346C
	IMPORT gUnknown_03003D20
	IMPORT gUnknown_03003D24
	IMPORT gUnknown_03003EB8
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000AC4
	IMPORT sub_8001432
	IMPORT sub_80019B4
	IMPORT sub_80019C4
	IMPORT sub_80019D4
	IMPORT sub_80019E8
	IMPORT sub_80019FC
	IMPORT sub_8018620
	IMPORT sub_80187A0
	IMPORT sub_8018884
	IMPORT sub_80268BA
	IMPORT sub_8028BE4
	IMPORT sub_8028C2E
	IMPORT sub_802E4AA
	IMPORT __call_via_r1
	IMPORT __call_via_r2
	IMPORT __16_ll_mulls
	IMPORT __16_ll_sdiv
	IMPORT __16_ll_shift_l
	IMPORT rand
	IMPORT __16__rt_udiv
	IMPORT __vec_dtor__FPvUiPFPvi_vPFPv_v
	IMPORT sub_803F170
	IMPORT sub_803F2CC
	IMPORT sub_803F6B4
	IMPORT sub_803FAB8
	IMPORT sub_803FC14
	IMPORT sub_803FF24
	IMPORT sub_80401C0
	IMPORT sub_8040594

	thumb_func_start sub_801E2D0
sub_801E2D0
	movs r0, #0
	bx lr

	thumb_func_start nullsub_48
nullsub_48
	bx lr

	non_word_aligned_thumb_func_start sub_801E2D6
sub_801E2D6
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start sub_801E2DA
sub_801E2DA
	push {r3, r4, r5, lr}
	ldr r1, [r1]
	adds r4, r0, #0
	ldrh r0, [r1, #8]
	cmp r0, #0x22
	bhs _0801E2F0
	add r3, pc, #0x10
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0801E2F0
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_0801E2F8
	DCB 0x25, 0x00
_0801E2FA
	DCB 0x26, 0x00
_0801E2FC
	DCB 0xB0, 0x00
_0801E2FE
	DCB 0x2C, 0x00
_0801E300
	DCB 0x37, 0x00
_0801E302
	DCB 0x65, 0x00
_0801E304
	DCB 0x68, 0x00
_0801E306
	DCB 0x5F, 0x00
_0801E308
	DCB 0x62, 0x00
_0801E30A
	DCB 0x25, 0x00
_0801E30C
	DCB 0x25, 0x00
_0801E30E
	DCB 0x25, 0x00
_0801E310
	DCB 0x25, 0x00
_0801E312
	DCB 0x25, 0x00
_0801E314
	DCB 0x25, 0x00
_0801E316
	DCB 0x25, 0x00
_0801E318
	DCB 0x25, 0x00
_0801E31A
	DCB 0x25, 0x00
_0801E31C
	DCB 0x25, 0x00
_0801E31E
	DCB 0x25, 0x00
_0801E320
	DCB 0x59, 0x00
_0801E322
	DCB 0x5C, 0x00
_0801E324
	DCB 0x7E, 0x00
_0801E326
	DCB 0xA0, 0x00
_0801E328
	DCB 0x25, 0x00
_0801E32A
	DCB 0x25, 0x00
_0801E32C
	DCB 0x6B, 0x00
_0801E32E
	DCB 0x76, 0x00
_0801E330
	DCB 0x7A, 0x00
_0801E332
	DCB 0x43, 0x00
_0801E334
	DCB 0x4E, 0x00
_0801E336
	DCB 0x9A, 0x00
_0801E338
	DCB 0x8A, 0x00
_0801E33A
	DCB 0xBA, 0x00
loc_801e33c
	b _0801E2F0
loc_801e33e
	ldr r0, [r1, #4]
	lsls r0, r0, #0x10
	bl sub_8040594
	str r1, [r4, #0x70]
	b _0801E2F0
loc_801e34a
	ldr r0, [r1, #4]
	adds r1, r4, #0
	adds r1, #0x80
	ldr r2, [r1, #8]
	lsls r0, r0, #0x16
	lsrs r2, r2, #0xa
	lsls r2, r2, #0xa
	lsrs r0, r0, #0x16
	orrs r0, r2
	str r0, [r1, #8]
	b _0801E2F0
loc_801e360
	ldr r0, [r1, #4]
	adds r1, r4, #0
	adds r1, #0x80
	movs r3, #0xff
	lsls r3, r3, #3
	ldr r2, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x15
	bics r2, r3
	orrs r0, r2
	str r0, [r1]
	b _0801E2F0
loc_801e378
	ldr r0, [r1, #4]
	adds r1, r4, #0
	adds r1, #0x80
	ldr r2, [r1, #8]
	ldr r3, _0801E75C
	lsls r0, r0, #0x13
	lsrs r0, r0, #9
	ands r2, r3
	orrs r0, r2
	str r0, [r1, #8]
	b _0801E2F0
loc_801e38e
	ldr r0, [r1, #4]
	adds r1, r4, #0
	adds r1, #0x80
	ldr r2, [r1, #0xc]
	lsls r0, r0, #0x14
	lsrs r2, r2, #0xc
	lsls r2, r2, #0xc
	lsrs r0, r0, #0x14
	orrs r0, r2
	str r0, [r1, #0xc]
	b _0801E2F0
loc_801e3a4
	ldr r0, [r1, #4]
	strh r0, [r4, #0x18]
	b _0801E2F0
loc_801e3aa
	ldr r0, [r1, #4]
	strh r0, [r4, #0x1a]
_0801E3AE
	b _0801E2F0
loc_801e3b0
	ldr r0, [r1, #4]
	strh r0, [r4, #0x26]
	b _0801E2F0
loc_801e3b6
	ldr r0, [r1, #4]
	strh r0, [r4, #0x22]
	b _0801E2F0
loc_801e3bc
	ldr r0, [r1, #4]
	strh r0, [r4, #0x24]
_0801E3C0
	b _0801E2F0
loc_801e3c2
	ldr r0, [r1, #4]
	strh r0, [r4, #0x20]
	b _0801E2F0
loc_801e3c8
	ldr r0, [r1, #4]
	adds r1, r4, #0
	adds r1, #0x80
	ldr r2, [r1]
	ldr r3, _0801E760
	lsls r0, r0, #0x14
	lsrs r0, r0, #9
	ands r2, r3
	orrs r0, r2
	str r0, [r1]
	b _0801E2F0
loc_801e3de
	ldr r0, [r1, #4]
	adds r4, #0x70
	strb r0, [r4, #0xd]
	b _0801E2F0
loc_801e3e6
	ldr r0, [r1, #4]
	adds r4, #0x70
	strb r0, [r4, #0xc]
	b _0801E2F0
loc_801e3ee
	ldr r0, [r1, #4]
	adds r1, r4, #0
	adds r1, #0x80
	movs r3, #0xf
	lsls r3, r3, #0xf
	ldr r2, [r1, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0xd
	bics r2, r3
	orrs r0, r2
	str r0, [r1, #0xc]
	b _0801E2F0
loc_801e406
	ldr r1, [r1, #4]
	movs r0, #1
	cmp r1, #0
	bne _0801E410
	movs r0, #0
_0801E410
	adds r1, r4, #0
	adds r1, #0x80
	movs r3, #1
	lsls r3, r3, #0xb
	ldr r2, [r1, #0x14]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x14
	bics r2, r3
	orrs r0, r2
	str r0, [r1, #0x14]
	b _0801E2F0
loc_801e426
	ldr r0, [r1, #4]
	adds r4, #0x70
	strb r0, [r4, #0xd]
	movs r0, #0
	strb r0, [r4, #0xc]
	b _0801E2F0
loc_801e432
	ldr r1, [r1, #4]
	movs r0, #1
	cmp r1, #0
	bne _0801E43C
	movs r0, #0
_0801E43C
	adds r1, r4, #0
	adds r1, #0x80
	movs r3, #1
	lsls r3, r3, #0xc
	ldr r2, [r1, #0xc]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x13
	bics r2, r3
	orrs r0, r2
	str r0, [r1, #0xc]
	b _0801E2F0
loc_801e452
	ldr r2, [r4]
	adds r0, r4, #0
	ldr r3, [r2, #0x40]
	ldr r1, [r1, #4]
	adds r2, r3, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl __call_via_r2
	b _0801E2F0
loc_801e466
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r1, #4]
	ldr r2, [r0, #0x14]
	movs r3, #3
	lsls r3, r3, #0xf
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0xf
	bics r2, r3
	orrs r1, r2
	str r1, [r0, #0x14]
	lsls r1, r1, #0xf
	lsrs r1, r1, #0x1e
	cmp r1, #1
	beq _0801E48C
	cmp r1, #2
	beq _0801E48C
	movs r2, #1
	b _0801E48E
_0801E48C
	movs r2, #0
_0801E48E
	movs r5, #1
	ldr r3, [r0, #0xc]
	lsls r5, r5, #0xe
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x11
	bics r3, r5
	orrs r2, r3
	str r2, [r0, #0xc]
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _0801E3AE
	cmp r1, #1
	bne _0801E4B0
	movs r1, #0xbf
	bl sub_80401C0
	b _0801E2F0
_0801E4B0
	cmp r1, #2
	bne _0801E3C0
	movs r1, #0x7f
	bl sub_80401C0
	b _0801E2F0

	thumb_func_start nullsub_49
nullsub_49
	bx lr

	non_word_aligned_thumb_func_start sub_801E4BE
sub_801E4BE
	ldr r1, [r1]
	ldrh r2, [r1, #4]
	lsls r2, r2, #0x10
	str r2, [r0, #0x58]
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	str r1, [r0, #0x5c]
	bx lr

	non_word_aligned_thumb_func_start nullsub_50
nullsub_50
	bx lr

	thumb_func_start sub_801E4D0
sub_801E4D0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0801E764
	movs r1, #5
	ldr r0, [r0]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	sub sp, #0x64
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	bne _0801E540
	adds r0, r4, #0
	adds r0, #0x80
	str r0, [sp, #0x60]
	ldr r0, [r0, #0xc]
	movs r1, #0
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	cmp r0, #0
	str r1, [sp, #0x48]
	beq _0801E540
	adds r1, r4, #0
	adds r1, #0x90
	str r1, [sp, #0x5c]
	subs r1, #0x30
	str r1, [sp, #0x58]
_0801E506
	ldr r0, [r4, #0x30]
	ldr r1, [sp, #0x58]
	bl sub_8000AC4
	str r0, [sp, #0x4c]
	cmp r0, #0
	beq _0801E5F8
	ldr r7, _0801E768
	ldr r0, [r7]
	bl sub_80019B4
	ldr r2, [r4, #0x30]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	adds r2, #0x50
	ldrb r2, [r2]
	cmp r2, #0
	beq _0801E540
	lsls r3, r2, #0x1e
	bpl _0801E5FA
	ldr r0, [sp, #0x48]
	adds r0, #1
	str r0, [sp, #0x48]
	cmp r0, #2
	bls _0801E548
	ldr r0, [sp, #0x50]
	str r0, [r4, #0x60]
	ldr r0, [sp, #0x54]
	str r0, [r4, #0x64]
_0801E540
	add sp, #0x64
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0801E548
	ldr r0, [r4, #0x58]
	ldr r1, [r4, #0x60]
	adds r0, r0, r1
	str r0, [sp, #0x38]
	ldr r0, [r4, #0x5c]
	ldr r1, [r4, #0x64]
	adds r0, r0, r1
	str r0, [sp, #0x3c]
	ldr r0, [r4, #0x58]
	str r0, [sp, #0x40]
	ldr r0, [r4, #0x5c]
	str r0, [sp, #0x44]
	ldr r0, [r7]
	bl sub_80019C4
	adds r6, r0, #0
	movs r0, #0
	movs r5, #0
	cmp r6, #0
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	bls _0801E5CA
_0801E574
	adds r2, r5, #0
	add r0, sp, #4
	ldr r1, [r7]
	bl sub_80019D4
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	str r0, [sp, #0x34]
	str r1, [sp, #0x30]
	ldr r1, [r7]
	add r0, sp, #4
	adds r2, r5, #0
	bl sub_80019E8
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	str r0, [sp, #0x2c]
	str r1, [sp, #0x28]
	ldr r1, [r7]
	add r0, sp, #8
	adds r2, r5, #0
	bl sub_80019FC
	ldr r0, [sp, #8]
	add r3, sp, #0x20
	movs r1, #4
	str r0, [sp, #0x24]
	ldrsb r1, [r3, r1]
	ldr r0, [sp, #0x50]
	adds r5, #1
	lsls r1, r1, #0x10
	adds r0, r0, r1
	str r0, [sp, #0x50]
	movs r1, #5
	ldrsb r1, [r3, r1]
	ldr r0, [sp, #0x54]
	lsls r5, r5, #0x18
	lsls r1, r1, #0x10
	adds r0, r0, r1
	lsrs r5, r5, #0x18
	cmp r5, r6
	str r0, [sp, #0x54]
	blo _0801E574
_0801E5CA
	add r0, sp, #0x50
	bl sub_8018620
	ldr r0, [sp, #0x50]
	asrs r1, r0, #0x1f
	movs r2, #0x14
	bl __16_ll_shift_l
	add r7, pc, #0x190
	ldm r7!, {r2, r3}
	subs r7, #8
	bl __16_ll_sdiv
	adds r5, r0, #0
	ldr r0, [sp, #0x54]
	asrs r1, r0, #0x1f
	movs r2, #0x14
	bl __16_ll_shift_l
	ldm r7!, {r2, r3}
	bl __16_ll_sdiv
	b _0801E5FC
_0801E5F8
	b _0801E6BC
_0801E5FA
	b _0801E64E
_0801E5FC
	cmp r6, #1
	bls _0801E604
	NEGS r0, r0
	b _0801E610
_0801E604
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x34]
	subs r0, r1, r0
	ldr r1, [sp, #0x2c]
	subs r5, r1, r2
_0801E610
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x44]
	subs r1, r1, r0
	subs r2, r2, r5
	str r2, [sp, #0x20]
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x44]
	adds r0, r1, r0
	adds r1, r2, r5
	str r1, [sp, #0x18]
	str r0, [sp, #0x14]
	add r0, sp, #0x38
	add r1, sp, #0x1c
	add r2, sp, #0x14
	add r3, sp, #0xc
	bl sub_8018884
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x44]
	subs r0, r0, r1
	ldr r1, [sp, #0x10]
	str r0, [r4, #0x60]
	subs r1, r1, r2
	str r1, [r4, #0x64]
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	beq _0801E64C
_0801E64A
	b _0801E506
_0801E64C
	b _0801E540
_0801E64E
	lsls r2, r2, #0x1f
	bpl _0801E64A
	ldr r5, [r4, #0x2c]
	movs r2, #0
_0801E656
	lsls r3, r2, #2
	adds r3, r3, r4
	ldr r3, [r3, #0x38]
	cmp r3, #0
	beq _0801E666
	ldr r3, [r3, #4]
	cmp r3, r5
	beq _0801E670
_0801E666
	adds r2, #1
	cmp r2, #5
	blo _0801E656
	movs r2, #0
	mvns r2, r2
_0801E670
	adds r3, r2, #1
	bne _0801E64C
	ldr r2, [r4, #0x30]
_0801E676
	lsls r6, r3, #2
	adds r6, r6, r4
	ldr r6, [r6, #0x38]
	cmp r6, #0
	beq _0801E686
	ldr r6, [r6, #4]
	cmp r6, r2
	beq _0801E690
_0801E686
	adds r3, #1
	cmp r3, #5
	blo _0801E676
	movs r3, #0
	mvns r3, r3
_0801E690
	adds r6, r3, #0
	adds r3, r6, #1
	bne _0801E64C
	cmp r2, r1
	bne _0801E69E
	cmp r5, r0
	bne _0801E6A6
_0801E69E
	cmp r2, r0
	bne _0801E64C
	cmp r5, r1
	beq _0801E64C
_0801E6A6
	movs r5, #1
	ldr r3, [r4, #0x7c]
	lsls r5, r5, #0x1f
	orrs r3, r5
	str r3, [r4, #0x7c]
	cmp r2, r1
	bne _0801E6B8
	str r0, [r4, #0x34]
_0801E6B6
	b _0801E540
_0801E6B8
	str r1, [r4, #0x34]
	b _0801E540
_0801E6BC
	ldr r0, [sp, #0x60]
	ldr r0, [r0, #0xc]
	lsls r0, r0, #0x12
	bpl _0801E64C
	ldr r0, _0801E764
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	movs r3, #0
	ldrsb r1, [r0, r3]
	cmp r1, #0
	beq _0801E6E2
	ldr r1, [sp, #0x5c]
	ldrb r1, [r1, #7]
	cmp r1, #2
	beq _0801E6F6
	cmp r1, #0
	beq _0801E6F6
_0801E6E2
	movs r3, #1
	ldrsb r0, [r0, r3]
	cmp r0, #0
	beq _0801E64C
	ldr r1, [sp, #0x5c]
	ldrb r0, [r1, #7]
	cmp r0, #4
	beq _0801E6F6
	cmp r0, #6
	bne _0801E64C
_0801E6F6
	ldr r0, [r4, #0x2c]
	ldr r1, [sp, #0x58]
	bl sub_8000AC4
	cmp r0, #0
	beq _0801E64C
	ldr r7, _0801E768
	ldr r0, [r7]
	bl sub_80019B4
	ldr r2, [r4, #0x2c]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	adds r2, #0x50
	ldrb r2, [r2]
	cmp r2, #0
	beq _0801E64A
	lsls r3, r2, #0x1e
	bmi _0801E64A
	lsls r2, r2, #0x1f
	bpl _0801E64A
	ldr r2, [r4, #0x2c]
	movs r3, #0
_0801E724
	lsls r5, r3, #2
	adds r5, r5, r4
	ldr r5, [r5, #0x38]
	cmp r5, #0
	beq _0801E734
	ldr r5, [r5, #4]
	cmp r5, r2
	beq _0801E73E
_0801E734
	adds r3, #1
	cmp r3, #5
	blo _0801E724
	movs r3, #0
	mvns r3, r3
_0801E73E
	adds r5, r3, #0
	adds r3, r5, #1
	bne _0801E6B6
	ldr r5, [r4, #0x30]
_0801E746
	lsls r6, r3, #2
	adds r6, r6, r4
	ldr r6, [r6, #0x38]
	cmp r6, #0
	beq _0801E756
	ldr r6, [r6, #4]
	cmp r6, r5
	beq _0801E77A
_0801E756
	adds r3, #1
	cmp r3, #5
	b _0801E774
	ALIGN
_0801E75C DCDU 0xFF8003FF
_0801E760 DCDU 0xFF8007FF
_0801E764 DCDU gUnknown_03003458
_0801E768 DCDU gUnknown_03003EB8
_0801E76C DCDU 0x00010000
_0801E770 DCDU 0x00000000
_0801E774
	blo _0801E746
	movs r3, #0
	mvns r3, r3
_0801E77A
	adds r6, r3, #0
	adds r3, r6, #1
	bne _0801E6B6
	cmp r5, r1
	bne _0801E788
	cmp r2, r0
	bne _0801E790
_0801E788
	cmp r5, r0
	bne _0801E6B6
	cmp r2, r1
	beq _0801E6B6
_0801E790
	movs r5, #1
	ldr r3, [r4, #0x7c]
	lsls r5, r5, #0x1f
	orrs r3, r5
	str r3, [r4, #0x7c]
	cmp r2, r1
	bne _0801E7A2
	str r0, [r4, #0x34]
	b _0801E540
_0801E7A2
	str r1, [r4, #0x34]
	b _0801E540

	non_word_aligned_thumb_func_start sub_801E7A6
sub_801E7A6
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0
	sub sp, #0xc
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	adds r1, r4, #0
	adds r1, #0x60
	ldr r2, [r4, #0x70]
	str r1, [sp, #8]
	ldr r1, [r4, #0x6c]
	adds r5, r4, #0
	adds r6, r4, #0
	adds r6, #0x90
	adds r5, #0x80
	str r1, [sp, #4]
	ldr r7, [r4, #0x68]
	cmp r2, #0
	beq _0801E894
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _0801E894
	cmp r0, r2
	bge _0801E7D8
	adds r2, r0, #0
_0801E7D8
	subs r0, r0, r2
	str r0, [r4, #0x78]
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r1, r0, #0x1c
	add r0, pc, #0x3A0
	beq _0801E8C0
	cmp r1, #1
	beq _0801E860
	cmp r1, #2
	beq _0801E8C2
	cmp r1, #3
	bne _0801E87A
	NEGS r3, r2
	str r3, [r4, #0x64]
	ldrb r1, [r6, #8]
	cmp r1, #2
	bne _0801E826
	ldr r1, [r5, #0x1c]
	cmp r1, #3
	beq _0801E806
	cmp r1, #2
	bne _0801E80E
_0801E806
	movs r0, #0
	str r0, [r4, #0x64]
	str r3, [r4, #0x60]
	b _0801E87A
_0801E80E
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	mov r2, pc
	subs r2, #0xac
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	NEGS r0, r0
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	b _0801E87A
_0801E826
	cmp r1, #0
	bne _0801E854
	ldr r1, [r5, #0x1c]
	cmp r1, #3
	beq _0801E834
	cmp r1, #2
	bne _0801E83C
_0801E834
	movs r0, #0
	str r0, [r4, #0x64]
	str r2, [r4, #0x60]
	b _0801E87A
_0801E83C
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	mov r2, pc
	subs r2, #0xda
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	str r0, [r4, #0x60]
	NEGS r0, r0
	str r0, [r4, #0x64]
	b _0801E87A
_0801E854
	cmp r1, #3
	beq _0801E87A
	cmp r1, #1
	bne _0801E87A
	str r2, [r4, #0x64]
	b _0801E87A
_0801E860
	str r2, [r4, #0x64]
	ldrb r1, [r6, #8]
	cmp r1, #2
	bne _0801E896
	ldr r1, [r5, #0x1c]
	cmp r1, #3
	beq _0801E872
	cmp r1, #2
	bne _0801E87C
_0801E872
	NEGS r0, r2
	str r0, [r4, #0x60]
	movs r0, #0
	str r0, [r4, #0x64]
_0801E87A
	b _0801E952
_0801E87C
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	add r2, pc, #0x308
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	NEGS r0, r0
	str r0, [r4, #0x60]
	NEGS r0, r0
	str r0, [r4, #0x64]
	b _0801E952
_0801E894
	b _0801EA8E
_0801E896
	cmp r1, #0
	bne _0801E8C4
	ldr r1, [r5, #0x1c]
	cmp r1, #3
	beq _0801E8A4
	cmp r1, #2
	bne _0801E8AC
_0801E8A4
	movs r0, #0
	str r0, [r4, #0x64]
	str r2, [r4, #0x60]
	b _0801E952
_0801E8AC
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	add r2, pc, #0x2D8
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	b _0801E952
_0801E8C0
	b _0801E938
_0801E8C2
	b _0801E8CE
_0801E8C4
	cmp r1, #3
	bne _0801E952
	NEGS r0, r2
	str r0, [r4, #0x64]
	b _0801E952
_0801E8CE
	NEGS r3, r2
	str r3, [r4, #0x60]
	ldrb r1, [r6, #8]
	cmp r1, #3
	bne _0801E900
	ldr r1, [r5, #0x1c]
	cmp r1, #3
	beq _0801E8E2
	cmp r1, #2
	bne _0801E8EA
_0801E8E2
	movs r0, #0
	str r0, [r4, #0x60]
	str r3, [r4, #0x64]
	b _0801E952
_0801E8EA
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	add r2, pc, #0x298
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	NEGS r0, r0
	str r0, [r4, #0x64]
	str r0, [r4, #0x60]
	b _0801E952
_0801E900
	cmp r1, #1
	bne _0801E92C
	ldr r1, [r5, #0x1c]
	cmp r1, #3
	beq _0801E90E
	cmp r1, #2
	bne _0801E916
_0801E90E
	movs r0, #0
	str r0, [r4, #0x60]
	str r2, [r4, #0x64]
	b _0801E952
_0801E916
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	add r2, pc, #0x26C
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	str r0, [r4, #0x64]
	NEGS r0, r0
	str r0, [r4, #0x60]
	b _0801E952
_0801E92C
	cmp r1, #2
	beq _0801E952
	cmp r1, #0
	bne _0801E952
	str r2, [r4, #0x60]
	b _0801E952
_0801E938
	str r2, [r4, #0x60]
	ldrb r1, [r6, #8]
	cmp r1, #3
	bne _0801E96C
	ldr r1, [r5, #0x1c]
	cmp r1, #3
	beq _0801E94A
	cmp r1, #2
	bne _0801E954
_0801E94A
	NEGS r0, r2
	str r0, [r4, #0x64]
	movs r0, #0
	str r0, [r4, #0x60]
_0801E952
	b _0801E99E
_0801E954
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	add r2, pc, #0x230
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	NEGS r0, r0
	str r0, [r4, #0x64]
	NEGS r0, r0
	str r0, [r4, #0x60]
	b _0801E99E
_0801E96C
	cmp r1, #1
	bne _0801E996
	ldr r1, [r5, #0x1c]
	cmp r1, #3
	beq _0801E97A
	cmp r1, #2
	bne _0801E982
_0801E97A
	movs r0, #0
	str r0, [r4, #0x60]
	str r2, [r4, #0x64]
	b _0801E99E
_0801E982
	ldm r0!, {r0, r1}
	bl __16_ll_mulls
	add r2, pc, #0x200
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	str r0, [r4, #0x64]
	str r0, [r4, #0x60]
	b _0801E99E
_0801E996
	cmp r1, #2
	bne _0801E99E
	NEGS r0, r2
	str r0, [r4, #0x60]
_0801E99E
	ldr r0, [r5, #0x10]
	lsls r1, r0, #0x1a
	bpl _0801EA1C
	lsls r1, r0, #0x18
	bpl _0801E9C6
	ldr r0, [r4, #0x60]
	cmp r0, #0
	ble _0801E9B8
	ldr r1, [r4, #0x64]
	asrs r0, r0, #1
	subs r0, r1, r0
	str r0, [r4, #0x64]
	b _0801EA1C
_0801E9B8
	cmp r0, #0
	bge _0801EA1C
	ldr r1, [r4, #0x64]
	asrs r0, r0, #1
	subs r0, r1, r0
	str r0, [r4, #0x64]
	b _0801EA1C
_0801E9C6
	lsls r1, r0, #0x17
	bpl _0801E9E8
	ldr r0, [r4, #0x60]
	cmp r0, #0
	ble _0801E9DA
	ldr r1, [r4, #0x64]
	asrs r0, r0, #1
	adds r0, r1, r0
	str r0, [r4, #0x64]
	b _0801EA1C
_0801E9DA
	cmp r0, #0
	bge _0801EA1C
	ldr r1, [r4, #0x64]
	asrs r0, r0, #1
	adds r0, r1, r0
	str r0, [r4, #0x64]
	b _0801EA1C
_0801E9E8
	lsls r1, r0, #0x16
	bpl _0801EA0A
	ldr r0, [r4, #0x60]
	cmp r0, #0
	ble _0801E9FC
	ldr r1, [r4, #0x64]
	asrs r0, r0, #1
	subs r0, r1, r0
	str r0, [r4, #0x64]
	b _0801EA1C
_0801E9FC
	cmp r0, #0
	bge _0801EA1C
	ldr r1, [r4, #0x64]
	asrs r0, r0, #1
	subs r0, r1, r0
	str r0, [r4, #0x64]
	b _0801EA1C
_0801EA0A
	lsls r0, r0, #0x15
	bpl _0801EA1C
	ldr r0, [r4, #0x60]
	cmp r0, #0
	ble _0801EA1E
	ldr r1, [r4, #0x64]
	asrs r0, r0, #1
	adds r0, r1, r0
	str r0, [r4, #0x64]
_0801EA1C
	b _0801EA2A
_0801EA1E
	cmp r0, #0
	bge _0801EA2A
	ldr r1, [r4, #0x64]
	asrs r0, r0, #1
	adds r0, r1, r0
	str r0, [r4, #0x64]
_0801EA2A
	cmp r7, #0
	bne _0801EA32
	movs r0, #0
	b _0801EA4E
_0801EA32
	cmp r7, #0
	ble _0801EA42
	movs r0, #1
	lsls r0, r0, #0xe
	subs r0, r7, r0
	bpl _0801EA4E
	movs r0, #0
	b _0801EA4E
_0801EA42
	movs r0, #1
	lsls r0, r0, #0xe
	adds r0, r7, r0
	cmp r0, #0
	ble _0801EA4E
	movs r0, #0
_0801EA4E
	str r0, [r4, #0x68]
	ldr r1, [sp, #4]
	cmp r1, #0
	bne _0801EA58
	b _0801EA74
_0801EA58
	cmp r1, #0
	ble _0801EA68
	movs r2, #1
	lsls r2, r2, #0xe
	subs r1, r1, r2
	bpl _0801EA74
	movs r1, #0
	b _0801EA74
_0801EA68
	movs r2, #1
	lsls r2, r2, #0xe
	adds r1, r1, r2
	cmp r1, #0
	ble _0801EA74
	movs r1, #0
_0801EA74
	str r1, [r4, #0x6c]
	ldr r1, [sp, #8]
	ldr r2, [r1]
	adds r0, r2, r0
	str r0, [r1]
	ldr r0, [r1, #4]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r1, #4]
	adds r0, r4, #0
	bl sub_801E4D0
	b _0801EAFA
_0801EA8E
	cmp r7, #0
	bne _0801EA98
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _0801EAFA
_0801EA98
	cmp r7, #0
	bne _0801EAA0
	movs r0, #0
	b _0801EABC
_0801EAA0
	cmp r7, #0
	ble _0801EAB0
	movs r0, #1
	lsls r0, r0, #0xe
	subs r0, r7, r0
	bpl _0801EABC
	movs r0, #0
	b _0801EABC
_0801EAB0
	movs r0, #1
	lsls r0, r0, #0xe
	adds r0, r7, r0
	cmp r0, #0
	ble _0801EABC
	movs r0, #0
_0801EABC
	str r0, [r4, #0x68]
	ldr r1, [sp, #4]
	cmp r1, #0
	bne _0801EAC6
	b _0801EAE2
_0801EAC6
	cmp r1, #0
	ble _0801EAD6
	movs r2, #1
	lsls r2, r2, #0xe
	subs r1, r1, r2
	bpl _0801EAE2
	movs r1, #0
	b _0801EAE2
_0801EAD6
	movs r2, #1
	lsls r2, r2, #0xe
	adds r1, r1, r2
	cmp r1, #0
	ble _0801EAE2
	movs r1, #0
_0801EAE2
	str r1, [r4, #0x6c]
	ldr r1, [sp, #8]
	ldr r2, [r1]
	adds r0, r2, r0
	str r0, [r1]
	ldr r0, [r1, #4]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r1, #4]
	adds r0, r4, #0
	bl sub_801E4D0
_0801EAFA
	movs r7, #0
_0801EAFC
	lsls r0, r7, #2
	adds r0, r0, r4
	str r0, [sp]
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq _0801EBBC
	ldr r1, [r0]
	ldr r2, [r1, #8]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [sp]
	ldr r0, [r0, #0x38]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0801EBBC
	ldrh r0, [r4, #4]
	cmp r0, #0xa
	blo _0801EB34
	ldr r0, _0801EB94
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	adds r1, #0xff
	strb r1, [r0, #1]
	b _0801EB44
_0801EB34
	ldr r0, _0801EB94
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #0xff
	strb r1, [r0]
_0801EB44
	ldrb r0, [r6, #0xa]
	adds r0, #0xff
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r6, #0xa]
	bne _0801EB5A
	movs r1, #1
	ldr r0, [r5, #0x14]
	lsls r1, r1, #0xb
	bics r0, r1
	str r0, [r5, #0x14]
_0801EB5A
	ldr r0, _0801EB98
	ldr r2, [r0]
	ldr r0, [sp]
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq _0801EBB6
	ldr r3, _0801EB9C
	movs r1, #3
	mvns r1, r1
	str r2, [r3]
	ldr r1, [r1, r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #2
	bne _0801EBA4
	movs r3, #0
	movs r1, #0x3c
	ldr r2, _0801EBA0
	bl __vec_dtor__FPvUiPFPvi_vPFPv_v
	b _0801EBB0
	ALIGN
_0801EB84 DCDU 0x0000B504
_0801EB88 DCDU 0x00000000
_0801EB8C DCDU 0x00010000
_0801EB90 DCDU 0x00000000
_0801EB94 DCDU gUnknown_03003458
_0801EB98 DCDU gUnknown_0300346C
_0801EB9C DCDU gUnknown_030033E8
_0801EBA0 DCDU sub_802E4AA
_0801EBA4
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
_0801EBB0
	ldr r0, _0801EF74
	movs r3, #0
	str r3, [r0]
_0801EBB6
	ldr r0, [sp]
	movs r3, #0
	str r3, [r0, #0x38]
_0801EBBC
	adds r7, #1
	cmp r7, #5
	blo _0801EAFC
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3


	non_word_aligned_thumb_func_start sub_801EBCA
sub_801EBCA
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r4, #0x80
	adds r5, r0, #0
	ldr r0, [r4, #0x1c]
	sub sp, #0xc
	cmp r0, #0x14
	bhs _0801EBE4
	add r3, pc, #0xC
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_0801EBE4
	b _0801ED56
	ALIGN
_0801EBE8
	DCB 0x15, 0x00
_0801EBEA
	DCB 0x42, 0x02
_0801EBEC
	DCB 0x42, 0x02
_0801EBEE
	DCB 0x42, 0x02
_0801EBF0
	DCB 0x4F, 0x00
_0801EBF2
	DCB 0x42, 0x02
_0801EBF4
	DCB 0x42, 0x02
_0801EBF6
	DCB 0x42, 0x02
_0801EBF8
	DCB 0x42, 0x02
_0801EBFA
	DCB 0x29, 0x01
_0801EBFC
	DCB 0x42, 0x02
_0801EBFE
	DCB 0x42, 0x02
_0801EC00
	DCB 0x42, 0x02
_0801EC02
	DCB 0x42, 0x02
_0801EC04
	DCB 0x42, 0x02
_0801EC06
	DCB 0x7C, 0x01
_0801EC08
	DCB 0x42, 0x02
_0801EC0A
	DCB 0xED, 0x01
_0801EC0C
	DCB 0xCD, 0x01
_0801EC0E
	DCB 0x06, 0x02
loc_801ec10
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	ldr r1, [r5, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r1, [r1, #8]
	cmp r0, r1
	beq _0801EC42
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0801EC42
	bl sub_8000914
_0801EC42
	ldr r0, [r5, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x1f
	adds r0, r5, #0
	bl sub_803FAB8
	cmp r6, r0
	beq _0801EC62
	adds r0, r5, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r5, #0x2c]
	bl sub_803F2CC
_0801EC62
	ldr r0, [r5, #0x78]
	cmp r0, #0
	beq _0801EC7E
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0801ED56
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	bl sub_8000914
	b _0801ED56
_0801EC7E
	movs r0, #4
	str r0, [r4, #0x1c]
	b _0801ED56
loc_801ec84
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	cmp r0, #0x55
	bne _0801ECA8
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0801ED56
	movs r2, #0
	movs r1, #0x6e
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	b _0801ED56
_0801ECA8
	ldrh r0, [r5, #4]
	cmp r0, #4
	bne _0801ED76
	ldr r0, _0801EF78
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801ED76
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	ldr r1, [r5, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r1, [r1, #0x18]
	cmp r0, r1
	beq _0801ECEC
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0801ECE8
	bl sub_8000914
_0801ECE8
	movs r0, #0
	str r0, [r5, #0x78]
_0801ECEC
	ldr r0, [r5, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x1f
	adds r0, r5, #0
	bl sub_803FAB8
	cmp r6, r0
	beq _0801ED0C
	adds r0, r5, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r5, #0x2c]
	bl sub_803F2CC
_0801ED0C
	ldr r0, [r5, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _0801ED56
	ldr r0, [r5, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, #3
	beq _0801ED38
	bl rand
	lsls r0, r0, #0x1c
	bne _0801ED38
	movs r0, #0x3b
	strh r0, [r5, #0x1e]
	movs r0, #0x3c
	strh r0, [r5, #0x1a]
	movs r0, #0x3d
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x18]
	b _0801ED46
_0801ED38
	movs r0, #0x3e
	strh r0, [r5, #0x1e]
	movs r0, #0x3f
	strh r0, [r5, #0x1a]
	movs r0, #0x40
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x18]
_0801ED46
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	ldr r1, [r5, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	b _0801ED58
_0801ED56
	b _0801EED6
_0801ED58
	adds r1, r1, r5
	ldrh r1, [r1, #0x18]
	cmp r0, r1
	beq _0801ED68
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
_0801ED68
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	bl sub_8000914
	b _0801EED6
_0801ED76
	b _0801ED78
_0801ED78
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	ldr r1, [r5, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r1, [r1, #0x18]
	cmp r0, r1
	beq _0801EDC6
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	ldr r1, [r5, #0x2c]
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq _0801EDBA
	movs r2, #1
	lsls r2, r2, #0xa
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _0801EF7C
	ldr r0, [r0]
	bl sub_8001432
_0801EDBA
	ldr r0, [r4]
	movs r1, #2
	bics r0, r1
	str r0, [r4]
	movs r0, #0
	str r0, [r5, #0x78]
_0801EDC6
	ldr r0, [r5, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x1f
	adds r0, r5, #0
	bl sub_803FAB8
	cmp r6, r0
	beq _0801EDE6
	adds r0, r5, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r5, #0x2c]
	bl sub_803F2CC
_0801EDE6
	ldr r0, [r4]
	lsls r0, r0, #0x1e
	bmi _0801EE1A
	ldr r0, [r5, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, #3
	beq _0801EE1A
	bl rand
	lsls r0, r0, #0x19
	bne _0801EE1A
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0801EE12
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	bl sub_8000914
_0801EE12
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
_0801EE1A
	ldr r0, [r4]
	lsls r0, r0, #0x1e
	bpl _0801EED6
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0801EED6
	bl sub_803FC14
	ldr r0, [r4]
	movs r1, #2
	bics r0, r1
	str r0, [r4]
	b _0801EED6
loc_801ee38
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	ldr r1, [r5, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r1, [r1, #0x10]
	cmp r0, r1
	beq _0801EE70
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0801EE70
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	bl sub_8000914
_0801EE70
	ldr r0, [r5, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x1f
	adds r0, r5, #0
	bl sub_803FAB8
	cmp r6, r0
	beq _0801EEA4
	adds r0, r5, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r5, #0x2c]
	bl sub_803F2CC
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0801EEA4
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	bl sub_8000914
_0801EEA4
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0801EED6
	ldr r1, [r4, #0x14]
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x1d
	beq _0801EED8
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	bl sub_8000914
	ldr r0, [r4, #0x14]
	movs r1, #7
	lsls r1, r1, #0xc
	movs r3, #1
	adds r2, r0, #0
	lsls r3, r3, #0xc
	subs r0, r0, r3
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	str r0, [r4, #0x14]
_0801EED6
	b _0801EFF0
_0801EED8
	movs r0, #4
	str r0, [r4, #0x1c]
	b _0801EFF0
loc_801eede
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	ldr r1, [r5, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r1, [r1, #0x18]
	cmp r0, r1
	beq _0801EF16
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0801EF16
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	bl sub_8000914
_0801EF16
	ldr r0, [r5, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x1f
	adds r0, r5, #0
	bl sub_803FAB8
	cmp r6, r0
	beq _0801EF4A
	adds r0, r5, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r5, #0x2c]
	bl sub_803F2CC
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0801EF4A
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	bl sub_8000914
_0801EF4A
	ldr r0, [r5, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _0801EFF0
	movs r0, #0x10
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0xc]
	movs r1, #1
	lsls r1, r1, #0xc
	bics r0, r1
	movs r1, #0
	orrs r0, r1
	str r0, [r4, #0xc]
	lsls r0, r0, #0x13
	lsrs r1, r0, #0x1f
	ldr r0, [r5, #0x30]
	bl sub_803F170
	b _0801EFF0
	ALIGN
_0801EF74 DCDU gUnknown_030033E8
_0801EF78 DCDU gUnknown_03003D20
_0801EF7C DCDU gUnknown_03003EB8

loc_801ef80
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	ldr r1, [r4, #0x1c]
	lsls r1, r1, #1
	adds r1, r1, r5
	subs r1, #0x20
	ldrh r1, [r1, #0x16]
	cmp r0, r1
	beq _0801EFB0
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0801EFB0
	bl sub_8000914
_0801EFB0
	ldr r0, [r5, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne _0801EFF0
	movs r0, #0x11
	str r0, [r4, #0x1c]
	b _0801EFF0
loc_801efc0
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	ldr r1, [r4, #0x1c]
	lsls r1, r1, #1
	adds r1, r1, r5
	subs r1, #0x20
	ldrh r1, [r1, #0x16]
	cmp r0, r1
	beq _0801EFF0
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0801EFF0
	bl sub_8000914
_0801EFF0
	b _0801F06A
loc_801eff2
	ldr r0, [r5, #0x2c]
	bl sub_803F6B4
	ldr r1, [r5, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r1, [r1, #8]
	cmp r0, r1
	beq _0801F024
	movs r2, #0
	ldr r0, [r5, #0x2c]
	bl sub_80007A0
	ldr r0, [r5, #0x2c]
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0801F024
	bl sub_8000914
_0801F024
	ldr r0, [r5, #0x2c]
	ldrh r0, [r0, #0x28]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x1f
	adds r0, r5, #0
	bl sub_803FAB8
	cmp r6, r0
	beq _0801F044
	adds r0, r5, #0
	bl sub_803FAB8
	adds r1, r0, #0
	ldr r0, [r5, #0x2c]
	bl sub_803F2CC
_0801F044
	ldr r0, [r5, #0x78]
	cmp r0, #0
	beq _0801F066
	ldr r0, [r5, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0801F06A
	ldr r1, [r4, #0x14]
	lsls r1, r1, #0xd
	bpl _0801F06A
	bl sub_803FC14
	ldr r0, [r5, #0x2c]
	bl sub_8000914
	b _0801F06A
_0801F066
	movs r0, #0x11
	str r0, [r4, #0x1c]
_0801F06A
	ldr r0, [r4, #0x10]
	lsls r0, r0, #3
	lsrs r0, r0, #0x17
	beq _0801F0E8
	ldr r0, _0801F2EC
	movs r1, #3
	ldr r0, [r0]
	lsls r1, r1, #9
	adds r0, #0x10
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	adds r1, r5, #0
	str r0, [sp, #8]
	add r0, sp, #4
	adds r1, #0x58
	bl sub_80187A0
	ldr r1, [r4, #0x10]
	lsls r2, r1, #0xc
	lsrs r2, r2, #0x17
	cmp r2, r0
	bls _0801F0E8
	ldr r7, _0801F2F0
	lsls r1, r1, #4
	lsrs r6, r1, #0x18
	ldr r5, [r7]
	ldr r1, [r4, #0x14]
	subs r0, r2, r0
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x15
	muls r1, r0
	adds r0, r2, #0
	bl __16__rt_udiv
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r6, #5
	adds r0, r0, r5
	str r1, [r0, #0x14]
	bl sub_80268BA
	ldr r0, [r7]
	ldr r1, [r4, #0x10]
	lsls r1, r1, #4
	lsrs r1, r1, #0x18
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028BE4
	cmp r0, #0
	bne _0801F0E8
	ldr r0, [r7]
	ldr r1, [r4, #0x10]
	lsls r1, r1, #4
	lsrs r1, r1, #0x18
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028C2E
_0801F0E8
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_801F0F0
sub_801F0F0
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r4, #0x80
	ldr r2, [r4, #4]
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xf5
	beq _0801F144
	bgt _0801F18A
	movs r5, #1
	lsls r5, r5, #9
	lsrs r6, r5, #1
	movs r7, #0x80
	cmp r1, #0xf0
	beq _0801F1D4
	bgt _0801F16C
	cmp r1, #0xed
	beq _0801F144
	bgt _0801F14A
	cmp r1, #0
	bne _0801F144
	ldr r1, [r4, #0xc]
	lsls r1, r1, #0x11
	bpl _0801F12E
	ldr r0, [r0, #0x2c]
	ldrb r1, [r0, #5]
	cmp r1, #0x80
	bhs _0801F12E
	movs r1, #0x82
	bl sub_80401C0
_0801F12E
	ldr r0, [r4, #0x10]
	lsls r1, r0, #0x1a
	bpl _0801F144
	movs r1, #0x20
	bics r0, r1
	bics r0, r7
	bics r0, r6
	bics r0, r5
	lsls r1, r1, #5
	bics r0, r1
	str r0, [r4, #0x10]
_0801F144
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_0801F14A
	cmp r1, #0xee
	beq _0801F216
	cmp r1, #0xef
	bne _0801F144
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x18
	cmp r1, #0xee
	bne _0801F232
	ldr r0, [r4, #0x10]
	movs r1, #1
	bics r0, r7
	bics r0, r6
	bics r0, r5
	lsls r1, r1, #0xa
	bics r0, r1
	str r0, [r4, #0x10]
_0801F16A
	b _0801F144
_0801F16C
	cmp r1, #0xf1
	bne _0801F144
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x18
	cmp r1, #0xf0
	bne _0801F204
	ldr r0, [r4, #0x10]
	movs r1, #1
	bics r0, r7
	bics r0, r6
	bics r0, r5
	lsls r1, r1, #0xa
	bics r0, r1
	str r0, [r4, #0x10]
	b _0801F144
_0801F18A
	adds r2, r1, #0
	subs r2, #0xf6
	cmp r2, #0xa
	bhs _0801F144
	add r3, pc, #0x8
	ldrb r3, [r3, r2]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
_0801F19C
	DCB 0x05
_0801F19D
	DCB 0x05
_0801F19E
	DCB 0x05
_0801F19F
	DCB 0x05
_0801F1A0
	DCB 0x05
_0801F1A1
	DCB 0x05
_0801F1A2
	DCB 0x05
_0801F1A3
	DCB 0x05
_0801F1A4
	DCB 0x06
_0801F1A5
	DCB 0x11
loc_801f1a6
	b _0801F144
loc_801f1a8
	ldr r1, [r4, #0xc]
	lsls r1, r1, #0x11
	bpl _0801F144
	ldr r0, [r0, #0x2c]
	ldrb r1, [r0, #5]
	cmp r1, #0x80
	bhs _0801F144
	movs r1, #0x82
	bl sub_80401C0
	b _0801F144
loc_801f1be
	ldr r1, [r4, #0xc]
	lsls r1, r1, #0x11
	bpl _0801F144
	ldr r0, [r0, #0x2c]
	ldrb r1, [r0, #5]
	cmp r1, #0x80
	bls _0801F144
	movs r1, #0x42
	bl sub_80401C0
	b _0801F144
_0801F1D4
	ldr r0, [r4, #0x10]
	lsls r1, r0, #0x1a
	bmi _0801F1F0
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x18
	cmp r1, #0xf0
	beq _0801F1F0
	movs r1, #0x20
	orrs r0, r1
	orrs r0, r7
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0801F144
_0801F1F0
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x18
	cmp r1, #0xf1
	bne _0801F144
	movs r1, #1
	lsls r1, r1, #0xa
	orrs r0, r7
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0801F144
_0801F204
	lsrs r0, r0, #0x18
	bne _0801F144
	ldr r0, [r4, #0x10]
	movs r1, #1
	lsls r1, r1, #0xa
	orrs r0, r7
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0801F144
_0801F216
	b _0801F218
_0801F218
	ldr r0, [r4, #0x10]
	lsls r1, r0, #0x1a
	bmi _0801F234
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x18
	cmp r1, #0xee
	beq _0801F234
	movs r1, #0x20
	orrs r0, r1
	orrs r0, r6
	orrs r0, r5
	str r0, [r4, #0x10]
	b _0801F144
_0801F232
	b _0801F244
_0801F234
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x18
	cmp r1, #0xef
	bne _0801F144
	orrs r0, r6
	orrs r0, r5
	str r0, [r4, #0x10]
	b _0801F144
_0801F244
	lsrs r0, r0, #0x18
	bne _0801F16A
	ldr r0, [r4, #0x10]
	orrs r0, r6
	orrs r0, r5
	str r0, [r4, #0x10]
	b _0801F144

	non_word_aligned_thumb_func_start sub_801F252
sub_801F252
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x58
	adds r5, r1, #0
	ldr r0, [r0, #0x2c]
	bl sub_803FF24
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0801F26E
	adds r1, r5, #0
	bl sub_803FF24
_0801F26E
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start nullsub_51
nullsub_51
	bx lr

	non_word_aligned_thumb_func_start sub_801F276
sub_801F276
	ldr r1, [r0, #0x7c]
	lsls r1, r1, #1
	lsrs r1, r1, #1
	str r1, [r0, #0x7c]
	movs r1, #0
	str r1, [r0, #0x34]
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start sub_801F286
sub_801F286
	movs r1, #0
	str r1, [r0, #0x78]
	bx lr

	thumb_func_start sub_801F28C
sub_801F28C
	push {r4, r5}
	ldm r1!, {r3, r4}
	movs r1, #0x7c
	ldrb r1, [r1, r0]
	cmp r1, #0
	beq _0801F2E8
	ldr r1, [r0, #0x30]
	ldr r1, [r1, #0x10]
	ldr r1, [r1]
	lsls r1, r1, #1
	lsrs r1, r1, #0x16
	lsls r5, r1, #0x10
	cmp r2, #0
	beq _0801F2C8
	ldr r1, _0801F2F4
	cmp r2, #1
	ldr r1, [r1]
	beq _0801F2D2
	cmp r2, #2
	beq _0801F2DE
	cmp r2, #3
	bne _0801F2E8
	ldr r0, [r0, #0x5c]
	subs r1, r4, r1
	subs r0, r0, r5
	cmp r1, r0
	blt _0801F2E8
	movs r0, #1
_0801F2C4
	pop {r4, r5}
	bx lr
_0801F2C8
	ldr r0, [r0, #0x58]
	cmp r3, r0
	bgt _0801F2E8
	movs r0, #1
	b _0801F2C4
_0801F2D2
	ldr r0, [r0, #0x5c]
	subs r1, r4, r1
	cmp r1, r0
	bgt _0801F2E8
	movs r0, #1
	b _0801F2C4
_0801F2DE
	ldr r0, [r0, #0x58]
	cmp r3, r0
	blt _0801F2E8
	movs r0, #1
	b _0801F2C4
_0801F2E8
	movs r0, #0
	b _0801F2C4
	ALIGN
_0801F2EC DCDU gUnknown_03003454
_0801F2F0 DCDU gUnknown_0300345C
_0801F2F4 DCDU gUnknown_03003D24
	END