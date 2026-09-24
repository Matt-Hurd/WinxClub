	non_word_aligned_thumb_func_start sub_80166FE
sub_80166FE
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	sub sp, #0xc
	ldr r0, [r0, #4]
	cmp r0, #0
	bne %5
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	lsls r0, r0, #0x1d
	bne %5
	add r5, sp, #4
	adds r0, r5, #0
	bl sub_80046F8
	ldr r6, _08016AA4
	ldr r0, [r6]
	adds r0, #0x10
	ldrb r1, [r0, #0xe]
	adds r1, #0xff
	strb r1, [r0, #0xe]
	movs r1, #1
	adds r0, r5, #0
	bl sub_800476C
	ldr r0, [r6]
	movs r2, #0x3f
	ldrh r0, [r0, #0x1c]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_8004784
	ldr r0, [r6]
	movs r7, #0x10
	adds r0, #0x10
	ldrb r1, [r0, #0xe]
	subs r2, r7, r1
	adds r0, r5, #0
	bl sub_80047BE
	ldr r0, [r6]
	adds r1, r0, r7
	ldrb r2, [r1, #0xe]
	cmp r2, #0
	bne %4
	mvns r2, r2
	str r2, [r4, #8]
	movs r2, #6
	strb r2, [r1, #0xe]
	ldrh r4, [r0, #0x1c]
	lsls r3, r7, #0x16
	ldrh r2, [r3]
	lsls r4, r4, #8
	bics r2, r4
	strh r2, [r3]
	movs r2, #0
	strh r2, [r0, #0x1c]
	ldrb r1, [r1, #0xe]
	subs r2, r7, r1
	adds r0, r5, #0
	bl sub_80047BE
4
	adds r0, r5, #0
	bl sub_803D66C
5
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

