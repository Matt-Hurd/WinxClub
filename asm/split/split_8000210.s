    INCLUDE asm/macros.inc
    AREA text, CODE


	thumb_func_start sub_8000210
sub_8000210 ;@ 0x08000210
	b _08000216
_08000212
	adds r0, #1
	adds r1, #1
_08000216
	ldrb r3, [r0]
	cmp r3, #0
	beq _08000228
	ldrb r2, [r1]
	cmp r2, #0
	beq _08000232
	cmp r3, r2
	beq _08000212
	b _08000232
_08000228
	ldrb r0, [r1]
	cmp r0, #0
	bne _08000232
	movs r0, #1
	bx lr
_08000232
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start sub_8000236
sub_8000236 ;@ 0x08000236
	push {r4, r5}
	b _0800026E
_0800023A
	movs r3, #0
	ldrsb r4, [r0, r3]
	adds r3, r4, #0
	subs r3, #0x61
	cmp r3, #0x19
	bhi _08000248
	subs r4, #0x20
_08000248
	lsls r5, r4, #0x18
	movs r3, #0
	ldrsb r4, [r1, r3]
	asrs r5, r5, #0x18
	adds r3, r4, #0
	subs r3, #0x61
	cmp r3, #0x19
	bhi _0800025A
	subs r4, #0x20
_0800025A
	lsls r3, r4, #0x18
	asrs r3, r3, #0x18
	cmp r5, r3
	beq _08000268
	subs r0, r3, r5
_08000264
	pop {r4, r5}
	bx lr
_08000268
	adds r0, #1
	adds r1, #1
	subs r2, #1
_0800026E
	ldrb r3, [r0]
	cmp r3, #0
	beq _08000280
	ldrb r3, [r1]
	cmp r3, #0
	beq _08000280
	cmp r2, #0
	bne _0800023A
	b _08000284
_08000280
	cmp r2, #0
	bne _08000288
_08000284
	movs r0, #0
	b _08000264
_08000288
	movs r3, #0
	ldrsb r1, [r1, r3]
	ldrsb r0, [r0, r3]
	subs r0, r1, r0
	b _08000264

	non_word_aligned_thumb_func_start sub_8000292
sub_8000292 ;@ 0x08000292
	ldrb r2, [r0]
	movs r1, #0
	cmp r2, #0
	beq _080002A4
_0800029A
	adds r0, #1
	ldrb r2, [r0]
	adds r1, #1
	cmp r2, #0
	bne _0800029A
_080002A4
	adds r0, r1, #0
	bx lr

	thumb_func_start sub_80002A8
sub_80002A8 ;@ 0x080002A8
	ldrb r1, [r0]
	cmp r1, #0
	beq _080002C6
_080002AE
	movs r3, #0
	ldrsb r1, [r0, r3]
	adds r2, r1, #0
	subs r2, #0x41
	cmp r2, #0x19
	bhi _080002BE
	adds r1, #0x20
	strb r1, [r0]
_080002BE
	adds r0, #1
	ldrb r1, [r0]
	cmp r1, #0
	bne _080002AE
_080002C6
	bx lr

	thumb_func_start sub_80002C8
sub_80002C8 ;@ 0x080002C8
	ldrb r2, [r0]
	cmp r2, #0
	beq _080002DE
_080002CE
	movs r3, #0
	ldrsb r2, [r0, r3]
	cmp r2, r1
	beq _080002E0
	adds r0, #1
	ldrb r2, [r0]
	cmp r2, #0
	bne _080002CE
_080002DE
	movs r0, #0
_080002E0
	bx lr

	non_word_aligned_thumb_func_start sub_80002E2
sub_80002E2 ;@ 0x080002E2
	ldr r1, _08000314 ;@ =0x04000200
	sub sp, #4
	movs r3, #0
	strh r3, [r1, #8]
	movs r1, #0
	str r1, [sp]
	ldr r1, _08000318 ;@ =0x040000D4
	mov r2, sp
	str r2, [r1]
	movs r2, #3
	lsls r2, r2, #0x19
	str r2, [r1, #4]
	ldr r2, _0800031C ;@ =0x85006000
	str r2, [r1, #8]
	ldr r1, [r1, #8]
	movs r1, #0xff
	adds r1, #1
	lsls r2, r1, #0x12
	strh r1, [r2]
	movs r1, #5
	lsls r1, r1, #0x18
	strh r0, [r1]
	ldr r0, _08000320 ;@ =0x04000040
	strh r3, [r0, #0x10]
_08000312
	b _08000312
	ALIGN
_08000314 DCDU 0x04000200
_08000318 DCDU 0x040000D4
_0800031C DCDU 0x85006000
_08000320 DCDU 0x04000040
	END