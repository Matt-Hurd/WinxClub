	non_word_aligned_thumb_func_start sub_802D32E
sub_802D32E
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802D6C0
	adds r5, r1, #0
	str r0, [r4]
	ldr r0, [r4, #0x48]
	lsls r0, r0, #0x16
	bpl %3
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq %3
	ldr r0, _0802D6C4
	adds r1, r4, #0
	adds r1, #0x44
	ldr r0, [r0]
	bl sub_8000DE6
3
	ldr r1, [r4, #0x14]
	ldr r2, [r1]
	lsls r0, r2, #0x14
	lsrs r3, r0, #0x1f
	beq %4
	asrs r0, r0, #0x1f
	movs r3, #1
	lsls r3, r3, #0xb
	adds r0, #1
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x14
	bics r2, r3
	orrs r0, r2
	str r0, [r1]
4
	movs r1, #0
	adds r0, r4, #0
	bl sub_802E4AA
	cmp r5, #0
	beq %5
	adds r0, r4, #0
	bl sub_803DA18
5
	pop {r3, r4, r5}
	pop {r3}
	bx r3

