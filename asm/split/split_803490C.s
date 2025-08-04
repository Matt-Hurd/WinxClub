	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003478
	IMPORT gUnknown_030034F8
	IMPORT NonHostileScriptGroups__TakeDamage
	IMPORT sub_801F450
	IMPORT sub_8023AA2
	IMPORT sub_8023FE4
	IMPORT sub_8028C2E
	IMPORT Monster__10
	IMPORT sub_802B0CA
	IMPORT sub_802F926
	IMPORT sub_802FA92
	IMPORT __call_via_r1
	IMPORT __16_ll_mulls
	IMPORT __16_ll_sdiv
	IMPORT rand
	IMPORT sub_8040468
	IMPORT sub_8040490
	IMPORT sub_8040574
	IMPORT sub_8040684

	thumb_func_start sub_803490C
sub_803490C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	add r0, pc, #0x3E0
	lsls r2, r1, #0x10
	ldm r0!, {r0, r1}
	sub sp, #0x24
	bl __16_ll_mulls
	add r2, pc, #0x3DC
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	movs r1, #0
	add r7, sp, #0x14
	movs r2, #0
	adds r4, r6, #0
	adds r4, #0xe0
	stm r7!, {r1, r2}
	ldrb r1, [r4, #6]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r7, #8
	cmp r0, #0
	str r1, [sp, #0x10]
	bne _08034948
	movs r0, #1
_08034948
	movs r5, #0
	cmp r0, #0xa
	bhs _08034992
	cmp r0, #5
	blo _0803496C
	movs r2, #1
	strb r2, [r7, r1]
	ldrb r1, [r4, #6]
	adds r1, r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	strb r1, [r4, #6]
	cmp r1, #5
	bne _08034966
	strb r5, [r4, #6]
_08034966
	subs r0, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0803496C
	cmp r0, #0
	beq _080349EA
	movs r1, #0
	cmp r0, #0
	bls _080349EA
_08034976
	ldrb r2, [r4, #6]
	strb r5, [r7, r2]
	ldrb r2, [r4, #6]
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	strb r2, [r4, #6]
	cmp r2, #5
	bne _0803498A
	strb r5, [r4, #6]
_0803498A
	adds r1, #1
	cmp r1, r0
	blo _08034976
	b _080349EA
_08034992
	cmp r0, #0x1e
	bhs _080349BE
	bl sub_8040684
	movs r0, #0
	cmp r1, #0
	bls _080349EA
	movs r2, #1
_080349A2
	ldrb r3, [r4, #6]
	strb r2, [r7, r3]
	ldrb r3, [r4, #6]
	adds r3, #1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	strb r3, [r4, #6]
	cmp r3, #5
	bne _080349B6
	strb r5, [r4, #6]
_080349B6
	adds r0, #1
	cmp r0, r1
	blo _080349A2
	b _080349EA
_080349BE
	bl sub_8040574
	cmp r1, #5
	bls _080349C8
	movs r1, #5
_080349C8
	movs r0, #0
	cmp r1, #0
	bls _080349EA
	movs r2, #2
_080349D0
	ldrb r3, [r4, #6]
	strb r2, [r7, r3]
	ldrb r3, [r4, #6]
	adds r3, #1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	strb r3, [r4, #6]
	cmp r3, #5
	bne _080349E4
	strb r5, [r4, #6]
_080349E4
	adds r0, #1
	cmp r0, r1
	blo _080349D0
_080349EA
	ldrb r0, [r4, #6]
	ldr r5, [sp, #0x10]
	cmp r0, r5
	bls _08034A7E
	adds r1, r6, #0
	adds r1, #0x58
	str r1, [sp, #0x20]
_080349F8
	adds r0, r6, r5
	adds r0, #0xe0
	ldrb r1, [r0]
	str r1, [sp, #0x1c]
	bl rand
	bl sub_8040490
	adds r0, #1
	str r0, [sp, #0xc]
	bl rand
	bl sub_8040468
	adds r0, #1
	str r0, [sp, #8]
	bl rand
	lsrs r1, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	lsls r1, r1, #1
	subs r7, r0, r1
	bne _08034A2A
	mvns r7, r7
_08034A2A
	bl rand
	lsrs r1, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	lsls r1, r1, #1
	subs r0, r0, r1
	bne _08034A3C
	mvns r0, r0
_08034A3C
	ldr r1, [r6, #0x58]
	ldr r2, [sp, #0xc]
	muls r7, r2
	lsls r2, r7, #0x10
	adds r1, r1, r2
	ldr r2, [r6, #0x5c]
	ldr r3, [sp, #8]
	str r1, [sp]
	muls r0, r3
	lsls r0, r0, #0x10
	adds r0, r2, r0
	str r0, [sp, #4]
	ldr r0, _08034D04
	mov r2, sp
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [sp, #0x1c]
	lsls r1, r1, #2
	ldr r7, [r0, r1]
	add r0, sp, #0x14
	ldrsb r3, [r0, r5]
	ldr r1, [sp, #0x20]
	adds r0, r7, #0
	bl sub_802FA92
	adds r0, r7, #0
	bl sub_802F926
	ldrb r0, [r4, #6]
	adds r5, #1
	cmp r0, r5
	bhi _080349F8
_08034A7E
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8034A86
sub_8034A86
	push {r4, r5, r6, r7}
	movs r3, #0
	movs r5, #0
	mov ip, r0
_08034A8E
	ldr r1, _08034D04
	mov r0, ip
	adds r0, r0, r3
	ldr r1, [r1]
	adds r0, #0xe0
	ldrb r0, [r0]
	ldr r1, [r1, #0x10]
	adds r3, #1
	ldr r1, [r1, #0x14]
	lsls r0, r0, #2
	ldr r4, [r1, r0]
	str r5, [r4, #0x58]
	str r5, [r4, #0x5c]
	ldr r2, [r4, #0x2c]
	ldr r0, [r2, #0x2c]
	adds r1, r2, #0
	subs r7, r5, r0
	ldr r0, [r2, #0x30]
	adds r1, #0x34
	subs r6, r5, r0
	ldr r0, [r2, #0x34]
	adds r0, r0, r7
	str r0, [r2, #0x34]
	ldr r0, [r2, #0x38]
	adds r0, r0, r6
	str r0, [r2, #0x38]
	ldr r0, [r1, #8]
	adds r0, r0, r7
	str r0, [r1, #8]
	ldr r0, [r1, #0xc]
	adds r0, r0, r6
	str r0, [r1, #0xc]
	str r5, [r2, #0x2c]
	str r5, [r2, #0x30]
	ldr r1, [r2]
	movs r0, #0xff
	adds r0, #1
	orrs r1, r0
	str r1, [r2]
	ldr r2, [r4, #0x30]
	ldr r4, [r2, #0x2c]
	ldr r7, [r2, #0x34]
	subs r6, r5, r4
	ldr r4, [r2, #0x30]
	adds r7, r7, r6
	str r7, [r2, #0x34]
	ldr r7, [r2, #0x38]
	subs r4, r5, r4
	adds r7, r7, r4
	adds r1, r2, #0
	adds r1, #0x34
	str r7, [r2, #0x38]
	ldr r7, [r1, #8]
	adds r6, r7, r6
	str r6, [r1, #8]
	ldr r6, [r1, #0xc]
	adds r4, r6, r4
	str r4, [r1, #0xc]
	str r5, [r2, #0x2c]
	str r5, [r2, #0x30]
	ldr r1, [r2]
	orrs r0, r1
	str r0, [r2]
	cmp r3, #5
	blo _08034A8E
	pop {r4, r5, r6, r7}
	bx lr

	thumb_func_start Boss__10
Boss__10
	push {r3, lr}
	bl Monster__10
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start Boss__Intersect
Boss__Intersect
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r5, #0x80
	adds r4, r0, #0
	ldr r0, [r5, #0x1c]
	adds r7, r3, #0
	adds r6, r1, #0
	cmp r0, #0xf
	sub sp, #4
	beq _08034B38
	cmp r0, #0x10
	bne _08034B42
_08034B38
	movs r0, #0
_08034B3A
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08034B42
	ldr r0, [r5, #0xc]
	lsls r0, r0, #1
	lsrs r0, r0, #0x14
	beq _08034B5E
	adds r0, r4, #0
	bl NonHostileScriptGroups__TakeDamage
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	b _08034B3A
_08034B5E
	ldr r0, [r4, #0x68]
	cmp r0, #0
	bne _08034B76
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	bne _08034B76
	movs r2, #5
	lsls r2, r2, #0xe
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_801F450
_08034B76
	movs r0, #0x97
	ldrsb r0, [r0, r6]
	ldr r1, [sp, #0xc]
	adds r1, r0, r1
	ldr r0, [r6, #0x7c]
	subs r1, #2
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r1, #6
	bhs _08034C6E
	add r3, pc, #0x8
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
_08034B94
	DCB 0x03
_08034B95
	DCB 0x03
_08034B96
	DCB 0x75
_08034B97
	DCB 0x07
_08034B98
	DCB 0x4D
_08034B99
	DCB 0x07
loc_8034b9a
	adds r0, r4, #0
	bl NonHostileScriptGroups__TakeDamage
	b _08034C8C
loc_8034ba2
	ldr r1, [r5, #0x2c]
	lsls r1, r1, #0xe
	bmi _08034C00
	cmp r0, #0
	bne _08034BB8
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, #2
	bne _08034C00
	b _08034BE4
_08034BB8
	cmp r0, #2
	bne _08034BC6
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	bne _08034C00
	b _08034BE4
_08034BC6
	cmp r0, #3
	bne _08034BD6
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne _08034C00
	b _08034BE4
_08034BD6
	cmp r0, #1
	bne _08034C00
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #4
	lsrs r0, r0, #0x1c
	cmp r0, #3
	bne _08034C00
_08034BE4
	movs r0, #0xaa
	ldrh r0, [r0, r4]
	strh r0, [r4, #0x1e]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	adds r0, #2
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #0xe
	str r0, [r5, #0x1c]
	adds r0, r4, #0
	bl NonHostileScriptGroups__TakeDamage
	b _08034C8C
_08034C00
	ldr r0, _08034D08
	movs r1, #2
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023AA2
	adds r0, r4, #0
	adds r0, #0xb0
	ldrb r1, [r0, #6]
	subs r1, r1, r7
	strb r1, [r0, #6]
	lsls r1, r7, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_803490C
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	bl __call_via_r1
	b _08034C8C
loc_8034c2e
	ldr r0, _08034D0C
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0xa0
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _08034C76
	ldr r1, [r0, #0x34]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1d
	cmp r1, #1
	bne _08034C76
	ldr r1, [r0]
	ldr r2, [r1, #0x1c]
	adds r1, r2, r1
	bl __call_via_r1
	adds r1, r4, #0
	adds r1, #0xb0
	ldrb r2, [r1, #6]
	subs r2, r2, r0
	strb r2, [r1, #6]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_803490C
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x30]
	adds r1, r2, r1
	b _08034C70
_08034C6E
	b _08034C86
_08034C70
	bl __call_via_r1
	b _08034C8C
_08034C76
	adds r0, r4, #0
	bl NonHostileScriptGroups__TakeDamage
	b _08034C8C
loc_8034c7e
	adds r0, r4, #0
	bl NonHostileScriptGroups__TakeDamage
	b _08034C8C
_08034C86
	adds r0, r4, #0
	bl NonHostileScriptGroups__TakeDamage
_08034C8C
	movs r0, #0xb6
	ldrsb r1, [r0, r4]
	cmp r1, #0
	blt _08034CB0
	ldr r2, _08034D10
	movs r0, #0x10
	ldr r2, [r2]
	ands r2, r0
	beq _08034CB0
	ldr r0, _08034D08
	ldr r0, [r0]
	adds r0, #0xa0
	strb r1, [r0, #8]
	ldr r0, _08034D14
	ldr r0, [r0]
	bl sub_8023FE4
	b _08034D1C
_08034CB0
	ldr r1, _08034D08
	movs r0, #0
	ldr r1, [r1]
	adds r1, #0xa0
	strb r0, [r1, #8]
	ldr r0, _08034D14
	ldr r0, [r0]
	bl sub_8023FE4
	movs r0, #0xa8
	ldrh r0, [r0, r4]
	strh r0, [r4, #0x1e]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	adds r0, #2
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	ldr r0, _08034D18
	ldr r0, [r0]
	ldr r1, [r5, #0x34]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028C2E
	adds r0, r4, #0
	bl sub_8034A86
	adds r0, r4, #0
	bl sub_802B0CA
	b _08034D1C
	ALIGN
_08034CF4 DCDU 0x0000C000
_08034CF8 DCDU 0x00000000
_08034CFC DCDU 0x00010000
_08034D00 DCDU 0x00000000
_08034D04 DCDU gUnknown_03003454
_08034D08 DCDU gPlayerEntity
_08034D0C DCDU gUnknown_03003458
_08034D10 DCDU gUnknown_03003478
_08034D14 DCDU gUnknown_030034F8
_08034D18 DCDU gUnknown_0300345C
_08034D1C
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r0, #0
	str r0, [r4, #0x34]
	movs r0, #1
	b _08034B3A
	END
