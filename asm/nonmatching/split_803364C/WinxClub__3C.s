	non_word_aligned_thumb_func_start WinxClub__3C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08033C4C
	adds r5, r4, #0
	ldr r0, [r0]
	adds r5, #0xf0
	ldr r1, [r0, #8]
	movs r0, #3
	bics r0, r1
	cmp r0, #0
	sub sp, #0xc
	bne %44
	movs r3, #0xf
	ldrsb r0, [r5, r3]
	ldrb r1, [r5, #0xe]
	adds r1, r1, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strb r1, [r5, #0xe]
	bpl %40
	movs r1, #0
	strb r1, [r5, #0xe]
	NEGS r0, r0
	strb r0, [r5, #0xf]
	b %41
40
	cmp r1, #4
	ble %41
	movs r1, #4
	strb r1, [r5, #0xe]
	NEGS r0, r0
	strb r0, [r5, #0xf]
41
	movs r3, #0xe
	ldrsb r0, [r5, r3]
	lsrs r1, r0, #0x1f
	adds r0, r1, r0
	asrs r6, r0, #1
	adds r6, #1
	cmp r6, #3
	bls %42
	movs r6, #3
	b %43
42
	cmp r6, #1
	bhs %43
	movs r6, #1
43
	ldr r0, _08033C50
	ldr r7, [r4, #0x30]
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r7, #0x10]
	subs r0, r1, r0
	asrs r0, r0, #3
	ldr r1, _08033C54
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, r1
	cmp r0, r1
	beq %44
	ldr r0, [r4, #0x30]
	bl sub_800065C
44
	movs r3, #0xe
	ldrsb r0, [r5, r3]
	movs r1, #1
	lsls r1, r1, #0x14
	adds r0, #4
	lsls r0, r0, #0x10
	adds r0, r0, r1
	ldr r1, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	movs r5, #0
	adds r2, r2, r0
	cmp r1, #0
	blt %46
	cmp r2, #0
	blt %46
	ldr r1, [r4, #0x58]
	ldr r2, [r4, #0x5c]
	str r1, [sp, #4]
	subs r0, r2, r0
	str r0, [sp, #8]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq %45
	adds r1, r4, #0
	adds r1, #0x58
	bl sub_803FF24
45
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
46
	str r5, [r4, #0x58]
	str r5, [r4, #0x5c]
	str r5, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	str r5, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [r4, #0x30]
	add r1, sp, #4
	bl sub_803FF24
	b %45
	thumb_func_end WinxClub__3C

