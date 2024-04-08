    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT sub_803B92C
	IMPORT sub_803B940
	IMPORT sub_803B998
	IMPORT sub_803B9C4
	IMPORT sub_803C04C
	IMPORT sub_803D46C
	IMPORT sub_803E1DC
	IMPORT sub_803F3B4
	IMPORT sub_80404D8

	thumb_func_start sub_80183BC
sub_80183BC ;@ 0x080183BC
	push {r4}
	movs r4, #1
	lsls r4, r4, #0xf
	lsls r2, r4, #0xf
	movs r1, #0
	cmp r0, r2
	blo _080183CE
	subs r0, r0, r2
	lsrs r1, r2, #0xe
_080183CE
	movs r3, #1
	lsls r3, r3, #0xe
	adds r2, r1, r3
	lsls r2, r2, #0xe
	cmp r2, r0
	bhi _080183DE
	subs r0, r0, r2
	orrs r1, r4
_080183DE
	movs r4, #1
	lsls r4, r4, #0xd
	adds r2, r1, r4
	lsls r2, r2, #0xd
	cmp r2, r0
	bhi _080183EE
	subs r0, r0, r2
	orrs r1, r3
_080183EE
	movs r3, #1
	lsls r3, r3, #0xc
	adds r2, r1, r3
	lsls r2, r2, #0xc
	cmp r2, r0
	bhi _080183FE
	subs r0, r0, r2
	orrs r1, r4
_080183FE
	movs r4, #1
	lsls r4, r4, #0xb
	adds r2, r1, r4
	lsls r2, r2, #0xb
	cmp r2, r0
	bhi _0801840E
	subs r0, r0, r2
	orrs r1, r3
_0801840E
	movs r3, #1
	lsls r3, r3, #0xa
	adds r2, r1, r3
	lsls r2, r2, #0xa
	cmp r2, r0
	bhi _0801841E
	subs r0, r0, r2
	orrs r1, r4
_0801841E
	movs r4, #1
	lsls r4, r4, #9
	adds r2, r1, r4
	lsls r2, r2, #9
	cmp r2, r0
	bhi _0801842E
	subs r0, r0, r2
	orrs r1, r3
_0801842E
	adds r2, r1, #0
	adds r2, #0xff
	adds r2, #1
	lsls r2, r2, #8
	cmp r2, r0
	bhi _0801843E
	subs r0, r0, r2
	orrs r1, r4
_0801843E
	adds r2, r1, #0
	adds r2, #0x80
	lsls r2, r2, #7
	cmp r2, r0
	bhi _08018450
	subs r0, r0, r2
	movs r2, #0xff
	adds r2, #1
	orrs r1, r2
_08018450
	adds r2, r1, #0
	adds r2, #0x40
	lsls r2, r2, #6
	cmp r2, r0
	bhi _08018460
	subs r0, r0, r2
	movs r2, #0x80
	orrs r1, r2
_08018460
	adds r2, r1, #0
	adds r2, #0x20
	lsls r2, r2, #5
	cmp r2, r0
	bhi _08018470
	subs r0, r0, r2
	movs r2, #0x40
	orrs r1, r2
_08018470
	adds r2, r1, #0
	adds r2, #0x10
	lsls r2, r2, #4
	cmp r2, r0
	bhi _08018480
	subs r0, r0, r2
	movs r2, #0x20
	orrs r1, r2
_08018480
	adds r2, r1, #0
	adds r2, #8
	lsls r2, r2, #3
	cmp r2, r0
	bhi _08018490
	subs r0, r0, r2
	movs r2, #0x10
	orrs r1, r2
_08018490
	adds r2, r1, #4
	lsls r2, r2, #2
	cmp r2, r0
	bhi _0801849E
	subs r0, r0, r2
	movs r2, #8
	orrs r1, r2
_0801849E
	adds r2, r1, #2
	lsls r2, r2, #1
	cmp r2, r0
	bhi _080184AC
	subs r0, r0, r2
	movs r2, #4
	orrs r1, r2
