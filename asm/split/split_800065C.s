    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EA4
	IMPORT sub_8000D5A
	IMPORT sub_800BE0E
	IMPORT sub_800C1CA
	IMPORT __16_ll_sdiv
	IMPORT __16_ll_sshift_r
	IMPORT sub_803FA3C

	thumb_func_start sub_800065C
sub_800065C ;@ 0x0800065C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _08000900 ;@ =gUnknown_03003EA0
	lsls r1, r1, #3
	ldr r0, [r0]
	ldr r2, [r0, #0x24]
	adds r5, r2, r1
	ldr r1, [r4, #0x10]
	cmp r1, r5
	beq _08000694
	movs r6, #0
	str r6, [r4, #0x44]
	str r6, [r4, #0x48]
	bl sub_8000D5A
	ldr r0, [r0, #0x14]
	ldr r1, [r5]
	adds r2, r5, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r0, r1
	adds r3, r6, #0
	adds r0, r4, #0
	bl sub_803FA3C
_08000694
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800069A
sub_800069A ;@ 0x0800069A
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08000904 ;@ =gUnknown_03003EA4
	movs r1, #0x13
	ldr r0, [r0]
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r5, [r0, #0x20]
	ldr r0, _08000900 ;@ =gUnknown_03003EA0
	adds r5, #0x38
	ldr r2, [r5]
	ldr r3, [r4, #0x3c]
	movs r6, #1
	lsls r6, r6, #9
	ldr r1, [r4]
	ldr r0, [r0]
	cmp r3, r2
	blt _080006DE
	movs r7, #0xf
	lsls r7, r7, #0x14
	ldr r3, [r4, #0x34]
	adds r2, r2, r7
	cmp r3, r2
	bge _080006DE
	ldr r3, [r4, #0x40]
	ldr r2, [r5, #4]
	cmp r3, r2
	blt _080006DE
	movs r7, #5
	lsls r7, r7, #0x15
	ldr r3, [r4, #0x38]
	adds r2, r2, r7
	cmp r3, r2
	blt _080006F4
_080006DE
	lsls r1, r1, #0x16
	bmi _080006EE
	adds r1, r4, #0
	bl sub_800C1CA
	ldr r0, [r4]
	orrs r0, r6
	str r0, [r4]
_080006EE
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_080006F4
	lsls r1, r1, #0x16
	bpl _0800070C
	adds r1, r4, #0
	bl sub_800BE0E
	ldr r0, [r4]
	movs r1, #0x20
	bics r0, r6
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4]
_0800070C
	ldr r0, [r4, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r1, r0, #0x10
	ldr r0, [r5]
	asrs r2, r0, #0x1f
	lsrs r2, r2, #0x10
	adds r0, r2, r0
	asrs r0, r0, #0x10
	subs r0, r1, r0
	ldrh r1, [r4, #0x28]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	orrs r0, r1
	strh r0, [r4, #0x28]
	ldr r0, [r4, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldr r1, [r5, #4]
	asrs r0, r0, #0x10
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x10
	adds r1, r2, r1
	asrs r1, r1, #0x10
	subs r0, r0, r1
	ldrh r1, [r4, #0x26]
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4]
	b _080006EE

	non_word_aligned_thumb_func_start sub_800075E
sub_800075E ;@ 0x0800075E
	push {r4}
	ldr r3, [r0, #0x10]
	ldrh r2, [r0, #0x28]
	ldr r3, [r3, #4]
	lsls r3, r3, #0xd
	lsls r2, r2, #0x17
	lsrs r2, r2, #0x17
	asrs r3, r3, #0x17
	adds r3, r2, r3
	str r3, [r1]
	ldr r4, [r0, #0x10]
	ldrh r2, [r0, #0x26]
	ldr r4, [r4, #4]
	lsls r4, r4, #2
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	asrs r4, r4, #0x17
	adds r2, r2, r4
	str r2, [r1, #4]
	ldr r4, [r0, #0x10]
	ldr r4, [r4]
	lsls r4, r4, #1
	lsrs r4, r4, #0x16
	adds r3, r3, r4
	str r3, [r1, #8]
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	adds r0, r2, r0
	str r0, [r1, #0xc]
	pop {r4}
	bx lr

	thumb_func_start sub_80007A0
sub_80007A0 ;@ 0x080007A0
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	ldr r6, _08000900 ;@ =gUnknown_03003EA0
	adds r4, r0, #0
	ldr r0, [r6]
	lsls r7, r1, #3
	ldr r2, [r0, #0x28]
	ldr r1, [r4]
	adds r5, r2, r7
	lsls r1, r1, #0x13
	bpl _080007BA
	adds r1, r4, #0
	bl sub_800C1CA
_080007BA
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0800082C
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _0800082C
	ldr r1, [r6]
	ldr r0, [r0, #4]
	ldr r2, [r1, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r2, r0
	ldr r2, [r4, #0x48]
	subs r0, r2, r0
	ldr r2, [r5]
	asrs r0, r0, #2
	lsls r2, r2, #0x14
	lsrs r2, r2, #0x18
	cmp r2, r0
	str r5, [r4, #0x44]
	bhi _0800080A
	ldr r0, [r1, #0x2c]
	ldr r1, [r5, #4]
	ldr r3, _08000908 ;@ =0x0010BE20
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r0, [r5]
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1a
	strb r0, [r4, #4]
	ldr r1, [r5]
	lsls r1, r1, #0xe
	lsrs r1, r1, #0x1a
	strb r1, [r4, #3]
	muls r0, r3
	str r0, [r4, #0xc]
	str r0, [r4, #8]
	b _08000858
_0800080A
	ldr r2, [r5, #4]
	ldr r1, [r1, #0x2c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0xe
	adds r1, r1, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	str r0, [r4, #0x48]
	ldr r0, [r5]
	ldr r3, _08000908 ;@ =0x0010BE20
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1a
	strb r0, [r4, #4]
	muls r0, r3
	str r0, [r4, #0xc]
	str r0, [r4, #8]
	b _08000858
_0800082C
	ldr r0, [r6]
	ldr r3, _08000908 ;@ =0x0010BE20
	ldr r1, [r0, #0x28]
	adds r1, r1, r7
	str r1, [r4, #0x44]
	ldr r2, [r1, #4]
	ldr r0, [r0, #0x2c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0xe
	adds r0, r0, r2
	str r0, [r4, #0x48]
	ldr r0, [r1]
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1a
	strb r0, [r4, #4]
	ldr r1, [r1]
	lsls r1, r1, #0xe
	lsrs r1, r1, #0x1a
	strb r1, [r4, #3]
	muls r0, r3
	str r0, [r4, #0xc]
	str r0, [r4, #8]
_08000858
	ldr r0, [r6]
	ldr r2, [r4, #0x44]
	ldr r1, [r0, #0x24]
	ldr r2, [r2, #4]
	lsrs r2, r2, #0x10
	lsls r2, r2, #3
	adds r5, r1, r2
	bl sub_8000D5A
	ldr r0, [r0, #0x14]
	ldr r1, [r5]
	adds r2, r5, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r0, r1
	movs r3, #0
	adds r0, r4, #0
	bl sub_803FA3C
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_800088C
sub_800088C ;@ 0x0800088C
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _08000900 ;@ =gUnknown_03003EA0
	adds r4, r0, #0
	ldr r0, [r6]
	adds r7, r2, #0
	adds r5, r1, #0
	movs r1, #0
	ldr r2, [r4, #0x44]
	mvns r1, r1
	cmp r2, #0
	beq _080008AE
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r4, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_080008AE
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	beq _080008FA
	adds r2, r7, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_80007A0
	ldr r0, [r6]
	bl sub_8000D5A
	ldr r1, [r4, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r0, [r4, #0xc]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [r4, #8]
	bl __16_ll_sshift_r
	add r2, pc, #0x28 ;@ =_0800090C
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strb r0, [r4, #3]
	ldr r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4]
_080008FA
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08000900 DCDU gUnknown_03003EA0
_08000904 DCDU gUnknown_03003EA4
_08000908 DCDU 0x0010BE20
_0800090C DCDU 0x0010BE20
_08000910 DCDU 0x00000000
	END