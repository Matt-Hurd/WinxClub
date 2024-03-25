    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003530
	IMPORT gUnknown_030037A0
	IMPORT gUnknown_03003BC8
	IMPORT sub_8011596
	IMPORT sub_801197C
	IMPORT sub_801234C
	IMPORT sub_80123B4

	thumb_func_start sub_80120BC
sub_80120BC ;@ 0x080120BC
	ldr r1, _08012328 ;@ =gUnknown_03003BC8
	movs r0, #0
	ldr r1, [r1, #0x1c]
	cmp r1, #0
	beq _080120C8
	ldrb r0, [r1, #2]
_080120C8
	bx lr

	non_word_aligned_thumb_func_start sub_80120CA
sub_80120CA ;@ 0x080120CA
	ldr r1, _08012328 ;@ =gUnknown_03003BC8
	ldr r1, [r1, #0x1c]
	cmp r1, #0
	beq _080120DE
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r0, [r0, #4]
	adds r0, r0, r1
	ldrb r0, [r0, #3]
	bx lr
_080120DE
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start sub_80120E2
sub_80120E2 ;@ 0x080120E2
	ldr r1, _08012328 ;@ =gUnknown_03003BC8
	ldr r1, [r1, #0x1c]
	cmp r1, #0
	beq _080120F4
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r0, [r0, #4]
	ldrb r0, [r1, r0]
	bx lr
_080120F4
	ldr r0, _0801232C ;@ =gUnknown_03003530
	ldrb r0, [r0, #0xf]
	bx lr

	non_word_aligned_thumb_func_start sub_80120FA
sub_80120FA ;@ 0x080120FA
	push {r3, r4, r5, lr}
	ldr r5, _0801232C ;@ =gUnknown_03003530
	adds r4, r0, #0
	movs r0, #0x1e
	subs r5, #0x10
	strb r4, [r0, r5]
	ldr r0, _0801232C ;@ =gUnknown_03003530
	subs r0, #0x18
	str r1, [r0]
	adds r0, r4, #0
	bl sub_8011596
	cmp r4, #0
	beq _08012120
	ldrh r0, [r5, #0x10]
	lsls r0, r0, #0x1f
	bmi _08012120
	bl sub_801197C
_08012120
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8012126
sub_8012126 ;@ 0x08012126
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r2, #0
	adds r4, r1, #0
	adds r0, r2, #0
	bl sub_801234C
	cmp r0, #0
	beq _0801217A
	movs r2, #0
	str r2, [r0, #0x10]
	str r4, [r0, #0x18]
	str r5, [r0, #0xc]
	ldr r5, _0801232C ;@ =gUnknown_03003530
	lsls r3, r6, #1
	subs r5, #0x18
	ldr r1, [r5]
	adds r3, r3, r6
	lsls r3, r3, #2
	ldr r6, [r1, r3]
	adds r6, r6, r1
	str r6, [r0, #8]
	str r2, [r0, #0x40]
	str r6, [r0, #0x48]
	adds r1, r1, r3
	ldr r3, [r1, #4]
	str r2, [r0, #0x30]
	adds r3, r3, r6
	str r3, [r0, #0x3c]
	ldr r1, [r1, #8]
	ldr r3, _0801232C ;@ =gUnknown_03003530
	str r1, [r0, #0x14]
	subs r3, #0x10
	ldrh r3, [r3, #0x1a]
	muls r1, r3
	lsrs r1, r1, #8
	str r1, [r0, #0x44]
	ldr r1, [r5, #4]
	muls r1, r4
	lsrs r1, r1, #8
	str r1, [r0, #0x38]
	str r2, [r0, #4]
_0801217A
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_8012180
sub_8012180 ;@ 0x08012180
	ldr r2, _0801232C ;@ =gUnknown_03003530
	push {r4, r5}
	ldrb r1, [r2, #0xf]
	movs r3, #0x4c
	ldrb r2, [r2, #0xe]
	muls r1, r3
	ldr r3, _08012330 ;@ =gUnknown_030037A0
	ldr r5, _0801232C ;@ =gUnknown_03003530
	adds r1, r1, r3
	subs r5, #0x18
	cmp r2, #0
	beq _080121BE
	ldr r4, [r5, #4]
_0801219A
	ldr r3, [r1, #4]
	lsls r3, r3, #0x1f
	bmi _080121B6
	ldr r3, [r1, #0x10]
	cmp r3, #0
	ldr r3, [r1, #0x18]
	beq _080121B0
	muls r3, r4
	lsrs r3, r3, #8
	str r3, [r1, #0x38]
	b _080121B6
_080121B0
	muls r3, r0
	lsrs r3, r3, #8
	str r3, [r1, #0x38]
_080121B6
	subs r2, #1
	adds r1, #0x4c
	cmp r2, #0
	bne _0801219A
_080121BE
	str r0, [r5, #4]
	pop {r4, r5}
	bx lr

	thumb_func_start sub_80121C4
sub_80121C4 ;@ 0x080121C4
	ldr r1, _0801232C ;@ =gUnknown_03003530
	push {r4, r5, r6}
	ldrb r2, [r1, #0xe]
	cmp r2, #0
	beq _08012208
	ldrb r1, [r1, #0xf]
	adds r2, r1, r2
	cmp r1, r2
	bhs _08012208
	lsls r4, r0, #1
	adds r4, r4, r0
	ldr r0, _0801232C ;@ =gUnknown_03003530
	lsls r4, r4, #2
	subs r0, #0x18
	ldr r0, [r0]
	ldr r5, _08012330 ;@ =gUnknown_030037A0
_080121E4
	movs r3, #0x4c
	muls r3, r1
	adds r3, r3, r5
	ldrh r6, [r3, #4]
	lsls r6, r6, #0x1e
	bne _08012202
	ldr r6, [r0, r4]
	ldr r3, [r3, #8]
	adds r6, r6, r0
	cmp r6, r3
	bne _08012202
	movs r0, #0
	mvns r0, r0
_080121FE
	pop {r4, r5, r6}
	bx lr
_08012202
	adds r1, #1
	cmp r1, r2
	blo _080121E4
_08012208
	movs r0, #0
	b _080121FE

	thumb_func_start sub_801220C
sub_801220C ;@ 0x0801220C
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_80123B4
	cmp r0, #0
	bne _08012222
	ldr r0, [r4, #8]
	bl sub_801234C
	cmp r0, #0
	beq _08012286
_08012222
	ldr r5, [r4, #4]
	ldr r1, [r4, #8]
	ldr r2, _0801232C ;@ =gUnknown_03003530
	str r1, [r0, #0xc]
	str r4, [r0, #0x10]
	lsls r6, r5, #1
	subs r2, #0x18
	ldr r1, [r2]
	adds r6, r6, r5
	lsls r6, r6, #2
	ldr r3, [r1, r6]
	adds r5, r3, r1
	str r5, [r0, #8]
	movs r3, #0
	str r3, [r0, #0x40]
	str r5, [r0, #0x48]
	adds r1, r1, r6
	ldr r6, [r1, #4]
	adds r7, r6, r5
	str r7, [r0, #0x3c]
	ldr r6, [r4, #0xc]
	cmp r6, #0
	bge _08012254
	str r3, [r0, #0x30]
	b _0801225A
_08012254
	subs r5, r7, r5
	subs r5, r5, r6
	str r5, [r0, #0x30]
_0801225A
	ldr r5, [r4, #0x18]
	cmp r5, #0
	bne _08012262
	ldr r5, [r1, #8]
_08012262
	ldr r1, _0801232C ;@ =gUnknown_03003530
	str r5, [r0, #0x14]
	subs r1, #0x10
	ldrh r1, [r1, #0x1a]
	muls r5, r1
	lsrs r1, r5, #8
	str r1, [r0, #0x44]
	ldr r1, [r4, #0x10]
	str r1, [r0, #0x18]
	ldr r1, [r4, #0x14]
	str r1, [r0, #0x1c]
	ldr r1, [r4, #0x10]
	ldr r2, [r2, #4]
	muls r1, r2
	lsrs r1, r1, #8
	str r1, [r0, #0x38]
	str r3, [r0, #4]
	str r3, [r4]
_08012286
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_801228C
sub_801228C ;@ 0x0801228C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_80123B4
	cmp r0, #0
	beq _080122EA
	ldr r1, [r0, #4]
	str r1, [r4]
	lsls r1, r1, #0x1f
	bmi _080122EA
	ldr r1, _0801232C ;@ =gUnknown_03003530
	ldr r2, _0801232C ;@ =gUnknown_03003530
	ldr r3, [r4, #0x18]
	subs r1, #0x10
	subs r2, #0x18
	cmp r3, #0
	beq _080122C0
	ldr r5, [r0, #0x14]
	cmp r3, r5
	beq _080122E0
	str r3, [r0, #0x14]
	ldrh r1, [r1, #0x1a]
	muls r3, r1
	lsrs r1, r3, #8
	str r1, [r0, #0x44]
	b _080122E0
_080122C0
	ldr r6, [r4, #4]
	ldr r5, [r2]
	lsls r3, r6, #1
	adds r3, r3, r6
	lsls r3, r3, #2
	adds r3, r5, r3
	ldr r3, [r3, #8]
	ldr r5, [r0, #0x14]
	cmp r3, r5
	beq _080122E0
	str r3, [r4, #0x18]
	str r3, [r0, #0x14]
	ldrh r1, [r1, #0x1a]
	muls r3, r1
	lsrs r1, r3, #8
	str r1, [r0, #0x44]
_080122E0
	ldr r1, [r4, #0x10]
	ldr r2, [r2, #4]
	muls r1, r2
	lsrs r1, r1, #8
	str r1, [r0, #0x38]
_080122EA
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_80122F0
sub_80122F0 ;@ 0x080122F0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80123B4
	cmp r0, #0
	beq _08012306
	ldr r1, [r0, #4]
	movs r2, #2
	orrs r1, r2
	str r1, [r0, #4]
	str r1, [r4]
_08012306
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_801230C
sub_801230C ;@ 0x0801230C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80123B4
	cmp r0, #0
	beq _08012322
	ldr r1, [r0, #4]
	movs r2, #2
	bics r1, r2
	str r1, [r0, #4]
	str r1, [r4]
_08012322
	pop {r4}
	pop {r3}
	bx r3
	ALIGN
_08012328 DCDU gUnknown_03003BC8
_0801232C DCDU gUnknown_03003530
_08012330 DCDU gUnknown_030037A0
	END