_080184AC
	adds r2, r1, #1
	cmp r0, r2
	blo _080184B6
	movs r0, #2
	orrs r1, r0
_080184B6
	lsrs r0, r1, #1
	pop {r4}
	bx lr

	thumb_func_start sub_80184BC
sub_80184BC ;@ 0x080184BC
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r1, r0, #0
	adds r6, r0, #0
	adds r0, r4, #0
	movs r5, #0
	cmp r1, #0
	bge _080184CE
	NEGS r1, r1
_080184CE
	cmp r0, #0
	bge _080184D4
	NEGS r0, r0
_080184D4
	cmp r1, r0
	bge _080184E0
	adds r2, r1, #0
	adds r1, r0, #0
	adds r0, r2, #0
	movs r5, #1
_080184E0
	cmp r0, #0
	beq _0801850C
	lsls r3, r1, #4
	subs r1, r3, r1
	lsls r1, r1, #1
	bl sub_803C04C
	cmp r0, #0
	bne _080184F6
	movs r0, #0x5a
	b _0801850E
_080184F6
	movs r1, #0xd7
	lsls r1, r1, #3
	cmp r0, #0x52
	blt _08018504
	bl sub_803C04C
	b _0801850E
_08018504
	adds r0, #8
	bl sub_803C04C
	b _0801850E
_0801850C
	movs r0, #0
_0801850E
	cmp r5, #0
	beq _08018516
	movs r1, #0x5a
	subs r0, r1, r0
_08018516
	lsls r1, r6, #0x10
	bpl _08018528
	lsls r1, r4, #0x10
	bpl _08018522
	adds r0, #0xb4
	b _08018532
_08018522
	movs r1, #0xb4
	subs r0, r1, r0
	b _08018532
_08018528
	lsls r1, r4, #0x10
	bpl _08018532
	movs r1, #0xff
	adds r1, #0x69
	subs r0, r1, r0
_08018532
	lsls r0, r0, #8
	bl sub_80404D8
	pop {r4, r5, r6}
	pop {r3}
	adds r0, r1, #0
	bx r3

	thumb_func_start sub_8018540
sub_8018540 ;@ 0x08018540
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	add r7, sp, #0x28
	ldm r7!, {r4, r5, r6, r7}
	subs r6, r4, r6
	subs r3, r2, r0
	mov ip, r3
	cmp r3, #0
	mov lr, r6
	bge _0801855A
	adds r3, r2, #0
	adds r2, r0, #0
	b _0801855C
_0801855A
	adds r3, r0, #0
