	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_800DEF8
	IMPORT sub_800E178

	thumb_func_start sub_800242C
sub_800242C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r1]
	adds r4, r1, #0
	lsrs r0, r0, #0x10
	sub sp, #0xc
	bne _08002440
	ldr r0, [r4, #4]
	lsrs r0, r0, #0x10
	beq _080024BE
_08002440
	movs r0, #0
	movs r1, #0x13
	lsls r1, r1, #7
	ldr r7, _08002578
	adds r6, r5, r1
	str r0, [sp, #4]
	str r0, [sp, #8]
_0800244E
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [r6, #0x20]
	adds r1, #0x38
	ldm r1!, {r0, r1}
	ldr r2, [r4]
	cmp r0, r2
	beq _08002464
	subs r0, r2, r0
	str r0, [sp, #4]
_08002464
	ldr r0, [r4, #4]
	cmp r1, r0
	beq _0800246E
	subs r0, r0, r1
	str r0, [sp, #8]
_0800246E
	movs r1, #1
	ldr r0, [sp, #4]
	lsls r1, r1, #0x12
	cmp r0, r1
	blt _08002480
	movs r0, #3
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	b _0800248A
_08002480
	ldr r2, _0800257C
	ldr r0, [sp, #4]
	cmp r0, r2
	bgt _0800248A
	str r7, [sp, #4]
_0800248A
	ldr r0, [sp, #8]
	cmp r0, r1
	blt _08002498
	movs r0, #3
	lsls r0, r0, #0x10
	str r0, [sp, #8]
	b _080024A2
_08002498
	ldr r2, _0800257C
	ldr r0, [sp, #8]
	cmp r0, r2
	bgt _080024A2
	str r7, [sp, #8]
_080024A2
	movs r2, #0
	adds r0, r5, #0
	add r1, sp, #4
	bl sub_800DEF8
	adds r0, r5, #0
	bl sub_800E178
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0800244E
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0800244E
_080024BE
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80024C6
sub_80024C6
	ldr r2, [r0, #8]
	ldr r0, [r0, #0xc]
	ldr r2, [r2, #0x10]
	ldrb r0, [r0, r1]
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r2, r0
	bx lr

	thumb_func_start sub_80024D8
sub_80024D8
	movs r3, #0x58
	muls r1, r3
	movs r3, #0x11
	lsls r3, r3, #7
	adds r1, r1, r0
	adds r1, r1, r3
	push {r4, r5, r6, r7}
	ldr r3, [r1, #0x10]
	ldr r1, [r3, #8]
	subs r1, #1
	bmi _08002500
_080024EE
	ldr r5, [r0, #0x10]
	ldr r6, [r3, #0x20]
	lsls r4, r1, #2
	str r5, [r6, r4]
	ldr r5, [r3, #0x20]
	adds r4, r5, r4
	str r4, [r0, #0x10]
	subs r1, #1
	bpl _080024EE
_08002500
	movs r7, #0
	str r7, [r3, #8]
	ldr r1, [r0, #0x10]
	movs r4, #0
	adds r6, r1, #0
	beq _08002526
_0800250C
	adds r4, #1
	cmp r4, r2
	beq _08002526
	ldr r5, [r1]
	cmp r5, #0
	beq _08002522
	adds r1, #4
	cmp r5, r1
	beq _08002522
	movs r4, #0
	adds r6, r5, #0
_08002522
	adds r1, r5, #0
	bne _0800250C
_08002526
	lsls r1, r2, #2
	adds r1, r1, r6
	str r2, [r3, #8]
	str r6, [r3, #0x20]
	subs r1, #0x40
	ldr r1, [r1, #0x3c]
	str r1, [r0, #0x10]
	movs r0, #0
	cmp r2, #0
	bls _08002544
_0800253A
	lsls r1, r0, #2
	adds r0, #1
	cmp r0, r2
	str r7, [r6, r1]
	blo _0800253A
_08002544
	pop {r4, r5, r6, r7}
	bx lr

	thumb_func_start sub_8002548
sub_8002548
	push {r4, r5}
	adds r5, r3, #0
	movs r3, #0x58
	muls r1, r3
	movs r3, #0x11
	lsls r3, r3, #7
	adds r1, r1, r0
	adds r1, r1, r3
	ldr r3, [r0, #8]
	ldr r0, [r0, #0xc]
	ldr r4, [r3, #0x10]
	ldrb r0, [r0, r5]
	ldr r1, [r1, #0x10]
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r1, [r1, #0x20]
	lsls r2, r2, #2
	str r0, [r1, r2]
	pop {r4, r5}
	bx lr
	ALIGN
_08002574 DCDU 0x00000878
_08002578 DCDU 0xFFFD0000
_0800257C DCDU 0xFFFC0000
	END