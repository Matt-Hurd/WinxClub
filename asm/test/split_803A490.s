    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300346C
	IMPORT gUnknown_03003478
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT sub_8001338
	IMPORT sub_8001432
	IMPORT sub_80050FA
	IMPORT sub_8005106
	IMPORT sub_80179BE
	IMPORT sub_80187A0
	IMPORT sub_801EBCA
	IMPORT sub_801F286
	IMPORT sub_802B054
	IMPORT sub_8037E48
	IMPORT sub_803B8CA
	IMPORT sub_803B8D4
	IMPORT sub_803DA80
	IMPORT sub_803F0A8
	IMPORT sub_803F2CC
	IMPORT sub_803FC14

	thumb_func_start sub_803A490
sub_803A490 ;@ 0x0803A490
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r0, #0
	adds r6, #0x80
	ldr r0, [r6, #0x2c]
	adds r5, r4, #0
	lsls r0, r0, #5
	lsrs r1, r0, #0x17
	adds r5, #0xc0
	ldr r0, [r5, #0x30]
	cmp r1, #0x38
	bne _0803A52C
	lsls r1, r0, #0xf
	bmi _0803A52C
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	lsls r0, r0, #3
	adds r1, r0, r4
	adds r1, #0xe0
	adds r0, r4, #0
	adds r0, #0x58
	bl sub_80187A0
	cmp r0, #5
	bhs _0803A4FA
	movs r0, #0
_0803A4C4
	lsls r1, r0, #2
	adds r1, r1, r4
	ldr r1, [r1, #0x38]
	cmp r1, #0
	bne _0803A4E0
	adds r0, #1
	cmp r0, #5
	blo _0803A4C4
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x5c]
	adds r1, r2, r1
	bl sub_803B8CA
_0803A4E0
	ldr r1, [r5, #0x30]
	movs r2, #0x20
	lsls r0, r1, #0x1a
	asrs r0, r0, #0x1f
	adds r0, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1a
	bics r1, r2
	orrs r0, r1
	str r0, [r5, #0x30]
_0803A4F4
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_0803A4FA
	ldr r0, [r6, #0x1c]
	cmp r0, #4
	bne _0803A4F4
	ldr r1, [r4, #0x7c]
	lsls r0, r1, #8
	lsrs r2, r0, #0x18
	beq _0803A4F4
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsrs r0, r0, #0x18
	movs r2, #4
	bl sub_803F0A8
	ldr r1, [r4, #0x7c]
	movs r3, #2
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0803A8FC ;@ =gUnknown_03003454
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
	b _0803A4F4
_0803A52C
	ldr r7, _0803A900 ;@ =0xFFFF803F
	adds r1, r0, #0
	subs r0, #0x40
	mvns r2, r7
	ands r0, r2
	ands r1, r7
	orrs r0, r1
	str r0, [r5, #0x30]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x17
	bne _0803A56C
_0803A542
	lsls r1, r0, #2
	adds r1, r1, r4
	ldr r1, [r1, #0x38]
	cmp r1, #0
	bne _0803A55E
	adds r0, #1
	cmp r0, #5
	blo _0803A542
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x5c]
	adds r1, r2, r1
	bl sub_803B8CA
_0803A55E
	ldr r0, [r5, #0x30]
	movs r1, #0x2d
	lsls r1, r1, #8
	ands r0, r7
	adds r0, r0, r1
	str r0, [r5, #0x30]
	b _0803A4F4
_0803A56C
	ldr r0, [r6, #0x1c]
	cmp r0, #4
	bne _0803A4F4
	ldr r1, [r4, #0x7c]
	lsls r0, r1, #8
	lsrs r2, r0, #0x18
	beq _0803A4F4
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsrs r0, r0, #0x18
	movs r2, #0x10
	bl sub_803F0A8
	ldr r1, [r4, #0x7c]
	movs r3, #2
	lsls r1, r1, #8
	lsrs r2, r1, #0x18
	str r2, [sp]
	adds r2, r0, #0
	ldr r0, _0803A8FC ;@ =gUnknown_03003454
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80179BE
	b _0803A4F4

	non_word_aligned_thumb_func_start sub_803A59E
sub_803A59E ;@ 0x0803A59E
	adds r2, r0, #0
	adds r2, #0x80
	push {r4, r5, r6}
	ldr r1, [r2, #0x2c]
	lsls r1, r1, #5
	lsrs r1, r1, #0x17
	cmp r1, #0x38
	beq _0803A5F8
	ldr r1, [r0, #0x30]
	movs r3, #3
	ldrh r4, [r1, #0x2a]
	lsls r3, r3, #0xa
	movs r5, #0x7f
	bics r4, r3
	movs r3, #1
	lsls r3, r3, #0xa
	orrs r4, r3
	strh r4, [r1, #0x2a]
	strb r5, [r1, #5]
	ldr r5, [r1]
	movs r4, #0x80
	lsls r6, r5, #0x16
	cmp r6, #0
	blt _0803A5D2
	orrs r5, r4
	str r5, [r1]
_0803A5D2
	ldr r0, [r0, #0x2c]
	movs r1, #3
	ldrh r5, [r0, #0x2a]
	lsls r1, r1, #0xa
	bics r5, r1
	orrs r3, r5
	strh r3, [r0, #0x2a]
	movs r1, #0x60
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r3, r1, #0x16
	bmi _0803A5EE
	orrs r1, r4
	str r1, [r0]
_0803A5EE
	movs r1, #1
	ldr r0, [r2, #0xc]
	lsls r1, r1, #0xe
	bics r0, r1
	str r0, [r2, #0xc]
_0803A5F8
	pop {r4, r5, r6}
	bx lr

	thumb_func_start sub_803A5FC
sub_803A5FC ;@ 0x0803A5FC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r0, #0
	adds r5, #0x80
	ldr r0, [r5, #0x2c]
	adds r6, r4, #0
	lsls r0, r0, #5
	lsrs r0, r0, #0x17
	adds r6, #0xc0
	cmp r0, #0x39
	bne _0803A6F8
	movs r1, #0
	ldr r0, _0803A904 ;@ =gUnknown_03003EA0
	ldr r2, [r5, #0x1c]
	mvns r1, r1
	cmp r2, #0
	ldr r0, [r0]
	bne _0803A6BA
	ldr r7, [r4, #0x2c]
	ldr r2, [r7, #0x44]
	cmp r2, #0
	beq _0803A634
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r7, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0803A634
	lsls r0, r1, #0x10
	ldr r1, [r6, #0x30]
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1c
	adds r1, r1, r4
	ldrh r1, [r1, #8]
	cmp r0, r1
	beq _0803A662
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0803A662
	bl sub_8000914
_0803A662
	ldr r0, [r4, #0x2c]
	ldrh r1, [r0, #0x28]
	lsls r1, r1, #0x13
	lsrs r2, r1, #0x1f
	ldr r1, [r6, #0x30]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	cmp r1, #2
	bne _0803A67E
	ldr r3, [r5]
	lsls r3, r3, #0x1d
	bpl _0803A67E
	movs r3, #1
	b _0803A680
_0803A67E
	movs r3, #0
_0803A680
	cmp r2, r3
	beq _0803A698
	cmp r1, #2
	bne _0803A692
	ldr r1, [r5]
	lsls r1, r1, #0x1d
	bpl _0803A692
	movs r1, #1
	b _0803A694
_0803A692
	movs r1, #0
_0803A694
	bl sub_803F2CC
_0803A698
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _0803A6B4
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0803A786
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
	b _0803A786
_0803A6B4
	movs r0, #4
	str r0, [r5, #0x1c]
	b _0803A786
_0803A6BA
	cmp r2, #9
	bne _0803A788
	ldr r7, [r4, #0x2c]
	ldr r2, [r7, #0x44]
	cmp r2, #0
	beq _0803A6D2
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r7, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0803A6D2
	lsls r0, r1, #0x10
	ldr r1, [r6, #0x30]
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1c
	adds r1, r1, r4
	ldrh r1, [r1, #0x10]
	cmp r0, r1
	beq _0803A70A
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	b _0803A6FA
_0803A6F8
	b _0803A836
_0803A6FA
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0803A70A
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_0803A70A
	ldr r0, [r4, #0x2c]
	ldrh r1, [r0, #0x28]
	lsls r1, r1, #0x13
	lsrs r2, r1, #0x1f
	ldr r1, [r6, #0x30]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	cmp r1, #2
	bne _0803A726
	ldr r3, [r5]
	lsls r3, r3, #0x1d
	bpl _0803A726
	movs r3, #1
	b _0803A728
_0803A726
	movs r3, #0
_0803A728
	cmp r2, r3
	beq _0803A754
	cmp r1, #2
	bne _0803A73A
	ldr r1, [r5]
	lsls r1, r1, #0x1d
	bpl _0803A73A
	movs r1, #1
	b _0803A73C
_0803A73A
	movs r1, #0
_0803A73C
	bl sub_803F2CC
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0803A754
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
_0803A754
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0803A786
	ldr r1, [r5, #0x14]
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x1d
	beq _0803A78A
	bl sub_803FC14
	ldr r0, [r4, #0x2c]
	bl sub_8000914
	ldr r0, [r5, #0x14]
	movs r1, #7
	lsls r1, r1, #0xc
	movs r3, #1
	adds r2, r0, #0
	lsls r3, r3, #0xc
	subs r0, r0, r3
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	str r0, [r5, #0x14]
_0803A786
	b _0803A834
_0803A788
	b _0803A790
_0803A78A
	movs r0, #4
	str r0, [r5, #0x1c]
	b _0803A834
_0803A790
	cmp r2, #4
	bne _0803A834
	ldr r7, [r4, #0x2c]
	ldr r2, [r7, #0x44]
	cmp r2, #0
	beq _0803A7A8
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r7, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0803A7A8
	lsls r0, r1, #0x10
	ldr r1, [r6, #0x30]
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1c
	adds r1, r1, r4
	ldrh r1, [r1, #0x18]
	cmp r0, r1
	beq _0803A7EA
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_803FC14
	ldr r1, [r4, #0x2c]
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq _0803A7E6
	movs r2, #1
	lsls r2, r2, #0xa
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _0803A908 ;@ =gUnknown_03003EB8
	ldr r0, [r0]
	bl sub_8001432
_0803A7E6
	movs r0, #0
	str r0, [r4, #0x78]
_0803A7EA
	ldr r0, [r4, #0x2c]
	ldrh r1, [r0, #0x28]
	lsls r1, r1, #0x13
	lsrs r2, r1, #0x1f
	ldr r1, [r6, #0x30]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	cmp r1, #2
	bne _0803A806
	ldr r3, [r5]
	lsls r3, r3, #0x1d
	bpl _0803A806
	movs r3, #1
	b _0803A808
_0803A806
	movs r3, #0
_0803A808
	cmp r2, r3
	beq _0803A820
	cmp r1, #2
	bne _0803A81A
	ldr r1, [r5]
	lsls r1, r1, #0x1d
	bpl _0803A81A
	movs r1, #1
	b _0803A81C
_0803A81A
	movs r1, #0
_0803A81C
	bl sub_803F2CC
_0803A820
	ldr r0, [r5]
	lsls r0, r0, #0x1e
	bpl _0803A834
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne _0803A834
	bl sub_803FC14
_0803A834
	b _0803A83C
_0803A836
	adds r0, r4, #0
	bl sub_801EBCA
_0803A83C
	ldr r1, _0803A90C ;@ =gUnknown_03003478
	movs r0, #4
	ldr r1, [r1]
	ands r1, r0
	bne _0803A858
	ldr r0, [r5, #0x34]
	lsls r0, r0, #0x11
	bpl _0803A858
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x60]
	adds r1, r2, r1
	bl sub_803B8CA
_0803A858
	ldr r0, [r5, #0x1c]
	cmp r0, #9
	bne _0803A942
	ldr r0, [r5, #0x2c]
	lsls r1, r0, #0xf
	bpl _0803A942
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #1
	lsrs r1, r1, #0x1d
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r1, [r1, #0x38]
	cmp r1, #0
	bne _0803A944
	lsls r0, r0, #5
	adds r7, r4, #0
	adds r7, #0x90
	lsrs r0, r0, #0x17
	cmp r0, #0x37
	ldr r1, _0803A910 ;@ =gUnknown_0300346C
	beq _0803A914
	cmp r0, #0x38
	beq _0803A96C
	cmp r0, #0x39
	bne _0803A944
	ldr r0, [r6, #0x30]
	lsls r2, r0, #0x1c
	bpl _0803A8A4
	lsls r2, r0, #0x10
	asrs r2, r2, #0x1f
	movs r3, #1
	lsls r3, r3, #0xf
	adds r2, #1
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x10
	bics r0, r3
	orrs r0, r2
	str r0, [r6, #0x30]
_0803A8A4
	ldr r0, [r1]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	str r0, [sp]
	cmp r0, #0
	beq _0803A8C6
	ldr r0, [sp]
	bl sub_8037E48
_0803A8C6
	ldr r0, [sp]
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #1
	lsrs r1, r1, #0x1d
	lsls r1, r1, #2
	adds r1, r1, r4
	str r0, [r1, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r6, #0x30]
	lsls r2, r1, #0x1d
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x1f
	lsls r1, r1, #1
	lsrs r2, r2, #0x1d
	adds r3, r2, r1
	bpl _0803A9DA
	adds r3, #4
	b _0803A9E6
	ALIGN
_0803A8FC DCDU gUnknown_03003454
_0803A900 DCDU 0xFFFF803F
_0803A904 DCDU gUnknown_03003EA0
_0803A908 DCDU gUnknown_03003EB8
_0803A90C DCDU gUnknown_03003478
_0803A910 DCDU gUnknown_0300346C
_0803A914
	ldr r0, [r6, #0x30]
	lsls r2, r0, #0x1c
	bpl _0803A92E
	lsls r2, r0, #0x10
	asrs r2, r2, #0x1f
	movs r3, #1
	lsls r3, r3, #0xf
	adds r2, #1
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x10
	bics r0, r3
	orrs r0, r2
	str r0, [r6, #0x30]
_0803A92E
	ldr r0, [r1]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x48
	b _0803A946
_0803A942
	b _0803AAC0
_0803A944
	b _0803AAB6
_0803A946
	bl sub_803DA80
	str r0, [sp]
	cmp r0, #0
	beq _0803A956
	ldr r0, [sp]
	bl sub_8037E48
_0803A956
	ldr r0, [sp]
	ldr r1, [r4, #0x7c]
	lsls r1, r1, #1
	lsrs r1, r1, #0x1d
	lsls r1, r1, #2
	adds r1, r1, r4
	str r0, [r1, #0x38]
	movs r0, #0
	bl sub_80050FA
	b _0803A96E
_0803A96C
	b _0803AA2E
_0803A96E
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	ldr r1, [r6, #0x30]
	lsls r2, r1, #0x1d
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x1f
	lsls r1, r1, #1
	lsrs r2, r2, #0x1d
	adds r3, r2, r1
	bpl _0803A98E
	adds r3, #4
	b _0803A994
_0803A98E
	cmp r3, #4
	blt _0803A994
	subs r3, #4
_0803A994
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #0
	adds r1, r4, #0
	bl sub_803B8D4
	ldr r0, _0803AB78 ;@ =gUnknown_03003458
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #1]
	ldrb r0, [r7, #0xa]
	movs r1, #7
	lsls r1, r1, #0x1c
	adds r0, #1
	strb r0, [r7, #0xa]
	ldr r0, [r4, #0x7c]
	adds r2, r0, #0
	adds r0, r0, r3
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	lsls r2, r0, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r0, [r4, #0x7c]
	bne _0803AAB6
	bics r0, r1
	b _0803A9DC
_0803A9DA
	b _0803A9E0
_0803A9DC
	str r0, [r4, #0x7c]
	b _0803AAB6
_0803A9E0
	cmp r3, #4
	blt _0803A9E6
	subs r3, #4
_0803A9E6
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r6, r2, r1
	movs r2, #2
	adds r1, r4, #0
	bl sub_803B8D4
	ldr r0, _0803AB78 ;@ =gUnknown_03003458
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #1]
	ldrb r0, [r7, #0xa]
	movs r1, #7
	lsls r1, r1, #0x1c
	adds r0, #1
	strb r0, [r7, #0xa]
	ldr r0, [r4, #0x7c]
	adds r2, r0, #0
	adds r0, r0, r3
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	lsls r2, r0, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r0, [r4, #0x7c]
	bne _0803AAB6
	bics r0, r1
	str r0, [r4, #0x7c]
	b _0803AAB6
_0803AA2E
	ldr r0, [r1]
	bl sub_80050FA
	bl sub_8005106
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x48
	bl sub_803DA80
	adds r6, r0, #0
	beq _0803AA4E
	adds r0, r6, #0
	bl sub_8037E48
_0803AA4E
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	str r6, [r0, #0x38]
	movs r0, #0
	bl sub_80050FA
	ldr r1, [r4, #0x7c]
	lsls r0, r1, #1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0, #0x38]
	lsls r1, r1, #4
	ldr r2, [r0]
	ldr r3, [r2, #4]
	adds r6, r3, r2
	lsrs r3, r1, #0x1c
	movs r2, #1
	adds r1, r4, #0
	bl sub_803B8D4
	ldr r0, _0803AB78 ;@ =gUnknown_03003458
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	movs r3, #1
	lsls r3, r3, #0x1c
	adds r1, #1
	strb r1, [r0, #1]
	ldrb r0, [r7, #0xa]
	movs r1, #7
	lsls r1, r1, #0x1c
	adds r0, #1
	strb r0, [r7, #0xa]
	ldr r0, [r4, #0x7c]
	adds r2, r0, #0
	adds r0, r0, r3
	ands r0, r1
	bics r2, r1
	orrs r0, r2
	lsls r2, r0, #1
	lsrs r2, r2, #0x1d
	cmp r2, #5
	str r0, [r4, #0x7c]
	bne _0803AAB6
	bics r0, r1
	str r0, [r4, #0x7c]
_0803AAB6
	movs r1, #1
	ldr r0, [r5, #0x2c]
	lsls r1, r1, #0x10
	bics r0, r1
	str r0, [r5, #0x2c]
_0803AAC0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_803AAC6
sub_803AAC6 ;@ 0x0803AAC6
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801F286
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	pop {r4}
	pop {r3}
	movs r0, #1
	bx r3

	non_word_aligned_thumb_func_start sub_803AAE2
sub_803AAE2 ;@ 0x0803AAE2
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_802B054
	adds r1, r4, #0
	adds r1, #0x80
	ldr r0, [r1, #0x2c]
	lsls r0, r0, #5
	lsrs r0, r0, #0x17
	cmp r0, #0x38
	beq _0803AB6C
	ldr r0, [r4, #0x30]
	movs r2, #3
	ldrh r3, [r0, #0x2a]
	lsls r2, r2, #0xa
	movs r5, #0x7f
	bics r3, r2
	movs r2, #1
	lsls r2, r2, #0xa
	orrs r3, r2
	strh r3, [r0, #0x2a]
	strb r5, [r0, #5]
	ldr r5, [r0]
	movs r3, #0x80
	lsls r6, r5, #0x16
	cmp r6, #0
	blt _0803AB1C
	orrs r5, r3
	str r5, [r0]
_0803AB1C
	ldr r0, [r4, #0x2c]
	movs r5, #3
	ldrh r6, [r0, #0x2a]
	lsls r5, r5, #0xa
	bics r6, r5
	orrs r2, r6
	strh r2, [r0, #0x2a]
	movs r5, #0x60
	strb r5, [r0, #5]
	ldr r2, [r0]
	lsls r5, r2, #0x16
	bmi _0803AB38
	orrs r2, r3
	str r2, [r0]
_0803AB38
	movs r2, #1
	ldr r0, [r1, #0xc]
	lsls r2, r2, #0xc
	bics r0, r2
	str r0, [r1, #0xc]
	ldr r5, [r4, #0x30]
	movs r6, #0
	ldr r0, [r5]
	lsls r0, r0, #0x1c
	bpl _0803AB56
	ldr r0, _0803AB7C ;@ =gUnknown_03003EB8
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_8001338
_0803AB56
	ldr r0, [r5]
	movs r1, #8
	bics r0, r1
	orrs r0, r6
	str r0, [r5]
	ldr r0, [r4, #0x30]
	movs r2, #4
	ldr r1, [r0]
	bics r1, r2
	orrs r1, r6
	str r1, [r0]
_0803AB6C
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start nullsub_58
nullsub_58 ;@ 0x0803AB72
	bx lr

	thumb_func_start nullsub_59
nullsub_59 ;@ 0x0803AB74
	bx lr
	ALIGN
_0803AB78 DCDU gUnknown_03003458
_0803AB7C DCDU gUnknown_03003EB8
