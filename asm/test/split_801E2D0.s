    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003458
	IMPORT gUnknown_03003EB8
	IMPORT sub_8000AC4
	IMPORT sub_80019B4
	IMPORT sub_80019C4
	IMPORT sub_80019D4
	IMPORT sub_80019E8
	IMPORT sub_80019FC
	IMPORT sub_8018620
	IMPORT sub_8018884
	IMPORT sub_803B8CC
	IMPORT sub_803B940
	IMPORT sub_803B998
	IMPORT sub_80401C0
	IMPORT sub_8040594

	thumb_func_start sub_801E2D0
sub_801E2D0 ;@ 0x0801E2D0
	movs r0, #0
	bx lr

	thumb_func_start nullsub_48
nullsub_48 ;@ 0x0801E2D4
	bx lr

	non_word_aligned_thumb_func_start sub_801E2D6
sub_801E2D6 ;@ 0x0801E2D6
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start sub_801E2DA
sub_801E2DA ;@ 0x0801E2DA
	push {r3, r4, r5, lr}
	ldr r1, [r1]
	adds r4, r0, #0
	ldrh r0, [r1, #8]
	cmp r0, #0x22
	bhs _0801E2F0
	add r3, pc, #0x10 ;@ =_0801E2F8
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
	ldr r3, _0801E75C ;@ =0xFF8003FF
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
	ldr r3, _0801E760 ;@ =0xFF8007FF
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
	bl sub_803B8CC
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
nullsub_49 ;@ 0x0801E4BC
	bx lr

	non_word_aligned_thumb_func_start sub_801E4BE
sub_801E4BE ;@ 0x0801E4BE
	ldr r1, [r1]
	ldrh r2, [r1, #4]
	lsls r2, r2, #0x10
	str r2, [r0, #0x58]
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	str r1, [r0, #0x5c]
	bx lr

	non_word_aligned_thumb_func_start nullsub_50
nullsub_50 ;@ 0x0801E4CE
	bx lr

	thumb_func_start sub_801E4D0
sub_801E4D0 ;@ 0x0801E4D0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0801E764 ;@ =gUnknown_03003458
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
	ldr r7, _0801E768 ;@ =gUnknown_03003EB8
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
	bl sub_803B998
	add r7, pc, #0x190 ;@ =_0801E76C
	ldm r7!, {r2, r3}
	subs r7, #8
	bl sub_803B940
	adds r5, r0, #0
	ldr r0, [sp, #0x54]
	asrs r1, r0, #0x1f
	movs r2, #0x14
	bl sub_803B998
	ldm r7!, {r2, r3}
	bl sub_803B940
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
	ldr r0, _0801E764 ;@ =gUnknown_03003458
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
	ldr r7, _0801E768 ;@ =gUnknown_03003EB8
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
