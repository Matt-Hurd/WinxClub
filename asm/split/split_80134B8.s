	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_030033E8
	IMPORT gUnknown_03003C4C
	IMPORT gUnknown_03003EB4
	IMPORT gUnknown_0803E374
	IMPORT GetEWRAMStart
	IMPORT sub_80133A0
	IMPORT CpuSet
	IMPORT sub_803DA18
	IMPORT __da__FPv
	IMPORT sub_803DA80
	IMPORT sub_803DA9C
	IMPORT sub_8041274

	thumb_func_start sub_80134B8
sub_80134B8
	ldr r1, _080137E0
	adds r2, r0, #0
	str r1, [r0]
	adds r2, #0x20
	movs r3, #0xff
	strb r3, [r2, #0xd]
	movs r1, #0
	strb r1, [r0, #0x10]
	strb r1, [r2, #0xc]
	strb r3, [r2, #0xe]
	strh r1, [r0, #0x22]
	strh r1, [r0, #0x18]
	strh r1, [r0, #0x1a]
	strh r1, [r0, #0x1e]
	strh r1, [r0, #0x20]
	movs r2, #1
	str r2, [r0, #0x24]
	movs r2, #0x11
	strb r2, [r0, #0x1c]
	str r1, [r0, #0x14]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	str r1, [r0, #0x48]
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	str r1, [r0, #0x40]
	str r1, [r0, #0x44]
	strh r1, [r0, #0xe]
	mvns r2, r1
	strh r2, [r0, #0x3a]
	strh r1, [r0, #0x3c]
	bx lr

	thumb_func_start sub_80134F8
sub_80134F8
	ldrb r1, [r0, #0xc]
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _08013504
	ldr r3, [r0, #4]
	str r3, [r2, #4]
_08013504
	ldr r2, [r0, #4]
	cmp r2, #0
	beq _0801350E
	ldr r3, [r0, #8]
	str r3, [r2, #8]
_0801350E
	ldr r3, _080137E4
	lsls r1, r1, #2
	ldr r2, [r3, r1]
	cmp r2, r0
	bne _0801351C
	ldr r2, [r0, #8]
	str r2, [r3, r1]
_0801351C
	ldr r3, _080137E4
	subs r3, #0xc
	ldr r2, [r3, r1]
	cmp r2, r0
	bne _0801352A
	ldr r0, [r0, #4]
	str r0, [r3, r1]
_0801352A
	bx lr

	thumb_func_start sub_801352C
sub_801352C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080137E0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_80134F8
	ldr r1, [r4, #0x48]
	cmp r1, #0
	beq _08013556
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _08013550
	movs r3, #0
	movs r2, #0
	bl sub_8041274
	b _08013556
_08013550
	adds r0, r1, #0
	bl __da__FPv
_08013556
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _08013560
	bl sub_803DA18
_08013560
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0801356A
	bl __da__FPv
_0801356A
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _08013574
	bl __da__FPv
_08013574
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801357A
sub_801357A
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	movs r1, #0
	movs r4, #0
	movs r3, #0
	str r3, [sp, #4]
	str r4, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #8]
	ldr r1, [r0, #0x50]
	movs r7, #0
	adds r5, r0, #0
	cmp r1, #0
	ldr r6, _080137E8
	beq _080135A4
	adds r0, r6, #0
	movs r2, #0
	bl sub_803DA9C
	adds r6, r0, #0
	b _080135B6
_080135A4
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	adds r0, r6, #0
	bl sub_803DA9C
	adds r6, r0, #0
_080135B6
	movs r0, #0x2d
	ldrb r0, [r0, r5]
	bl sub_80133A0
	ldr r1, [r0, #8]
	adds r1, #0x80
	ldr r1, [r1]
	lsrs r1, r1, #0x18
	mov ip, r1
	ldr r1, [r5, #0x30]
	ldrb r1, [r1]
	cmp r1, #0
	beq _08013694
_080135D0
	ldr r1, [r5, #0x30]
	ldrb r1, [r1, r4]
	cmp r1, #0xa
	beq _080135F2
	cmp r1, #0xd
	beq _080135F2
	ldr r2, [r0, #8]
	lsls r3, r1, #2
	ldr r2, [r2, r3]
	ldr r3, [sp, #0xc]
	lsrs r2, r2, #0x18
	adds r2, r2, r3
	lsls r3, r2, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0xc]
	cmp r1, #0x20
	beq _080135FA
_080135F2
	cmp r4, #0
	beq _08013600
	cmp r1, #0x2d
	bne _08013600
_080135FA
	ldr r3, [sp, #0xc]
	str r4, [sp, #0x10]
	str r3, [sp, #4]
_08013600
	cmp r1, #0xa
	beq _08013608
	cmp r1, #0xd
	bne _0801364C
_08013608
	ldr r1, [sp, #8]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #1
	strh r7, [r6, r1]
	adds r1, r1, r6
	strh r4, [r1, #2]
	ldr r3, [sp, #0xc]
	strh r3, [r1, #4]
	movs r3, #0
	str r3, [sp, #0xc]
	ldr r2, [r5, #0x30]
	adds r1, r4, #1
	lsls r7, r1, #0x10
	adds r1, r2, r4
	ldrb r1, [r1, #1]
	lsrs r7, r7, #0x10
	cmp r1, #0xa
	beq _08013632
	cmp r1, #0xd
	bne _0801363E
_08013632
	ldrb r2, [r2, r4]
	cmp r2, r1
	beq _0801363E
	adds r7, #1
	lsls r7, r7, #0x10
	lsrs r7, r7, #0x10
_0801363E
	ldr r1, [sp, #8]
	adds r4, r7, #0
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #8]
	b _0801368C
_0801364C
	ldrh r1, [r5, #0x20]
	ldr r3, [sp, #0xc]
	cmp r1, r3
	bhs _08013686
	ldr r1, [sp, #8]
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #1
	strh r7, [r6, r1]
	ldr r2, [sp, #0x10]
	adds r1, r1, r6
	strh r2, [r1, #2]
	ldr r3, [sp, #4]
	mov r2, ip
	subs r2, r3, r2
	strh r2, [r1, #4]
	ldr r1, [sp, #0x10]
	movs r3, #0
	adds r1, #1
	lsls r7, r1, #0x10
	lsrs r7, r7, #0x10
	ldr r1, [sp, #8]
	adds r4, r7, #0
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #8]
	str r3, [sp, #0xc]
	b _0801368C
_08013686
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
_0801368C
	ldr r1, [r5, #0x30]
	ldrb r1, [r1, r4]
	cmp r1, #0
	bne _080135D0
_08013694
	ldr r1, [sp, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	strh r7, [r6, r0]
	adds r0, r0, r6
	strh r4, [r0, #2]
	ldr r3, [sp, #0xc]
	strh r3, [r0, #4]
	ldr r1, [sp, #8]
	ldr r0, [r5, #0x14]
	adds r1, #1
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	cmp r0, #0
	beq _080136E0
	ldr r2, [r5, #0x50]
	cmp r2, #0
	beq _080136DC
	ldr r7, _080137EC
	movs r1, #3
	mvns r1, r1
	str r2, [r7]
	ldr r1, [r1, r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #2
	bne _080136D2
	bl __da__FPv
	b _080136D6
_080136D2
	bl sub_803DA18
_080136D6
	movs r3, #0
	str r3, [r7]
	b _080136E0
_080136DC
	bl __da__FPv
_080136E0
	ldr r1, [r5, #0x50]
	cmp r1, #0
	beq _08013714
	cmp r4, #0
	beq _080136FA
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #1
	movs r3, #0
	movs r2, #0
	bl sub_803DA9C
	b _08013710
_080136FA
	movs r7, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #6
	bl sub_803DA80
	cmp r0, #0
	beq _08013710
	strh r7, [r0]
	strh r7, [r0, #2]
	strh r7, [r0, #4]
_08013710
	str r0, [r5, #0x14]
	b _0801372A
_08013714
	bl GetEWRAMStart
	adds r1, r0, #0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #1
	movs r3, #0
	movs r2, #0
	bl sub_803DA9C
	str r0, [r5, #0x14]
_0801372A
	ldr r0, [r5, #0x14]
	lsls r2, r4, #1
	adds r2, r2, r4
	lsls r2, r2, #1
	movs r3, #0
	adds r1, r6, #0
	cmp r6, r0
	mov ip, r0
	bhs _0801374A
	adds r7, r1, r2
	cmp r7, r0
	bls _0801374A
	adds r1, r7, #0
	adds r0, r0, r2
	movs r3, #5
	lsls r3, r3, #0x15
_0801374A
	ldr r7, _080137F0
	ldr r7, [r7]
	cmp r7, #0
	beq _08013768
	lsls r0, r2, #9
	movs r1, #1
	lsls r1, r1, #0x1a
	lsrs r0, r0, #0xb
	orrs r0, r1
	adds r2, r0, #0
	adds r0, r6, #0
	mov r1, ip
	bl CpuSet
	b _0801379C
_08013768
	lsls r7, r0, #0x1e
	bmi _08013774
	lsls r7, r1, #0x1e
	bmi _08013774
	lsls r7, r2, #0x1e
	bpl _08013788
_08013774
	ldr r7, _080137F4
	str r1, [r7]
	str r0, [r7, #4]
	lsrs r0, r2, #1
	orrs r0, r3
	lsls r1, r7, #0x1d
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	b _0801379C
_08013788
	ldr r7, _080137F4
	str r1, [r7]
	str r0, [r7, #4]
	lsrs r0, r2, #2
	movs r1, #0x21
	lsls r1, r1, #0x1a
	orrs r0, r3
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
_0801379C
	ldr r1, [r5, #0x50]
	cmp r1, #0
	beq _080137CC
	cmp r6, #0
	beq _080137D2
	ldr r7, _080137EC
	movs r0, #3
	mvns r0, r0
	str r1, [r7]
	ldr r0, [r0, r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _080137C0
	adds r0, r6, #0
	bl __da__FPv
	b _080137C6
_080137C0
	adds r0, r6, #0
	bl sub_803DA18
_080137C6
	movs r3, #0
	str r3, [r7]
	b _080137D2
_080137CC
	adds r0, r6, #0
	bl __da__FPv
_080137D2
	adds r5, #0x30
	strb r4, [r5, #8]
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_080137E0 DCDU gUnknown_0803E374
_080137E4 DCDU gUnknown_03003C4C
_080137E8 DCDU 0x000005FA
_080137EC DCDU gUnknown_030033E8
_080137F0 DCDU gUnknown_03003EB4
_080137F4 DCDU REG_DMA3
	END
