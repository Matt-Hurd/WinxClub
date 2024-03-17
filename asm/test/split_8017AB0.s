    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003E88
	IMPORT sub_8005106
	IMPORT sub_803DA4C
	IMPORT sub_803DA9C
	IMPORT sub_803F3E8
	IMPORT sub_803F72C
	IMPORT sub_803FB24
	IMPORT sub_803FB58

	thumb_func_start sub_8017AB0
sub_8017AB0 ;@ 0x08017AB0
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r5, [sp, #0x28]
	adds r7, r3, #0
	adds r6, r2, #0
	cmp r5, #0xff
	bne _08017AC0
	ldrb r5, [r0, #0x14]
_08017AC0
	ldr r0, _08017DC4 ;@ =gUnknown_03003E88
	adds r2, r5, #0
	movs r1, #0x1c
	ldr r0, [r0]
	bl sub_803F72C
	adds r4, r0, #0
	ldrh r0, [r6, #2]
	ldrh r1, [r4, #0x10]
	movs r2, #0x3f
	adds r0, #0x1c
	ands r1, r2
	lsls r0, r0, #6
	orrs r0, r1
	strh r0, [r4, #0x10]
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r5, #0
	adds r0, r4, #0
	bl sub_803FB24
	ldr r1, [sp, #8]
	str r1, [r4, #8]
	movs r1, #0
	adds r0, r4, #0
	bl sub_803FB58
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8017AFE
sub_8017AFE ;@ 0x08017AFE
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r5, [sp, #0x28]
	adds r7, r3, #0
	adds r6, r2, #0
	cmp r5, #0xff
	bne _08017B0E
	ldrb r5, [r0, #0x14]
_08017B0E
	ldr r0, _08017DC4 ;@ =gUnknown_03003E88
	adds r2, r5, #0
	movs r1, #0x1c
	ldr r0, [r0]
	bl sub_803F72C
	adds r4, r0, #0
	ldrh r0, [r6, #2]
	ldrh r1, [r4, #0x10]
	movs r2, #0x3f
	adds r0, #0x1c
	ands r1, r2
	lsls r0, r0, #6
	orrs r0, r1
	strh r0, [r4, #0x10]
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r5, #0
	adds r0, r4, #0
	bl sub_803FB24
	ldr r1, [sp, #8]
	strh r1, [r4, #0xc]
	movs r1, #0
	adds r0, r4, #0
	bl sub_803FB58
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8017B4C
sub_8017B4C ;@ 0x08017B4C
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r5, [sp, #0x28]
	adds r7, r3, #0
	adds r6, r2, #0
	cmp r5, #0xff
	bne _08017B5C
	ldrb r5, [r0, #0x14]
_08017B5C
	ldr r0, _08017DC4 ;@ =gUnknown_03003E88
	adds r2, r5, #0
	movs r1, #0x1c
	ldr r0, [r0]
	bl sub_803F72C
	adds r4, r0, #0
	ldrh r0, [r6, #2]
	ldrh r1, [r4, #0x10]
	movs r2, #0x3f
	adds r0, #0x1c
	ands r1, r2
	lsls r0, r0, #6
	orrs r0, r1
	strh r0, [r4, #0x10]
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r5, #0
	adds r0, r4, #0
	bl sub_803FB24
	ldr r1, [sp, #8]
	strh r1, [r4, #0xe]
	movs r1, #0
	adds r0, r4, #0
	bl sub_803FB58
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8017B9A
sub_8017B9A ;@ 0x08017B9A
	push {r0, r4, r5, r6, r7, lr}
	movs r6, #0
	movs r5, #0
	movs r2, #0
	sub sp, #8
_08017BA4
	ldr r1, [sp, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	movs r1, #5
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _08017BE2
	movs r3, #4
_08017BB8
	movs r7, #1
	ldr r1, [r0]
	lsls r7, r7, #0x19
	adds r5, #0x1c
	cmp r1, r7
	blo _08017BDC
	movs r7, #0x81
	lsls r7, r7, #0x12
	cmp r1, r7
	bhs _08017BDC
	ldrh r1, [r1, #2]
	adds r5, r1, r5
	lsls r1, r5, #0x1e
	beq _08017BDC
	lsls r1, r5, #0x1e
	lsrs r1, r1, #0x1e
	subs r1, r3, r1
	adds r5, r1, r5
_08017BDC
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _08017BB8
_08017BE2
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0x40
	blo _08017BA4
	movs r7, #0
	cmp r5, #0
	beq _08017C0A
	bl sub_8005106
	adds r1, r0, #0
	lsrs r0, r5, #2
	lsls r0, r0, #2
	adds r3, r7, #0
	movs r2, #0
	bl sub_803DA9C
	ldr r1, [sp, #8]
	adds r4, r0, #0
	str r0, [r1, #4]
_08017C0A
	movs r0, #0
	str r0, [sp]
_08017C0E
	ldr r0, [sp]
	ldr r1, [sp, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #5
	lsls r1, r1, #7
	str r0, [sp, #4]
	adds r0, r0, r1
	ldr r5, [r0, #0x18]
	cmp r5, #0
	beq _08017C70
_08017C24
	movs r2, #0x1c
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_803F3E8
	adds r0, r6, #0
	adds r6, r4, #0
	cmp r0, #0
	str r0, [r4, #0x18]
	beq _08017C3A
	str r6, [r0, #0x14]
_08017C3A
	movs r0, #1
	ldr r1, [r5]
	lsls r0, r0, #0x19
	adds r4, #0x1c
	cmp r1, r0
	blo _08017C6A
	movs r0, #0x81
	lsls r0, r0, #0x12
	cmp r1, r0
	bhs _08017C6A
	ldrh r7, [r1, #2]
	adds r2, r7, #0
	adds r0, r4, #0
	bl sub_803F3E8
	str r4, [r6]
	adds r4, r4, r7
	lsls r0, r4, #0x1e
	beq _08017C6A
	lsls r0, r4, #0x1e
	lsrs r0, r0, #0x1e
	movs r1, #4
	subs r0, r1, r0
	adds r4, r0, r4
_08017C6A
	ldr r5, [r5, #0x14]
	cmp r5, #0
	bne _08017C24
_08017C70
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _08017C82
	bl sub_803DA4C
	ldr r1, [sp, #4]
	movs r0, #0
	str r0, [r1, #0x18]
_08017C82
	ldr r0, [sp]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	cmp r0, #0x40
	blo _08017C0E
	cmp r6, #0
	beq _08017C98
	movs r0, #0
	str r0, [r6, #0x14]
_08017C98
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8017CA0
sub_8017CA0 ;@ 0x08017CA0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r5, #0
	sub sp, #0xc
_08017CA8
	lsls r0, r5, #1
	adds r6, r0, r7
	adds r6, #0xff
	adds r6, #0x81
	ldrh r0, [r6, #0x18]
	cmp r0, #0
	beq _08017CD0
	bl sub_8005106
	adds r1, r0, #0
	ldrh r0, [r6, #0x18]
	movs r3, #0
	lsrs r0, r0, #2
	lsls r0, r0, #2
	movs r2, #0
	bl sub_803DA9C
	lsls r1, r5, #2
	adds r1, r1, r7
	str r0, [r1, #0x18]
_08017CD0
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #0x40
	blo _08017CA8
	movs r1, #0xff
	str r1, [sp, #8]
	ldr r6, [r7, #4]
	movs r5, #0
	cmp r6, #0
	beq _08017DB2
_08017CE6
	ldrh r0, [r6, #0x10]
	ldr r1, [sp, #8]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	cmp r0, r1
	beq _08017D32
	cmp r5, #0
	beq _08017D1A
	ldr r1, [sp, #8]
	lsls r0, r1, #2
	movs r1, #7
	lsls r1, r1, #7
	adds r0, r0, r7
	adds r1, r0, r1
	str r5, [r1, #0x18]
	movs r1, #5
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #8]
	subs r0, r4, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	adds r1, #0xff
	adds r1, #1
	strh r0, [r1, #0x18]
_08017D1A
	ldrh r0, [r6, #0x10]
	lsls r1, r0, #0x1a
	lsrs r1, r1, #0x1a
	lsls r0, r1, #2
	str r1, [sp, #8]
	movs r1, #5
	adds r0, r0, r7
	ldr r4, [r0, #0x18]
	lsls r1, r1, #7
	adds r0, r0, r1
	str r4, [r0, #0x18]
	movs r5, #0
_08017D32
	movs r2, #0x1c
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_803F3E8
	adds r0, r5, #0
	movs r1, #0
	str r0, [r4, #0x18]
	adds r5, r4, #0
	cmp r0, #0
	str r1, [r4, #0x14]
	beq _08017D4C
	str r5, [r0, #0x14]
_08017D4C
	movs r0, #1
	ldr r1, [r6]
	lsls r0, r0, #0x19
	adds r4, #0x1c
	cmp r1, r0
	blo _08017D80
	movs r0, #0x81
	lsls r0, r0, #0x12
	cmp r1, r0
	bhs _08017D80
	ldrh r0, [r1, #2]
	str r0, [sp, #4]
	adds r2, r0, #0
	adds r0, r4, #0
	bl sub_803F3E8
	str r4, [r5]
	ldr r0, [sp, #4]
	adds r4, r4, r0
	lsls r0, r4, #0x1e
	beq _08017D80
	lsls r0, r4, #0x1e
	lsrs r0, r0, #0x1e
	movs r1, #4
	subs r0, r1, r0
	adds r4, r0, r4
_08017D80
	ldr r6, [r6, #0x14]
	cmp r6, #0
	bne _08017CE6
	cmp r5, #0
	beq _08017DB2
	movs r1, #0
	str r1, [r5, #0x14]
	ldr r1, [sp, #8]
	lsls r0, r1, #2
	movs r1, #7
	lsls r1, r1, #7
	adds r0, r0, r7
	adds r1, r0, r1
	str r5, [r1, #0x18]
	movs r1, #5
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #8]
	subs r0, r4, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	adds r1, #0xff
	adds r1, #1
	strh r0, [r1, #0x18]
_08017DB2
	ldr r0, [r7, #4]
	bl sub_803DA4C
	movs r1, #0
	str r1, [r7, #4]
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08017DC4 DCDU gUnknown_03003E88
	END