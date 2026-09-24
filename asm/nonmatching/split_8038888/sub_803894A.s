	non_word_aligned_thumb_func_start sub_803894A
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x21
	lsls r0, r0, #4
	adds r4, r5, r0
	ldrb r0, [r4, #4]
	adds r1, r0, r1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bpl %7
	movs r3, #4
	ldrsb r1, [r4, r3]
	b %8
7
	ldrb r2, [r4, #5]
	cmp r2, r1
	bgt %8
	movs r3, #4
	ldrsb r1, [r4, r3]
8
	cmp r0, r1
	beq %9
	strb r1, [r4, #4]
	ldrb r1, [r4, #4]
	movs r3, #0x34
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1e
	muls r0, r3
	lsrs r1, r1, #2
	lsls r3, r1, #3
	adds r1, r3, r1
	add r3, sp, #0
	adds r0, #0x14
	strh r0, [r3]
	lsls r1, r1, #3
	adds r1, #0x1c
	strh r1, [r3, #2]
	movs r0, #0xff
	adds r0, #0xe9
	ldr r0, [r0, r5]
	mov r1, sp
	bl sub_8040034
	ldrb r0, [r4, #4]
	movs r1, #1
	lsls r1, r1, #9
	adds r0, r0, r5
	adds r0, r0, r1
	ldrb r0, [r0, #0xc]
	ldr r1, _08038C7C
	movs r3, #0xff
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	adds r0, r5, #0
	adds r0, #0xff
	movs r2, #0
	adds r0, #0x71
	bl sub_80138E2
	ldr r0, _08038C70
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
9
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_803894A

