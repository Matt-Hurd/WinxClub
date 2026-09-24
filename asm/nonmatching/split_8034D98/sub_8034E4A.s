	non_word_aligned_thumb_func_start sub_8034E4A
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x25
	lsls r0, r0, #4
	adds r4, r5, r0
	movs r3, #0
	ldrsb r0, [r4, r3]
	adds r1, r0, r1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bpl %8
	adds r1, r0, #0
	b %9
8
	ldrb r2, [r4, #1]
	cmp r2, r1
	bgt %9
	adds r1, r0, #0
9
	cmp r0, r1
	beq %10
	strb r1, [r4]
	movs r3, #0
	ldrsb r0, [r4, r3]
	movs r3, #0x34
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x1e
	adds r1, r1, r0
	asrs r1, r1, #2
	lsls r2, r1, #2
	subs r0, r0, r2
	muls r0, r3
	lsls r3, r1, #3
	adds r1, r3, r1
	add r3, sp, #0
	adds r0, #0x18
	strh r0, [r3]
	lsls r1, r1, #3
	adds r1, #0x20
	strh r1, [r3, #2]
	movs r0, #0xff
	adds r0, #0xed
	ldr r0, [r0, r5]
	mov r1, sp
	bl sub_8040034
	movs r3, #0
	ldrsb r0, [r4, r3]
	ldrb r1, [r4, #2]
	movs r3, #0xff
	movs r2, #0
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0xcd
	lsls r1, r0, #0x10
	adds r0, r5, #0
	adds r0, #0xff
	adds r0, #0x71
	lsrs r1, r1, #0x10
	adds r4, r0, #0
	bl sub_80138E2
	movs r2, #0
	movs r1, #0xa
	adds r0, r4, #0
	str r2, [sp]
	ldr r3, _0803518C
	bl sub_8013B9C
	ldr r0, _08035180
	ldr r0, [r0]
	adds r0, #0x20
	bl sub_8028C2E
10
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	thumb_func_end sub_8034E4A