_0801855C
	mov r6, lr
	cmp r6, #0
	ble _08018576
	ldr r6, [sp, #0x30]
	cmp r2, r6
	blt _0801856C
	cmp r4, r3
	bge _08018584
_0801856C
	movs r0, #0
_0801856E
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08018576
	cmp r2, r4
	blt _08018580
	ldr r6, [sp, #0x30]
	cmp r6, r3
	bge _08018584
_08018580
	movs r0, #0
	b _0801856E
_08018584
	ldr r2, [sp, #0x10]
	subs r6, r5, r7
	subs r2, r2, r1
	str r2, [sp]
	cmp r2, #0
	bge _08018596
	adds r3, r1, #0
	ldr r2, [sp, #0x10]
	b _0801859A
_08018596
	ldr r3, [sp, #0x10]
	adds r2, r1, #0
_0801859A
	cmp r6, #0
	ble _080185AA
	cmp r3, r7
	blt _080185A6
	cmp r5, r2
	bge _080185B6
_080185A6
	movs r0, #0
	b _0801856E
_080185AA
	cmp r3, r5
	blt _080185B2
	cmp r7, r2
	bge _080185B6
_080185B2
	movs r0, #0
	b _0801856E
_080185B6
	subs r0, r0, r4
	subs r1, r1, r5
	adds r2, r6, #0
	mov r3, lr
	muls r3, r1
	muls r2, r0
	subs r2, r2, r3
	ldr r3, [sp]
	mov r4, lr
	muls r3, r4
	mov r4, ip
	muls r4, r6
	subs r3, r3, r4
	cmp r3, #0
	ble _080185E0
	cmp r2, #0
	blt _080185DC
	cmp r2, r3
	ble _080185EC
_080185DC
	movs r0, #0
	b _0801856E
_080185E0
	cmp r2, #0
	bgt _080185E8
	cmp r2, r3
	bge _080185EC
_080185E8
	movs r0, #0
	b _0801856E
_080185EC
	ldr r2, [sp]
	mov r4, ip
	muls r4, r1
	muls r2, r0
	subs r0, r4, r2
	cmp r3, #0
	ble _08018606
	cmp r0, #0
	blt _08018602
	cmp r0, r3
	ble _08018612
_08018602
	movs r0, #0
	b _0801856E
_08018606
	cmp r0, #0
	bgt _0801860E
	cmp r0, r3
	bge _08018612
_0801860E
	movs r0, #0
	b _0801856E
_08018612
	cmp r3, #0
	bne _0801861A
	movs r0, #2
	b _0801856E
_0801861A
	movs r0, #1
	b _0801856E
	ALIGN

	thumb_func_start sub_8018620
sub_8018620 ;@ 0x08018620
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	adds r1, r0, #0
	bl sub_803B92C
	add r6, pc, #0x344 ;@ =_08018974
	ldm r6!, {r2, r3}
	subs r6, #8
	bl sub_803B940
	adds r5, r0, #0
	ldr r0, [r4, #4]
	adds r1, r0, #0
	bl sub_803B92C
	ldm r6!, {r2, r3}
	bl sub_803B940
	adds r0, r5, r0
	bl sub_803E1DC
	lsls r5, r0, #8
	ldr r0, [r4]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	bl sub_803B998
	str r1, [sp]
	adds r2, r0, #0
	adds r0, r5, #0
	asrs r1, r5, #0x1f
	adds r6, r1, #0
	ldr r3, [sp]
	bl sub_803B9C4
	str r0, [r4]
	ldr r0, [r4, #4]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	bl sub_803B998
	adds r2, r0, #0
	adds r0, r5, #0
	adds r3, r1, #0
	adds r1, r6, #0
	bl sub_803B9C4
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8018688
sub_8018688 ;@ 0x08018688
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	adds r6, r1, #0
	adds r1, r0, #0
	muls r1, r0
	ldr r0, [r4, #4]
	adds r2, r0, #0
	muls r0, r2
	adds r1, r1, r0
	ldr r0, [r4, #8]
	adds r2, r0, #0
	muls r2, r0
	adds r0, r1, r2
	bl sub_803E1DC
	adds r5, r0, #0
	ldr r0, [r4]
	lsls r0, r0, #8
	adds r1, r5, #0
	bl sub_803D46C
	str r0, [sp]
	ldr r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r5, #0
	bl sub_803D46C
	adds r7, r0, #0
	ldr r0, [r4, #8]
	lsls r0, r0, #8
	adds r1, r5, #0
	bl sub_803D46C
	ldr r1, [sp]
	str r0, [r6, #8]
	stm r6!, {r1, r7}
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_80186D8
sub_80186D8 ;@ 0x080186D8
	push {r4, r5, r6, r7, lr}
	ldr r3, [r0, #4]
	ldr r7, [r1, #8]
	adds r6, r3, #0
	ldr r4, [r0, #8]
	muls r6, r7
	ldr r5, [r1, #4]
	mov ip, r7
	adds r7, r4, #0
	muls r7, r5
	subs r6, r6, r7
	ldr r0, [r0]
	mov lr, r6
	ldr r1, [r1]
	adds r6, r0, #0
	mov r7, ip
	muls r4, r1
	muls r6, r7
	subs r4, r6, r4
	muls r1, r3
	muls r0, r5
	subs r0, r0, r1
	str r0, [r2, #8]
	str r4, [r2, #4]
	mov r6, lr
	str r6, [r2]
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8018712
sub_8018712 ;@ 0x08018712
	push {r3, lr}
	ldr r1, [r0]
	adds r2, r1, #0
	muls r2, r1
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	adds r3, r1, #0
	muls r1, r3
	adds r1, r2, r1
	adds r2, r0, #0
	muls r0, r2
	adds r0, r1, r0
	bl sub_803E1DC
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_8018734
sub_8018734 ;@ 0x08018734
	push {r3, lr}
	ldr r1, [r0]
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x18
	adds r1, r2, r1
	asrs r1, r1, #8
	adds r2, r1, #0
	muls r2, r1
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	asrs r3, r1, #0x1f
	lsrs r3, r3, #0x18
	adds r1, r3, r1
	asrs r1, r1, #8
	adds r3, r1, #0
	muls r3, r1
	adds r1, r2, r3
	asrs r2, r0, #0x1f
	lsrs r2, r2, #0x18
	adds r0, r2, r0
	asrs r0, r0, #8
	adds r2, r0, #0
	muls r2, r0
	adds r0, r1, r2
	bl sub_803E1DC
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801876E
sub_801876E ;@ 0x0801876E
	push {lr}
	ldr r2, [r0]
	ldr r3, [r1]
	sub sp, #0xc
	subs r2, r2, r3
	str r2, [sp]
	ldr r2, [r0, #4]
	ldr r3, [r1, #4]
	subs r2, r2, r3
	str r2, [sp, #4]
	ldr r0, [r0, #8]
	ldr r1, [r1, #8]
	subs r0, r0, r1
	ldr r1, [sp]
	str r0, [sp, #8]
	adds r0, r1, #0
	muls r1, r0
	adds r0, r2, #0
	muls r0, r2
	adds r0, r1, r0
	bl sub_803E1DC
	add sp, #0xc
	pop {r3}
	bx r3

	thumb_func_start sub_80187A0
sub_80187A0 ;@ 0x080187A0
	push {r3, lr}
	ldr r2, [r0]
	ldr r3, [r1]
	ldr r0, [r0, #4]
	ldr r1, [r1, #4]
	subs r2, r2, r3
	subs r0, r0, r1
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	lsrs r3, r3, #0x10
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	adds r2, r3, r2
	asrs r2, r2, #0x10
	adds r1, r2, #0
	muls r2, r1
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r0
	adds r0, r2, r1
	bl sub_803E1DC
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80187D2
sub_80187D2 ;@ 0x080187D2
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	ldr r1, [r2]
	adds r7, r2, #0
	ldr r2, [r5]
	sub sp, #0xc
	subs r1, r1, r2
	str r1, [r3]
	ldr r1, [r7, #4]
	ldr r2, [r5, #4]
	adds r4, r3, #0
	subs r1, r1, r2
	adds r2, r3, #4
	str r2, [sp, #8]
	str r1, [r3, #4]
	ldr r1, [r7, #8]
	ldr r2, [r5, #8]
	subs r1, r1, r2
	str r1, [r4, #8]
	adds r1, r4, #0
	bl sub_803F3B4
	adds r6, r0, #0
	adds r1, r4, #0
	adds r0, r5, #0
	bl sub_803F3B4
	subs r6, r6, r0
	cmp r6, #0
	ble _08018874
	adds r1, r4, #0
	adds r0, r4, #0
	bl sub_803F3B4
	str r0, [sp, #4]
	cmp r6, r0
	bge _08018866
	adds r0, r6, #0
	asrs r1, r6, #0x1f
	movs r2, #8
	bl sub_803B998
	adds r2, r0, #0
	ldr r0, [sp, #4]
	adds r3, r1, #0
	asrs r1, r0, #0x1f
	bl sub_803B9C4
	ldr r1, [r4]
	muls r1, r0
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x18
	adds r1, r2, r1
	ldr r2, [r4, #4]
	asrs r1, r1, #8
	muls r2, r0
	asrs r0, r2, #0x1f
	lsrs r0, r0, #0x18
	adds r0, r0, r2
	asrs r0, r0, #8
	str r0, [r4, #4]
	str r1, [r4]
	ldr r2, [r5]
	adds r1, r1, r2
	str r1, [r4]
	ldr r1, [r5, #4]
	ldr r2, [sp, #8]
	adds r0, r0, r1
	str r0, [r2]
	movs r0, #1
_0801885E
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08018866
	ldr r0, [sp, #4]
	cmp r6, r0
	bne _08018880
	ldm r7!, {r0, r1}
	stm r4!, {r0, r1}
	movs r0, #1
	b _0801885E
_08018874
	cmp r6, #0
	bne _08018880
	ldm r5!, {r0, r1}
	stm r4!, {r0, r1}
	movs r0, #1
	b _0801885E
_08018880
	movs r0, #0
	b _0801885E

	thumb_func_start sub_8018884
sub_8018884 ;@ 0x08018884
	push {r4, r5, r6, r7, lr}
	adds r4, r3, #0
	ldr r3, [r0]
	ldr r0, [r0, #4]
	sub sp, #0x34
	asrs r3, r3, #8
	asrs r0, r0, #8
	str r0, [sp, #0x2c]
	str r3, [sp, #0x28]
	ldr r0, [r1]
	ldr r1, [r1, #4]
	asrs r0, r0, #8
	asrs r1, r1, #8
	str r1, [sp, #0x20]
	str r0, [sp, #0x1c]
	ldr r0, [r2]
	ldr r1, [r2, #4]
	asrs r0, r0, #8
	asrs r1, r1, #8
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x10]
	subs r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x20]
	add r6, sp, #4
	subs r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x24]
	add r7, sp, #0x1c
	subs r0, r0, r1
	str r0, [sp, #0xc]
	add r0, sp, #0x28
	adds r1, r6, #0
	bl sub_803F3B4
	adds r5, r0, #0
	adds r1, r6, #0
	adds r0, r7, #0
	bl sub_803F3B4
	subs r6, r5, r0
	cmp r6, #0
	ble _0801895A
	add r0, sp, #4
	adds r1, r0, #0
	bl sub_803F3B4
	adds r5, r0, #0
	cmp r6, r0
	bge _08018946
	adds r0, r6, #0
	asrs r1, r6, #0x1f
	movs r2, #8
	bl sub_803B998
	adds r2, r0, #0
	adds r3, r1, #0
	adds r0, r5, #0
	asrs r1, r5, #0x1f
	bl sub_803B9C4
	ldr r1, [sp, #4]
	muls r1, r0
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x18
	adds r1, r2, r1
	ldr r2, [sp, #8]
	asrs r1, r1, #8
	muls r2, r0
	asrs r0, r2, #0x1f
	lsrs r0, r0, #0x18
	adds r0, r0, r2
	asrs r0, r0, #8
	str r0, [sp, #8]
	adds r0, r1, #0
	str r1, [sp, #4]
	ldr r1, [sp, #0x1c]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x20]
	adds r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	lsls r0, r0, #8
	str r0, [r4]
	ldr r0, [sp, #8]
	lsls r0, r0, #8
	str r0, [r4, #4]
	movs r0, #1
_0801893E
	add sp, #0x34
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08018946
	cmp r6, r5
	bne _0801896E
	ldr r0, [sp, #0x10]
	lsls r0, r0, #8
	str r0, [r4]
	ldr r0, [sp, #0x14]
	lsls r0, r0, #8
	str r0, [r4, #4]
	movs r0, #1
	b _0801893E
_0801895A
	cmp r6, #0
	bne _0801896E
	ldr r0, [sp, #0x1c]
	lsls r0, r0, #8
	str r0, [r4]
	ldr r0, [sp, #0x20]
	lsls r0, r0, #8
	str r0, [r4, #4]
	movs r0, #1
	b _0801893E
_0801896E
	movs r0, #0
	b _0801893E
	ALIGN
_08018974 DCDU 0x00010000
_08018978 DCDU 0x00000000
	END