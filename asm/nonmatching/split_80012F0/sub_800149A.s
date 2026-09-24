	non_word_aligned_thumb_func_start sub_800149A
sub_800149A
	push {r3, r4, r5, lr}
	movs r2, #0x67
	lsls r2, r2, #6
	adds r4, r0, r2
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	bne %17
16
	pop {r3, r4, r5}
	pop {r3}
	bx r3
17
	lsls r3, r0, #1
	adds r0, r3, r0
	ldr r2, [r4]
	ldrh r4, [r4, #0xe]
	lsls r0, r0, #5
	adds r3, r2, r0
	movs r0, #0
	cmp r4, #0
	ble %20
18
	cmp r3, r1
	bne %19
	subs r0, r3, r2
	bl sub_8040550
	adds r0, r1, #0
	b %16
19
	adds r3, #0x40
	ldrh r5, [r3, #0x18]
	adds r0, #1
	lsls r3, r5, #1
	adds r3, r3, r5
	lsls r3, r3, #5
	adds r3, r2, r3
	cmp r4, r0
	bgt %18
20
	movs r0, #0
	b %16

