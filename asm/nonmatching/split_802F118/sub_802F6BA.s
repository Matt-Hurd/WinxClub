	non_word_aligned_thumb_func_start sub_802F6BA
sub_802F6BA
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r5, #0xa0
	ldrh r1, [r5]
	adds r4, r0, #0
	ldr r2, _0802F878
	adds r4, #0x70
	movs r6, #0xa
	cmp r1, r2
	bne %38
	ldr r1, _0802F87C
	ldr r1, [r1]
	adds r1, #0xa0
	ldrb r2, [r1, #0xc]
	ldrb r1, [r1, #0xf]
	cmp r2, r1
	bne %38
	strb r6, [r4, #0xd]
	b %39
38
	bl CollectPickup
39
	ldrh r0, [r5]
	ldr r1, _0802F880
	cmp r0, r1
	bne %40
	strb r6, [r4, #0xd]
40
	pop {r4, r5, r6}
	pop {r3}
	bx r3

