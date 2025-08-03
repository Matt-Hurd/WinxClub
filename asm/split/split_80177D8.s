	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E88
	IMPORT sub_803F3E8
	IMPORT sub_803F72C
	IMPORT sub_803FAD4
	IMPORT sub_803FB24
	IMPORT sub_803FB58
	IMPORT sub_803FBBC

	thumb_func_start sub_80177D8
sub_80177D8
	ldrh r2, [r1, #4]
	lsls r2, r2, #2
	adds r0, r2, r0
	movs r2, #3
	lsls r2, r2, #9
	adds r0, r0, r2
	str r1, [r0, #0x1c]
	bx lr

	thumb_func_start sub_80177E8
sub_80177E8
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r1, #0
	movs r5, #0
_080177F0
	lsls r0, r5, #2
	movs r1, #5
	lsls r1, r1, #7
	adds r0, r0, r7
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _08017836
_08017800
	ldr r1, [r0, #8]
	ldr r6, [r0, #0x14]
	cmp r1, r4
	bne _0801780E
	bl sub_803FBBC
	b _08017832
_0801780E
	ldrh r1, [r0, #0xc]
	ldr r2, _08017AA4
	cmp r1, r2
	beq _08017822
	ldrh r3, [r4, #4]
	cmp r1, r3
	bne _08017822
	bl sub_803FBBC
	b _08017832
_08017822
	ldrh r1, [r0, #0xe]
	cmp r1, r2
	beq _08017832
	ldrh r2, [r4, #6]
	cmp r1, r2
	bne _08017832
	bl sub_803FBBC
_08017832
	adds r0, r6, #0
	bne _08017800
_08017836
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #0x40
	blo _080177F0
	ldrh r0, [r4, #4]
	ldr r1, _08017AA4
	cmp r0, r1
	beq _0801785C
	lsls r0, r0, #2
	adds r1, r0, r7
	movs r0, #3
	lsls r0, r0, #9
	adds r0, r1, r0
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	beq _0801785C
	movs r1, #0
	str r1, [r0, #0x1c]
_0801785C
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8017862
sub_8017862
	lsls r1, r1, #2
	adds r0, r1, r0
	movs r1, #5
	lsls r1, r1, #7
	adds r0, r0, r1
	push {r4, lr}
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0801787E
_08017874
	ldr r4, [r0, #0x14]
	bl sub_803FBBC
	adds r0, r4, #0
	bne _08017874
_0801787E
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_8017884
sub_8017884
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r3, [sp, #0x14]
	movs r0, #0
	movs r5, #0
	str r5, [sp, #4]
	str r0, [sp, #0xc]
	ldr r0, [r3, #8]
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r1, #0x10
	str r1, [sp, #8]
	ldr r1, [r1]
	adds r4, r0, r1
	ldr r1, [sp, #8]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bls _08017978
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x10]
_080178AE
	ldrh r0, [r4]
	ldr r7, _08017AA8
	movs r6, #0
	subs r0, #8
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	ldr r0, [r7]
	ldr r2, [sp, #0x10]
	movs r1, #0x1c
	bl sub_803F72C
	adds r5, r0, #0
	ldrh r0, [r0, #0x10]
	movs r2, #0x3f
	movs r1, #7
	lsls r1, r1, #8
	ands r0, r2
	adds r1, r0, r1
	strh r1, [r5, #0x10]
	ldrh r0, [r4, #8]
	cmp r0, #3
	bne _080178E0
	movs r0, #0
	b _080178EC
_080178E0
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _080178EA
	movs r0, #1
	b _080178EC
_080178EA
	movs r0, #0
_080178EC
	cmp r0, #0
	beq _080178F8
	adds r7, r4, #0
	adds r7, #8
_080178F4
	movs r2, #1
	b _08017948
_080178F8
	ldr r0, [r7]
	ldr r1, [sp]
	ldr r2, [sp, #0x10]
	bl sub_803F72C
	adds r7, r0, #0
	ldrh r0, [r5, #0x10]
	ldr r1, [sp]
	movs r2, #0x3f
	lsls r1, r1, #6
	adds r1, r0, r1
	mvns r2, r2
	ands r1, r2
	movs r2, #0x3f
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r1, r4, #0
	adds r1, #8
	adds r0, r7, #0
	ldr r2, [sp]
	bl sub_803F3E8
	b _080178F4
_08017928
	adds r1, r2, #0
	lsls r1, r6
	ands r1, r0
	beq _0801793E
	lsls r0, r6, #2
	adds r0, r0, r7
	ldr r1, [r0, #4]
	ldr r3, [sp, #0x14]
	ldr r3, [r3, #8]
	adds r1, r1, r3
	str r1, [r0, #4]
_0801793E
	adds r6, #1
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	cmp r6, #8
	bhs _0801794E
_08017948
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _08017928
_0801794E
	ldrb r2, [r4, #6]
	adds r1, r7, #0
	adds r0, r5, #0
	ldr r3, [sp, #0x10]
	bl sub_803FB24
	ldrh r0, [r4, #4]
	ldr r2, _08017AAC
	cmp r0, r2
	beq _08017968
	ldrh r1, [r4, #2]
	cmp r1, r2
	bne _0801796E
_08017968
	ldr r0, [sp, #0x38]
	str r0, [r5, #8]
	b _0801797C
_0801796E
	ldr r2, _08017AA4
	cmp r0, r2
	beq _0801797A
	strh r0, [r5, #0xc]
	b _0801797C
_08017978
	b _080179B6
_0801797A
	strh r1, [r5, #0xe]
_0801797C
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0801798A
	adds r0, r5, #0
	bl sub_803FAD4
	b _08017992
_0801798A
	adds r0, r5, #0
	ldr r1, [sp, #4]
	bl sub_803FB58
_08017992
	str r5, [sp, #4]
	ldrh r0, [r4]
	adds r4, r0, r4
	lsls r0, r4, #0x1e
	beq _080179A2
	lsrs r4, r4, #2
	lsls r4, r4, #2
	adds r4, #4
_080179A2
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xc]
	ldrh r0, [r0, #4]
	cmp r0, r1
	bls _080179B6
	b _080178AE
_080179B6
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80179BE
sub_80179BE
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r5, [sp, #0x28]
	adds r7, r3, #0
	adds r6, r2, #0
	cmp r5, #0xff
	bne _080179CE
	ldrb r5, [r0, #0x14]
_080179CE
	ldr r0, _08017AA8
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
	adds r0, r4, #0
	str r1, [r4, #8]
	bl sub_803FAD4
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8017A0A
sub_8017A0A
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r5, [sp, #0x28]
	adds r7, r3, #0
	adds r6, r2, #0
	cmp r5, #0xff
	bne _08017A1A
	ldrb r5, [r0, #0x14]
_08017A1A
	ldr r0, _08017AA8
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
	adds r0, r4, #0
	strh r1, [r4, #0xc]
	bl sub_803FAD4
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8017A56
sub_8017A56
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r5, [sp, #0x28]
	adds r7, r3, #0
	adds r6, r2, #0
	cmp r5, #0xff
	bne _08017A66
	ldrb r5, [r0, #0x14]
_08017A66
	ldr r0, _08017AA8
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
	adds r0, r4, #0
	strh r1, [r4, #0xe]
	bl sub_803FAD4
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08017AA4 DCDU 0x0000FFFE
_08017AA8 DCDU gUnknown_03003E88
_08017AAC DCDU 0x0000FFFF
	END