	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E88
	IMPORT __VTABLE__375dword_803ED94
	IMPORT GetEWRAMStart
	IMPORT maybeGameObjFactory
	IMPORT sub_8017444
	IMPORT sub_8017450
	IMPORT sub_80177D8
	IMPORT __call_via_r2
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT __da__FPv
	IMPORT sub_803DA80
	IMPORT sub_803DA9C

	thumb_func_start sub_80164A8
sub_80164A8
	push {r4, lr}
	adds r4, r0, #0
	bne _080164C0
	movs r0, #0x18
	bl __nw__FUi
	adds r4, r0, #0
	bne _080164C0
	adds r0, r4, #0
_080164BA
	pop {r4}
	pop {r3}
	bx r3
_080164C0
	adds r0, r4, #0
	bl sub_8017444
	ldr r0, _08016694
	str r0, [r4]
	movs r0, #2
	strh r0, [r4, #4]
	ldr r0, _08016698
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80177D8
	movs r0, #0
	strb r0, [r4, #8]
	str r0, [r4, #0x14]
	str r0, [r4, #0x10]
	str r0, [r4, #0xc]
	adds r0, r4, #0
	b _080164BA

	non_word_aligned_thumb_func_start sub_80164E6
sub_80164E6
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r0, #8]
	movs r4, #0
	cmp r0, #0
	bls _08016514
_080164F2
	ldr r0, [r5, #0x14]
	lsls r1, r4, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _08016508
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
_08016508
	adds r4, #1
	ldrb r0, [r5, #8]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r0, r4
	bhi _080164F2
_08016514
	ldr r0, [r5, #0x14]
	bl __da__FPv
	movs r0, #0
	strb r0, [r5, #8]
	str r0, [r5, #0x14]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8016526
sub_8016526
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08016694
	adds r5, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0801653E
	movs r1, #0
	adds r0, r4, #0
	bl sub_80164E6
_0801653E
	movs r1, #0
	adds r0, r4, #0
	bl sub_8017450
	cmp r5, #0
	beq _08016550
	adds r0, r4, #0
	bl sub_803DA18
_08016550
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8016556
sub_8016556
	push {r4, r5, r6, lr}
	ldr r5, [r1]
	adds r4, r0, #0
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r6, #0
	adds r3, r6, #0
	movs r2, #0
	movs r0, #8
	bl sub_803DA80
	cmp r0, #0
	beq _0801657A
	movs r1, #0
	movs r2, #0
	stm r0!, {r1, r2}
	subs r0, #8
_0801657A
	ldrh r1, [r5, #4]
	strh r1, [r0]
	str r6, [r0, #4]
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _0801658C
	str r0, [r1, #4]
	str r0, [r4, #0x10]
	b _08016590
_0801658C
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
_08016590
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_801659C
sub_801659C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0
	ldr r5, [r0, #0xc]
	bl GetEWRAMStart
	adds r1, r0, #0
	ldrb r0, [r6, #8]
	movs r3, #0
	lsls r0, r0, #2
	movs r2, #0
	bl sub_803DA9C
	str r0, [r6, #0x14]
	b _080165D0
_080165BA
	ldrh r0, [r5]
	bl maybeGameObjFactory
	ldr r1, [r6, #0x14]
	lsls r2, r4, #2
	str r0, [r1, r2]
	strh r4, [r0, #6]
	adds r4, #1
	lsls r4, r4, #0x10
	ldr r5, [r5, #4]
	lsrs r4, r4, #0x10
_080165D0
	cmp r5, #0
	beq _080165DA
	ldrb r0, [r6, #8]
	cmp r0, r4
	bhi _080165BA
_080165DA
	ldr r4, [r6, #0xc]
	cmp r4, #0
	beq _080165EC
_080165E0
	adds r0, r4, #0
	ldr r4, [r4, #4]
	bl sub_803DA18
	cmp r4, #0
	bne _080165E0
_080165EC
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80165F2
sub_80165F2
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _08016604
	movs r1, #0
	adds r0, r4, #0
	bl sub_80164E6
_08016604
	movs r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	strb r0, [r4, #8]
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8016612
sub_8016612
	push {r4, r5, r6, lr}
	ldr r5, [r1]
	adds r4, r0, #0
	ldrb r0, [r5]
	movs r6, #0
	cmp r0, #0x15
	beq _0801665A
	cmp r0, #0x16
	beq _08016674
	cmp r0, #0x17
	beq _0801667C
	cmp r0, #0x18
	bne _0801666E
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r6, #0
	movs r2, #0
	movs r0, #8
	bl sub_803DA80
	cmp r0, #0
	beq _08016648
	movs r1, #0
	movs r2, #0
	stm r0!, {r1, r2}
	subs r0, #8
_08016648
	ldrh r1, [r5, #4]
	strh r1, [r0]
	str r6, [r0, #4]
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _08016684
	str r0, [r1, #4]
	str r0, [r4, #0x10]
	b _08016688
_0801665A
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _08016668
	movs r1, #0
	adds r0, r4, #0
	bl sub_80164E6
_08016668
	str r6, [r4, #0xc]
	str r6, [r4, #0x10]
	strb r6, [r4, #8]
_0801666E
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_08016674
	adds r0, r4, #0
	bl sub_801659C
	b _0801666E
_0801667C
	adds r0, r4, #0
	bl sub_80164E6
	b _0801666E
_08016684
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
_08016688
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	b _0801666E

	thumb_func_start sub_8016690
sub_8016690
	movs r0, #1
	bx lr
	ALIGN
_08016694 DCDU __VTABLE__375dword_803ED94
_08016698 DCDU gUnknown_03003E88
	END
